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
$doc->addStyleSheet('templates/pharmec/css/services.css');
?>

<div class="row top_row">
    <div class="small-12 columns title_and_image">
        <?php if (!empty($this->category_details['image'])): ?>
            <img src="<?php echo $this->category_details['image']; ?>">


        <div class="visible-for-large-up">
            <div class="category_title">
                <h2><?php echo $this->category_details['title']; ?></h2>
            </div>
        </div>
        <?php else: ?>
            <h2><?php echo $this->category_details['title']; ?></h2>
        <?php endif; ?>
    </div>

    <?php if (!empty($this->category_details['image'])): ?>
    <div class="small-12 columns">
        <div class="category_description">
            <div class="visible-for-medium-down">
                <h2><?php echo $this->category_details['title']; ?></h2>
            </div>
            <?php echo $this->category_details['description']; ?>
        </div>
    </div>
    <?php endif; ?>
</div>


<div class="row bottom_row">
    <?php foreach ($this->services_within_category as $service): ?>
        <div class="small-12 columns serviciu_single">
            <div class="small-6 medium-6 large-6 columns end heading_text_bubble">
                <h2><?php echo $service->title; ?></h2>
            </div>
            <div class="small-12 columns holder_bubble">
                <div class="serviciu_description">
                    <?php echo (!empty($service->summary)) ? $service->summary : ''; ?>
                </div>

                <div class="more_placeholder">
                    <div class="more_div">
                        <a href="<?php echo (!empty($service->href)) ? $service->href : '#'; ?>">Mai Mult</a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

