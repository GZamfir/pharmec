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
        $query->select('s.*, c.id as cat_id, c.title as cat_title')
            ->from($db->quoteName('#__service', 's'))
            ->leftJoin('#__categories as c ON s.catid=c.id')
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

            //if we don't have an href, then set it to the path with id
            if(empty($item->href)){
                $item->href = "index.php?option=com_service&view=service&id=$item->id";
            }
        }

        return $items;
    }

    public function getCategoryDetails()
    {
        $input = JFactory::getApplication()->input;
        $cat_id = $input->get('catid');
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('*')
            ->from($db->quoteName('#__categories', 'c'))
            ->where("c.id = {$cat_id}");
        $db->setQuery($query);
        $result = $db->loadObject();
        //category params decoded
        $cat_params = json_decode($result->params);


        $category['title'] = $result->title;
        $category['summary'] = $cat_params->category_summary;
        $category['image'] = $cat_params->category_image;
        $category['description'] = $cat_params->category_description;

        return $category;
    }

}