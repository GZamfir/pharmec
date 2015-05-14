<?php
defined('_JEXEC') or die;
require_once dirname(__FILE__) . '/helper.php';

//this part is for when it's gonna be database driven
//$helper = new modPharmecSliderHelper();
//$slides = $helper->getSlides();

$slides = array(
    array(
        'image' => '/images/demo_images/home/01.jpg',
        'title' => 'Serviciul 1'
    ),
    array(
        'image' => '/images/demo_images/home/02.jpg',
        'title' => 'Serviciul 2'
    ),
    array(
        'image' => '/images/demo_images/home/03.jpg',
        'title' => 'Serviciul 3'
    ),
    array(
        'image' => '/images/demo_images/home/04.jpg',
        'title' => 'Serviciul 4'
    ),
);

$document = JFactory::getDocument();
$renderer = $document->loadRenderer('module');

require(JModuleHelper::getLayoutPath('mod_pharmec_slider'));