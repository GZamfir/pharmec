<?php
defined('_JEXEC') or die ('Restricted access');

class plgContentMenuItemLogo extends JPlugin
{


    protected $autoloadLanguage = false;

    function onContentPrepareForm($form, $data)
    {
        $app = JFactory::getApplication();
        $option = $app->input->get('option');
        $view = $app->input->get('view');
        $extension = $app->input->get('extension');

        switch ($option) {

            case 'com_categories': {
                switch ($extension) {
                    case 'com_service': {
                        if ($app->isAdmin()) {
                            JForm::addFormPath(__DIR__ . '/forms');
                            $form->loadFile('menuitemlogoparams', true);
                        }
                        return true;
                    }
                }

            }

        }
        return true;

    }
}

?>