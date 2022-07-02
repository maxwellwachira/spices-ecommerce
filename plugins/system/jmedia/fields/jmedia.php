<?php
/**
 * @package     JCE
 *
 * @copyright   Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.
 * @copyright   Copyright (C) 2017 Ryan Demmer All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('JPATH_PLATFORM') or die;

/**
 * Provides a modal media selector field for the JCE File Browser
 *
 * @since  2.6.17
 */
class JFormFieldJMedia extends JFormFieldMedia
{
    /**
     * The form field type.
     *
     * @var    string
     */
    protected $type = 'JMedia';

    /**
     * Layout to render
     *
     * @var    string
     * @since  3.5
     */
    protected $layout = 'field.media';

    /**
     * Method to attach a JForm object to the field.
     *
     * @param  SimpleXMLElement  $element   The SimpleXMLElement object representing the `<field>` tag for the form field object.
     * @param  mixed  $value                The form field value to validate.
     * @param  string  $group               The field name group control value. This acts as an array container for the field.
     *                                      For example if the field has name="foo" and the group value is set to "bar" then the
     *                                      full field name would end up being "bar[foo]".
     *
     * @return  boolean  True on success.
     *
     * @see     JFormField::setup()
     */
    public function setup(SimpleXMLElement $element, $value, $group = null)
    {
        $result = parent::setup($element, $value, $group);

        if ($result === true) {
            $this->mediatype = isset($this->element['mediatype']) ? (string) $this->element['mediatype'] : 'images';
        }

        return $result;
    }

    /**
     * Get the data that is going to be passed to the layout
     *
     * @return  array
     */
    public function getLayoutData()
    {
        $data       = parent::getLayoutData();
        $this->link = 'index.php?option=com_jmedia&view=images&tmpl=component&'.JSession::getFormToken().'=1';

        $extraData = array(
            'link' => $this->link,
        );

        // Get the basic field data
        return array_merge($data, $extraData);
    }

    /**
     * Method to get the field input markup for a media selector.
     * Use attributes to identify specific created_by and asset_id fields
     *
     * @return  string  The field input markup.
     *
     * @since   1.6
     */
    protected function getInput()
    {
        if (empty($this->layout)) {
            throw new \UnexpectedValueException(sprintf('%s has no layout assigned.', $this->name));
        }

        $app = JFactory::getApplication();
        if ($app->isClient('administrator')) {
            $layout = new JLayoutFile($this->layout, JPATH_ROOT.'/plugins/system/jmedia/layouts');
        } else {
            $layout = new JLayoutFile('field.frontend', JPATH_ROOT.'/plugins/system/jmedia/layouts');
        }

        return $layout->render($this->getLayoutData());
    }


}
