<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_booking
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted Access');
JHtml::_('formbehavior.chosen', 'select');
$listOrder = $this->escape($this->filter_order);
$listDirn = $this->escape($this->filter_order_Dir);?>
<form action="index.php?option=com_booking&view=bookings" method="post" id="adminForm" name="adminForm">
    <div class="row-fluid">
        <div
            class="span6">            <?php echo JText::_('COM_BOOKING_BOOKINGS_FILTER'); ?>            <?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>        </div>
    </div>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th width="1%"><?php echo JText::_('COM_BOOKING_NUM'); ?></th>
            <th width="2%">
                <?php echo JHtml::_('grid.checkall'); ?>
            </th>
            <th width="65%">
                <?php echo JHtml::_('grid.sort', 'COM_BOOKING_BOOKINGS_NAME', 'message', $listDirn, $listOrder); ?>            </th>
            <th width="15%">
                <?php echo JHtml::_('grid.sort', 'COM_BOOKING_BOOKINGS_CLIENT', 'client', $listDirn, $listOrder); ?>            </th>
            <th width="5%">
                <?php echo JHtml::_('grid.sort', 'COM_BOOKING_BOOKINGS_TAGS', 'published', $listDirn, $listOrder); ?>            </th>
            <th width="5%">
                <?php echo JHtml::_('grid.sort', 'COM_BOOKING_PUBLISHED', 'published', $listDirn, $listOrder); ?>            </th>
            <th width="2%">
                <?php echo JHtml::_('grid.sort', 'COM_BOOKING_ID', 'id', $listDirn, $listOrder); ?>            </th>
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
                $link = JRoute::_('index.php?option=com_booking&task=booking.edit&id=' . $row->id);
                ?>
                <tr>
                    <td><?php echo $this->pagination->getRowOffset($i); ?></td>
                    <td>
                        <?php echo JHtml::_('grid.id', $i, $row->id); ?>
                    </td>
                    <td>
                        <a href="<?php echo $link; ?>"
                           title="<?php echo JText::_('COM_BOOKING_EDIT_BOOKING'); ?>">
                            <?php echo $row->message; ?>
                        </a>
                    </td>
                    <td>
                        <p>
                            <?php echo $row->client; ?>
                        </p>
                    </td>
                    <td>
                        <p>

                            <?php echo $row->tags; ?>
                        </p>
                    </td>
                    <td align="center">
                        <?php echo JHtml::_('jgrid.published', $row->published, $i, 'bookings.', true, 'cb'); ?>
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