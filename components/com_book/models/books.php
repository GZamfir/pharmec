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
            $items = $db->loadObjectList();

        foreach ($items as $item) {
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select("path as href")->from("#__menu")->where("link='index.php?option=com_book&view=book&id=$item->id'");

            $db->SetQuery($query);
            $menu_item = $db->loadResult();
            if(empty($menu_item)){
                $menu_item = "index.php?option=com_book&view=book&id={$item->id}";
            }
            $item->href = $menu_item;
        }
        return $items;
    }

    public function updateVotes($book_id){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        // Fields to update.
        $fields = array(
            $db->quoteName('votes') . ' = votes + 1'
        );

// Conditions for which records should be updated.
        $conditions = array(
            $db->quoteName('id') . " = {$book_id}"
        );

        $query->update($db->quoteName('#__book'))->set($fields)->where($conditions);

        $db->setQuery($query);

        $result = $db->execute();


        $logged_in_user = JFactory::getUser();
        $user_id = $logged_in_user->id;
        if($result){
            $final_result = $this->insertVotingInfo($book_id,$user_id);
            return $final_result;
        } else {
            return false;
        }
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

    private function insertVotingInfo($book_id,$user_id){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $columns = array('book_id','user_id');

        // Insert values.
        $values = array(
            'book_id' => $db->quote($book_id),
            'user_id' => $db->quote($user_id)
        );

        // Prepare the insert query.
        $query
            ->insert($db->quoteName('#__book_votes'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
        $db->setQuery($query);

        return $db->execute();
    }
}