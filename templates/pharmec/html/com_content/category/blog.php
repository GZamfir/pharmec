<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers');

JHtml::_('behavior.caption');
$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/citation/css/news/news.css');
$searchModule = JModuleHelper::getModule('mod_search');
$renderer = $doc->loadRenderer('module');
?>
<div class="row">
    <div class="small-12 medium-8 columns">
        <?php foreach ($this->items as &$item) {
                $this->item = & $item;
                echo $this->loadTemplate('item');
        } ?>
    </div>
    <div class="small-12 medium-4 columns">
        <div class="news-search-box">
            <?php // echo $renderer->render($searchModule); ?>

           <form method="post" action="/news">
               <h4>SEARCH OUR NEWS</h4>
               <input id="mod-search-searchword" class="inputbox search-query" type="search" placeholder="Search ..." size="20" maxlength="200" name="searchword">
               <input type="hidden" value="search" name="task">
               <input type="hidden" value="com_search" name="option">
               <input type="hidden" value="148" name="Itemid">
               <button class="action-button">
                   Search
               </button>
           </form>
        </div>
    </div>
</div>