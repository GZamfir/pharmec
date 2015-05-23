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
class ServiceModelService extends JModelItem
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

    /**     * Get the message
     * @return object The message to be displayed to the user
     */
    public function getItem()
    {
        if (!isset($this->item)) {
            $input = JFactory::getApplication()->input;
            $id = $input->get('id');
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('s.*, c.id as cat_id, c.title as cat_title, g.lat AS "lat", g.long AS "long"')
                ->from($db->quoteName('#__service', 's'))
                ->leftJoin('#__categories as c ON s.catid=c.id')
                ->leftJoin('#__geolocation_coordinates as g ON s.geolocation_id=g.id')
                ->where("s.id = {$id}");
            $db->setQuery($query);
            $item = $db->loadObject();
        }
        return $item;
    }

    public function getUpcomingServices()
    {

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('service.id, service.message, TIMESTAMPDIFF(second,NOW(),service.date_time) AS time_diff')
            ->from($db->quoteName('#__service', 'service'))
            ->where($db->quoteName('published').'=1')
            ->where('TIMESTAMPDIFF(second,NOW(),service.date_time) > 0')
            ->order('time_diff')
            ->setLimit(11);

        if (!isset($this->item)) {
            $input = JFactory::getApplication()->input;
            $id = $input->get('id');
            $query->where("service.id != {$id}");
        }

        $db->setQuery($query);
        $items = $db->loadObjectList();

        foreach($items as $item){
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select("path as href")->from("#__menu")->where("link='index.php?option=com_service&view=service&id=$item->id'");

            $db->SetQuery($query);
            $item->href = $db->loadResult();
        }

        return $items;
    }

}