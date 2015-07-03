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
 *  Service Component Controller
 *
 * @since  0.0.1
 */
class ServiceController extends JControllerLegacy
{

    /**
     * Method to display a view.
     *
     * @param    boolean $cachable If true, the view output will be cached
     * @param    array $urlparams An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
     *
     * @return    JController        This object to support chaining.
     * @since    1.5
     */
    public function display($cachable = false, $urlparams = false)
    {
        $view = JFactory::getApplication()->input->getCmd('view', 'services');
        JFactory::getApplication()->input->set('view', $view);

        parent::display($cachable, $urlparams);

        return $this;
    }

    public function postFormData()
    {
        //get the session data first
        $session = JFactory::getSession();
        $user = $session->get('booking_user_data');
        //get the post data
        $app = JFactory::getApplication();
        $postData = $app->input->post;
        $data_array = array();

        $return = array();

        if (empty($user)) {
            $data_array['first_last_name'] = $postData->get('first_last_name', '', 'STRING');
            $data_array['company'] = $postData->get('company', '', 'STRING');
            $data_array['email'] = $postData->get('email', '', 'STRING');
            $data_array['phone'] = $postData->get('phone', '', 'STRING');
            $data_array['message'] = $postData->get('message', '', 'STRING');
            $data_array['city'] = $postData->get('city', '', 'STRING');
            $data_array['service_title'] = $postData->get('service_title', '', 'STRING');
            $data_array['captcha'] = $postData->get('captcha');

            $validation_errors = $this->validate_input($data_array);
            if (!empty($validation_errors)) {
                $return['status'] = "error";
                $return['message'] = $validation_errors;
                die(json_encode($return));
            }
        } else {
            $data_array['first_last_name'] = $user['first_last_name'];
            $data_array['company'] = $user['company'];
            $data_array['email'] = $user['email'];
            $data_array['phone'] = $user['phone'];
            $data_array['city'] = $user['city'];
            $data_array['service_title'] = $postData->get('service_title', '', 'STRING');
            $data_array['message'] = $user['message'];
        }
        //start the query
        $db = JFactory::getDbo();

        $query = $db->getQuery(true);
        $columns = array('name_surname',
            'company',
            'phone',
            'city',
            'email',
            'message',
            'service_title',
            'published');

        // Insert values.
        $values = array($db->quote($data_array['first_last_name']),
            $db->quote($data_array['company']),
            $db->quote($data_array['phone']),
            $db->quote($data_array['city']),
            $db->quote($data_array['email']),
            $db->quote($data_array['message']),
            $db->quote($data_array['service_title']),
            0);

        // Prepare the insert query.
        $query
            ->insert($db->quoteName('#__booking'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
        $db->setQuery($query);
        $db->execute();

        //lets send the email
        $email_array = array();
        $email_array['Nume si Prenume'] = $data_array['first_last_name'];
        $email_array['Companie'] = $data_array['company'];
        $email_array['E-mail'] = $data_array['email'];
        $email_array['Telefon'] = $data_array['phone'];
        $email_array['Oras / Judet'] = $data_array['city'];
        $email_array['Serviciu'] = $data_array['service_title'];
        $email_array['Mesaj'] = $data_array['message'];

        $email_result = $this->sendEmail($email_array, 'O cerere pentru serviciu a fost adaugata');
        if ($email_result === true) {
            $return['status'] = "success";
            $return['message'] = "Cererea a fost trimisa. Va multumim";

            //if everything is fine, set the session so that the user doesn't have to complete the form again
            if (empty($user)) {
                $session_array = array();
                $session_array['first_last_name'] = $data_array['first_last_name'];
                $session_array['company'] = $data_array['company'];
                $session_array['email'] = $data_array['email'];
                $session_array['phone'] = $data_array['phone'];
                $session_array['city'] = $data_array['city'];
                $session_array['message'] = $data_array['message'];

                $session->set('booking_user_data', $session_array);
            }
            die(json_encode($return));
        } else {
            $return['status'] = "error";
            $return['message'] = "A fost o problema cu trimiterea mailului dar cererea a fost inregistrata.";
            $return['developer_message'] = $email_result;
            die(json_encode($return));
        }
    }

    public function validate_input($data_array)
    {
        //let's check the name is only letters
        $errors = array();
        if (empty($data_array['first_last_name'])) {
            $errors[] = "Completati numele si prenumele";
        } else {
            if (!preg_match('/[a-z|A-Z|\s]$/', $data_array['first_last_name'])) {
                $errors[] = "Caractere nepermise in nume";
            }
        }

        //let's check the email now
        if (empty($data_array['email'])) {
            $errors[] = "Completati adresa de email";
        } else {
            if (filter_var($data_array['email'], FILTER_VALIDATE_EMAIL) != TRUE) {
                $errors[] = "Adresa de email este invalida";
            }
        }

        //let's check the phone now
        if (empty($data_array['phone'])) {
            $errors[] = "Completati numarul de telefon";
        } else {
            if (!preg_match('/^[0-9]+$/', $data_array['phone'])) {
                $errors[] = "Numarul de telefon trebuie sa contina doar cifre.";
            }
        }

        //let's check the company now
        if (empty($data_array['company'])) {
            $errors[] = "Completati compania";
        }

        //let's check the city now
        if (empty($data_array['city'])) {
            $errors[] = "Completati orasul / judetul";
        } else {
            if (!preg_match('/[a-z|A-Z|\s]$/', $data_array['city'])) {
                $errors[] = "Caractere interzise oras / judet";
            }
        }

        //let's recheck the captcha, just to be sure
        if (empty($data_array['captcha']) || $data_array['captcha'] == '') {
            $errors[] = "Completati captcha";
        }


        return $errors;
    }

    public function sendEmail($array_of_data,$subject)
    {
        $componentParams = JComponentHelper::getParams('com_pharmec');
        $recipient = $componentParams->get('recipient_email');

        // testing out email
        $mailer = JFactory::getMailer();
        $config = JFactory::getConfig();
        $sender = array(
            $config->get('mailfrom'),
            $config->get('fromname')
        );

        $mailer->setSender($sender);

        $mailer->addRecipient($recipient);
        $mailer->isHTML(TRUE);
        $body = "<html><body>";
        $body .= "<table border='1'>";

        foreach ($array_of_data as $key => $row) {
            $body .= "<tr><td>{$key}</td><td>{$row}</td></tr>";
        }
        $body .= "</table></body></html>";

        $mailer->setSubject($subject);
        $mailer->setBody($body);
        $send = $mailer->Send();
        if ($send !== true) {
            return 'Error sending email: ' . $send->__toString();
        } else {
            return true;
        }
    }

    public function registerNewsletter()
    {
        //get the post data
        $app = JFactory::getApplication();
        $postData = $app->input->post;
        $data_array = array();

        $data_array['email'] = $postData->get('email', '', 'STRING');
        $data_array['city'] = $postData->get('city', '', 'STRING');
        $data_array['newsletter_type'] = $postData->get('newsletter_type', '', 'STRING');

        $validation_errors = $this->validate_newsletter_input($data_array);
        if (!empty($validation_errors)) {
            $return['status'] = "error";
            $return['message'] = $validation_errors;
            die(json_encode($return));
        }

        $db = JFactory::getDbo();

        $query = $db->getQuery(true);
        $columns = array('email',
            'newsletter_type',
            'city',
            'published');

        // Insert values.
        $values = array(
            $db->quote($data_array['email']),
            $db->quote($data_array['newsletter_type']),
            $db->quote($data_array['city']),
            0);

        // Prepare the insert query.
        $query
            ->insert($db->quoteName('#__newsletter'))
            ->columns($db->quoteName($columns))
            ->values(implode(',', $values));

        // Set the query using our newly populated query object and execute it.
        $db->setQuery($query);
        $db->execute();

        $email_array = array();
        $email_array['Email'] = $data_array['email'];
        $email_array['Oras/Judet'] = $data_array['city'];
        $email_array['Tipul Newsletterului'] = $data_array['newsletter_type'];

        $email_result = $this->sendEmail($email_array, 'Cerere pentru Newsletter adaugata');
        if ($email_result === true) {
            $return['status'] = "success";
            $return['message'] = "Cererea a fost trimisa. Va multumim.";
            die(json_encode($return));
        } else {
            $return['status'] = "error";
            $return['message'] = "A fost o problema cu trimiterea cererii. Va rugam incercati mai tarziu.";
            $return['developer_message'] = $email_result;
            die(json_encode($return));
        }
    }

    public function validate_newsletter_input($data_array){
        $errors = array();
        //let's check the email now
        if (empty($data_array['email'])) {
            $errors[] = "Completati adresa de email";
        } else {
            if (filter_var($data_array['email'], FILTER_VALIDATE_EMAIL) != TRUE) {
                $errors[] = "Adresa de email este invalida";
            }
        }

        //let's check the city now
        if (empty($data_array['city'])) {
            $errors[] = "Completati orasul / judetul";
        } else {
            if (!preg_match('/[a-z|A-Z|\s]$/', $data_array['city'])) {
                $errors[] = "Caractere interzise in oras / judet";
            }
        }

        return $errors;
    }
}