<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//get the data from the database
$helper = new modPharmecParteneriHelper();
$parteneri = $helper->getPartners();

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');

require(JModuleHelper::getLayoutPath('mod_pharmec_parteneri'));