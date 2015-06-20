<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//this part is for when it's gonna be database driven
$helper = new modPharmecFooterBookingHelper();
//get a list of services (including the categories)
$list_of_services = $helper->getListOfServices();

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');


require(JModuleHelper::getLayoutPath('mod_pharmec_footer_booking'));