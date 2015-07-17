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

                <p id="individual_votes">Voturi: <?php echo $this->item->votes; ?></p>

                <p>Cititor: <?php echo $this->item->reader; ?></p>
            </div>
            <div class="book_summary">
                <h4>Opinie:</h4>

                <div class="small-12 columns opinion_review">
                    <?php echo $this->item->summary ?>
                </div>
            </div>
        </div>
        <?php if (!empty($this->item->details->book_image)): ?>
            <div class="small-12 medium-4 columns book_cover">
                <img src="<?php echo $this->item->details->book_image ?>" alt="<?php echo $this->item->title ?>"/>
            </div>
        <?php endif; ?>
    </div>

    <div class="row">
        <div class="small-12 medium-8">
            <div class="messages">
                <div class="books_success_message">

                </div>
                <div class="books_error_message">

                </div>
            </div>

            <?php if (!empty($this->logged_in_user->id)): ?>
                <div class="book_action_buttons">
                    <?php if (!in_array($this->item->id, $this->voted_books_session)): ?>
                        <div class="small-12 medium-offset-1 medium-4 columns end individual_voting_div">
                            <form method="post">
                                <input type="hidden" name="book_id" class="book_id"
                                       value="<?php echo $this->item->id ?>">
                                <input type="submit" name="vote" class="vote button individual_voting_button"
                                       value="Voteaza">
                            </form>
                        </div>
                    <?php else: ?>
                        <div class="small-12 columns">
                            <h4>Ati votat deja aceasta opinie. Va multumim.</h4>
                        </div>
                    <?php endif; ?>
                </div>
            <?php else: ?>
                <h4>Pentru a putea vota aceasta carte sau pentru a citi varianta online, va rugam sa va
                    logati/inregistrati.</h4>
                <a href="/login" class="button">Login</a>
                <a href="/register" class="button">Inregistrare</a>
            <?php endif; ?>
        </div>
    </div>


    <script>
        jQuery(document).ready(function ($) {

            $('.books_success_message').hide();
            $('.books_error_message').hide();
            $('.individual_voting_button').on('click', function (event) {
                event.preventDefault();

                $('.books_success_message').slideUp().html();
                $('.books_error_message').slideUp().html();
                //start passing the variables through
                var book_id = $(this).prev('.book_id').val();
                var vote = $(this).val();

                jQuery.ajax
                ({
                    type: "POST",
                    url: "index.php?option=com_book&task=vote&format=raw",
                    data: {
                        vote: vote,
                        book_id: book_id
                    },
                    cache: false,
                    success: function (html) {
                        var data_array = JSON.parse(html);
                        if (data_array['status'] == "success") {
                            var votes_text;
                            votes_text = "Voturi: " + data_array['current_votes'];
                            $('#individual_votes').text(votes_text);
                            $('.books_success_message').html('<p>Votul dumneavoastra a fost adaugat. Va multumim. </p>').slideDown();
                            $('.individual_voting_button').hide();
                        } else {
                            $('.books_error_message').html('<p>A fost o problema in procesul de votare. Va rugam sa reincercati.</p>').slideDown();
                        }
                    }
                });

            })
        });
    </script>