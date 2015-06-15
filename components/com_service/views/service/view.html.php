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
 * HTML View class for the Service Component
 *
 * @since  0.0.1
 */
class ServiceViewService extends JViewLegacy
{
    /**
     * Display the  Service view
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    function display($tpl = null)
    {
        // testing out email
        $mailer = JFactory::getMailer();
        $config = JFactory::getConfig();
        $sender = array(
            $config->get( 'mailfrom' ),
            $config->get( 'fromname' )
        );

        $mailer->setSender($sender);

        $mailer->addRecipient("zamfir.gaby@gmail.com");

        $body   = "Your body string\nin double quotes if you want to parse the \nnewlines etc";
        $mailer->setSubject('Your subject string');
        $mailer->setBody($body);
        $send = $mailer->Send();
        if ( $send !== true ) {
            echo 'Error sending email: ' . $send->__toString();
        } else {
            echo 'Mail sent';
        }


        // Assign data to the view
        //get the individual item
        $this->item = $this->get('Item');

        //load in jquery
        JHtml::_('jquery.framework');

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');

            return false;
        }
        // Display the view
        parent::display($tpl);
    }
}