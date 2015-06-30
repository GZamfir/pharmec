<?php
/**
 * @version     1.0.0
 * @package     com_services
 * @copyright   Copyright (C) 2015. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Mark Stockton <info@fabric.co.uk> - http://www.fabric.co.uk
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/pharmec/css/services/style.css');
?>
<div class="row top_title_row">
    <div class="small-12 columns top_service_title">
        <?php if (!empty($this->header_info['service_title_text'])): ?>
    <h1><?php echo $this->header_info['service_title_text']; ?></h1>
<?php else: ?>
    <h1>Info on our services</h1>
<?php endif; ?>
    </div>
</div>
<div class="row top_description_row">
    <div class="small-12 medium-6 columns top_service_description">
        <?php if (!empty($this->header_info['service_description_text'])): ?>
    <p><?php echo $this->header_info['service_description_text']; ?></p>
<?php endif; ?>
    </div>

    <div class="small-12 medium-6 columns top_service_video">
        <?php if (!empty($this->header_info['service_embeded_video'])): ?>
    <div class="flex-video">
        <iframe width="430" height="280" src="<?php echo $this->header_info['service_embeded_video'] ?>"
                frameborder="0" allowfullscreen></iframe>
    </div>
    <p>View Our Service Video</p>
<?php endif; ?>
    </div>
    <hr/>
</div>
<div class="row bottom_row">

    <div class="small-12 columns categorys-list" id="services-main-categorys">
        <h1>Categorys</h1>

        <div class="small-12 medium-6 columns categorys-left-col">
            <ul>
                <?php foreach ($this->firsthalf as $item): ?>
    <li>
        <a href="<?php echo $item->href ?>">
            <?php echo $item->title ?>
        </a>
    </li>
<?php endforeach ?>
            </ul>
        </div>

        <div class="small-12 medium-6 columns categorys-right-col">
            <ul>
                <?php foreach ($this->secondhalf as $item): ?>
    <li>
        <a href="<?php echo $item->href ?>">
            <?php echo $item->title ?>
        </a>
    </li>
<?php endforeach ?>
            </ul>
        </div>
    </div>

</div>

    </div>
    </div>
<div class="testimonials-div">
        <?php
$modName = 'mod_pharmec_testimonials ';
$module = JModuleHelper::getModule($modName);
$attribs = array();
$module->id = 16;
$moduleHtml = JModuleHelper::renderModule($module);
echo $moduleHtml;
?>