<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_jmedia
 *
 * @copyright   Copyright (C) 2005 - 2019 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

/**
 * Folder JMedia Controller
 *
 * @since  1.5
 */
class JMediaControllerFolder extends JControllerLegacy
{
	/**
	 * Deletes paths from the current path
	 *
	 * @return  boolean
	 *
	 * @since   1.5
	 */
	public function delete()
	{
		$this->checkToken('request');

		$user = JFactory::getUser();

		// Get some data from the request
		$tmpl   = $this->input->get('tmpl');
		$paths  = $this->input->get('rm', array(), 'array');
		$folder = $this->input->get('folder', '', 'path');

		$redirect = 'index.php?option=com_jmedia&folder=' . $folder;

		if ($tmpl == 'component')
		{
			// We are inside the iframe
			$redirect .= '&view=mediaList&tmpl=component';
		}

		$this->setRedirect($redirect);

		// Just return if there's nothing to do
		if (empty($paths))
		{
			$this->setMessage(JText::_('JERROR_NO_ITEMS_SELECTED'), 'error');

			return true;
		}

		if (!$user->authorise('core.delete', 'com_jmedia'))
		{
			// User is not authorised to delete
			JError::raiseWarning(403, JText::_('JLIB_APPLICATION_ERROR_DELETE_NOT_PERMITTED'));

			return false;
		}

		// Need this to enqueue messages.
		$app = JFactory::getApplication();

		// Set FTP credentials, if given
		JClientHelper::setCredentialsFromRequest('ftp');

		JPluginHelper::importPlugin('content');
		$dispatcher = JEventDispatcher::getInstance();

		$ret = true;

		$safePaths = array_intersect($paths, array_map(array('JFile', 'makeSafe'), $paths));
		$unsafePaths = array_diff($paths, $safePaths);

		foreach ($unsafePaths as $path)
		{
			$path = JPath::clean(implode(DIRECTORY_SEPARATOR, array($folder, $path)));
			$path = htmlspecialchars($path, ENT_COMPAT, 'UTF-8');
			$app->enqueueMessage(JText::sprintf('COM_JMEDIA_ERROR_UNABLE_TO_DELETE_FILE_WARNFILENAME', $path), 'error');
		}

		foreach ($safePaths as $path)
		{
			$fullPath = JPath::clean(implode(DIRECTORY_SEPARATOR, array(COM_JMEDIA_BASE, $folder, $path)));

			if (strpos(realpath($fullPath), JPath::clean(COM_JMEDIA_BASE)) !== 0)
			{
				JError::raiseWarning(100, JText::_('COM_JMEDIA_ERROR_WARNINVALID_FOLDER'));

				continue;
			}

			$object_file = new JObject(array('filepath' => $fullPath));

			if (is_file($object_file->filepath))
			{
				// Trigger the onContentBeforeDelete event.
				$result = $dispatcher->trigger('onContentBeforeDelete', array('com_jmedia.file', &$object_file));

				if (in_array(false, $result, true))
				{
					// There are some errors in the plugins
					$errors = $object_file->getErrors();
					JError::raiseWarning(100, JText::plural('COM_JMEDIA_ERROR_BEFORE_DELETE', count($errors), implode('<br />', $errors)));

					continue;
				}

				$ret &= JFile::delete($object_file->filepath);

				// Trigger the onContentAfterDelete event.
				$dispatcher->trigger('onContentAfterDelete', array('com_jmedia.file', &$object_file));
				$app->enqueueMessage(JText::sprintf('COM_JMEDIA_DELETE_COMPLETE', substr($object_file->filepath, strlen(COM_JMEDIA_BASE))));
			}
			elseif (is_dir($object_file->filepath))
			{
				$contents = JFolder::files($object_file->filepath, '.', true, false, array('.svn', 'CVS', '.DS_Store', '__MACOSX', 'index.html'));

				if (!empty($contents))
				{
					// This makes no sense...
					$folderPath = substr($object_file->filepath, strlen(COM_JMEDIA_BASE));
					JError::raiseWarning(100, JText::sprintf('COM_JMEDIA_ERROR_UNABLE_TO_DELETE_FOLDER_NOT_EMPTY', $folderPath));

					continue;
				}

				// Trigger the onContentBeforeDelete event.
				$result = $dispatcher->trigger('onContentBeforeDelete', array('com_jmedia.folder', &$object_file));

				if (in_array(false, $result, true))
				{
					// There are some errors in the plugins
					$errors = $object_file->getErrors();
					JError::raiseWarning(100, JText::plural('COM_JMEDIA_ERROR_BEFORE_DELETE', count($errors), implode('<br />', $errors)));

					continue;
				}

				$ret &= !JFolder::delete($object_file->filepath);

				// Trigger the onContentAfterDelete event.
				$dispatcher->trigger('onContentAfterDelete', array('com_jmedia.folder', &$object_file));
				$app->enqueueMessage(JText::sprintf('COM_JMEDIA_DELETE_COMPLETE', substr($object_file->filepath, strlen(COM_JMEDIA_BASE))));
			}
		}

		return $ret;
	}

	/**
	 * Create a folder
	 *
	 * @return  boolean
	 *
	 * @since   1.5
	 */
	public function create()
	{
		// Check for request forgeries
		$this->checkToken();

		$user  = JFactory::getUser();

		$folder      = $this->input->get('foldername', '');
		$folderCheck = (string) $this->input->get('foldername', null, 'raw');
		$parent      = $this->input->get('folderbase', '', 'path');

		$this->setRedirect('index.php?option=com_jmedia&folder=' . $parent . '&tmpl=' . $this->input->get('tmpl', 'index'));

		if (strlen($folder) > 0)
		{
			if (!$user->authorise('core.create', 'com_jmedia'))
			{
				// User is not authorised to create
				JError::raiseWarning(403, JText::_('COM_JMEDIA_ERROR_CREATE_NOT_PERMITTED'));

				return false;
			}

			// Set FTP credentials, if given
			JClientHelper::setCredentialsFromRequest('ftp');

			$this->input->set('folder', $parent);

			if (($folderCheck !== null) && ($folder !== $folderCheck))
			{
				$app = JFactory::getApplication();
				$app->enqueueMessage(JText::_('COM_JMEDIA_ERROR_UNABLE_TO_CREATE_FOLDER_WARNDIRNAME'), 'warning');

				return false;
			}

			$path = JPath::clean(COM_JMEDIA_BASE . '/' . $parent . '/' . $folder);

			if (strpos(realpath(COM_JMEDIA_BASE . '/' . $parent), JPath::clean(COM_JMEDIA_BASE)) !== 0)
			{
				$app = JFactory::getApplication();
				$app->enqueueMessage(JText::_('COM_JMEDIA_ERROR_WARNINVALID_FOLDER'));

				return false;
			}

			if (!is_dir($path) && !is_file($path))
			{
				// Trigger the onContentBeforeSave event.
				$object_file = new JObject(array('filepath' => $path));
				JPluginHelper::importPlugin('content');
				$dispatcher = JEventDispatcher::getInstance();
				$result     = $dispatcher->trigger('onContentBeforeSave', array('com_jmedia.folder', &$object_file, true));

				if (in_array(false, $result, true))
				{
					// There are some errors in the plugins
					JError::raiseWarning(100, JText::plural('COM_JMEDIA_ERROR_BEFORE_SAVE', count($errors = $object_file->getErrors()), implode('<br />', $errors)));

					return false;
				}

				if (JFolder::create($object_file->filepath))
				{
					$data = "<html>\n<body bgcolor=\"#FFFFFF\">\n</body>\n</html>";
					JFile::write($object_file->filepath . '/index.html', $data);

					// Trigger the onContentAfterSave event.
					$dispatcher->trigger('onContentAfterSave', array('com_jmedia.folder', &$object_file, true));
					$this->setMessage(JText::sprintf('COM_JMEDIA_CREATE_COMPLETE', substr($object_file->filepath, strlen(COM_JMEDIA_BASE))));
				}
			}

			$this->input->set('folder', ($parent) ? $parent . '/' . $folder : $folder);
		}
		else
		{
			// File name is of zero length (null).
			JError::raiseWarning(100, JText::_('COM_JMEDIA_ERROR_UNABLE_TO_CREATE_FOLDER_WARNDIRNAME'));

			return false;
		}

		return true;
	}
}
