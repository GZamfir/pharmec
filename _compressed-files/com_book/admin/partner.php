<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_partner
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// Set some global property
$document = JFactory::getDocument();

// Get an instance of the controller prefixed by Partner
$controller = JControllerLegacy::getInstance('Partner');

// Perform the Request task
$input = JFactory::getApplication()->input;

$controller->execute($input->getCmd('task'));

// Redirect if set by the controller
$controller->redirect();