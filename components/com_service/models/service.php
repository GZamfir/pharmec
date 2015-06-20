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
            $query->select('s.*, c.id as cat_id, c.title as cat_title')
                ->from($db->quoteName('#__service', 's'))
                ->leftJoin('#__categories as c ON s.catid=c.id')
                ->where("s.id = {$id}");
            $db->setQuery($query);
            $item = $db->loadObject();
        }
        return $item;
    }

    public function getInsertData(){
        // Get a db connection.
                $db = JFactory::getDbo();

        // Create a new query object.
                $query = $db->getQuery(true);

        // Insert columns.
                $columns = array('name_surname', 'company', 'phone', 'city','email','message','service_title','published');

        // Insert values.
                $values = array('Nume si Prenume' => $db->quote('Gabriel Zamfir'),
                    'Companie' => $db->quote('Health Farm'),
                    'Telefon' => $db->quote('0720 121 467'),
                    'Oras' => $db->quote('Constanta'),
                    'Email' => $db->quote('zamfir.gaby@gmail.com'),
                    'Mesaj' => $db->quote('mesaj de testare'),
                    'Serviciu' => $db->quote('serviciu 1'),
                    'Rezolvat' => 0);

        // Prepare the insert query.
                $query
                    ->insert($db->quoteName('#__booking'))
                    ->columns($db->quoteName($columns))
                    ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
                $db->setQuery($query);
                $db->execute();

        $this->sendEmail($values);
    }

    public function sendEmail($array_of_data){
        // testing out email
        $mailer = JFactory::getMailer();
        $config = JFactory::getConfig();
        $sender = array(
            $config->get( 'mailfrom' ),
            $config->get( 'fromname' )
        );

        $mailer->setSender($sender);

        $mailer->addRecipient("zamfir.gaby@gmail.com");
        $mailer->isHTML(TRUE);
        $body = "<html><body>";
        $body .= "<table border='1'>";

        foreach($array_of_data as $key=>$row){
            $body .= "<tr><td>{$key}</td><td>{$row}</td></tr>";
        }
        $body .= "</table></body></html>";

        $mailer->setSubject('Serviciu adaugat');
        $mailer->setBody($body);
        $send = $mailer->Send();
        if ( $send !== true ) {
            echo 'Error sending email: ' . $send->__toString();
        } else {
            echo 'Mail sent';
        }
    }

}