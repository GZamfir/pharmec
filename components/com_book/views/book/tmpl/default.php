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

                <?php if(!empty($this->item->details->book_genre)): ?>
                <p>Gen: <?php echo $this->item->details->book_genre; ?></p>
                <?php endif; ?>

                <p id="individual_votes">Voturi: <?php echo $this->item->calculated_votes; ?></p>

                <?php if (empty($this->item->details->book_contest) || $this->item->details->book_contest == 0): ?>
                    <p>Cititor: <?php echo $this->item->username; ?></p>
                    <?php if ($this->can_see_email_field): ?>
                        <p>Email Cititor: <a href="mailto:<?php echo $this->item->user_email ?>"><?php echo $this->item->user_email ?></a> </p>
                    <?php endif; ?>
                <?php endif; ?>
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
                    <!-- IF THE CONTEST IS STILL GOING -->
                    <?php if (isset($this->item->details->book_contest) && $this->item->details->book_contest == 1): ?>
                        <!-- IF THE USER WROTE THIS OPINION -->
                        <?php if ($this->logged_in_user->id != $this->item->reader_id): ?>
                            <!-- IF THE USER ALREADY VOTED THIS BOOK -->
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
                        <?php else: ?>
                            <div class="small-12 columns">
                                <h4>Dumneavoastra ati scris aceasta opinie, prin urmare nu o puteti vota. Va
                                    multumim.</h4>
                            </div>
                        <?php endif; ?>
                    <?php else: ?>
                        <div class="small-12 columns">
                            <h4>Concursul pentru aceasta carte a luat sfarsit deci nu mai puteti vota opiniile pentru
                                aceasta. Incercati o alta carte. Va multumim.</h4>
                        </div>
                    <?php endif; ?>
                </div>
            <?php else: ?>
                <h4>Pentru a putea vota aceasta opinie, va rugam sa va
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
                        book_id: book_id,
                        calculated_votes: <?php echo $this->item->calculated_votes ?>
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