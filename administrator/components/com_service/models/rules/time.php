<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_service
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Form Rule class for the Joomla Framework.
 */
class JFormRuleTime extends JFormRule
{
    /**
     * The regular expression.
     *
     * @access	protected
     * @var		string
     * @since	2.5
     */
    protected $regex = '([0-1][0-9]|2[0-3]):([0-5][0-9])$';
}