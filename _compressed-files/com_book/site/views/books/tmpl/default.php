<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_book
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');
?>
<div class="row pharmec_parteneri">
    <div class="small-12 columns">
        <div class="small-6 medium-4 large-3 columns end heading_text_bubble">
            <h2>Parteneri</h2>
        </div>
        <div class="small-12 columns holder_bubble">
            <?php foreach ($this->parteneri as $partener): ?>
                <div class="individual_book individual_book_page medium-6 large-4 small-12 columns">
                    <a href="<?php echo $partener->website; ?>">
                        <img src="<?php echo $partener->image; ?>" alt="<?php echo $partener->name; ?>">
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>