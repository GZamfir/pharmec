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
class BookModelCategory extends JModelItem
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
    public function getItem()
    {
        if (!isset($this->item)) {
            $input = JFactory::getApplication()->input;
            $cat_id = $input->get('catid');
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('*')
                ->from('#__categories')
                ->where('id=' . (int)$cat_id)
                ->where('published=1');
            $db->setQuery((string)$query);

            $this->item = $db->loadObject();

        }
        return $this->item;
    }

    public function getOpinions()
    {
        $input = JFactory::getApplication()->input;
        $cat_id = $input->get('catid');
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('*')
            ->from('#__book')
            ->where('catid=' . (int)$cat_id)
            ->where('published=1');
        $db->setQuery((string)$query);

        $this->opinions = $db->loadObjectList();

        foreach($this->opinions as $opinion) {
            $query = $db->getQuery(true);
            $query->select("path as href")->from("#__menu")->where("link='index.php?option=com_book&view=book&id={$opinion->id}'");

            $db->SetQuery($query);
            $menu_item = $db->loadResult();
            if (empty($menu_item)) {
                $menu_item = "index.php?option=com_book&view=book&id={$opinion->id}";
            }
            $opinion->href = $menu_item;
        }
        return $this->opinions;
    }

}