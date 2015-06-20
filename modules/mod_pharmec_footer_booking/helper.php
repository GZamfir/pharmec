<?php

class modPharmecRightBookingHelper {

	var $db;

	public function __construct() {
		$this->db = JFactory::getDbo();

	}

	public function getAjax(){
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

		if($this->sendEmail($values)){
			return true;
		} else {
			return false;
		}
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
			return true;
		}
	}

	function getCurrentService(){
		$input = JFactory::getApplication()->input;
		$id = $input->get('id');
		$cat_id = $input->get('catid');
		if(!empty($id)) {
			//if we have an id, get the service title
			$db = JFactory::getDbo();
			$query = $db->getQuery(true);
			$query->select('title')
				->from($db->quoteName('#__service', 's'))
				->where("s.id = {$id}");
			$db->setQuery($query);
			$result = $db->loadResult();
			return $result;
		} elseif (!empty($cat_id)){
			//if we have a category, get the category title
			$db = JFactory::getDbo();
			$query = $db->getQuery(true);
			$query->select('title')
				->from($db->quoteName('#__categories', 'c'))
				->where("c.id = {$cat_id}");
			$db->setQuery($query);
			$result = $db->loadResult();
			return $result;
		} else {
			//otherwise return false
			return false;
		}
	}

	function getListOfServices(){
		//get the categories first
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title')
			->from($db->quoteName('#__categories', 'c'))
			->where("c.published = 1");
		$db->setQuery($query);
		$list_of_categories = $db->loadObjectList();

		//get the services now
		$query = $db->getQuery(true);
		$query->select('title')
			->from($db->quoteName('#__service', 's'))
			->where("s.published = 1");
		$db->setQuery($query);
		$list_of_services = $db->loadObjectList();

		$returned_result = array_merge($list_of_categories,$list_of_services);
	}
}