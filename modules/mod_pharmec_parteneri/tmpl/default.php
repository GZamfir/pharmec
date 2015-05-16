<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);
?>


<div class="row pharmec_parteneri">
    <div class="small-12 columns">
        <div class="small-6 medium-4 large-3 columns end heading_text_bubble">
            <h2>Parteneri</h2>
        </div>
        <div class="small-12 columns holder_parteneri accreditation-logos-slider">
            <?php foreach ($parteneri as $partener): ?>
                <div class="individual_partner medium-4 small-12 columns testimonial-slide">
                    <a href="<?php echo $partener->website; ?>">
                        <img src="<?php echo $partener->image; ?>" alt="<?php echo $partener->name; ?>">
                    </a>
                </div>
            <?php endforeach; ?>
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

    .heading_text_bubble h2 {
        color: #FFFFFF;
    }

    .pharmec_parteneri {
        margin-top: 25px;
        margin-bottom: 25px;
    }

    .holder_parteneri {
        border-bottom-right-radius: 25px;
        border-top-right-radius: 25px;
        border-bottom-left-radius: 25px;
        border: 2px solid #05acb3;
        background-color: rgba(129, 130, 129, 0.100);
    }

    /* added the following to give the background color of the arrows as red for visibility, the default which can be found in the slick-theme.css was white */
    .slick-prev:before,
    .slick-next:before {
        color: #05acb3;
    }

    .slick-next{
        right: 3px;
    }

    .slick-prev{
        left: 3px;
    }
</style>

