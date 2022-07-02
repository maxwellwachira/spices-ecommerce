<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_messages
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
$session = JFactory::getSession();
$status  = $session->get('welcome-toolbar', 'open');
?>
<div id="qx-welcome-v3-wrapper" class="qx-position-relative">
  <div
          id="qx-welcome-v3"
          class="<?php echo $status === 'open' ? '' : 'qx-padding-small '; ?>qx-card qx-card-default qx-card-body qx-overflow-hidden qx-box-shadow-small qx-box-shadow-hover-medium"
          style="background-size: cover;background-image: url(<?php echo QuixAppHelper::getQuixMediaUrl(); ?>/images/banners/bg_gradient_1.png);">

    <div style="<?php echo $status === 'open' ? 'display: none' : ''; ?>" id="welcome-collapse">
      <div class="qx-grid" qx-grid>
        <div class="qx-width-1-1 qx-width-5-6@s qx-first-column qx-text-left@s qx-text-center">
          <h3>Welcome to Quix 4</h3>
        </div>
        <div class="qx-width-expand qx-flex qx-flex-center qx-flex-right@s">
          <a class="qx-button qx-button-default" href="#" onclick="javascript:window.toggleWelcome();">
            <i class="qxuicon-arrow-down qx-margin-small-right"></i>
            Expand
          </a>
        </div>
      </div>
    </div>

    <div style="<?php echo $status === 'collapse' ? 'display: none' : ''; ?>" id="welcome-content">
      <a class="qx-position-top-right qx-button" href="#" onclick="javascript:window.toggleWelcome(true);">
        <span class="qxuicon-arrow-up"></span>
      </a>
      <div class="qx-grid" qx-grid>
        <div class="qx-width-auto qx-first-column">
          <div class="qx-grid" qx-grid>
            <img
                    src="<?php echo QuixAppHelper::getQuixMediaUrl(); ?>/images/banners/avatar_1.svg" alt="Welcome to Quix 4"
                    style="margin: 0 0 -40px -50px; width: 280px;height: 212px;">
            <div class="qx-flex qx-flex-column">
              <div class="qx-margin-auto-vertical" qx-margin>
                <h1 class="qx-h1">Welcome to Quix 4</h1>
                <div>Experience the next generation of Joomla page builder.</div>
                <div class="qx-margin-medium-top qx-flex">
                  <a class="qx-button qx-button-default" href="https://www.themexpert.com/quix/whats-new" target="_blank">What's New</a>
                  <a class="qx-button qx-margin-small-left" href="https://extensions.joomla.org/extension/quix/" target="_blank">
                    <span class="qxuicon-thumbs-up qx-margin-small-right"></span>Review Quix
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="qx-width-expand">
          <div class="qx-child-width-expand@s qx-grid qx-grid-small" qx-grid>
            <div class="qx-first-column qx-width-medium">
              <img
                      class="qx-hidden qx-margin-small-top qx-box-shadow-medium qx-box-shadow-hover-large"
                      src="<?php echo QuixAppHelper::getQuixMediaUrl(); ?>/images/banners/thumb_video.jpg" alt="Getting Started Video"
                      width="220" height="151"
              >
            </div>
            <div id="essentials-links">
              <ul class="qx-nav qx-nav-default">
                <li class="qx-nav-header qx-margin-small-bottom">Start With The Essentials</li>
                <li>
                  <a href="https://www.themexpert.com/docs" target="_blank">
                    <span class="qxuicon-book qx-margin-small-right"></span>Documentation Site
                  </a>
                </li>
                <li>
                  <a href="https://www.themexpert.com/video-tutorials" target="_blank">
                    <span class="qxuicon-video qx-margin-small-right"></span>Video Tutorials
                  </a>
                </li>
                <li>
                  <a href="https://www.themexpert.com/quix/layouts" target="_blank">
                    <span class="qxuicon-cloud qx-margin-small-right"></span>Quix Template Cloud
                  </a>
                </li>
                <li>
                  <a href="https://www.facebook.com/groups/QuixUserGroup" target="_blank">
                    <span class="qxuicon-users qx-margin-small-right"></span>Quix Facebook Group
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
