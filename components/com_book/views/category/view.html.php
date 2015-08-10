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
 * HTML View class for the Book Component
 *
 * @since  0.0.1
 */
class BookViewCategory extends JViewLegacy
{
    /**
     * Display the  Service view
     *
     * @param   string  $tpl  The name of the template file to parse; automatically searches through the template paths.
     *
     * @return  void
     */
    function display($tpl = null)
    {
        // Assign data to the view
        $this->item = $this->get('Item');

        if(!empty($this->item)) {
            $this->item->details = json_decode($this->item->params);
            $this->opinions = $this->get('Opinions');

            //if we have an opinion
            if(!empty($this->opinions)){
                //if the contest is opened
                if(isset($this->item->details->book_contest) && $this->item->details->book_contest == 1) {
                    foreach ($this->opinions as $key => $opinion) {
                        //display a list of opinions without the name
                        $opinion->username = "Opinia ".($key +1);
                    }
                }

                $array_of_ids = array();
                //calculate the votes dinamically
                foreach ($this->opinions as $key => $opinion){
                    //get the votes dinamically
                    $array_of_ids[] = $opinion->id;
                }

                $string_of_ids = implode(', ',$array_of_ids);
                $model = $this->getModel('category');
                $list_of_votes = $model->getListOfVotes($string_of_ids);

                foreach ($this->opinions as $key => $opinion) {
                    $opinion->calculated_votes = $list_of_votes[$opinion->id]['book_votes'];
                    if(!isset($opinion->calculated_votes)){
                        $opinion->calculated_votes = 0;
                    }
                }

            }

            //we are sorting this again just in case the query didn't do the job
            $this->array_sort_by_column($this->opinions,'calculated_votes',SORT_DESC);

            //handle the http for the link
            $parsed = parse_url($this->item->details->book_ebook_link);
            if (empty($parsed['scheme'])) {
                $this->item->details->book_ebook_link = 'http://' . ltrim($this->item->details->book_ebook_link, '/');
            }
        }

        $this->logged_in_user = JFactory::getUser();

        $this->can_add_opinion = false;
        $this->contest_ended = false;
        if((!empty($this->logged_in_user->id))){
            if(isset($this->item->details->book_contest) && $this->item->details->book_contest == 1) {
                $this->can_add_opinion = $this->get('CanAddOpinion');
            } else {
                $this->contest_ended = true;
            }
        }

        //load in jquery
        JHtml::_('jquery.framework');

        // Check for errors.
        if (count($errors = $this->get('Errors')))
        {
            JLog::add(implode('<br />', $errors), JLog::WARNING, 'jerror');

            return false;
        }
        // Display the view
        parent::display($tpl);
    }

    function array_sort_by_column(&$arr, $col, $dir = SORT_ASC) {
        $sort_col = array();
        foreach ($arr as $key=> $row) {
            $sort_col[$key] = $row->$col;
        }

        array_multisort($sort_col, $dir, $arr);
    }

}