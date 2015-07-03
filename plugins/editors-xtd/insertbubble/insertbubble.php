<?php
/**
 * @package     Joomla.Plugin
 * @subpackage  Editors-xtd.pagebreak
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Editor Pagebreak buton
 *
 * @since  1.5
 */
class PlgButtonInsertbubble extends JPlugin
{
	/**
	 * Load the language file on instantiation.
	 *
	 * @var    boolean
	 * @since  3.1
	 */
	protected $autoloadLanguage = true;

	/**
	 * Display the button
	 *
	 * @param   string  $name  The name of the button to add
	 *
	 * @return array A two element array of (imageName, textToInsert)
	 */
	public function onDisplay($name)
	{
		//JHtml::_('behavior.modal');

		//$link = 'index.php?option=com_content&amp;view=article&amp;layout=twocolumn&amp;tmpl=component&amp;e_name=' . $name;
                $doc = JFactory::getDocument();
		$getContent = "<div class=\'row\'>";
                $getContent .= "<div class=\'small-12 columns serviciu_single\'>";
                $getContent .= "<div class=\'small-6 medium-6 large-6 columns end heading_text_bubble\'>";
                $getContent .= "<h2>Titlu</h2>";
                $getContent .= "</div>";
                $getContent .= "<div class=\'small-12 columns holder_bubble\'>";
                $getContent .= "<div class=\'serviciu_description\'>";
                $getContent .= "<p>Descriere</p>";
                $getContent .= "</div></div></div></div>";
		$js = "
			function insertInsertbubble(editor)
			{
				var content = '$getContent';
                                        jInsertEditorText(content, editor);
			}
			";

		$doc->addScriptDeclaration($js);

		$button = new JObject;
		$button->modal = false;
		$button->class = 'btn';
		$button->onclick = 'insertInsertbubble(\'' . $name . '\');return false;';
		$button->text  = JText::_('Insert Bubble');
		$button->name  = 'copy';
                $button->link = '#';

		return $button;
	}
}