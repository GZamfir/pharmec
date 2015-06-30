<!DOCTYPE html>
<?php
$doc = JFactory::getDocument();
$user = JFactory::getUser();
$doc->addStyleSheet('templates/' . $this->template . '/css/normalize.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/foundation.css');
$doc->addStyleSheet('templates/' . $this->template . '/slider/slick.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/app.css');
$doc->addScript('/templates/' . $this->template . '/js/modernizr.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/js/foundation.min.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/js/pharmec.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/slider/slick.min.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/js/jquery.sticky-kit.min.js', 'text/javascript');
// Get some base joomla stuff
$renderer = $doc->loadRenderer('module');
$input = JFactory::getApplication()->input;
$title = strtolower($doc->getTitle());
$id = $input->get('id');
$viewType = $input->get('view');
if (JUri::getInstance()->toString() == JUri::base()) {
    $home = true;
} else {
    $home = false;
}

$componentParams = JComponentHelper::getParams('com_pharmec');
?>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jdoc:include type="head"/>
</head>
<body>
<header>
    <div class="row collapse">
        <div class="medium-3 small-12 columns">
                <a href="/">
                    <img class="logo" src="<?php echo $componentParams->get('header_image', '/templates/'.$this->template.'/images/pharmec_logo.png'); ?>"/>
                </a>
        </div>
    </div>

    <div class="row main_menu">
        <jdoc:include type="modules" name="mainmenu" title="Main Menu"/>
        </div>
</header>

<div class="top_slider">
    <jdoc:include type="modules" name="top"/>
</div>

<?php if ($this->countModules('right')) {
    $right_module_loaded = true;
} else {
    $right_module_loaded = false;
} ?>

<div class="row main-content">
    <?php if ($right_module_loaded): ?>
        <div class="small-12 medium-9 columns component_column">
            <jdoc:include type="component"/>
        </div>
        <div class="small-12 medium-3 columns purchase_column">
            <div class="stick">
            <jdoc:include type="modules" name="right"/>
            </div>
        </div>
    <?php else: ?>
        <div class="small-12 columns">
            <jdoc:include type="component"/>
        </div>
    <?php endif; ?>
</div>

<div class="news">
    <jdoc:include type="modules" name="news"/>
</div>
<div class="parteneri_home">
    <jdoc:include type="modules" name="middle"/>
</div>


<footer>
    <div class="row footer_div">
        <div class="small-12 medium-6 columns left_column">
            <h3>Contact</h3>
                <div class="small-12 columns contact_details">
                    <div class="row address_row">
                    <div class="small-2 columns contact_icon">
                        <img src="/templates/<?php echo $this->template; ?>/images/footer_images/home.png" alt="adresa"/>
                    </div>
                        <div class="small-10 columns end contact_text">
                            <p><?php echo $componentParams->get('footer_address') ?></p>
                        </div>
                    </div>

                    <div class="row phone_row">
                        <div class="small-2 columns contact_icon">
                            <img src="/templates/<?php echo $this->template; ?>/images/footer_images/phone.png" alt="adresa"/>
                        </div>
                        <div class="small-10 columns end contact_text">
                            <a href="tel:<?php echo $componentParams->get('footer_phone')?>"><?php echo $componentParams->get('footer_phone') ?></a>
                        </div>
                    </div>

                    <div class="row email_row">
                        <div class="small-2 columns contact_icon">
                            <img src="/templates/<?php echo $this->template; ?>/images/footer_images/email.png" alt="adresa"/>
                        </div>
                        <div class="small-10 columns end contact_text">
                            <a href="mail:<?php echo $componentParams->get('footer_email') ?>"><?php echo $componentParams->get('footer_email') ?></a>
                        </div>
                    </div>
                </div>
        </div>
        <div class="small-12 medium-6 columns">
            <jdoc:include type="modules" name="footer_booking"/>
        </div>
    </div>
</footer>
<div class="visible-for-small-down" id="mobile_identifier"></div>
</body>
</html>