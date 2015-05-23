<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Create a shortcut for params.
$params = $this->item->params;
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
$canEdit = $this->item->params->get('access-edit');
$info    = $params->get('info_block_position', 0);
?>
<div class="news-item">
    <?php echo JLayoutHelper::render('joomla.content.blog_style_default_item_title', $this->item); ?>
    <?php if (!$params->get('show_intro')) : ?>
            <?php echo $this->item->event->afterDisplayTitle; ?>
    <?php endif; ?>
    <?php echo $this->item->event->beforeDisplayContent; ?> <?php echo substr($this->item->introtext,0,255) . "..."; ?>

    <?php
        $menu = JFactory::getApplication()->getMenu();
        $active = $menu->getActive();
        $itemId = $active->id;
        $view = JRoute::_('index.php?option=com_users&view=login&Itemid=' . $itemId);
        $link = JRoute::_(ContentHelperRoute::getArticleRoute($this->item->slug, $this->item->catid, $this->item->language));
        ?>
    <div class="row">
        <div class="small-6 columns">
        <?php
            $postDate = new jDate($this->item->created);
            $postDate = $postDate->format("l j F Y");
            echo "<strong>" . $postDate . "</strong>";
            ?>
        </div>
        <div class="small-6 columns">
            <ul class="inline-list blog-list-icons">
                <li><img src="/templates/citation/images/twitter-black-icon.png"/></li>
                <li><img src="/templates/citation/images/facebook-black-icon.png"/></li>
                <li><img src="/templates/citation/images/linkedin-black-icon.png"/></li>
            </ul>
        </div>
    </div>
    <div class="read-more-button">
        <a class="action-button" href="<?php echo $link;?>">
            Read More
        </a>
    </div>
</div>