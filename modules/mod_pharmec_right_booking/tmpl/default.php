<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);
?>

<div class="row">
    <div class="small-12 columns holder">
        <div class="form_content">
            <input type="text" placeholder="Nume si Prenume"/>
            <?php if(!empty($service_title)):?>
            <input type="hidden" value="<?php echo $service_title ?>" id="service_title" />
            <?php else: ?>
                <select>
                <?php foreach($list_of_services as $service): ?>
                      <option value="<?php echo $service->title ?>"><?php echo $service->title ?></option>
                <?php endforeach; ?>
                </select>
            <?php endif; ?>
        </div>
        <a href="#" class="button success book_btn">Demo Serviciu</a>
        <input type="submit" class="button success form_book_button" value="Demo Serviciu"/>
    </div>
</div>

<script>
    jQuery(document).ready(function ($) {
        $('.form_content').hide();
        $('.form_book_button').hide();
        $('.book_btn').on('click', function(e){
            e.preventDefault();
            $('.form_content').slideDown(1000);
            $('.book_btn').hide();
            $('.form_book_button').show();
        });
    });
</script>

<style>
    .holder{
        background: rgba(83, 83, 83, 0.95);
        text-align: center;
    }

    .book_btn,
    .form_book_button{
        margin-top: 10px;
    }

    .form_content{
        margin-top: 10px;
    }
</style>