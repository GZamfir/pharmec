<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_newsletter
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted Access');
JHtml::_('formbehavior.chosen', 'select');
$listOrder = $this->escape($this->filter_order);
$listDirn = $this->escape($this->filter_order_Dir);?>
<form action="index.php?option=com_newsletter&view=newsletters" method="post" id="adminForm" name="adminForm">
    <div class="row-fluid">
        <div
            class="span6">            <?php echo JText::_('COM_NEWSLETTER_NEWSLETTERS_FILTER'); ?>            <?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th width="1%"><?php echo JText::_('COM_NEWSLETTER_NUM'); ?></th>
            <th width="2%">
                <?php echo JHtml::_('grid.checkall'); ?>
            </th>
            <th width="65%">
                <?php echo JHtml::_('grid.sort', 'COM_NEWSLETTER_NEWSLETTERS_EMAIL', 'email', $listDirn, $listOrder); ?>            </th>
            <th width="15%">
                <?php echo JHtml::_('grid.sort', 'COM_NEWSLETTER_NEWSLETTERS_NEWSLETTER_TYPE', 'client', $listDirn, $listOrder); ?>            </th>
            <th width="5%">
                <?php echo JHtml::_('grid.sort', 'COM_NEWSLETTER_NEWSLETTERS_CITY', 'published', $listDirn, $listOrder); ?>            </th>
            <th width="5%">
                <?php echo JHtml::_('grid.sort', 'COM_NEWSLETTER_PUBLISHED', 'published', $listDirn, $listOrder); ?>            </th>
            <th width="2%">
                <?php echo JHtml::_('grid.sort', 'COM_NEWSLETTER_ID', 'id', $listDirn, $listOrder); ?>            </th>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="5">
                <?php echo $this->pagination->getListFooter(); ?>
            </td>
        </tr>
        </tfoot>
        <tbody>
        <?php if (!empty($this->items)) : ?>
            <?php foreach ($this->items as $i => $row) :
                $link = JRoute::_('index.php?option=com_newsletter&task=newsletter.edit&id=' . $row->id);
                ?>
                <tr>
                    <td><?php echo $this->pagination->getRowOffset($i); ?></td>
                    <td>
                        <?php echo JHtml::_('grid.id', $i, $row->id); ?>
                    </td>
                    <td>
                        <a href="<?php echo $link; ?>"
                           title="<?php echo JText::_('COM_NEWSLETTER_EDIT_NEWSLETTER'); ?>">
                            <?php echo $row->email; ?>
                        </a>
                    </td>
                    <td>
                        <p>
                            <?php echo $row->newsletter_type; ?>
                        </p>
                    </td>
                    <td>
                        <p>

                            <?php echo $row->city; ?>
                        </p>
                    </td>
                    <td align="center">
                        <?php echo JHtml::_('jgrid.published', $row->published, $i, 'newsletters.', true, 'cb'); ?>
                    </td>
                    <td align="center">
                        <?php echo $row->id; ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        <?php endif; ?>
        </tbody>
    </table>
    <input type="hidden" name="task" value=""/>
    <input type="hidden" name="boxchecked" value="0"/>
    <input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>"/> <input type="hidden"
                                                                                        name="filter_order_Dir"
                                                                                        value="<?php echo $listDirn; ?>"/>    <?php echo JHtml::_('form.token'); ?>
</form>