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
 * ServiceList Model
 *
 * @since  0.0.1
 */
class ServiceModelServices extends JModelList
{
    /**
     * Constructor.
     * @param   array $config An optional associative array of configuration settings.
     *
     * @see     JController
     * @since   1.6
     */
    public function __construct($config = array())
    {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array('id', 'title', 'published');
        }
        parent::__construct($config);
    }

    /**
     * Method to build an SQL query to load the list data.
     *
     * @return      string  An SQL query
     */
    protected function getListQuery()
    {
        // Initialize variables.
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);

        // Create the base select statement.
        $query->select('*')
            ->from($db->quoteName('#__service'));

        // Filter: like / search
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $like = $db->quote('%' . $search . '%');
            $query->where('title LIKE ' . $like.' OR description LIKE'.$like);
        }

        // Filter by published state
        $published = $this->getState('filter.published');
        if (is_numeric($published)) {
            $query->where('published = ' . (int)$published);
        } elseif ($published === '') {
            $query->where('(published IN (0, 1))');
        }

        // Filter by catid state
        $catid = $this->getState('filter.catid');
        if(!empty($catid)) {
            if (is_numeric($catid)) {
                $query->where('catid = ' . (int)$catid);
            }
        }

        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering', 'title');
        $orderDirn = $this->state->get('list.direction', 'asc');
        $query->order($db->escape($orderCol) . ' ' . $db->escape($orderDirn));


        return $query;
    }

    public function getCategoryName($catid){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);

        $query->select('cat.title')
            ->from($db->quoteName('#__categories','cat'))
            ->where($db->quoteName('cat.id')."= {$catid}")
            ->where($db->quoteName('cat.extension')."= 'com_service'");

        $db->setQuery($query);
        $results = $db->loadObjectList();
        return $results;
    }

    protected function populateState($ordering = null, $direction = null) {

        // List state information.
        parent::populateState();

        //pagination !!! DON'T TOUCH !!!
        $app = JFactory::getApplication();

        $limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'), 'uint');

        $this->setState('list.limit', $limit);
        // As you can see if no limit is set, it gets it from default value of config,
        // but you can replace $app->getCfg('list_limit') by any integer you want to
        // override default limit value

        $limitstart = $app->input->get('limitstart', 0, 'uint');
        $this->setState('list.start', $limitstart);

        $limitstart = $app->input->get('limitstart', 0, 'uint');
        $this->setState('list.start', $limitstart);
    }
}