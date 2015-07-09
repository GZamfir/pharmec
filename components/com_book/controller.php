<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_book
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
/**
 *  Book Component Controller
 *
 * @since  0.0.1
 */
class BookController extends JControllerLegacy
{
    public function vote(){

        $app = JFactory::getApplication();
        $post_array = $app->input->post->getArray();
        if(!empty($post_array['vote']) && !empty($post_array['book_id'])){
            $model = $this->getModel('books');
            $result = $model->updateVotes($post_array['book_id']);
            $returned_array = array();

            if($result == true){
                //insert into the middle table
                $updated_votes = $model->getCurrentVotes($post_array['book_id']);
                $returned_array['status'] = "success";
                $returned_array['book_id'] = $post_array['book_id'];
                $returned_array['current_votes'] = $updated_votes;
            } else {
                $returned_array['status'] = "error";
            }
            die(json_encode($returned_array));
        }
    }
}