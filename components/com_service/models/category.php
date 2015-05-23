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

/**
 * Service Model
 *
 * @since  0.0.1
 */
class ServiceModelCategory extends JModelItem
{
    /**
     *
     * @var object item
     */
    protected $item;

    /**
     * Method to auto-populate the model state.
     *
     * This method should only be called once per instantiation and is designed
     * to be called on the first call to the getState() method unless the model
     * configuration flag to ignore the request is set.
     * Note. Calling getState in this method will result in recursion.
     * @return    void
     * @since    2.5
     */
    protected function populateState()
    {
        // Get the message id
        $jinput = JFactory::getApplication()->input;
        $id = $jinput->get('id', 1, 'INT');
        $this->setState('message.id', $id);
        // Load the parameters.
        $this->setState('params', JFactory::getApplication()->getParams());
        parent::populateState();
    }

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
     * @return mixed
     * @throws Exception
     * Get Services Within a category
     * @author by Gabby.Zamfir
     */
    public function getServicesWithinCategory()
    {
        $input = JFactory::getApplication()->input;
        $cat_id = $input->get('catid');
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('s.*, c.id as cat_id, c.title as cat_title, g.lat AS "lat", g.long AS "long"')
            ->from($db->quoteName('#__service', 's'))
            ->leftJoin('#__categories as c ON s.catid=c.id')
            ->leftJoin('#__geolocation_coordinates as g ON s.geolocation_id=g.id')
            ->where('s.catid=' . $cat_id)
            ->where('s.published=1');
        $db->setQuery($query);
        $items = $db->loadObjectList();

        foreach ($items as $item) {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select("path as href")->from("#__menu")->where("link='index.php?option=com_service&view=service&id=$item->id'");

            $db->SetQuery($query);
            $item->href = $db->loadResult();
        }

        return $items;
    }

    public function getHeader()
    {
        $input = JFactory::getApplication()->input;
        $cat_id = $input->get('catid');
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('title')
            ->from($db->quoteName('#__categories', 'c'))
            ->where("c.id = {$cat_id}");
        $db->setQuery($query);
        $header = $db->loadResult();
        return $header;
    }


    protected function convertAddressToLatAndLong($address)
    {
        $encoded_address = urlencode($address);

        $url = "https://maps.googleapis.com/maps/api/geocode/json?address={$encoded_address}&sensor=false&key=AIzaSyAKWXQplHdI-s_XmN1s6S_2SWkyhgUUt6c";
        $ch = curl_init();

        // set URL and other appropriate options
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        // grab URL and pass it to the browser

        $output = curl_exec($ch);
        var_dump(curl_error($ch));

        //echo $output;

        // close curl resource, and free up system resources
        curl_close($ch);
        var_dump($url);
        $humanized_output = json_decode($output);
        ini_set('xdebug.var_display_max_depth', 10);
        ini_set('xdebug.var_display_max_children', 512);
        ini_set('xdebug.var_display_max_data', 2048);
        var_dump($humanized_output->results[0]->geometry->location);

        $coordinates = array();

        $coordinates['lat'] = $humanized_output->results[0]->geometry->location->lat;
        $coordinates['long'] = $humanized_output->results[0]->geometry->location->lng;
        $coordinates['address'] = $humanized_output->results[0]->formatted_address;
        return $coordinates;
    }

    protected function bindCoordinatesToTable($coordinates)
    {
        // Get a db connection.
        $db = JFactory::getDbo();

        // Create a new query object.
        $query = $db->getQuery(true);

        // Insert columns.
        $columns = array('address','lat','long');

        // Insert values.
        $values = array($db->quote($coordinates['address']), $db->quote($coordinates['lat']), $db->quote($coordinates['long']));

        // Prepare the insert query.
        $query->insert($db->quoteName('#__geolocation_coordinates'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
        $db->setQuery($query);
        $db->execute();
    }
}