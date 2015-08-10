<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);

$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/pharmec/css/booking.css');
?>

<div class="row">
    <div class="small-12 columns footer_holder">
        <h3>Aboneaza-te la Newsletter</h3>

        <div class="newsletter_success"></div>
        <div class="newsletter_errors"></div>
        <div class="form_placeholder">
            <div class="form_content_footer">
                <div class="small-12 medium-12 columns end">
                    <input type="text" id="newsletter_email" placeholder="Email"/>
                </div>
                <div class="small-12 medium-6 columns">
                    <select id="newsletter_type">
                        <option value="Cabinet">Cabinet</option>
                        <option value="Farmacie">Farmacie</option>
                    </select>
                </div>
                <div class="small-12 medium-6 columns end">
                    <input type="text" id="newsletter_phone" placeholder="Telefon (optional)"/>
                </div>
                <div class="small-12 medium-6 columns">
                    <select id="newsletter_city">
                        <option value="">-- Selectati Judetul Dorit --</option>
                        <optgroup label="- PSW"></optgroup>
                        <option value="Constanta">Constanta</option>
                        <option value="Tulcea">Tulcea</option>
                        <option value="Teleorman">Teleorman</option>
                        <option value="Ialomita">Ialomita</option>
                        <optgroup label="- Farmedia"></optgroup>
                        <option value="Brasov">Brasov</option>
                        <option value="Sibiu">Sibiu</option>
                        <option value="Prahova">Prahova</option>
                        <option value="Alba">Alba</option>
                        <option value="Covasna">Covasna</option>
                        <option value="other">Altul</option>
                    </select>
                </div>
                <div class="small-12 medium-6 columns end">
                    <input type="text" id="newsletter_city_other" placeholder="Alt Judet"/>
                </div>
            </div>
            <div class="button_placeholder small-2 medium-offset-7 small-offset-3 columns">
                <input type="submit" class="button info newsletter_book_button" value="Aboneaza-te!"/>
            </div>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function ($) {

        $('#newsletter_city_other').hide();
        if($('#newsletter_city').find("option:selected").val() == "other") {
            $('#newsletter_city_other').show();
        }

        $('#newsletter_city').on('change', function() {
            if($(this).find("option:selected").val() == "other") {
                $('#newsletter_city_other').show();
            } else {
                $('#newsletter_city_other').hide();
            }
        });

        $('.newsletter_book_button').on('click', function (event) {
            event.preventDefault();
            $('.newsletter_errors').html('');
            $('.newsletter_success').html('');

            var email = jQuery('#newsletter_email').val();
            var newsletter_type = jQuery('#newsletter_type').val();
            var city = jQuery('#newsletter_city').val();
            var phone = jQuery('#newsletter_phone').val();

            //if the option "other is selected
            if($('#newsletter_city').find("option:selected").val() == "other") {
                city = $('#newsletter_city_other').val();
            }

            jQuery.ajax
            ({
                type: "POST",
                url: "index.php?option=com_service&task=registerNewsletter&format=raw",
                data: {
                    email: email,
                    city: city,
                    phone: phone,
                    newsletter_type: newsletter_type
                },
                cache: false,
                success: function (html) {
                    var data_array = JSON.parse(html);
                    if (data_array['status'] == "error") {
                        if (j.type(data_array['message']) != 'string') {
                            $.each(data_array['message'], function (key, value) {
                                $('.newsletter_errors').append('<p>' + value + '</p>');
                            })
                        } else {
                            $('.newsletter_errors').append('<p>' + data_array['message'] + '</p>');
                        }
                    } else {
                        console.log(data_array)
                        //if everything went well, hide the form and display the message
                        $('.form_placeholder').slideUp(1000);
                        $('.newsletter_success').append('<p>' + data_array['message'] + '</p>');

                    }
                }
            })
        })
    });
</script>

<style>

    .footer_form_book_button,
    {
        margin-top: 10px;
        float: right;
    }

    .form_content_footer {
        margin-top: 10px;
    }
</style>