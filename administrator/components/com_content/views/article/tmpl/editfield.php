<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/* Layouts configuration */
$layouts = array(
	'3_9' => array(
		'description' => 'Slim left column, wide right column',
		'columns' => array(
			array('width' => 3, 'class' => 'small-4 small-offset-4 medium-3 medium-offset-0 columns'),
			array('width' => 9,'class' => 'small-12 medium-9 columns')
		)
	),
	'6_6' => array(
		'description' => 'Equal columns',
		'columns' => array(
			array('width' => 6, 'class' => 'medium-6 columns'),
			array('width' => 6,'class' => 'medium-6 columns')
		)
	),
	'9_3' => array(
		'description' => 'Wide left column, slim right column',
		'columns' => array(
			array('width' => 9, 'class' => 'small-12 medium-9 columns'),
			array('width' => 3,'class' => 'small-12 medium-3 medium-offset-0 columns')
		)
	),
	'7_4' => array(
		'description' => 'Wide left column, slim right column with offset',
		'columns' => array(
			array('width' => 7, 'class' => 'small-12 medium-7 columns'),
			array('width' => 4,'class' => 'small-12 medium-4 medium-offset-1 columns')
		)
	)
);

/* Javascript to insert code into editor */
ob_start();
?>
var layouts = <?=json_encode($layouts)?>;

var selection = jQuery(window.parent.tinyMCE.activeEditor.selection.getNode());

var input = selection.parent().find("input[name^=label]");

var input_value = input.val();

jQuery(document).ready(function(){

if(input_value == "break"){
jQuery(".description_text").hide();
jQuery(".break_text").html("<p>You have selected a break line</p>");
jQuery(".edit_field").hide();
} else {
jQuery("#link").val(input_value);
}
});

var editField = function(editor) {

var current_text = jQuery('#link').val();

selection.parent().find("label").text(current_text);
input.val(current_text);

window.parent.jModalClose();
return false;
}

var removeField = function(editor) {
selection.parent().remove();
window.parent.jModalClose();

return false;
}

var getSelectedLayout = function() {
return jQuery('#link').val();
}
<?php
$script = ob_get_contents();
ob_end_clean();

/**
Create divs which show columns in a layout
return: string - HTML elements.
 */
function drawSampleLayout($columns, $columns_in_layout, $layout_width) {
	$result = '<div class="sample_layout">';
	foreach ($columns as $column) {
		$column_width = floor(($column['width'] / $columns_in_layout) * $layout_width);
		$result .= '<div class="sample_column" style="width: ' . $column_width . 'px"></div>';
	}
	$result .= '</div>';

	return $result;
}

JFactory::getDocument()->addScriptDeclaration($script);
?>
<style>
	.layouts input[type=radio]{
		margin-top: 28px;
		float: left;
		margin-right: 10px;
	}

	.layouts>div {
		clear: both;
		padding-top: 10px;
	}

	.sample_layout {
		float: left;
		width: 80px;
		height: 60px;
		background-color: #ccc;
		padding: 3px 0px 5px 3px;
	}

	.sample_column {
		border: 1px dotted #333;
		margin-right:3px;
		height: 100%;
		float: left;
	}
</style>
<form class="form-horizontal">

	<script src="//tinymce.cachefly.net/4.2/tinymce.min.js"></script>
	<div class="control-group description_text">
		<?php echo JText::_('Please edit the selected field:'); ?>
		<input type="text" id="link" name="link"/>
	</div>
	<div class="break_text">

	</div>
	<button onclick="editField();" class="btn btn-primary edit_field"><?php echo JText::_('Edit Selected Field'); ?></button>
	<button onclick="removeField();" class="btn btn-primary remove_field"><?php echo JText::_('Remove Selected Field'); ?></button>
</form>