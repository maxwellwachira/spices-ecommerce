<?php
/**
 * @package SP Page Builder
 * @author JoomShaper http://www.joomshaper.com
 * @copyright Copyright (c) 2010 - 2020 JoomShaper
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 or later
*/
//no direct accees
defined ('_JEXEC') or die ('restricted aceess');

jimport('joomla.application.component.modelitem');

JLoader::register('SppagebuilderHelperRoute', JPATH_ROOT . '/components/com_sppagebuilder/helpers/route.php');

class SppagebuilderModelPage extends JModelItem
{

	protected $_context = 'com_sppagebuilder.page';


	protected function populateState()
	{
		$app = JFactory::getApplication('site');

		$pageId = $app->input->getInt('id');
		$this->setState('page.id', $pageId);

		$user = JFactory::getUser();

		if ((!$user->authorise('core.edit.state', 'com_sppagebuilder')) && (!$user->authorise('core.edit', 'com_sppagebuilder')))
		{
			$this->setState('filter.published', 1);
		}

		$this->setState('filter.language', JLanguageMultilang::isEnabled());
	}

	public function getItem( $pageId = null )
	{
		$user = JFactory::getUser();

		$pageId = (!empty($pageId))? $pageId : (int)$this->getState('page.id');

		if ( $this->_item == null )
		{
			$this->_item = array();
		}

		if (!isset($this->_item[$pageId]))
		{
			try
			{
				$db = $this->getDbo();
				$query = $db->getQuery(true)
					->select('a.*')
					->from('#__sppagebuilder as a')
					->where('a.id = ' . (int) $pageId);

				$query->select('l.title AS language_title')
					->leftJoin( $db->quoteName('#__languages') . ' AS l ON l.lang_code = a.language');

				$query->select('ua.name AS author_name')
					->leftJoin('#__users AS ua ON ua.id = a.created_by');

				// Filter by published state.
				$published = $this->getState('filter.published');

				if (is_numeric($published))
				{
					$query->where('a.published = ' . (int) $published);
				}
				elseif ($published === '')
				{
					$query->where('(a.published IN (0, 1))');
				}

				if ($this->getState('filter.language'))
				{
					$query->where('a.language in (' . $db->quote(JFactory::getLanguage()->getTag()) . ',' . $db->quote('*') . ')');
				}

				$db->setQuery($query);
				$data = $db->loadObject();

				if (empty($data)) {
					return JError::raiseError(404, JText::_('COM_SPPAGEBUILDER_ERROR_PAGE_NOT_FOUND'));
				}

				if ($access = $this->getState('filter.access')) {
					$data->access_view = true;
				}else{
					$user = JFactory::getUser();
					$groups = $user->getAuthorisedViewLevels();

					$data->access_view = in_array($data->access, $groups);
				}

				$data->link = SppagebuilderHelperRoute::getPageRoute($data->id, $data->language);
				$data->formLink = SppagebuilderHelperRoute::getFormRoute($data->id, $data->language);

				$this->_item[$pageId] = $data;
			}
			catch (Exception $e)
			{
				if ($e->getCode() == 404 )
				{
					JError::raiseError(404, $e->getMessage());
				}
				else
				{
					$this->setError($e);
					$this->_item[$pageId] = false;
				}
			}
		}

		return $this->_item[$pageId];
	}

	/**
	 * Increment the hit counter for the page.
	 *
	 * @param   integer  $pk  Optional primary key of the page to increment.
	 *
	 * @return  boolean  True if successful; false otherwise and internal error set.
	 */
	public function hit($pk = 0)
	{
		$pk = (!empty($pk)) ? $pk : (int) $this->getState('page.id');
		$table = JTable::getInstance('Page', 'SppagebuilderTable');
		$table->load($pk);
		$table->hit($pk);

		return true;
	}

	public function getMySections() {
      $db = JFactory::getDbo();
      $query = $db->getQuery(true);
      $query->select($db->quoteName(array('id', 'title', 'section')));
      $query->from($db->quoteName('#__sppagebuilder_sections'));
      //$query->where($db->quoteName('profile_key') . ' LIKE '. $db->quote('\'custom.%\''));
      $query->order('id ASC');
      $db->setQuery($query);
      $results = $db->loadObjectList();
      return json_encode($results);
    }

    public function deleteSection($id){
      $db = JFactory::getDbo();

      $query = $db->getQuery(true);

      // delete all custom keys for user 1001.
      $conditions = array(
          $db->quoteName('id') . ' = '.$id
      );

      $query->delete($db->quoteName('#__sppagebuilder_sections'));
      $query->where($conditions);

      $db->setQuery($query);

      return $db->execute();
    }

    public function saveSection($title, $section){
      $db = JFactory::getDbo();
      $user = JFactory::getUser();
      $obj = new stdClass();
      $obj->title = $title;
      $obj->section = $section;
      $obj->created = JFactory::getDate()->toSql();
      $obj->created_by = $user->get('id');

      $db->insertObject('#__sppagebuilder_sections', $obj);

      return $db->insertid();
    }

}
