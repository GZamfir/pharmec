<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//this part is for when it's gonna be database driven
$helper = new modPharmecSliderHelper();
$slides = $helper->get_slides();

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');

require(JModuleHelper::getLayoutPath('mod_pharmec_slider'));