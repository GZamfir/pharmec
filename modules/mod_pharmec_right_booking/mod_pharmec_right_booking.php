<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//this part is for when it's gonna be database driven
$helper = new modPharmecRightBookingHelper();
$service_title = $helper->getCurrentService();
//if we don't have a title, then we need to get a list of services (including the categories)
if(empty($service_title)) {
	$list_of_services = $helper->getListOfServices();
}

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');


require(JModuleHelper::getLayoutPath('mod_pharmec_right_booking'));