<!DOCTYPE html>
<?php

JHtml::_('jquery.framework');
$doc = JFactory::getDocument();
$user = JFactory::getUser();
$doc->addStyleSheet('templates/' . $this->template . '/css/normalize.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/foundation.css');
$doc->addStyleSheet('templates/' . $this->template . '/slider/slick.css');
$doc->addStyleSheet('templates/' . $this->template . '/css/app.css');
$doc->addScript('/templates/' . $this->template . '/js/modernizr.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/js/foundation.min.js', 'text/javascript');
$doc->addScript('/templates/' . $this->template . '/slider/slick.min.js', 'text/javascript');
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

$jinput = JFactory::getApplication()->input;
$current_component = $jinput->get('option');

$componentParams = JComponentHelper::getParams('com_pharmec');

$logged_in_user = JFactory::getUser();

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
                <img class="logo"
                     src="<?php echo $componentParams->get('header_image', '/templates/' . $this->template . '/images/pharmec_logo.png'); ?>"/>
            </a>
        </div>
        <?php if (!empty($logged_in_user->id)): ?>
            <div class="small-12 medium-3 medium-offset-6 columns">
                Sunteti logat(a) ca <?php echo $logged_in_user->username; ?>
                <a href="index.php?option=com_users&task=user.logout&<?php echo JSession::getFormToken(); ?>=1">
                    <input type="button" name="Submit" class="button logout_button" value="Logout">
                </a>
            </div>
        <?php else: ?>

            <div class="small-12 medium-2 medium-offset-7 columns end">
                <a href="/login" class="button login_button show-for-small-down">Login</a>

                <div class="show-for-medium-up">
                    <a href="/login">
                        <img src="/templates/<?php echo $this->template; ?>/images/login_button.png" alt="login"/>
                    </a>
                </div>
            </div>
        <?php endif; ?>
    </div>

    <div class="row">
        <div class="main_menu">
            <jdoc:include type="modules" name="mainmenu" title="Main Menu"/>
        </div>
        <div id="left_btn_div">
            <a href="#" id="left-button"><img src="/templates/<?php echo $this->template; ?>/images/left_arrow.png"></a>
        </div>

        <div id="right_btn_div">
            <a href="#" id="right-button"><img src="/templates/<?php echo $this->template; ?>/images/right_arrow.png"></a>
        </div>
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

<?php if ($current_component != "com_users"): ?>
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
<?php else: ?>
    <div class="row main-content">
        <div class="small-12 medium-4 medium-offset-4 columns">
            <div class="error_message" style="color: red">
                <jdoc:include type="message"/>
            </div>
            <jdoc:include type="component"/>
        </div>
    </div>
<?php endif; ?>

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
                        <img src="/templates/<?php echo $this->template; ?>/images/footer_images/home.png"
                             alt="adresa"/>
                    </div>
                    <div class="small-10 columns end contact_text">
                        <p><?php echo $componentParams->get('footer_address') ?></p>
                    </div>
                </div>

                <div class="row phone_row">
                    <div class="small-2 columns contact_icon">
                        <img src="/templates/<?php echo $this->template; ?>/images/footer_images/phone.png"
                             alt="adresa"/>
                    </div>
                    <div class="small-10 columns end contact_text">
                        <a href="tel:<?php echo $componentParams->get('footer_phone') ?>"><?php echo $componentParams->get('footer_phone') ?></a>
                    </div>
                </div>

                <div class="row email_row">
                    <div class="small-2 columns contact_icon">
                        <img src="/templates/<?php echo $this->template; ?>/images/footer_images/email.png"
                             alt="adresa"/>
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
<?php

$doc->addScript('/templates/' . $this->template . '/js/pharmec.js', 'text/javascript');
?>
</body>
</html>