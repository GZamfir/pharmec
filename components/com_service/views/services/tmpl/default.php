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
$doc->addStyleSheet('templates/pharmec/css/services.css');
?>
<div class="row bottom_row">
    <?php foreach ($this->categories as $category): ?>
        <?php
        $cat_params = json_decode($category->params);
        ?>
        <div class="small-12 columns serviciu_single">
            <div class="small-6 medium-6 large-6 columns end heading_text_bubble">
                <h2><?php echo $category->title; ?></h2>
            </div>
            <div class="small-12 columns holder_bubble">
                <p><?php echo (!empty($cat_params->category_summary)) ? $cat_params->category_summary : ''; ?></p>

                <div class="more_placeholder">
                    <div class="more_div">
                        <a href="<?php echo (!empty($category->href)) ? $category->href : '#'; ?>">Mai Mult</a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>

<style>

</style>
