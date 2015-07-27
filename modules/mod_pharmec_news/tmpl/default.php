<?php
// No direct access
defined('_JEXEC') or die;
JHtml::_('jquery.framework', false);

$app = JFactory::getApplication();
$menu = $app->getMenu();
?>


<div class="row pharmec_parteneri">
    <div class="small-12 columns">
        <div class="small-6 medium-4 large-3 columns end heading_text_bubble">
            <h2>Știri</h2>
        </div>
        <div class="small-12 columns holder_bubble">
            <?php foreach ($noutati as $noutate): ?>
                <div class="individual_news row">
                    <div class="small-12 columns">
                        <h3><?php echo $noutate->title; ?></h3>
                    </div>
                    <div class="small-12 columns news_description">
                        <?php echo $noutate->introtext; ?>
                    </div>
                    <?php
                    $path = "index.php?option=com_content&view=article&id={$noutate->id}";
                    $attributes = array('menutype','link');
                    $values = array('menutype'=>'mainmenu','link'=>$path);
                    $menu_object = $menu->getItems('link',$path,TRUE);
                    if(!empty($menu_object)) {
                        $noutate->href = $menu_object->route;
                    }
                    ?>
                    <div class="small-12 columns news_more_link_placeholder">
                        <a class="news_more_link" href="<?php echo (!empty($noutate->href))?$noutate->href:"#" ?>">Mai mult ></a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

