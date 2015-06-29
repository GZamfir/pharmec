<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);

$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/pharmec/css/booking.css');

$session = JFactory::getSession();
$user = $session->get('booking_user_data');
?>


<script type="text/javascript">
    var RecaptchaOptions = {
        lang : 'ro'
    };
</script>

<script src='https://www.google.com/recaptcha/api.js'></script>
<div class="row">
    <div class="small-12 columns holder">
        <div class="success"></div>
        <div class="errors"></div>
        <div class="form_content">
            <input type="text" name="answer[1]" id="first_last_name" placeholder="Nume si Prenume" class="required"/>
            <input type="text" name="answer[2]" id="email" placeholder="Email" class="required"/>
            <input type="text" name="answer[3]" id="company" placeholder="Companie" class="required"/>
            <input type="text" name="answer[4]" id="phone" placeholder="Telefon" class="required"/>
            <input type="text" name="answer[5]" id="city" placeholder="Oras" class="required"/>
            <textarea name="answer[6]" id="message" placeholder="Mesaj (Optional)"></textarea>

            <div class="g-recaptcha"
                 style="transform:scale(0.73);transform-origin:0;-webkit-transform:scale(0.73);transform:scale(0.73);-webkit-transform-origin:0 0;transform-origin:0 0; 0"
                 data-sitekey="6LdWfQgTAAAAADu1BYRbAgZNSco5gjkOYN6Uu1l2"></div>

        </div>
        <?php if (!empty($service_title)): ?>
            <input type="hidden" value="<?php echo $service_title ?>" id="service_title"/>
        <?php else: ?>
            <select id="service_title">
                <option value="" disabled selected>Selectati un serviciu</option>
                <?php foreach ($list_of_services as $service): ?>
                    <option value="<?php echo $service->title ?>"><?php echo $service->title ?></option>
                <?php endforeach; ?>
            </select>
        <?php endif; ?>
        <a href="#" class="button success book_btn">Demo Serviciu</a>
        <input type="submit" class="button success form_book_button" value="Demo Serviciu"/>
    </div>
</div>


<script>
    jQuery(document).ready(function ($) {
        $('.form_content').hide();
        <?php if(empty($user)): ?>
        $('.form_book_button').hide();
        <?php else: ?>
        $('.book_btn').hide();
        <?php endif; ?>
        $('.book_btn').on('click', function (e) {
            e.preventDefault();
            $('.form_content').slideDown(1000);
            $('.book_btn').hide();
            $('.form_book_button').show();
        });


        $('.form_book_button').on('click', function (event) {
            event.preventDefault();
            $('.errors').html('');
            $('.success').html('');

            //if we don't have the user session data then we have to do this
            <?php if(empty($user)):?>
            //captcha stuff here
            var captcha_response = grecaptcha.getResponse();
            if (typeof captcha_response === 'undefined' || captcha_response === '' || captcha_response == null) {
                jQuery('.errors').html('<p>Accesati butonul captcha</p>');
                return;
            }

            //start passing the variables through
            var first_last_name = jQuery('#first_last_name').val();
            var email = jQuery('#email').val();
            var company = jQuery('#company').val();
            var phone = jQuery('#phone').val();
            var city = jQuery('#city').val();
            var message = jQuery('#message').val();

            <?php endif ?>

            var service_title = jQuery('#service_title').val();
            if (typeof service_title === 'undefined' || service_title === '' || service_title == null) {
                jQuery('.errors').html('<p>Va rugam sa selectati un serviciu</p>');
                return;
            }

            jQuery.ajax
            ({
                type: "POST",
                url: "index.php?option=com_service&task=postFormData&format=raw",
                data: {
                    <?php if(empty($user)): ?>
                    first_last_name: first_last_name,
                    email: email,
                    company: company,
                    phone: phone,
                    city: city,
                    message: message,
                    captcha: captcha_response,
                    <?php endif; ?>
                    service_title: service_title
                },
                cache: false,
                success: function (html) {
                    var data_array = JSON.parse(html);
                    if(data_array['status'] == "error"){
                        $.each(data_array['message'], function(key, value){
                            $('.errors').append('<p>'+value+'</p>');
                        })
                    } else {
                        console.log(data_array)
                        //if everything went well, hide the form and display the message
                        $('.form_content').slideUp(1000);
                        $('.form_book_button').hide();
                        $('#service_title').hide();
                        $('.success').append('<p>'+data_array['message']+'</p>');

                    }
                }
            });

        })
    });
</script>

<style>

</style>