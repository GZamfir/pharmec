<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);
?>

<div class="row">
    <div class="small-12 columns footer_holder">
        <div class="form_content_footer">
            <div class="small-12 medium-6 columns left_column">
                <input type="text" id="name_surname" placeholder="Nume si Prenume"/>
                <input type="text" id="company" placeholder="Companie"/>
                <input type="text" id="city" placeholder="Oras/Judet"/>
            </div>
            <div class="small-12 medium-6 columns right_column">
                <input type="text" id="email" placeholder="Email"/>
                <input type="text" id="phone" placeholder="Telefon"/>
                <select>
                    <option value="">-- Alege Serviciu --</option>
                    <?php foreach ($list_of_services as $service): ?>
                        <option value="<?php echo $service->title ?>"><?php echo $service->title ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
        <div class="button_placeholder small-2 medium-offset-7 small-offset-3 columns">
        <input type="submit" class="button info footer_form_book_button" value="Demo Serviciu"/>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function ($) {
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