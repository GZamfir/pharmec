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


<div class="row left-collapse bottom_row">
    <div class="small-12 columns">
        <?php echo $this->item->description; ?>
    </div>
</div>
