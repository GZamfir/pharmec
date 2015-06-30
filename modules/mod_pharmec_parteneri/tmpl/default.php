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
        <div class="small-12 columns holder_bubble partners-logos-slider">
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


