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
    public function display($cachable = false, $urlparams = false)
    {
        $session = JFactory::getSession();
        // Assign data to the view
        $voted_books_session = $session->get('voted_books');
        if(empty($voted_books_session)) {
            $this->logged_in_user = JFactory::getUser();
            if (!empty($this->logged_in_user->id)) {
                $model = $this->getModel('books');
                $voted_books = $model->getListOfVotes($this->logged_in_user->id);

                $compressed_array = $this->array_pluck($voted_books, "book_id");
                $session->set('voted_books',$compressed_array);

            }
        }

        $view = JFactory::getApplication()->input->getCmd('view', 'books');
        JFactory::getApplication()->input->set('view', $view);

        parent::display($cachable, $urlparams);

        return $this;
    }


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

                //add to the session as well
                $session = JFactory::getSession();
                // Assign data to the view
                $voted_books_session = $session->get('voted_books');
                $voted_books_session[] = $post_array['book_id'];
                $session->set('voted_books',$voted_books_session);

                //return the messages
                $returned_array['status'] = "success";
                $returned_array['book_id'] = $post_array['book_id'];
                $returned_array['current_votes'] = $updated_votes;
            } else {
                $returned_array['status'] = "error";
            }
            die(json_encode($returned_array));
        }
    }

    function array_pluck(array $array = array(), $key)
    {
        return array_map(function($item) use($key)
        {
            return $item[$key];
        }, $array);
    }

    public function addOpinion(){
        //posted array
        $app = JFactory::getApplication();
        $post_array = $app->input->post->getArray();

        $opinion_data = "<p>" .$post_array['opinion_data'] . "</p>";
        $book_id = $post_array['book_id'];
        $this->logged_in_user = JFactory::getUser();

        if(empty($this->logged_in_user)){
            $returned_array['status'] = "error";
            $returned_array['message'] = "Nu puteti vota daca nu sunteti logat.";
        }


        if(!empty($post_array['opinion_data'])){
            $model = $this->getModel('category');
            $result = $model->addOpinionForBook($this->logged_in_user->id,$book_id,$opinion_data);
            if($result){
                $returned_array['status'] = "success";
            } else {
                $returned_array['status'] = "error";
                $returned_array['message'] = "A fost o problema cu inserarea datelor. Va rugam sa incercati mai tarziu.";
            }
        } else {
            $returned_array['status'] = "error";
            $returned_array['message'] = "Va rugam sa completati campul Opinie.";
        }

        die(json_encode($returned_array));
    }
}