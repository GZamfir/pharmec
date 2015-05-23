<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//get the data from the database
$helper = new modPharmecNewsHelper();
$noutati = $helper->getNews(3);

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');

require(JModuleHelper::getLayoutPath('mod_pharmec_news'));