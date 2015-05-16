<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_partner
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

/**
 * Partner View
 *
 * @since  0.0.1
 */
class PartnerViewPartner extends JViewLegacy
{
    /**
     * View form
     *
     * @var         form
     */
    protected $form = null;

    /**
     * Display the  Partner view
     *
     * @param   string $tpl The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    public function display($tpl = null)
    {
        // Get the Data
        $this->form = $this->get('Form');
        $this->item = $this->get('Item');
        $this->script = $this->get('Script');
        $this->item->tags = new JHelperTags;
        $this->item->tags->getItemTags('com_newsfeeds.newsfeed.' , $this->item->id);
        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            JError::raiseError(500, implode('<br />', $errors));

            return false;
        }


        // Set the toolbar
        $this->addToolBar();

        // Display the template
        parent::display($tpl);

        // Set the document
        $this->setDocument();
    }

    /**
     * Add the page title and toolbar.
     *
     * @return  void
     *
     * @since   1.6
     */
    protected function addToolBar()
    {
        $input = JFactory::getApplication()->input;

        // Hide Joomla Administrator Main menu
        $input->set('hidemainmenu', true);

        $isNew = ($this->item->id == 0);

        if ($isNew) {
            $title = JText::_('COM_PARTNER_MANAGER_PARTNER_NEW');
        } else {
            $title = JText::_('COM_PARTNER_MANAGER_PARTNER_EDIT');
        }

        JToolBarHelper::title($title, 'partner');
        JToolBarHelper::save('partner.save');

        //save to copy
        JToolbarHelper::save2copy('partner.save2copy');

        //save to new
        JToolbarHelper::save2new('partner.save2new');

        JToolBarHelper::cancel(
            'partner.cancel',
            $isNew ? 'JTOOLBAR_CANCEL' : 'JTOOLBAR_CLOSE'
        );
    }


    /**
     * Method to set up the document properties
     *
     * @return void
     */
    protected function setDocument()
    {
        $isNew = ($this->item->id < 1);
        $document = JFactory::getDocument();
        $document->setTitle($isNew ? JText::_('COM_PARTNER_PARTNER_CREATING') : JText::_('COM_PARTNER_PARTNER_EDITING'));
    }
}