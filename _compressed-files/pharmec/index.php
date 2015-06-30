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
$doc->addScript('/templates/' . $this->template . '/slider/slick.min.js', 'text/javascript');
// Get some base joomla stuff
$renderer = $doc->loadRenderer('module');
$input = JFactory::getApplication()->input;
$title = strtolower($doc->getTitle());
$id = $input->get('id');
$viewType = $input->get('view');
if (JUri::getInstance()->toString() == JUri::base()) { $home = true; } else { $home = false;}
?>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jdoc:include type="head" />
</head>
<body>
<header>
    <div class="row collapse">
        <div class="medium-3 columns">
            <div class="row hide-for-small-down columns">
                <a href="/">
                    <img class="logo" src="/templates/<?php echo $this->template;?>/images/pharmec_logo.png"/>
                </a>
            </div>
        </div>
    </div>

    <div class="row collapse">
        <div class="small-12 medium-12 large-9 columns">
            <nav id="top-bar-id" class="top-bar" data-topbar role="navigation">
                <ul class="title-area">
                    <li class="name">
                        <a href="/">
                            <img class="hide-for-medium-up logo" src="/templates/<?php echo $this->template;?>/images/pharmec_logo.png"/>
                        </a>
                        <div id="show-search">
                            <img class="mag-glass hide-for-medium-up" src="/templates/<?php echo $this->template;?>/images/mag_glass.png" />
                        </div>
                    </li>
                    <li class="toggle-topbar menu-icon hide-for-medium-up">
                        <a href="#">
                            <span></span>
                        </a>
                    </li>
                </ul>
                <section class="top-bar-section">
                    <jdoc:include type="modules" name="mainmenu" title="Main Menu" />
                </section>
            </nav>
        </div>
        <div class="small-6 small-offset-3 medium-offset-0 medium-3 columns end hide-for-medium-only">
            <div id="search-box">
                <jdoc:include type="modules" name="pharmec-search" title="Search" />
                <div class="search-icon">
                    <img src="/templates/<?php echo $this->template;?>/images/search-icon.png"/>
                </div>
            </div>
        </div>
    </div>


    </header>
</body>
</html>