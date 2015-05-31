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
?>
<?php
$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/citation/css/services/style.css');
?>

<div class="row left-collapse top_row">
    <div class="small-12 medium-8 columns end title_and_image title_and_image_single">
        <img src="<?php echo $this->item->title_image; ?>">

        <div class="visible-for-large-up">
            <div class="category_title">
                <h2><?php echo $this->item->title; ?></h2>
            </div>
        </div>
    </div>

    <div class="small-12 medium-8 columns end">
        <div class="category_description">
            <div class="visible-for-medium-down">
                <h2><?php echo $this->item->title; ?></h2>
            </div>
            <?php echo $this->item->summary; ?>
        </div>
    </div>
</div>

<div class="row left-collapse bottom_row">

    <?php
    //if the presentation mode is set, show only the description
    if ($this->item->just_description == 1):
        ?>
        <div class="small-12 columns">
            <?php echo $this->item->description; ?>
        </div>


    <?php else: ?>

    <?php endif; ?>
</div>
