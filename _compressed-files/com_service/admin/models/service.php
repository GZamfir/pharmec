<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_service
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

require(JPATH_ROOT.'/shared_classes/GeolocationHelper.php');
/**
 * Service Model
 *
 * @since  0.0.1
 */
class ServiceModelService extends JModelAdmin
{
    /**
     * Method to get a table object, load it if necessary.
     *
     * @param   string $type The table name. Optional.
     * @param   string $prefix The class prefix. Optional.
     * @param   array $config Configuration array for model. Optional.
     *
     * @return  JTable  A JTable object
     *
     * @since   1.6
     */
    public function getTable($type = 'Service', $prefix = 'ServiceTable', $config = array())
    {
        return JTable::getInstance($type, $prefix, $config);
    }

    /**
     * Method to get the record form.
     *
     * @param   array $data Data for the form.
     * @param   boolean $loadData True if the form is to load its own data (default case), false if not.
     *
     * @return  mixed    A JForm object on success, false on failure
     *
     * @since   1.6
     */
    public function getForm($data = array(), $loadData = true)
    {
        // Get the form.
        $form = $this->loadForm(
            'com_service.service',
            'service',
            array(
                'control' => 'jform',
                'load_data' => $loadData
            )
        );

        if (empty($form)) {
            return false;
        }

        return $form;
    }

    /**
     * Method to get the data that should be injected in the form.
     *
     * @return  mixed  The data for the form.
     *
     * @since   1.6
     */
    protected function loadFormData()
    {
        // Check the session for previously entered form data.
        $data = JFactory::getApplication()->getUserState(
            'com_service.edit.service.data',
            array()
        );

        if (empty($data)) {
            $data = $this->getItem();
        }
        return $data;
    }


    /**
     * Method to get a single record.
     *
     * @param   integer  $pk  The id of the primary key.
     *
     * @return  mixed  Object on success, false on failure.
     *
     * @since   1.6
     */
    public function getItem($pk = null)
    {
        if ($item = parent::getItem($pk))
        {

            if (!empty($item->id))
            {
                $item->tags = new JHelperTags;
                $item->tags->getTagIds($item->id, 'com_services.service');
                $item->metadata['tags'] = $item->tags;
            }
        }

        return $item;
    }

    /**
     * Method to get the script that have to be included on the form
     *
     * @return string
     * Script files
     */
    public function getScript(){
        return 'administrator/components/com_service/models/forms/time.js';
    }

    protected function prepareTable($table)
    {
        //convert the service date to mysql
        $ex = explode('/', $table->service_date);
        $table->service_date = date('Y-m-d', mktime(0, 0, 0, $ex[1], $ex[0], $ex[2]));


        //build the datetime for the database
        $date_time = $table->service_date." ".$table->time.":00";
        $date_time = strtotime($date_time);
        $date_time = date('Y-m-d H:i:s', $date_time);
        $table->date_time = $date_time;


        /*
         * This part of the code is to handle the address
         */
        //build up the address with the postcode
        $address_with_postcode = '';
        if (!empty($table->address)) {
            $address_with_postcode = $table->address . ", ";
        }
        if (!empty($table->postcode)) {
            $address_with_postcode .= $table->postcode;
        }

        //check if we have an address
        if(!empty($address_with_postcode)) {
            $address_with_postcode = rtrim($address_with_postcode, ', ');
            $geolocationID = $this->getGeolocationID($address_with_postcode);

            //if an ID is returned use it to save it as a foreign key
            if(empty($geolocationID)){
                //otherwise call our helper to find the coordinates for the address
                $coordinates = GeolocationHelper::convertAddressToLatAndLong($address_with_postcode);
                var_dump($coordinates);
                if(empty($coordinates['lat']) || empty($coordinates['long'])){
                    //set the geolocation id to 0 so that it doesn't get confused
                    $table->geolocation_id = 0;
                    JError::raiseWarning( 100, "The coordinates for the address couldn't be found");
                } else {
                    //append the address entered
                    $save_data['address'] = $address_with_postcode;
                    $save_data = array_merge($save_data, $coordinates);

                    //insert the new data in the geolocation table and return the new inserted id
                    $geolocationID = $this->insertGeolocationData($save_data);

                    //assign the geolocation id to the table
                    $table->geolocation_id = $geolocationID;
                }
            }

        } else {
            //this is if they decide to remove the address after it has already been set
            //we set it back to empty
            $table->geolocation_id = 0;
        }

    }

    /*
     * Function to check if we already have that address cached
     * returns id
     */

    protected function getGeolocationID($address)
    {
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('id')
            ->from($db->quoteName('#__geolocation_coordinates', 'g'))
            ->where("g.address = '{$address}'");
        $db->setQuery($query);
        $existing_record = $db->loadResult();

        return $existing_record;
    }

    /*
     * Function to insert the new data in the database
     * returns new created id
     */
    protected function insertGeolocationData($data){
        // Get a db connection.
        $db = JFactory::getDbo();

        // Create a new query object.
        $query = $db->getQuery(true);

        // Insert columns.
        $columns = array('address','lat','long');

        // Insert values.
        $values = array($db->quote($data['address']), $db->quote($data['lat']), $db->quote($data['long']));

        // Prepare the insert query.
        $query->insert($db->quoteName('#__geolocation_coordinates'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
        $db->setQuery($query);
        $db->execute();

        return $db->insertid();
    }
}