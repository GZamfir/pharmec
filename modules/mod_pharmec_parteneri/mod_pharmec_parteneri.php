<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//this part is for when it's gonna be database driven
//$helper = new modPharmecSliderHelper();
//$slides = $helper->getSlides();

$parteneri = array(
    array(
        'image' => '/images/parteneri/pharmec.png',
        'title' => 'Pharmec',
        'url' => 'www.pharmec.ro'
    ),
    array(
        'image' => '/images/parteneri/telekom.png',
        'title' => 'Telekom',
        'url' => 'www.telekom.ro'
    ),
    array(
        'image' => '/images/parteneri/Avast.jpg',
        'title' => 'Avast',
        'url' => 'www.avast.com'
    ),
);

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');

require(JModuleHelper::getLayoutPath('mod_pharmec_parteneri'));