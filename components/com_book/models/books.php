<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_book
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Book Model
 *
 * @since  0.0.1
 */
class BookModelBooks extends JModelItem
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
    public function getTable($type = 'Book', $prefix = 'BookTable', $config = array())
    {
        return JTable::getInstance($type, $prefix, $config);
    }

    /**     * Get the message
     * @return object The message to be displayed to the user
     */
    public function getBooks()
    {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('*')
                ->from('#__book')
                ->where('published = 1');
            $db->setQuery((string)$query);
            return $db->loadObjectList();
    }

    public function updateVotes($id){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        // Fields to update.
        $fields = array(
            $db->quoteName('votes') . ' = votes + 1'
        );

// Conditions for which records should be updated.
        $conditions = array(
            $db->quoteName('id') . " = {$id}"
        );

        $query->update($db->quoteName('#__book'))->set($fields)->where($conditions);

        $db->setQuery($query);

        $result = $db->execute();
        return $result;
    }

    public function getCurrentVotes($id)
    {
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('votes')
            ->from('#__book')
            ->where('published = 1')
            ->where("id = {$id}");
        $db->setQuery((string)$query);
        return $db->loadResult();
    }
}