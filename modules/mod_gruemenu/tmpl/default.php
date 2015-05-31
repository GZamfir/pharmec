<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_gruemenu
 * @copyright	Copyright (C) 2015 TheGrue.org - All rights reserved.
 * @license		GNU General Public License version 2 or later
 */

// no direct access
defined('_JEXEC') or die;

$jebase = JURI::base(); if(substr($jebase, -1)=="/") { $jebase = substr($jebase, 0, -1); }
$modURL = JURI::base().'modules/mod_gruemenu';


$menubg = $params->get('menubg','');
$menulink = $params->get('menulink','');
$submenubg = $params->get('submenubg','');
$submenulink = $params->get('submenulink','');
$menulinkhover = $params->get('menulinkhover','');
$menubghover = $params->get('menubghover','');
$menuradius = $params->get('menuradius','');
$fontstyle = $params->get('fontstyle','Open+Sans');
?>
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
<link rel="stylesheet" href="<?php echo $modURL; ?>/css/styles.css" type="text/css" media="screen"/>
<link href="http://fonts.googleapis.com/css?family=<?php echo $fontstyle; ?>" rel="stylesheet" type="text/css">
<style>

#gruemenu.grue_<?php echo $module->id ?> { background: <?php echo $menubg; ?>; }
#gruemenu.grue_<?php echo $module->id ?> ul li a, #gruemenu.grue_<?php echo $module->id ?> #menu-button {font-family: '<?php echo str_replace("+"," ",$fontstyle); ?>', Arial, Helvetica, sans-serif ;}
#gruemenu.grue_<?php echo $module->id ?> > ul > li > a { color: <?php echo $menulink; ?>; text-transform:uppercase}
#gruemenu.grue_<?php echo $module->id ?> > ul > li:hover > a,
#gruemenu.grue_<?php echo $module->id ?> > ul > li > a:hover,
#gruemenu.grue_<?php echo $module->id ?> > ul > li.active > a {color: <?php echo $menulinkhover; ?>; background: <?php echo $menubghover; ?>;}
#gruemenu.grue_<?php echo $module->id ?> ul ul li:hover > a,
#gruemenu.grue_<?php echo $module->id ?> ul ul li.active > a {color: <?php echo $menulinkhover; ?>; background: <?php echo $menubghover; ?>;}
#gruemenu.grue_<?php echo $module->id ?> > ul > li.has-sub > a::after {border-top-color: <?php echo $menulink; ?>; }
#gruemenu.grue_<?php echo $module->id ?> > ul > li.has-sub.active > a::after,
#gruemenu.grue_<?php echo $module->id ?> > ul > li.has-sub:hover > a {border-top-color: <?php echo $menulinkhover; ?>;}
#gruemenu.grue_<?php echo $module->id ?> > ul > li > ul::after { border-bottom-color: <?php echo $submenubg; ?>}
#gruemenu.grue_<?php echo $module->id ?> ul ul ul::after {border-right-color:  <?php echo $submenubg; ?> }

#gruemenu.grue_<?php echo $module->id ?> ul ul li a {color: <?php echo $submenulink; ?>; background: <?php echo $submenubg; ?>;}
#gruemenu.grue_<?php echo $module->id ?> ul ul li:hover > a,
#gruemenu.grue_<?php echo $module->id ?> ul ul li.active > a {color: <?php echo $menulinkhover; ?>;background:<?php echo $menubghover; ?>;}
#gruemenu.grue_<?php echo $module->id ?> ul ul li.has-sub > a::after {border-left-color: <?php echo $submenulink; ?>; }

#gruemenu.grue_<?php echo $module->id ?> ul ul li.has-sub.active > a::after,
#gruemenu.grue_<?php echo $module->id ?> ul ul li.has-sub:hover > a::after {border-left-color:<?php echo $menulinkhover; ?>; }

#gruemenu.grue_<?php echo $module->id ?> #menu-button { color: <?php echo $menulink; ?>; }

#gruemenu.grue_<?php echo $module->id ?> {-webkit-border-radius: <?php echo $menuradius; ?>px; -moz-border-radius: <?php echo $menuradius; ?>px; -o-border-radius: <?php echo $menuradius; ?>px; border-radius: <?php echo $menuradius; ?>px;  border-radius: <?php echo $menuradius; ?>px;}
#gruemenu.grue_<?php echo $module->id ?> ul li:first-child > a  { border-top-left-radius: <?php echo $menuradius; ?>px; border-bottom-left-radius: <?php echo $menuradius; ?>px;}
#gruemenu.grue_<?php echo $module->id ?> ul ul li:first-child > a { border-top-left-radius: <?php echo $menuradius; ?>px; border-top-right-radius: <?php echo $menuradius; ?>px; border-bottom-left-radius: 0px; border-bottom-right-radius: px;}
#gruemenu.grue_<?php echo $module->id ?> ul ul li:last-child > a {border-top-left-radius: 0px; border-top-right-radius: 0px; border-bottom-left-radius: <?php echo $menuradius; ?>px; border-bottom-right-radius: <?php echo $menuradius; ?>px;}

#gruemenu.grue_<?php echo $module->id ?> #menu-button::after {border-top: 2px solid <?php echo $menulink; ?>; border-bottom: 2px solid <?php echo $menulink; ?>; }
#gruemenu.grue_<?php echo $module->id ?> #menu-button::before {border-top: 2px solid <?php echo $menulink; ?>; }

</style>

<?php if ($params->get('jQuery')) { ?>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>
<?php } ?>
<script type="text/javascript">
( function( jQuery ) {
jQuery( document ).ready(function() {
jQuery('.grue_<?php echo $module->id ?>').prepend('<div id="menu-button"><?php echo $module->title; ?></div>');
	jQuery('.grue_<?php echo $module->id ?> #menu-button').on('click', function(){
		var menu = jQuery(this).next('ul');
		if (menu.hasClass('open')) {
			menu.removeClass('open');
		}
		else {
			menu.addClass('open');
		}
	});
});
} )( jQuery );
</script>
<div id="gruemenu" class="grue_<?php echo $module->id ?> <?php echo $class_sfx;?>">
<ul <?php
	$tag = '';
	if ($params->get('tag_id')!=NULL) {
		$tag = $params->get('tag_id').'';
		echo ' id="'.$tag.'"';
	}
?>>
<?php
foreach ($list as $i => &$item) :
	$class = 'item-'.$item->id;
	if ($item->id == $active_id) {
		$class .= ' current';
	}

	if (in_array($item->id, $path)) {
		$class .= ' active';
	}
	elseif ($item->type == 'alias') {
		$aliasToId = $item->params->get('aliasoptions');
		if (count($path) > 0 && $aliasToId == $path[count($path)-1]) {
			$class .= ' active';
		}
		elseif (in_array($aliasToId, $path)) {
			$class .= ' alias-parent-active';
		}
	}

	if ($item->deeper) {
		$class .= ' has-sub';
	}

	if ($item->parent) {
		$class .= ' parent';
	}

	if (!empty($class)) {
		$class = ' class="'.trim($class) .'"';
	}
	
	
	echo '<li'.$class.'>';

	// Render the menu item.
	switch ($item->type) :
		case 'separator':
		case 'url':
		case 'component':
			require JModuleHelper::getLayoutPath('mod_gruemenu', 'default_'.$item->type);
			break;

		default:
			require JModuleHelper::getLayoutPath('mod_gruemenu', 'default_url');
			break;
	endswitch;

	// The next item is deeper.
	if ($item->deeper) {
		echo '<ul>';
	}
	// The next item is shallower.
	elseif ($item->shallower) {
		echo '</li>';
		echo str_repeat('</ul></li>', $item->level_diff);
	}
	// The next item is on the same level.
	else {
		echo '</li>';
	}

endforeach;
?>
</ul>
</div>

