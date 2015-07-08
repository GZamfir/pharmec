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
JHtml::_('jquery.framework', false);
?>
<div class="row pharmec_books">
    <div class="small-12 columns">
        <div class="messages">
            <div class="success_message">

            </div>
            <div class="error_message">

            </div>
        </div>
        <div class="books_content_holder">
            <?php foreach($this->books as $book):?>
            <div class="small-8 columns">
                <a href="#"><?php echo $book->title ?></a>
            </div>
            <div class="small-2 columns" id="votes_for_book_<?php echo $book->id; ?>">
                <p><?php echo $book->votes ?> <?php echo ($book->votes == 1)?"Vot":"Voturi" ?></p>
            </div>
                <div class="small-2 columns">
                    <form method="post">
                        <input type="hidden" name="book_id" class="book_id" value="<?php echo $book->id?>">
                        <input type="submit" name="vote" class="vote" value="Voteaza">
                    </form>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function ($) {

        $('.success_message').hide();
        $('.error_message').hide();
        $('.vote').on('click', function (event) {
            event.preventDefault();

            $('.success_message').hide().html();
            $('.error_message').hide().html();
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
                    if(data_array['status'] == "success"){
                        var votes_text;
                        if(data_array['current_votes'] == 1 || data_array['current_votes'] == "1"){
                            votes_text = data_array['current_votes'] + " Vot";
                        } else {
                            votes_text = data_array['current_votes'] + " Voturi";
                        }
                        $('#votes_for_book_'+data_array['book_id']).html("<p>"+votes_text+"</p>");
                        $('.success_message').html('<p>Votul dumneavoastra a fost adaugat. Va multumim. </p>').show();
                    } else {
                        $('.error_message').html('<p>A fost o problema in procesul de votare. Va rugam sa reincercati.</p>').show();
                    }
                }
            });

        })
    });
</script>