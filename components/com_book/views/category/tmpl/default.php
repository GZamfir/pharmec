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
                            <a href="/<?php echo $opinion->href; ?>"><?php echo $opinion->username; ?></a>
                        </div>
                        <div class="small-4 columns">
                            <p><?php echo $opinion->calculated_votes ?> <?php echo ($opinion->calculated_votes == 1) ? "Vot" : "Voturi" ?></p>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <h4>Nu avem opinii pentru aceasta carte.</h4>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="small-12 medium-8 columns end">
            <?php if (!empty($this->logged_in_user->id)): ?>
                <div class="book_action_buttons">
                    <?php if (!empty($this->item->details->book_ebook_link)): ?>
                        <a href="<?php echo $this->item->details->book_ebook_link; ?>" target="_blank"
                           class="small-12 medium-5 columns button">Citeste Cartea Online</a>
                    <?php endif; ?>
                    <?php if ($this->can_add_opinion): ?>
                        <a href="#" id="add_opinion_link" class="small-12 medium-5 columns button">Adauga o opinie</a>
                    <?php endif; ?>
                </div>
            <?php else: ?>
                <h4>Pentru a putea adauga o parere, vota una dintre pareri sau pentru a citi varianta online, va rugam
                    sa va
                    logati/inregistrati.</h4>
                <a href="/login" class="button">Login</a>
                <a href="/register" class="button">Inregistrare</a>
            <?php endif; ?>
        </div>
        <?php if (!empty($this->logged_in_user->id)): ?>
            <?php if (!$this->contest_ended): ?>
                <?php if ($this->can_add_opinion): ?>
                    <div class="small-12 medium-8 columns end add_opinion_holder">
                        <div class="opinions_success_message"></div>
                        <div class="opinions_error_message"></div>

                        <div class="opinion_content">
                            <label for="opinion_text">Opinie:</label>
                            <textarea rows="10" name="answer[1]" id="opinion_text" class="required"></textarea>
                            <input type="submit" class="button success add_opinion_button" value="Adauga Opinie"/>
                            <input type="hidden" value="<?php echo $this->item->id ?>" id="book_id"/>
                            <a href="#" id="cancel_opinion" class="button alert">Anuleaza</a>

                        </div>

                    </div>
                <?php else: ?>
                    <div class="small-12 medium-8 columns end">
                        <h4>Ati adaugat deja o opinie si nu puteti adauga mai multe, va multumim.</h4>
                    </div>
                <?php endif; ?>
            <?php else: ?>
                <div class="small-12 medium-8 columns end">
                    <h4>Concursul pentru aceasta carte s-a inchis si nu mai puteti adauga o alta opinie.</h4>
                </div>
            <?php endif; ?>
        <?php endif; ?>
    </div>

    <script>
        jQuery(document).ready(function ($) {
            $('.add_opinion_holder').hide();
            $('.opinions_success_message').hide();
            $('.opinions_error_message').hide();

            $('#add_opinion_link').on('click', function (e) {
                e.preventDefault();
                $('.add_opinion_holder').slideDown(1000);
                $('#add_opinion_link').hide();
            });

            $('#cancel_opinion').on('click', function (e) {
                e.preventDefault();
                $('.add_opinion_holder').slideUp(1000);
                $('#add_opinion_link').show();
                $('#opinion_text').val('');
            });

            $('.add_opinion_button').on('click', function (event) {
                event.preventDefault();

                $('.opinions_success_message').hide();
                $('.opinions_error_message').hide();

                var text_to_submit = $('#opinion_text').val();
                var book_id = $('#book_id').val();

                if (text_to_submit == 'undefined' || text_to_submit == "") {
                    $('.opinions_error_message').html('<p>Va rugam sa completati sectiunea Opinie.</p>').slideDown();
                    return;
                }

                jQuery.ajax
                ({
                    type: "POST",
                    url: "index.php?option=com_book&task=addOpinion&format=raw",
                    data: {
                        opinion_data: text_to_submit,
                        book_id: book_id
                    },
                    cache: false,
                    success: function (html) {
                        var data_array = JSON.parse(html);
                        if (data_array['status'] == "success") {
                            $('.opinions_success_message').html('<p>Opinia dumneavoastra a fost adaugata. Un Administrator o va revizui si o va publica.</p>').slideDown();
                            $('.opinion_content').hide();
                            $('#opinion_text').val('');
                        } else {
                            if (data_array['message'] != 'undefined' || data_array['message'] != '') {
                                $('.opinions_error_message').html('<p>' + data_array['message'] + '</p>').slideDown();
                            } else {
                                $('.opinions_error_message').html('<p>A fost o problema in procesul de postare a opiniei. Va rugam sa reincercati.</p>').slideDown();
                            }
                        }
                    }
                })
            });
        });
    </script>