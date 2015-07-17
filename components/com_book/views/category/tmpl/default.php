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
<div class="row">
    <?php if (!empty($this->item->details->book_image)): ?>
    <div class="small-12 medium-8 columns book_content">
        <?php else: ?>
        <div class="small-12 medium-12 columns book_content">
            <?php endif; ?>
            <div class="book_title">
                <h2><?php echo $this->item->title ?></h2>
            </div>
            <div class="book_details">
                <p>Autor: <?php echo $this->item->details->book_author; ?></p>

                <p>Gen: <?php echo $this->item->details->book_genre; ?></p>

            </div>
            <div class="book_summary">
                <h4>Descriere:</h4>
                <?php echo $this->item->details->book_description ?>
            </div>
        </div>
        <?php if (!empty($this->item->details->book_image)): ?>
            <div class="small-12 medium-4 columns book_cover">
                <img src="<?php echo $this->item->details->book_image ?>" alt="<?php echo $this->item->title ?>"/>
            </div>
        <?php endif; ?>
    </div>

    <div class="row opinions_div">
        <div class="small-12 medium-8 columns">
            <h4>Opinii:</h4>

            <div class="small-12 columns opinions_holder">
                <?php if (!empty($this->opinions)): ?>
                    <?php foreach ($this->opinions as $opinion): ?>
                        <div class="small-8 columns">
                            <a href="/<?php echo $opinion->href; ?>"><?php echo $opinion->reader; ?></a>
                        </div>
                        <div class="small-4 columns">
                            <p><?php echo $opinion->votes ?> <?php echo ($opinion->votes == 1) ? "Vot" : "Voturi" ?></p>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <h4>Nu avem opinii pentru aceasta carte.</h4>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="small-12 medium-8 columns">
            <?php if (!empty($this->logged_in_user->id)): ?>
                <div class="book_action_buttons">
                    <?php if (!empty($this->item->details->book_ebook_link)): ?>
                        <a href="<?php echo $this->item->details->book_ebook_link; ?>" target="_blank"
                           class="small-12 medium-5 columns button">Citeste Cartea Online</a>
                    <?php endif; ?>
                </div>
            <?php else: ?>
                <h4>Pentru a putea vota una dintre pareri sau pentru a citi varianta online, va rugam sa va
                    logati/inregistrati.</h4>
                <a href="/login" class="button">Login</a>
                <a href="/register" class="button">Inregistrare</a>
            <?php endif; ?>
        </div>
    </div>