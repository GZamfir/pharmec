<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);
?>


<div class="row pharmec_parteneri">
    <div class="small-12 columns">
        <div class="small-3 columns end heading_text_bubble">
            <h1>Parteneri</h1>
        </div>
        <div class="small-12 columns holder_parteneri">
            <div class="individual_partner small-4 columns">
                <img src="/images/parteneri/pharmec.png">
            </div>
            <div class="individual_partner small-4 columns">
                <img src="/images/parteneri/telekom.png">
            </div>
            <div class="individual_partner small-4 columns">
                <img src="/images/parteneri/Avast.jpg">
            </div>
        </div>
    </div>
</div>

<style>
    .heading_text_bubble {
        border-top-right-radius: 25px;
        border-top-left-radius: 25px;
        border: 2px solid #05acb3;
        background-color: #05acb3;
        color: #FFFFFF;
        text-align: center;
    }

    .heading_text_bubble h1{
        color: #FFFFFF;
    }

    .pharmec_parteneri {
        margin-top: 25px;
        margin-bottom: 25px;
    }

    .holder_parteneri{
        border-bottom-right-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border: 2px solid #05acb3;
        background-color: rgba(129, 130, 129, 0.100);
    }

</style>

