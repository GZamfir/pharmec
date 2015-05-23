<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);
?>


<div class="row pharmec_parteneri">
    <div class="small-12 columns">
        <div class="small-6 medium-4 large-3 columns end heading_text_bubble">
            <h2>Noutati</h2>
        </div>
        <div class="small-12 columns holder_bubble">
            <?php foreach ($noutati as $noutate): ?>
                <div class="row">
                <div class="individual_partner small-12 columns">
                    <h3><?php echo $noutate->title; ?></h3>
                </div>
                    <div class="small-12 columns">
                        <?php echo $noutate->introtext; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

