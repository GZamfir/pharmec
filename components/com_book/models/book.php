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
class BookModelBook extends JModelItem
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
    public function getItem()
    {
        if (!isset($this->item)) {
            $id = $this->getState('message.id');
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('b.*, c.title, c.params, u.username AS username, u.name AS firstname, u.email AS user_email')
                ->from('#__book b')
                ->innerJoin('#__categories c ON b.catid = c.id')
                ->innerJoin('#__users u ON u.id = b.reader_id')
                ->where('c.published = 1')
                ->where('b.published = 1')
                ->where('b.id=' . (int)$id);
            $db->setQuery((string)$query);

            $this->item = $db->loadObject();

        }
        return $this->item;
    }

    public function canVoteThisBook($user_id){
            $book_id = $this->item->id;
            $db = JFactory::getDbo();
            $query = $db->getQuery(true);
            $query->select('COUNT(id)')
                ->from('#__book_votes')
                ->where('user_id=' . (int)$user_id)
                ->where('book_id=' . (int)$book_id);
            $db->setQuery((string)$query);

            $votes = $db->loadResult();
            if($votes == "0"){
                //if there are no votes, it means he can vote
                return true;
            } else {
                return false;
            }
    }

    public function getCalculatedVotes(){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query->select('COUNT(book_id) AS book_votes')
            ->from('#__book_votes')
            ->where('book_id ='.$this->item->id);

        $db->setQuery((string)$query);
        return $db->loadResult();
    }
}