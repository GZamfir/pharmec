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
        <img src="<?php echo $this->category_details['image']; ?>">
        <div class="category_title">
            <h2><?php echo $this->category_details['title'];?></h2>
        </div>
    </div>

    <div class="small-12 columns category_description">
        <?php echo $this->category_details['description']; ?>
    </div>
</div>


<div class="row bottom_row">
    <?php foreach ($this->services_within_category as $service): ?>
        <div class="small-12 columns serviciu_single">
            <div class="small-6 medium-6 large-6 columns end heading_text_bubble">
                <h2><?php echo $service->title; ?></h2>
            </div>
            <div class="small-12 columns holder_bubble">
                <div class="serviciu_description">
                    <?php echo (!empty($service->description)) ? $service->description : ''; ?>
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

<style>
    .top_row img{
        width: 100%;
    }

    .top_row{
        margin-top: 6%!important;
        margin-bottom: 6%!important;
    }

    .category_description{
        margin-top: 4%!important;
        font-weight: bold;
    }



    .category_title {
        position: absolute;
        width: 450px;
        height: 90px;
        bottom: 0;
        left: 2%;
        padding: 20px 20px 40px 20px;

        background-color: rgba(144, 144, 141, 0.8);
    }

    .category_title h2{
        text-align: center;
        line-height: 60px;
        text-transform: uppercase;
        font-size: 2.5rem;
        color: #FFFFFF;
    }
</style>