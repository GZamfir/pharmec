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

$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/citation/css/services/style.css');
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


<div class="row bottom_row">
    <div class="small-12 medium-6 columns categorys-list">
        <?php if (count($this->services_within_category) > 0): ?>
    <ul>
        <?php foreach ($this->services_within_category as $service_within_category): ?>
            <li>
                <a href="<?php echo $service_within_category->href; ?>">
                    <?php echo $service_within_category->title; ?>
                </a>
            </li>
        <?php endforeach ?>
    </ul>
<?php else: ?>
    <p>Niciun serviciu disponibil pentru aceasta categorie</p>
<?php endif; ?>
    </div>

    <div class="small-12 medium-6 columns map-div">
        <div id="map-canvas">

        </div>
    </div>

</div>

    </div>
    </div>
<div class="testimonials-div">
        <?php
$modName = 'mod_citation_testimonials ';
$module = JModuleHelper::getModule($modName);
$attribs = array();
$module->id = 16;
$moduleHtml = JModuleHelper::renderModule($module);
echo $moduleHtml;
?>