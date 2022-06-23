-- phpMyAdmin SQL Dump
-- version 5.1.1deb3+bionic1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2022 at 08:04 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spice_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__j2store_productquantities`
--

CREATE TABLE `#__j2store_productquantities` (
  `j2store_productquantity_id` int(11) NOT NULL,
  `product_attributes` text NOT NULL COMMENT 'A CSV of productattributeoption_id values, always in numerical order',
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `on_hold` int(11) NOT NULL,
  `sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_action_logs`
--

CREATE TABLE `spices_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_action_logs`
--

INSERT INTO `spices_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":382,\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-06-23 16:18:32', 'com_users', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":382,\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-06-23 16:18:50', 'com_users', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10020\",\"name\":\"SagePay Form\",\"extension_name\":\"SagePay Form\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10020, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_LIBRARY\",\"id\":\"10026\",\"name\":\"F0F (NEW) DO NOT REMOVE\",\"extension_name\":\"F0F (NEW) DO NOT REMOVE\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 10026, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:26:27', 'com_installer', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10020\",\"name\":\"SagePay Form\",\"extension_name\":\"SagePay Form\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10020, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:32:42', 'com_installer', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10027\",\"name\":\"SagePay Direct\",\"extension_name\":\"SagePay Direct\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10027, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:34:25', 'com_installer', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2022-06-23 16:52:30', 'com_users', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10020\",\"name\":\"SagePay Form\",\"extension_name\":\"SagePay Form\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10020, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 16:52:42', 'com_installer', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `spices_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(122, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10020\",\"name\":\"SagePay Form\",\"extension_name\":\"SagePay Form\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10020, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(133, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":false,\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:01:15', 'com_installer', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:00', 'com_config.application', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(136, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10001\",\"name\":\"J2 Store Chart\",\"extension_name\":\"J2 Store Chart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10001, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10002\",\"name\":\"J2 Store Stats Mini\",\"extension_name\":\"J2 Store Stats Mini\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10002, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10003\",\"name\":\"J2 Store Orders\",\"extension_name\":\"J2 Store Orders\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10003, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10004\",\"name\":\"J2 Store Stats\",\"extension_name\":\"J2 Store Stats\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10004, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10005\",\"name\":\"J2Store Administrator Menu\",\"extension_name\":\"J2Store Administrator Menu\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10005, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10006\",\"name\":\"J2Store Currency\",\"extension_name\":\"J2Store Currency\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10006, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"10007\",\"name\":\"J2 Store Cart\",\"extension_name\":\"J2 Store Cart\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10007, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10008\",\"name\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10009\",\"name\":\"System - J2Store\",\"extension_name\":\"System - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10009, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10010\",\"name\":\"System - J2Page Cache\",\"extension_name\":\"System - J2Page Cache\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10010, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - J2Store Canonical\",\"extension_name\":\"System - J2Store Canonical\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10011, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10012\",\"name\":\"Search - J2Store \",\"extension_name\":\"Search - J2Store \",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10012, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10013\",\"name\":\"Finder - J2Store\",\"extension_name\":\"Finder - J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10013, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10014\",\"name\":\"J2Store User Register\",\"extension_name\":\"J2Store User Register\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10014, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10015\",\"name\":\"Free Shipping\",\"extension_name\":\"Free Shipping\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10015, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10016\",\"name\":\"Standard Shipping methods\",\"extension_name\":\"Standard Shipping methods\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10016, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10017\",\"name\":\"Cash on Delivery\",\"extension_name\":\"Cash on Delivery\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10017, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10018\",\"name\":\"Money Order\",\"extension_name\":\"Money Order\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10018, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10019\",\"name\":\"Bank transfer\",\"extension_name\":\"Bank transfer\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10019, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10020\",\"name\":\"SagePay Form\",\"extension_name\":\"SagePay Form\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10020, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10021\",\"name\":\"J2STORE_REPORT_ITEMISED\",\"extension_name\":\"J2STORE_REPORT_ITEMISED\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10021, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10022\",\"name\":\"Localization Data for J2Store\",\"extension_name\":\"Localization Data for J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10022, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10023\",\"name\":\"Diagnostics Tool\",\"extension_name\":\"Diagnostics Tool\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10023, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10024\",\"name\":\"Currency Exchange Rates - Google Finance API\",\"extension_name\":\"Currency Exchange Rates - Google Finance API\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10024, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10025\",\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"extension_name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10025, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":\"10000\",\"name\":\"J2Store\",\"extension_name\":\"J2Store\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:05:22', 'com_installer', 382, 10000, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2022-06-23 17:09:32', 'com_users', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10008,\"title\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10008\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:14:15', 'com_plugins.plugin', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__extensions\"}', '2022-06-23 17:14:15', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10008,\"title\":\"Content - J2Store\",\"extension_name\":\"Content - J2Store\",\"itemlink\":\"index.php?option=com_plugins&task=plugin.edit&extension_id=10008\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:18:29', 'com_plugins.plugin', 382, 10008, 'COM_ACTIONLOGS_DISABLED'),
(166, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__extensions\"}', '2022-06-23 17:18:29', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(167, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Sweet\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:40:37', 'com_categories.category', 382, 8, 'COM_ACTIONLOGS_DISABLED'),
(168, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Sweet\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:41:06', 'com_categories.category', 382, 8, 'COM_ACTIONLOGS_DISABLED'),
(169, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__categories\"}', '2022-06-23 17:41:06', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(170, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"cinnamon.jpg\",\"itemlink\":\"index.php?option=com_media&view=media\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:42:45', 'com_media.file', 382, 0, 'COM_ACTIONLOGS_DISABLED'),
(171, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Cinnamon\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:43:27', 'com_content.article', 382, 1, 'COM_ACTIONLOGS_DISABLED'),
(172, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Cinnamon\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:44:01', 'com_content.article', 382, 1, 'COM_ACTIONLOGS_DISABLED'),
(173, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__content\"}', '2022-06-23 17:44:01', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(174, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Cinnamon\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:44:55', 'com_content.article', 382, 1, 'COM_ACTIONLOGS_DISABLED'),
(175, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__content\"}', '2022-06-23 17:44:55', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(176, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Cinnamon\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:47:54', 'com_content.article', 382, 1, 'COM_ACTIONLOGS_DISABLED'),
(177, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__content\"}', '2022-06-23 17:47:54', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(178, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Cinnamon\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:47:59', 'com_content.article', 382, 1, 'COM_ACTIONLOGS_DISABLED'),
(179, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"382\",\"title\":\"maxwellwachira\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\",\"table\":\"#__content\"}', '2022-06-23 17:47:59', 'com_checkin', 382, 382, 'COM_ACTIONLOGS_DISABLED'),
(180, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:50:14', 'com_menus.item', 382, 114, 'COM_ACTIONLOGS_DISABLED'),
(181, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Shop\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":\"382\",\"username\":\"maxwellwachira\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=382\"}', '2022-06-23 17:50:16', 'com_menus.item', 382, 114, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `spices_action_logs_extensions`
--

CREATE TABLE `spices_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_action_logs_extensions`
--

INSERT INTO `spices_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Table structure for table `spices_action_logs_users`
--

CREATE TABLE `spices_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_action_log_config`
--

CREATE TABLE `spices_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_action_log_config`
--

INSERT INTO `spices_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `spices_assets`
--

CREATE TABLE `spices_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_assets`
--

INSERT INTO `spices_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 133, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 24, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 29, 30, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 31, 32, 1, 'com_login', 'com_login', '{}'),
(13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 37, 38, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 39, 42, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 45, 96, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 97, 100, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 101, 102, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 103, 104, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 105, 106, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 107, 108, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 109, 112, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 113, 114, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 98, 99, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 110, 111, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 115, 116, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 117, 118, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 119, 120, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 121, 122, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 123, 124, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 125, 126, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 40, 41, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 76, 77, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 127, 128, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 129, 130, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 78, 79, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 80, 81, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 1, 131, 132, 1, 'com_j2store', 'J2Store', '{}'),
(61, 18, 82, 83, 2, 'com_modules.module.90', 'J2 Store Chart', '{}'),
(62, 18, 84, 85, 2, 'com_modules.module.91', 'J2 Store Stats Mini', '{}'),
(63, 18, 86, 87, 2, 'com_modules.module.92', 'J2 Store Orders', '{}'),
(64, 18, 88, 89, 2, 'com_modules.module.93', 'J2 Store Stats', '{}'),
(65, 18, 90, 91, 2, 'com_modules.module.94', 'J2Store Administrator Menu', '{}'),
(66, 18, 92, 93, 2, 'com_modules.module.95', 'J2Store Currency', '{}'),
(67, 18, 94, 95, 2, 'com_modules.module.96', 'J2 Store Cart', '{}'),
(68, 8, 20, 23, 2, 'com_content.category.8', 'Sweet', '{}'),
(69, 68, 21, 22, 3, 'com_content.article.1', 'Cinnamon', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `spices_associations`
--

CREATE TABLE `spices_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_banners`
--

CREATE TABLE `spices_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_banner_clients`
--

CREATE TABLE `spices_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_banner_tracks`
--

CREATE TABLE `spices_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_categories`
--

CREATE TABLE `spices_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_categories`
--

INSERT INTO `spices_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 382, '2022-06-23 17:43:40', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 16:17:50', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 68, 1, 11, 12, 1, 'sweet', 'com_content', 'Sweet', 'sweet', '', '<p>These are spices that can be used to bake</p>', 1, 382, '2022-06-23 17:41:06', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 382, '2022-06-23 17:40:37', 382, '2022-06-23 17:41:06', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spices_contact_details`
--

CREATE TABLE `spices_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_content`
--

CREATE TABLE `spices_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_content`
--

INSERT INTO `spices_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 69, 'Cinnamon', 'cinnamon', '<p style=\"text-align: center;\">Best Cinnamon ever</p>', '', 1, 8, '2022-06-23 17:43:27', 382, '', '2022-06-23 17:47:59', 382, 0, '0000-00-00 00:00:00', '2022-06-23 17:43:27', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/cinnamon.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 5, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spices_contentitem_tag_map`
--

CREATE TABLE `spices_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `spices_content_frontpage`
--

CREATE TABLE `spices_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_content_rating`
--

CREATE TABLE `spices_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_content_types`
--

CREATE TABLE `spices_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_content_types`
--

INSERT INTO `spices_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `spices_core_log_searches`
--

CREATE TABLE `spices_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_extensions`
--

CREATE TABLE `spices_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_extensions`
--

INSERT INTO `spices_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"2d9f911708d1a28749954e9ae01a7ada\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `spices_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.60.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1656001091}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1656001158,\"unique_id\":\"ed4abebc00874ceb9b78c50b97123b84ee9c1982\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1656001106}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `spices_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.28\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.28\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2020 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.28\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.28.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'J2Store', 'component', 'com_j2store', '', 1, 1, 0, 0, '{\"name\":\"J2Store\",\"type\":\"component\",\"creationDate\":\"MARCH 2022\",\"author\":\"Ramesh Elamathi\",\"copyright\":\"Copyright (c) 2022 Cartrabbit. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"https:\\/\\/www.j2store.org\",\"version\":\"3.3.20\",\"description\":\"<h3>J2 Store V3 Professional<\\/h3>\\n      Flexible and native Joomla shopping cart solution. <br \\/>\\n      Use Joomla articles as products and get your shop online in less than 10 minutes. <br \\/>\\n      Start setting up your store now. <br \\/>\\n      Learn more from the <a target=\\\"_blank\\\" href=\\\"https:\\/\\/www.j2store.org\\/support\\/user-guide\\/getting-started-with-j2store.html\\\">Getting started guide<\\/a>\\n      If you have any questions, <a target=\\\"_blank\\\" href=\\\"https:\\/\\/www.j2store.org\\/support\\/community-forum.html\\\">get in touch with us<\\/a>\\n      \",\"group\":\"\",\"filename\":\"com_j2store\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'J2 Store Chart', 'module', 'mod_j2store_chart', '', 1, 1, 2, 0, '{\"name\":\"J2 Store Chart\",\"type\":\"module\",\"creationDate\":\"Jan 2015\",\"author\":\"Gokila PriyaBose\",\"copyright\":\"Copyright (c) 2014 - 2019 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2 Store Chart\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_chart\"}', '{\"chart_type\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'J2 Store Stats Mini', 'module', 'mod_j2store_stats_mini', '', 1, 1, 2, 0, '{\"name\":\"J2 Store Stats Mini\",\"type\":\"module\",\"creationDate\":\"Jan 2015\",\"author\":\"Gokila PriyaBose\",\"copyright\":\"Copyright (c) 2014 - 2019 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2 Store Stats\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_stats_mini\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'J2 Store Orders', 'module', 'mod_j2store_orders', '', 1, 1, 2, 0, '{\"name\":\"J2 Store Orders\",\"type\":\"module\",\"creationDate\":\"Jan 2015\",\"author\":\"Gokila PriyaBose\",\"copyright\":\"Copyright (c) 2014 - 2019 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2 Store Orders\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_orders\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'J2 Store Stats', 'module', 'mod_j2store_stats', '', 1, 1, 2, 0, '{\"name\":\"J2 Store Stats\",\"type\":\"module\",\"creationDate\":\"Jan 2015\",\"author\":\"Gokila PriyaBose\",\"copyright\":\"Copyright (c) 2014 - 2019 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2 Store Stats\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_stats\"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'J2Store Administrator Menu', 'module', 'mod_j2store_menu', '', 1, 1, 2, 0, '{\"name\":\"J2Store Administrator Menu\",\"type\":\"module\",\"creationDate\":\"June 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"Copyright (c) 2011 - 2016 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"MOD_J2STORE_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_j2store_menu\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'J2Store Currency', 'module', 'mod_j2store_currency', '', 0, 1, 0, 0, '{\"name\":\"J2Store Currency\",\"type\":\"module\",\"creationDate\":\"December 2014\",\"author\":\"Ramesh Elamathi\",\"copyright\":\"Copyright (c) 2013 - 2018 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2Store shopping cart currency switcher module\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_currency\"}', '{\"moduleclass_sfx\":\"\",\"background_color\":\"#FFFFFF\",\"text_color\":\"#000000\",\"link_color\":\"#CCCCCC\",\"link_hover_color\":\"#000000\",\"active_link_color\":\"#000000\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'J2 Store Cart', 'module', 'mod_j2store_cart', '', 0, 1, 0, 0, '{\"name\":\"J2 Store Cart\",\"type\":\"module\",\"creationDate\":\"Jan 2015\",\"author\":\"Sasi varna kumar\",\"copyright\":\"Copyright (c) 2011 - 2016 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"\\n\\t <p>J2 Store Cart\\n\\t <p> Please contact to us for more info <a href=\\\"mailto:support@j2store.org\\\">support@j2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_j2store_cart\"}', '{\"moduleclass_sfx\":\"\",\"link_type\":\"link\",\"check_empty\":\"0\",\"quantity_count\":\"0\",\"show_thumbimage\":\"0\",\"show_product_qty\":\"0\",\"show_cart_remove\":\"0\",\"enable_checkout\":\"0\",\"enable_view_cart\":\"0\",\"minicart_cart_icon_class\":\"fa fa-shoppingcart\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'Content - J2Store', 'plugin', 'j2store', 'content', 0, 1, 1, 0, '{\"name\":\"Content - J2Store\",\"type\":\"plugin\",\"creationDate\":\"October 2014\",\"author\":\"J2Store Team\",\"copyright\":\"Copyright (c) 2014 - 2019 J2Store.org All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"Content plugin for J2Store.\",\"group\":\"\",\"filename\":\"j2store\"}', '{\"allow_frontend_product_edit\":\"1\",\"check_publish_date\":\"0\",\"cache_control\":\"1\",\"category_product_options\":\"1\",\"category_product_block_position\":\"bottom\",\"category_display_j2store_images\":\"1\",\"category_image_type\":\"thumbnail\",\"category_link_image_to_product\":\"1\",\"category_enable_image_zoom\":\"1\",\"list_image_thumbnail_width\":\"120\",\"list_product_additional_image_width\":\"80\",\"item_product_block_position\":\"bottom\",\"item_display_j2store_images\":\"1\",\"item_image_placement\":\"default\",\"item_image_type\":\"main\",\"item_enable_image_zoom\":\"1\",\"item_product_main_image_width\":\"\",\"item_product_additional_image_width\":\"100\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'System - J2Store', 'plugin', 'j2store', 'system', 0, 1, 1, 0, '{\"name\":\"System - J2Store\",\"type\":\"plugin\",\"creationDate\":\"Jan 2012\",\"author\":\"Sasi varna kumar\",\"copyright\":\"(C) 2010-2015 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"www.j2store.org\",\"version\":\"2.0\",\"description\":\"System plugin that loads the required Javascript and other files required for J2Store.\",\"group\":\"\",\"filename\":\"j2store\"}', '{\"is_change_filter_input\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'System - J2Page Cache', 'plugin', 'j2pagecache', 'system', 0, 0, 1, 0, '{\"name\":\"System - J2Page Cache\",\"type\":\"plugin\",\"creationDate\":\"JUN 2016\",\"author\":\"Alagesan\",\"copyright\":\"(C) 2016 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"www.j2store.org\",\"version\":\"1.0\",\"description\":\"System plugin that used to clear page cache.\",\"group\":\"\",\"filename\":\"j2pagecache\"}', '{\"conservative_cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'System - J2Store Canonical', 'plugin', 'j2canonical', 'system', 0, 0, 1, 0, '{\"name\":\"System - J2Store Canonical\",\"type\":\"plugin\",\"creationDate\":\"March 2017\",\"author\":\"Sasi varna kumar\",\"copyright\":\"Copyright (C) 2016 - 2020 http:\\/\\/j2store.org. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"https:\\/\\/www.j2store.org\",\"version\":\"1.3\",\"description\":\" This plugin solves the duplicate URL problem in search engines by adding appropriate Canonical tags for J2Store products and Articles. \",\"group\":\"\",\"filename\":\"j2canonical\"}', '{\"current_url_canonical\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'Search - J2Store ', 'plugin', 'j2store', 'search', 0, 0, 1, 0, '{\"name\":\"Search - J2Store \",\"type\":\"plugin\",\"creationDate\":\"September 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"Copyright (c) 2011 - 2016 Weblogicx India Private Ltd. All rights reserved.\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"PLG_SEARCH_J2STORE_DESCRIPTION\",\"group\":\"\",\"filename\":\"j2store\"}', '{\"redirect_to\":\"j2store\",\"search_limit\":\"50\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'Finder - J2Store', 'plugin', 'j2store', 'finder', 0, 0, 1, 0, '{\"name\":\"Finder - J2Store\",\"type\":\"plugin\",\"creationDate\":\"September 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"2010 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"PLG_FINDER_J2STORE_DESCRIPTION\",\"group\":\"\",\"filename\":\"j2store\"}', '{\"redirect_to\":\"j2store\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'J2Store User Register', 'plugin', 'j2userregister', 'user', 0, 0, 1, 0, '{\"name\":\"J2Store User Register\",\"type\":\"plugin\",\"creationDate\":\"MARCH 2017\",\"author\":\"Alagesan\",\"copyright\":\"Copyright 2017 Flycart Technologies LLP\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"https:\\/\\/www.j2store.org\",\"version\":\"1.2\",\"description\":\"J2Store Profile on Joomla user registration\",\"group\":\"\",\"filename\":\"j2userregister\"}', '{\"show_address_fields\":\"1\",\"show_myprofile\":\"0\",\"disable_name\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'Free Shipping', 'plugin', 'shipping_free', 'j2store', 0, 0, 1, 0, '{\"name\":\"Free Shipping\",\"type\":\"plugin\",\"creationDate\":\"September 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"2015 WeblogicxIndia\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.1\",\"description\":\"PLG_J2STORE_SHIPPING_FREE_DESCRIPTION\",\"group\":\"\",\"filename\":\"shipping_free\"}', '{\"display_name\":\"Free shipping\",\"min_subtotal\":\"0\",\"max_subtotal\":\"-1\",\"requires_coupon\":\"0\",\"check_shipping_product\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'Standard Shipping methods', 'plugin', 'shipping_standard', 'j2store', 0, 1, 1, 0, '{\"name\":\"Standard Shipping methods\",\"type\":\"plugin\",\"creationDate\":\"December 2014\",\"author\":\"J2Store\",\"copyright\":\"2010 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_PLUGINDESC\",\"group\":\"\",\"filename\":\"shipping_standard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'Cash on Delivery', 'plugin', 'payment_cash', 'j2store', 0, 1, 1, 0, '{\"name\":\"Cash on Delivery\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Weblogicx India\",\"copyright\":\"2013 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_CASH_PLUGINDESC\",\"group\":\"\",\"filename\":\"payment_cash\"}', '{\"display_name\":\"\",\"surcharge_percent\":\"\",\"surcharge_fixed\":\"\",\"surcharge_name\":\"\",\"surcharge_tax_class_id\":\"\",\"min_subtotal\":\"0.000\",\"max_subtotal\":\"-1.00\",\"payment_status\":\"4\",\"geozone_id\":\"\",\"onselection\":\"\",\"onbeforepayment\":\"\",\"onafterpayment\":\"\",\"button_text\":\"J2STORE_PLACE_ORDER\",\"articleid\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'Money Order', 'plugin', 'payment_moneyorder', 'j2store', 0, 1, 1, 0, '{\"name\":\"Money Order\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Weblogicx India\",\"copyright\":\"2013 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_MONEYORDER_PLUGINDESC\",\"group\":\"\",\"filename\":\"payment_moneyorder\"}', '{\"display_name\":\"\",\"moneyorder_information\":\"\",\"enable_strip_tags\":\"0\",\"payment_status\":\"4\",\"surcharge_percent\":\"\",\"surcharge_fixed\":\"\",\"surcharge_name\":\"\",\"surcharge_tax_class_id\":\"\",\"geozone_id\":\"\",\"onselection\":\"\",\"onbeforepayment\":\"\",\"onafterpayment\":\"\",\"button_text\":\"J2STORE_PLACE_ORDER\",\"articleid\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'Bank transfer', 'plugin', 'payment_banktransfer', 'j2store', 0, 1, 1, 0, '{\"name\":\"Bank transfer\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Weblogicx India\",\"copyright\":\"2013 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_BANKTRANSFER_PLUGINDESC\",\"group\":\"\",\"filename\":\"payment_banktransfer\"}', '{\"display_name\":\"\",\"bank_information\":\"\",\"enable_bank_transfer_strip_tags\":\"0\",\"payment_status\":\"4\",\"surcharge_percent\":\"\",\"surcharge_fixed\":\"\",\"surcharge_name\":\"\",\"surcharge_tax_class_id\":\"\",\"geozone_id\":\"\",\"support_subscription\":\"1\",\"onselection\":\"\",\"onbeforepayment\":\"\",\"onafterpayment\":\"\",\"button_text\":\"J2STORE_PLACE_ORDER\",\"articleid\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'SagePay Form', 'plugin', 'payment_sagepayform', 'j2store', 0, 1, 1, 0, '{\"name\":\"SagePay Form\",\"type\":\"plugin\",\"creationDate\":\"MARCH 2022\",\"author\":\"J2Store\",\"copyright\":\"2022 Weblogicx India Private Limited\",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"https:\\/\\/www.j2store.org\",\"version\":\"3.13\",\"description\":\"J2STORE_SAGEPAYFORM_PLUGINDESC\",\"group\":\"\",\"filename\":\"payment_sagepayform\"}', '{\"display_name\":\"\",\"vendor_name\":\"\",\"encryption_key\":\"\",\"vendor_email\":\"\",\"sandbox\":\"0\",\"articleid\":\"\",\"onselection\":\"\",\"onbeforepayment\":\"\",\"onafterpayment\":\"\",\"onerrorpayment\":\"\",\"oncancelpayment\":\"\",\"button_text\":\"J2STORE_PLACE_ORDER\",\"debug\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'J2STORE_REPORT_ITEMISED', 'plugin', 'report_itemised', 'j2store', 0, 1, 1, 0, '{\"name\":\"J2STORE_REPORT_ITEMISED\",\"type\":\"plugin\",\"creationDate\":\"May 2014\",\"author\":\"Gokila Priya\",\"copyright\":\"2014-19 WeblogicxIndia\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.0\",\"description\":\"PLG_J2STORE_PLUGIN_REPORT_ITEMISED_DESC\",\"group\":\"\",\"filename\":\"report_itemised\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 0, 'Localization Data for J2Store', 'plugin', 'app_localization_data', 'j2store', 0, 1, 1, 0, '{\"name\":\"Localization Data for J2Store\",\"type\":\"plugin\",\"creationDate\":\"Jan 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"2014-19 WeblogicxIndia\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_APP_LOCALIZATION_DATA_HELP_TEXT\",\"group\":\"\",\"filename\":\"app_localization_data\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'Diagnostics Tool', 'plugin', 'app_diagnostics', 'j2store', 0, 1, 1, 0, '{\"name\":\"Diagnostics Tool\",\"type\":\"plugin\",\"creationDate\":\"February 2015\",\"author\":\"Gokila Priya\",\"copyright\":\"2015 Weblogicx India\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.0\",\"description\":\"J2STORE_DIAGNOSTICS_HELP_TEXT\",\"group\":\"\",\"filename\":\"app_diagnostics\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'Currency Exchange Rates - Google Finance API', 'plugin', 'app_currencyupdater', 'j2store', 0, 1, 1, 0, '{\"name\":\"Currency Exchange Rates - Google Finance API\",\"type\":\"plugin\",\"creationDate\":\"NOV 2017\",\"author\":\"Alagesan\",\"copyright\":\"2017 CartRabbit International Pte Ltd\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.0.1\",\"description\":\"This app used to update currency value\",\"group\":\"\",\"filename\":\"app_currencyupdater\"}', '{\"api_type\":\"msn\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'J2STORE_APP_SCHEMAPRODUCTS', 'plugin', 'app_schemaproducts', 'j2store', 0, 1, 1, 0, '{\"name\":\"J2STORE_APP_SCHEMAPRODUCTS\",\"type\":\"plugin\",\"creationDate\":\"MAR 2021\",\"author\":\"Alagesan\",\"copyright\":\"2021 J2Store\",\"authorEmail\":\"supports@j2store.org\",\"authorUrl\":\"http:\\/\\/www.j2store.org\",\"version\":\"1.0.0\",\"description\":\"J2STORE_APP_SCHEMAPRODUCTS_DESC\",\"group\":\"\",\"filename\":\"app_schemaproducts\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'F0F (NEW) DO NOT REMOVE', 'library', 'f0f', '', 0, 1, 1, 0, '{\"name\":\"F0F (NEW) DO NOT REMOVE\",\"type\":\"library\",\"creationDate\":\"2016-04-01\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"revAA17947\",\"description\":\"Framework-on-Framework (FOF) newer version - DO NOT REMOVE - The rapid component development framework for Joomla!. This package is the newer version of FOF, not the one shipped with Joomla! as the official Joomla! RAD Layer. The Joomla! RAD Layer has ceased development in March 2014. DO NOT UNINSTALL THIS PACKAGE, IT IS *** N O T *** A DUPLICATE OF THE \'FOF\' PACKAGE. REMOVING EITHER FOF PACKAGE WILL BREAK YOUR SITE.\",\"group\":\"\",\"filename\":\"lib_f0f\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 0, 'SagePay Direct', 'plugin', 'payment_sagepay', 'j2store', 0, 1, 1, 0, '{\"name\":\"SagePay Direct\",\"type\":\"plugin\",\"creationDate\":\"January 2016\",\"author\":\"j2store.org\",\"copyright\":\"2013-2018 Weblogicx India Private Limited \",\"authorEmail\":\"support@j2store.org\",\"authorUrl\":\"http:\\/\\/j2store.org\",\"version\":\"2.4\",\"description\":\"J2STORE_SAGEPAY_PLUGINDESC\",\"group\":\"\",\"filename\":\"payment_sagepay\"}', '{\"display_name\":\"\",\"merchant_email\":\"\",\"enc_password\":\"\",\"card_types\":\"Visa,Mastercard\",\"sandbox\":\"0\",\"articleid\":\"\",\"onselection\":\"\",\"onbeforepayment\":\"\",\"onafterpayment\":\"\",\"onerrorpayment\":\"\",\"oncancelpayment\":\"\",\"button_text\":\"J2STORE_PLACE_ORDER\",\"debug\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_fields`
--

CREATE TABLE `spices_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_fields_categories`
--

CREATE TABLE `spices_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_fields_groups`
--

CREATE TABLE `spices_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_fields_values`
--

CREATE TABLE `spices_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_filters`
--

CREATE TABLE `spices_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links`
--

CREATE TABLE `spices_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `state` int(11) DEFAULT '1',
  `access` int(11) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms0`
--

CREATE TABLE `spices_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms1`
--

CREATE TABLE `spices_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms2`
--

CREATE TABLE `spices_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms3`
--

CREATE TABLE `spices_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms4`
--

CREATE TABLE `spices_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms5`
--

CREATE TABLE `spices_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms6`
--

CREATE TABLE `spices_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms7`
--

CREATE TABLE `spices_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms8`
--

CREATE TABLE `spices_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_terms9`
--

CREATE TABLE `spices_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termsa`
--

CREATE TABLE `spices_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termsb`
--

CREATE TABLE `spices_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termsc`
--

CREATE TABLE `spices_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termsd`
--

CREATE TABLE `spices_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termse`
--

CREATE TABLE `spices_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_links_termsf`
--

CREATE TABLE `spices_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_taxonomy`
--

CREATE TABLE `spices_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spices_finder_taxonomy`
--

INSERT INTO `spices_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_taxonomy_map`
--

CREATE TABLE `spices_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_terms`
--

CREATE TABLE `spices_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_terms_common`
--

CREATE TABLE `spices_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spices_finder_terms_common`
--

INSERT INTO `spices_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_tokens`
--

CREATE TABLE `spices_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_tokens_aggregate`
--

CREATE TABLE `spices_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_finder_types`
--

CREATE TABLE `spices_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_addresses`
--

CREATE TABLE `spices_j2store_addresses` (
  `j2store_address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `zone_id` varchar(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `phone_1` varchar(255) NOT NULL,
  `phone_2` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `tax_number` varchar(255) NOT NULL,
  `campaign_addr_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_cartitems`
--

CREATE TABLE `spices_j2store_cartitems` (
  `j2store_cartitem_id` int(11) UNSIGNED NOT NULL,
  `cart_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `variant_id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartitem_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` decimal(12,4) NOT NULL,
  `product_options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_j2store_cartitems`
--

INSERT INTO `spices_j2store_cartitems` (`j2store_cartitem_id`, `cart_id`, `product_id`, `variant_id`, `vendor_id`, `product_type`, `cartitem_params`, `product_qty`, `product_options`) VALUES
(1, 1, 1, 1, 0, 'simple', '{}', '1.0000', 'YTowOnt9');

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_carts`
--

CREATE TABLE `spices_j2store_carts` (
  `j2store_cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `cart_voucher` varchar(255) DEFAULT NULL,
  `cart_coupon` varchar(255) DEFAULT NULL,
  `cart_type` varchar(255) NOT NULL DEFAULT 'cart',
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `cart_params` text NOT NULL,
  `cart_browser` text NOT NULL,
  `cart_analytics` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_carts`
--

INSERT INTO `spices_j2store_carts` (`j2store_cart_id`, `user_id`, `session_id`, `cart_voucher`, `cart_coupon`, `cart_type`, `created_on`, `modified_on`, `customer_ip`, `cart_params`, `cart_browser`, `cart_analytics`) VALUES
(1, 382, 't02me0tbmms1g047uign4ppqj0', NULL, NULL, 'cart', '2022-06-23 17:50:48', '0000-00-00 00:00:00', '127.0.0.1', '', 'chrome', '{\"is_mobile\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_configurations`
--

CREATE TABLE `spices_j2store_configurations` (
  `config_meta_key` varchar(255) NOT NULL,
  `config_meta_value` text,
  `config_meta_default` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_configurations`
--

INSERT INTO `spices_j2store_configurations` (`config_meta_key`, `config_meta_value`, `config_meta_default`) VALUES
('acceptlicense', 'on', ''),
('acceptsupport', 'on', ''),
('addtocart_action', '1', ''),
('addtocart_button_class', 'btn btn-primary', ''),
('addtocart_placement', 'default', ''),
('admin_email', 'maxwellwachira67@gmail.com', ''),
('allow_guest_checkout', '0', ''),
('allow_password_validation', '1', ''),
('allow_registration', '1', ''),
('attachmentfolderpath', 'media/j2store', ''),
('auto_apply_shipping_rate', '0', ''),
('backend_voucher_to_shipping', '1', ''),
('bootstrap_version', '2', ''),
('catalog_mode', '0', ''),
('checkout_price_display_options', '1', ''),
('clear_cart', 'order_placed', ''),
('clear_outdated_cart_data_term', '90', ''),
('config_cart_empty_redirect', 'cart', ''),
('config_cart_redirect_page_url', '', ''),
('config_continue_shopping_page', 'previous', ''),
('config_continue_shopping_page_url', '', ''),
('config_currency', 'USD', ''),
('config_currency_auto', '1', ''),
('config_including_tax', '1', ''),
('config_length_class_id', '1', ''),
('config_tax_default', 'billing', ''),
('config_tax_default_address', 'store', ''),
('config_weight_class_id', '1', ''),
('continue_cart_redirect_menu', '101', ''),
('continue_shopping_page_menu', '101', ''),
('country_id', '110', ''),
('coupon_update', '1', ''),
('date_format', 'Y-m-d H:i:s', ''),
('db18e0199432c1c96400d76a4836e3b0', '1', ''),
('default_payment_method', 'payment_banktransfer', ''),
('display_price_with_tax_info', '0', ''),
('downloadid', '', ''),
('download_area', '1', ''),
('enable_falang_support', '0', ''),
('hide_shipping_untill_address_selection', '1', ''),
('image_for_product_options', '0', ''),
('installation_complete', '1', ''),
('invoice_prefix', 'INV-', ''),
('isregister', '0', ''),
('j2store_enable_css', '1', ''),
('jquery_ui_localisation', '0', ''),
('limit_orderstatuses', '*', ''),
('liveupdate', '', ''),
('load_bootstrap', '1', ''),
('load_fancybox', '1', ''),
('load_fontawesome_ui', '1', ''),
('load_jquery_ui', '3', ''),
('load_minimal_bootstrap', '0', ''),
('option', 'com_j2store', ''),
('postalcode_required', '1', ''),
('prepare_content', '0', ''),
('price_display_options', '1', ''),
('product_option_price', '1', ''),
('product_option_price_prefix', '1', ''),
('queue_key', 'c624f477baff6191d9936cde7dd4ccf0', ''),
('queue_repeat_count', '10', ''),
('related_product_columns', '3', ''),
('shipping_mandatory', '0', ''),
('show_base_price', '1', ''),
('show_clear_cart_button', '0', ''),
('show_customer_note', '1', ''),
('show_item_tax', '0', ''),
('show_login_form', '1', ''),
('show_logout_myprofile', '0', ''),
('show_manufacturer', '0', ''),
('show_postpayment_orderlink', '1', ''),
('show_price_field', '1', ''),
('show_product_price_for_register_user', '0', ''),
('show_product_sku_for_register_user', '0', ''),
('show_qty_field', '1', ''),
('show_shipping_address', '1', ''),
('show_sku', '0', ''),
('show_tax_calculator', '1', ''),
('show_terms', '1', ''),
('show_thumb_cart', '0', ''),
('show_thumb_email', '0', ''),
('store_address_1', '15577', ''),
('store_address_2', '', ''),
('store_billing_layout', '<div> class = \"row-fluid\">\r\n<div class=\"span6\">[first_name] [last_name] [email] [phone_1] [phone_2] [company] [tax_number]</div>\r\n<div class=\"span6\">[address_1] [address_2] [city] [zip] [country_id] [zone_id] </div>\r\n</div>\r\n', ''),
('store_city', '', ''),
('store_name', 'Spice your World', ''),
('store_payment_layout', '', ''),
('store_shipping_layout', '<div> class = \"row-fluid\">\r\n<div class=\"span6\">[first_name] [last_name] [email] [phone_1] [phone_2] [company] [tax_number]</div>\r\n<div class=\"span6\">[address_1] [address_2] [city] [zip] [country_id] [zone_id] </div>\r\n</div>', ''),
('store_zip', '00503', ''),
('task', 'saveConfig', ''),
('termsid', '', ''),
('terms_display_type', 'link', ''),
('view', 'postconfig', ''),
('zone_id', '1736', '');

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_countries`
--

CREATE TABLE `spices_j2store_countries` (
  `j2store_country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_isocode_2` varchar(5) NOT NULL,
  `country_isocode_3` varchar(5) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_countries`
--

INSERT INTO `spices_j2store_countries` (`j2store_country_id`, `country_name`, `country_isocode_2`, `country_isocode_3`, `enabled`, `ordering`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, 0),
(2, 'Albania', 'AL', 'ALB', 1, 0),
(3, 'Algeria', 'DZ', 'DZA', 1, 0),
(4, 'American Samoa', 'AS', 'ASM', 1, 0),
(5, 'Andorra', 'AD', 'AND', 1, 0),
(6, 'Angola', 'AO', 'AGO', 1, 0),
(7, 'Anguilla', 'AI', 'AIA', 1, 0),
(8, 'Antarctica', 'AQ', 'ATA', 1, 0),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, 0),
(10, 'Argentina', 'AR', 'ARG', 1, 0),
(11, 'Armenia', 'AM', 'ARM', 1, 0),
(12, 'Aruba', 'AW', 'ABW', 1, 0),
(13, 'Australia', 'AU', 'AUS', 1, 0),
(14, 'Austria', 'AT', 'AUT', 1, 0),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, 0),
(16, 'Bahamas', 'BS', 'BHS', 1, 0),
(17, 'Bahrain', 'BH', 'BHR', 1, 0),
(18, 'Bangladesh', 'BD', 'BGD', 1, 0),
(19, 'Barbados', 'BB', 'BRB', 1, 0),
(20, 'Belarus', 'BY', 'BLR', 1, 0),
(21, 'Belgium', 'BE', 'BEL', 1, 0),
(22, 'Belize', 'BZ', 'BLZ', 1, 0),
(23, 'Benin', 'BJ', 'BEN', 1, 0),
(24, 'Bermuda', 'BM', 'BMU', 1, 0),
(25, 'Bhutan', 'BT', 'BTN', 1, 0),
(26, 'Bolivia', 'BO', 'BOL', 1, 0),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, 0),
(28, 'Botswana', 'BW', 'BWA', 1, 0),
(29, 'Bouvet Island', 'BV', 'BVT', 1, 0),
(30, 'Brazil', 'BR', 'BRA', 1, 0),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, 0),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, 0),
(33, 'Bulgaria', 'BG', 'BGR', 1, 0),
(34, 'Burkina Faso', 'BF', 'BFA', 1, 0),
(35, 'Burundi', 'BI', 'BDI', 1, 0),
(36, 'Cambodia', 'KH', 'KHM', 1, 0),
(37, 'Cameroon', 'CM', 'CMR', 1, 0),
(38, 'Canada', 'CA', 'CAN', 1, 0),
(39, 'Cape Verde', 'CV', 'CPV', 1, 0),
(40, 'Cayman Islands', 'KY', 'CYM', 1, 0),
(41, 'Central African Republic', 'CF', 'CAF', 1, 0),
(42, 'Chad', 'TD', 'TCD', 1, 0),
(43, 'Chile', 'CL', 'CHL', 1, 0),
(44, 'China', 'CN', 'CHN', 1, 0),
(45, 'Christmas Island', 'CX', 'CXR', 1, 0),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, 0),
(47, 'Colombia', 'CO', 'COL', 1, 0),
(48, 'Comoros', 'KM', 'COM', 1, 0),
(49, 'Congo', 'CG', 'COG', 1, 0),
(50, 'Cook Islands', 'CK', 'COK', 1, 0),
(51, 'Costa Rica', 'CR', 'CRI', 1, 0),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, 0),
(53, 'Croatia', 'HR', 'HRV', 1, 0),
(54, 'Cuba', 'CU', 'CUB', 1, 0),
(55, 'Cyprus', 'CY', 'CYP', 1, 0),
(56, 'Czech Republic', 'CZ', 'CZE', 1, 0),
(57, 'Denmark', 'DK', 'DNK', 1, 0),
(58, 'Djibouti', 'DJ', 'DJI', 1, 0),
(59, 'Dominica', 'DM', 'DMA', 1, 0),
(60, 'Dominican Republic', 'DO', 'DOM', 1, 0),
(61, 'East Timor', 'TP', 'TMP', 1, 0),
(62, 'Ecuador', 'EC', 'ECU', 1, 0),
(63, 'Egypt', 'EG', 'EGY', 1, 0),
(64, 'El Salvador', 'SV', 'SLV', 1, 0),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, 0),
(66, 'Eritrea', 'ER', 'ERI', 1, 0),
(67, 'Estonia', 'EE', 'EST', 1, 0),
(68, 'Ethiopia', 'ET', 'ETH', 1, 0),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, 0),
(70, 'Faroe Islands', 'FO', 'FRO', 1, 0),
(71, 'Fiji', 'FJ', 'FJI', 1, 0),
(72, 'Finland', 'FI', 'FIN', 1, 0),
(73, 'France', 'FR', 'FRA', 1, 0),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, 0),
(75, 'French Guiana', 'GF', 'GUF', 1, 0),
(76, 'French Polynesia', 'PF', 'PYF', 1, 0),
(77, 'French Southern Territories', 'TF', 'ATF', 1, 0),
(78, 'Gabon', 'GA', 'GAB', 1, 0),
(79, 'Gambia', 'GM', 'GMB', 1, 0),
(80, 'Georgia', 'GE', 'GEO', 1, 0),
(81, 'Germany', 'DE', 'DEU', 1, 0),
(82, 'Ghana', 'GH', 'GHA', 1, 0),
(83, 'Gibraltar', 'GI', 'GIB', 1, 0),
(84, 'Greece', 'GR', 'GRC', 1, 0),
(85, 'Greenland', 'GL', 'GRL', 1, 0),
(86, 'Grenada', 'GD', 'GRD', 1, 0),
(87, 'Guadeloupe', 'GP', 'GLP', 1, 0),
(88, 'Guam', 'GU', 'GUM', 1, 0),
(89, 'Guatemala', 'GT', 'GTM', 1, 0),
(90, 'Guinea', 'GN', 'GIN', 1, 0),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, 0),
(92, 'Guyana', 'GY', 'GUY', 1, 0),
(93, 'Haiti', 'HT', 'HTI', 1, 0),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, 0),
(95, 'Honduras', 'HN', 'HND', 1, 0),
(96, 'Hong Kong', 'HK', 'HKG', 1, 0),
(97, 'Hungary', 'HU', 'HUN', 1, 0),
(98, 'Iceland', 'IS', 'ISL', 1, 0),
(99, 'India', 'IN', 'IND', 1, 0),
(100, 'Indonesia', 'ID', 'IDN', 1, 0),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, 0),
(102, 'Iraq', 'IQ', 'IRQ', 1, 0),
(103, 'Ireland', 'IE', 'IRL', 1, 0),
(104, 'Israel', 'IL', 'ISR', 1, 0),
(105, 'Italy', 'IT', 'ITA', 1, 0),
(106, 'Jamaica', 'JM', 'JAM', 1, 0),
(107, 'Japan', 'JP', 'JPN', 1, 0),
(108, 'Jordan', 'JO', 'JOR', 1, 0),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, 0),
(110, 'Kenya', 'KE', 'KEN', 1, 0),
(111, 'Kiribati', 'KI', 'KIR', 1, 0),
(112, 'North Korea', 'KP', 'PRK', 1, 0),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, 0),
(114, 'Kuwait', 'KW', 'KWT', 1, 0),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, 0),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, 0),
(117, 'Latvia', 'LV', 'LVA', 1, 0),
(118, 'Lebanon', 'LB', 'LBN', 1, 0),
(119, 'Lesotho', 'LS', 'LSO', 1, 0),
(120, 'Liberia', 'LR', 'LBR', 1, 0),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, 0),
(122, 'Liechtenstein', 'LI', 'LIE', 1, 0),
(123, 'Lithuania', 'LT', 'LTU', 1, 0),
(124, 'Luxembourg', 'LU', 'LUX', 1, 0),
(125, 'Macau', 'MO', 'MAC', 1, 0),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, 0),
(127, 'Madagascar', 'MG', 'MDG', 1, 0),
(128, 'Malawi', 'MW', 'MWI', 1, 0),
(129, 'Malaysia', 'MY', 'MYS', 1, 0),
(130, 'Maldives', 'MV', 'MDV', 1, 0),
(131, 'Mali', 'ML', 'MLI', 1, 0),
(132, 'Malta', 'MT', 'MLT', 1, 0),
(133, 'Marshall Islands', 'MH', 'MHL', 1, 0),
(134, 'Martinique', 'MQ', 'MTQ', 1, 0),
(135, 'Mauritania', 'MR', 'MRT', 1, 0),
(136, 'Mauritius', 'MU', 'MUS', 1, 0),
(137, 'Mayotte', 'YT', 'MYT', 1, 0),
(138, 'Mexico', 'MX', 'MEX', 1, 0),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, 0),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, 0),
(141, 'Monaco', 'MC', 'MCO', 1, 0),
(142, 'Mongolia', 'MN', 'MNG', 1, 0),
(143, 'Montserrat', 'MS', 'MSR', 1, 0),
(144, 'Morocco', 'MA', 'MAR', 1, 0),
(145, 'Mozambique', 'MZ', 'MOZ', 1, 0),
(146, 'Myanmar', 'MM', 'MMR', 1, 0),
(147, 'Namibia', 'NA', 'NAM', 1, 0),
(148, 'Nauru', 'NR', 'NRU', 1, 0),
(149, 'Nepal', 'NP', 'NPL', 1, 0),
(150, 'Netherlands', 'NL', 'NLD', 1, 0),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, 0),
(152, 'New Caledonia', 'NC', 'NCL', 1, 0),
(153, 'New Zealand', 'NZ', 'NZL', 1, 0),
(154, 'Nicaragua', 'NI', 'NIC', 1, 0),
(155, 'Niger', 'NE', 'NER', 1, 0),
(156, 'Nigeria', 'NG', 'NGA', 1, 0),
(157, 'Niue', 'NU', 'NIU', 1, 0),
(158, 'Norfolk Island', 'NF', 'NFK', 1, 0),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, 0),
(160, 'Norway', 'NO', 'NOR', 1, 0),
(161, 'Oman', 'OM', 'OMN', 1, 0),
(162, 'Pakistan', 'PK', 'PAK', 1, 0),
(163, 'Palau', 'PW', 'PLW', 1, 0),
(164, 'Panama', 'PA', 'PAN', 1, 0),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, 0),
(166, 'Paraguay', 'PY', 'PRY', 1, 0),
(167, 'Peru', 'PE', 'PER', 1, 0),
(168, 'Philippines', 'PH', 'PHL', 1, 0),
(169, 'Pitcairn', 'PN', 'PCN', 1, 0),
(170, 'Poland', 'PL', 'POL', 1, 0),
(171, 'Portugal', 'PT', 'PRT', 1, 0),
(172, 'Puerto Rico', 'PR', 'PRI', 1, 0),
(173, 'Qatar', 'QA', 'QAT', 1, 0),
(174, 'Reunion', 'RE', 'REU', 1, 0),
(175, 'Romania', 'RO', 'ROM', 1, 0),
(176, 'Russian Federation', 'RU', 'RUS', 1, 0),
(177, 'Rwanda', 'RW', 'RWA', 1, 0),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, 0),
(179, 'Saint Lucia', 'LC', 'LCA', 1, 0),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, 0),
(181, 'Samoa', 'WS', 'WSM', 1, 0),
(182, 'San Marino', 'SM', 'SMR', 1, 0),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, 0),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, 0),
(185, 'Senegal', 'SN', 'SEN', 1, 0),
(186, 'Seychelles', 'SC', 'SYC', 1, 0),
(187, 'Sierra Leone', 'SL', 'SLE', 1, 0),
(188, 'Singapore', 'SG', 'SGP', 1, 0),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, 0),
(190, 'Slovenia', 'SI', 'SVN', 1, 0),
(191, 'Solomon Islands', 'SB', 'SLB', 1, 0),
(192, 'Somalia', 'SO', 'SOM', 1, 0),
(193, 'South Africa', 'ZA', 'ZAF', 1, 0),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, 0),
(195, 'Spain', 'ES', 'ESP', 1, 0),
(196, 'Sri Lanka', 'LK', 'LKA', 1, 0),
(197, 'St. Helena', 'SH', 'SHN', 1, 0),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, 0),
(199, 'Sudan', 'SD', 'SDN', 1, 0),
(200, 'Suriname', 'SR', 'SUR', 1, 0),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, 0),
(202, 'Swaziland', 'SZ', 'SWZ', 1, 0),
(203, 'Sweden', 'SE', 'SWE', 1, 0),
(204, 'Switzerland', 'CH', 'CHE', 1, 0),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, 0),
(206, 'Taiwan', 'TW', 'TWN', 1, 0),
(207, 'Tajikistan', 'TJ', 'TJK', 1, 0),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, 0),
(209, 'Thailand', 'TH', 'THA', 1, 0),
(210, 'Togo', 'TG', 'TGO', 1, 0),
(211, 'Tokelau', 'TK', 'TKL', 1, 0),
(212, 'Tonga', 'TO', 'TON', 1, 0),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, 0),
(214, 'Tunisia', 'TN', 'TUN', 1, 0),
(215, 'Turkey', 'TR', 'TUR', 1, 0),
(216, 'Turkmenistan', 'TM', 'TKM', 1, 0),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, 0),
(218, 'Tuvalu', 'TV', 'TUV', 1, 0),
(219, 'Uganda', 'UG', 'UGA', 1, 0),
(220, 'Ukraine', 'UA', 'UKR', 1, 0),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, 0),
(222, 'United Kingdom', 'GB', 'GBR', 1, 0),
(223, 'United States', 'US', 'USA', 1, 0),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, 0),
(225, 'Uruguay', 'UY', 'URY', 1, 0),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, 0),
(227, 'Vanuatu', 'VU', 'VUT', 1, 0),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, 0),
(229, 'Venezuela', 'VE', 'VEN', 1, 0),
(230, 'Viet Nam', 'VN', 'VNM', 1, 0),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, 0),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, 0),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, 0),
(234, 'Western Sahara', 'EH', 'ESH', 1, 0),
(235, 'Yemen', 'YE', 'YEM', 1, 0),
(237, 'Zaire', 'ZR', 'ZAR', 1, 0),
(238, 'Zambia', 'ZM', 'ZMB', 1, 0),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, 0),
(240, 'Serbia', 'RS', 'SRB', 1, 0),
(241, 'Montenegro', 'ME', 'MNE', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_coupons`
--

CREATE TABLE `spices_j2store_coupons` (
  `j2store_coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `value` decimal(12,4) NOT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `max_value` varchar(255) NOT NULL,
  `free_shipping` int(11) NOT NULL,
  `max_uses` int(11) NOT NULL,
  `max_quantity` int(11) DEFAULT NULL,
  `user_group` varchar(255) DEFAULT NULL,
  `logged` int(11) NOT NULL,
  `max_customer_uses` int(11) NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `product_category` text,
  `products` text,
  `min_subtotal` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `mycategory` text NOT NULL,
  `brand_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_currencies`
--

CREATE TABLE `spices_j2store_currencies` (
  `j2store_currency_id` int(11) NOT NULL,
  `currency_title` varchar(32) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_position` varchar(12) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `currency_num_decimals` int(4) NOT NULL,
  `currency_decimal` varchar(12) NOT NULL,
  `currency_thousands` char(1) NOT NULL,
  `currency_value` decimal(15,8) DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_currencies`
--

INSERT INTO `spices_j2store_currencies` (`j2store_currency_id`, `currency_title`, `currency_code`, `currency_position`, `currency_symbol`, `currency_num_decimals`, `currency_decimal`, `currency_thousands`, `currency_value`, `enabled`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'USD', 'USD', 'pre', 'KES', 2, '.', ',', '1.00000000', 1, 0, '2022-06-23 17:08:12', 382, '2022-06-23 20:35:38', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_customfields`
--

CREATE TABLE `spices_j2store_customfields` (
  `j2store_customfield_id` smallint(5) UNSIGNED NOT NULL,
  `field_table` varchar(50) DEFAULT NULL,
  `field_name` varchar(250) NOT NULL,
  `field_namekey` varchar(50) NOT NULL,
  `field_type` varchar(50) DEFAULT NULL,
  `field_value` longtext NOT NULL,
  `enabled` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `field_options` text,
  `field_core` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field_required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field_default` varchar(250) DEFAULT NULL,
  `field_access` varchar(255) NOT NULL DEFAULT 'all',
  `field_categories` varchar(255) NOT NULL DEFAULT 'all',
  `field_with_sub_categories` tinyint(1) NOT NULL DEFAULT '0',
  `field_frontend` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `field_backend` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `field_display` text NOT NULL,
  `field_display_billing` smallint(5) NOT NULL DEFAULT '0',
  `field_display_register` smallint(5) NOT NULL DEFAULT '0',
  `field_display_shipping` smallint(5) NOT NULL DEFAULT '0',
  `field_display_guest` smallint(5) NOT NULL DEFAULT '0',
  `field_display_guest_shipping` smallint(5) NOT NULL DEFAULT '0',
  `field_display_payment` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_customfields`
--

INSERT INTO `spices_j2store_customfields` (`j2store_customfield_id`, `field_table`, `field_name`, `field_namekey`, `field_type`, `field_value`, `enabled`, `ordering`, `field_options`, `field_core`, `field_required`, `field_default`, `field_access`, `field_categories`, `field_with_sub_categories`, `field_frontend`, `field_backend`, `field_display`, `field_display_billing`, `field_display_register`, `field_display_shipping`, `field_display_guest`, `field_display_guest_shipping`, `field_display_payment`) VALUES
(1, 'address', 'J2STORE_ADDRESS_FIRSTNAME', 'first_name', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(2, 'address', 'J2STORE_ADDRESS_LASTNAME', 'last_name', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(3, 'address', 'J2STORE_EMAIL', 'email', 'email', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:36:\"J2STORE_VALIDATION_ENTER_VALID_EMAIL\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 0, 1, 0, 0),
(4, 'address', 'J2STORE_ADDRESS_LINE1', 'address_1', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(5, 'address', 'J2STORE_ADDRESS_LINE2', 'address_2', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 0, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(6, 'address', 'J2STORE_ADDRESS_CITY', 'city', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(7, 'address', 'J2STORE_ADDRESS_ZIP', 'zip', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(8, 'address', 'J2STORE_ADDRESS_PHONE', 'phone_1', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:0:\"\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 0, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(9, 'address', 'J2STORE_ADDRESS_MOBILE', 'phone_2', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(10, 'address', 'J2STORE_ADDRESS_COMPANY_NAME', 'company', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:0:\"\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 0, '', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(11, 'address', 'J2STORE_ADDRESS_TAX_NUMBER', 'tax_number', 'text', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:0:\"\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 0, '', 'all', 'all', 0, 0, 1, '', 1, 1, 0, 1, 0, 0),
(12, 'address', 'J2STORE_ADDRESS_COUNTRY', 'country_id', 'zone', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:7:\"country\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '223', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(13, 'address', 'J2STORE_ADDRESS_ZONE', 'zone_id', 'zone', '', 1, 99, 'a:8:{s:12:\"errormessage\";s:22:\"J2STORE_FIELD_REQUIRED\";s:9:\"filtering\";s:1:\"0\";s:9:\"maxlength\";s:1:\"0\";s:4:\"size\";s:0:\"\";s:4:\"cols\";s:0:\"\";s:9:\"zone_type\";s:4:\"zone\";s:6:\"format\";s:0:\"\";s:8:\"readonly\";s:1:\"0\";}', 1, 1, '3624', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_emailtemplates`
--

CREATE TABLE `spices_j2store_emailtemplates` (
  `j2store_emailtemplate_id` int(11) NOT NULL,
  `email_type` varchar(255) NOT NULL,
  `receiver_type` varchar(255) NOT NULL DEFAULT '*',
  `orderstatus_id` varchar(255) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `body_source` varchar(255) NOT NULL,
  `body_source_file` varchar(255) NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT '*',
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_emailtemplates`
--

INSERT INTO `spices_j2store_emailtemplates` (`j2store_emailtemplate_id`, `email_type`, `receiver_type`, `orderstatus_id`, `group_id`, `paymentmethod`, `subject`, `body`, `body_source`, `body_source_file`, `language`, `enabled`, `ordering`) VALUES
(1, '', '*', '*', '', '*', 'Hello [BILLING_FIRSTNAME] [BILLING_LASTNAME], your order has been placed with [SITENAME]', '<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"2\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td colspan=\"2\" rowspan=\"1\">\r\n<p>Hello [BILLING_FIRSTNAME] [BILLING_LASTNAME], we thank you for placing an order with [SITENAME]. Your Order ID is:<strong>[ORDERID]</strong>. We have now started processing your order. The details of your order are as follows:</p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td>\r\n<h3>Order Information</h3>\r\n<p><strong>Order ID: </strong>[ORDERID]</p>\r\n<p><strong>Invoice Number: </strong>[INVOICENO]</p>\r\n<p><strong>Date: </strong>[ORDERDATE]</p>\r\n<p><strong>Order Amount: </strong>[ORDERAMOUNT]</p>\r\n<p><strong>Order Status: </strong>[ORDERSTATUS]</p>\r\n<p> </p>\r\n</td>\r\n<td>\r\n<h3>Customer Information</h3>\r\n<p>[BILLING_FIRSTNAME] [BILLING_LASTNAME]</p>\r\n<p>[BILLING_ADDRESS_1] [BILLING_ADDRESS_2]</p>\r\n<p>[BILLING_CITY], [BILLING_ZIP]</p>\r\n<p>[BILLING_STATE] [BILLING_COUNTRY]</p>\r\n<p>[BILLING_PHONE] [BILLING_MOBILE]</p>\r\n<p>[BILLING_COMPANY]</p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td>\r\n<h3>Payment Information</h3>\r\n<p><strong>Payment Type: </strong>[PAYMENT_TYPE]</p>\r\n</td>\r\n<td>\r\n<h3>Shipping Information</h3>\r\n<p>[SHIPPING_FIRSTNAME] [SHIPPING_LASTNAME]</p>\r\n<p>[SHIPPING_ADDRESS_1] [SHIPPING_ADDRESS_2]</p>\r\n<p>[SHIPPING_CITY], [SHIPPING_ZIP]</p>\r\n<p>[SHIPPING_STATE] [SHIPPING_COUNTRY]</p>\r\n<p>[SHIPPING_PHONE] [SHIPPING_MOBILE]</p>\r\n<p>[SHIPPING_COMPANY]</p>\r\n<p>[SHIPPING_METHOD]</p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td colspan=\"2\" rowspan=\"1\">\r\n<p>[ITEMS]</p>\r\n</td>\r\n</tr>\r\n<tr valign=\"top\">\r\n<td colspan=\"2\">\r\n<p>For any queries and details please get in touch with us. We will be glad to be of service. You can also view the order details by visiting [INVOICE_URL]</p>\r\n<p>You can use your email address and the following token to view the order [ORDER_TOKEN]</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '*', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_filtergroups`
--

CREATE TABLE `spices_j2store_filtergroups` (
  `j2store_filtergroup_id` int(11) NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_filters`
--

CREATE TABLE `spices_j2store_filters` (
  `j2store_filter_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `filter_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_geozonerules`
--

CREATE TABLE `spices_j2store_geozonerules` (
  `j2store_geozonerule_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_geozones`
--

CREATE TABLE `spices_j2store_geozones` (
  `j2store_geozone_id` int(11) NOT NULL,
  `geozone_name` varchar(255) NOT NULL,
  `enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_invoicetemplates`
--

CREATE TABLE `spices_j2store_invoicetemplates` (
  `j2store_invoicetemplate_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `invoice_type` varchar(255) NOT NULL,
  `orderstatus_id` varchar(255) NOT NULL,
  `group_id` varchar(255) NOT NULL,
  `paymentmethod` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT '*',
  `enabled` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_lengths`
--

CREATE TABLE `spices_j2store_lengths` (
  `j2store_length_id` int(11) NOT NULL,
  `length_title` varchar(255) NOT NULL,
  `length_unit` varchar(4) NOT NULL,
  `length_value` decimal(15,8) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_lengths`
--

INSERT INTO `spices_j2store_lengths` (`j2store_length_id`, `length_title`, `length_unit`, `length_value`, `enabled`, `ordering`) VALUES
(1, 'Centimetre', 'cm', '1.00000000', 1, 0),
(2, 'Inch', 'in', '0.39370000', 1, 0),
(3, 'Millimetre', 'mm', '10.00000000', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_manufacturers`
--

CREATE TABLE `spices_j2store_manufacturers` (
  `j2store_manufacturer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `brand_desc_id` int(11) DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_metafields`
--

CREATE TABLE `spices_j2store_metafields` (
  `id` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metavalue` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `valuetype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `owner_resource` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_options`
--

CREATE TABLE `spices_j2store_options` (
  `j2store_option_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `option_unique_name` varchar(255) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `enabled` int(11) NOT NULL,
  `option_params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_optionvalues`
--

CREATE TABLE `spices_j2store_optionvalues` (
  `j2store_optionvalue_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `optionvalue_name` varchar(255) NOT NULL,
  `optionvalue_image` longtext NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderdiscounts`
--

CREATE TABLE `spices_j2store_orderdiscounts` (
  `j2store_orderdiscount_id` int(11) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_entity_id` int(11) UNSIGNED NOT NULL,
  `discount_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `discount_amount` decimal(12,4) NOT NULL,
  `discount_tax` decimal(12,4) DEFAULT NULL,
  `discount_params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderdownloads`
--

CREATE TABLE `spices_j2store_orderdownloads` (
  `j2store_orderdownload_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `limit_count` bigint(20) NOT NULL,
  `access_granted` datetime NOT NULL,
  `access_expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderfees`
--

CREATE TABLE `spices_j2store_orderfees` (
  `j2store_orderfee_id` int(11) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,4) NOT NULL,
  `tax_class_id` int(11) UNSIGNED NOT NULL,
  `taxable` int(11) NOT NULL,
  `tax` decimal(12,4) NOT NULL,
  `tax_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderhistories`
--

CREATE TABLE `spices_j2store_orderhistories` (
  `j2store_orderhistory_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `order_state_id` int(11) NOT NULL,
  `notify_customer` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderinfos`
--

CREATE TABLE `spices_j2store_orderinfos` (
  `j2store_orderinfo_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `billing_company` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_middle_name` varchar(255) DEFAULT NULL,
  `billing_phone_1` varchar(255) DEFAULT NULL,
  `billing_phone_2` varchar(255) DEFAULT NULL,
  `billing_fax` varchar(255) DEFAULT NULL,
  `billing_address_1` varchar(255) NOT NULL DEFAULT '',
  `billing_address_2` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) NOT NULL DEFAULT '',
  `billing_zone_name` varchar(255) NOT NULL DEFAULT '',
  `billing_country_name` varchar(255) NOT NULL DEFAULT '',
  `billing_zone_id` int(11) NOT NULL DEFAULT '0',
  `billing_country_id` int(11) NOT NULL DEFAULT '0',
  `billing_zip` varchar(255) NOT NULL DEFAULT '',
  `billing_tax_number` varchar(255) DEFAULT NULL,
  `shipping_company` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_middle_name` varchar(255) DEFAULT NULL,
  `shipping_phone_1` varchar(255) DEFAULT NULL,
  `shipping_phone_2` varchar(255) DEFAULT NULL,
  `shipping_fax` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(255) NOT NULL DEFAULT '',
  `shipping_address_2` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) NOT NULL DEFAULT '',
  `shipping_zip` varchar(255) NOT NULL,
  `shipping_zone_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_country_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_zone_id` int(11) NOT NULL DEFAULT '0',
  `shipping_country_id` int(11) NOT NULL DEFAULT '0',
  `shipping_id` varchar(255) NOT NULL DEFAULT '',
  `shipping_tax_number` varchar(255) DEFAULT NULL,
  `all_billing` longtext NOT NULL,
  `all_shipping` longtext NOT NULL,
  `all_payment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderitemattributes`
--

CREATE TABLE `spices_j2store_orderitemattributes` (
  `j2store_orderitemattribute_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL,
  `productattributeoption_id` int(11) NOT NULL,
  `productattributeoptionvalue_id` int(11) NOT NULL,
  `orderitemattribute_name` varchar(255) NOT NULL,
  `orderitemattribute_value` text NOT NULL,
  `orderitemattribute_prefix` varchar(1) NOT NULL,
  `orderitemattribute_price` decimal(12,5) NOT NULL,
  `orderitemattribute_code` varchar(255) NOT NULL,
  `orderitemattribute_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderitems`
--

CREATE TABLE `spices_j2store_orderitems` (
  `j2store_orderitem_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `orderitem_type` varchar(255) NOT NULL DEFAULT 'normal',
  `cart_id` int(11) NOT NULL,
  `cartitem_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `orderitem_sku` varchar(255) NOT NULL,
  `orderitem_name` varchar(255) NOT NULL,
  `orderitem_attributes` text NOT NULL,
  `orderitem_quantity` varchar(255) NOT NULL,
  `orderitem_taxprofile_id` int(11) NOT NULL,
  `orderitem_per_item_tax` decimal(12,4) NOT NULL,
  `orderitem_tax` decimal(12,4) NOT NULL,
  `orderitem_discount` decimal(12,4) NOT NULL,
  `orderitem_discount_tax` decimal(12,4) NOT NULL,
  `orderitem_price` decimal(12,5) NOT NULL,
  `orderitem_option_price` decimal(12,4) NOT NULL,
  `orderitem_finalprice` decimal(12,4) NOT NULL,
  `orderitem_finalprice_with_tax` decimal(12,4) NOT NULL,
  `orderitem_finalprice_without_tax` decimal(12,4) NOT NULL,
  `orderitem_params` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `orderitem_weight` varchar(255) NOT NULL,
  `orderitem_weight_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orders`
--

CREATE TABLE `spices_j2store_orders` (
  `j2store_order_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `order_type` varchar(255) NOT NULL DEFAULT 'normal',
  `parent_id` int(11) DEFAULT NULL,
  `subscription_id` int(10) NOT NULL,
  `cart_id` int(11) UNSIGNED NOT NULL,
  `invoice_prefix` varchar(255) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `order_total` decimal(12,4) NOT NULL,
  `order_subtotal` decimal(12,4) NOT NULL,
  `order_subtotal_ex_tax` decimal(12,4) DEFAULT NULL,
  `order_tax` decimal(12,4) NOT NULL,
  `order_shipping` decimal(12,4) NOT NULL,
  `order_shipping_tax` decimal(12,4) NOT NULL,
  `order_discount` decimal(12,4) NOT NULL,
  `order_discount_tax` decimal(12,4) DEFAULT NULL,
  `order_credit` decimal(12,4) NOT NULL,
  `order_refund` decimal(12,4) DEFAULT NULL,
  `order_surcharge` decimal(12,4) NOT NULL,
  `order_fees` decimal(12,4) DEFAULT NULL,
  `orderpayment_type` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `transaction_details` text NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_value` decimal(15,8) DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `is_shippable` int(11) NOT NULL,
  `is_including_tax` int(11) NOT NULL,
  `customer_note` text NOT NULL,
  `customer_language` varchar(255) NOT NULL,
  `customer_group` varchar(255) NOT NULL,
  `order_state_id` int(11) NOT NULL,
  `order_state` varchar(255) NOT NULL COMMENT 'Legacy compatibility',
  `order_params` text,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `campaign_double_opt_in` int(10) NOT NULL,
  `campaign_order_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_ordershippings`
--

CREATE TABLE `spices_j2store_ordershippings` (
  `j2store_ordershipping_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL DEFAULT '0',
  `ordershipping_type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Element name of shipping plugin',
  `ordershipping_price` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_name` varchar(255) NOT NULL DEFAULT '',
  `ordershipping_code` varchar(255) NOT NULL DEFAULT '',
  `ordershipping_tax` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_extra` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_tracking_id` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_orderstatuses`
--

CREATE TABLE `spices_j2store_orderstatuses` (
  `j2store_orderstatus_id` int(11) NOT NULL,
  `orderstatus_name` varchar(32) NOT NULL,
  `orderstatus_cssclass` text NOT NULL,
  `orderstatus_core` int(1) NOT NULL DEFAULT '0',
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_orderstatuses`
--

INSERT INTO `spices_j2store_orderstatuses` (`j2store_orderstatus_id`, `orderstatus_name`, `orderstatus_cssclass`, `orderstatus_core`, `enabled`, `ordering`) VALUES
(1, 'J2STORE_CONFIRMED', 'label-success', 1, 1, 1),
(2, 'J2STORE_PROCESSED', 'label-info', 1, 1, 2),
(3, 'J2STORE_FAILED', 'label-important', 1, 1, 3),
(4, 'J2STORE_PENDING', 'label-warning', 1, 1, 4),
(5, 'J2STORE_NEW', 'label-warning', 1, 1, 5),
(6, 'J2STORE_CANCELLED', 'label-warning', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_ordertaxes`
--

CREATE TABLE `spices_j2store_ordertaxes` (
  `j2store_ordertax_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `ordertax_title` varchar(255) NOT NULL,
  `ordertax_percent` decimal(12,4) NOT NULL,
  `ordertax_amount` decimal(12,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_productfiles`
--

CREATE TABLE `spices_j2store_productfiles` (
  `j2store_productfile_id` int(11) NOT NULL,
  `product_file_display_name` varchar(255) NOT NULL,
  `product_file_save_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `download_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_productimages`
--

CREATE TABLE `spices_j2store_productimages` (
  `j2store_productimage_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `main_image` text,
  `main_image_alt` varchar(255) NOT NULL,
  `thumb_image` text,
  `thumb_image_alt` varchar(255) NOT NULL,
  `additional_images` longtext,
  `additional_images_alt` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_productimages`
--

INSERT INTO `spices_j2store_productimages` (`j2store_productimage_id`, `product_id`, `main_image`, `main_image_alt`, `thumb_image`, `thumb_image_alt`, `additional_images`, `additional_images_alt`) VALUES
(1, 1, 'images/cinnamon.jpg', '', 'images/cinnamon.jpg', '', '[\"\"]', '[\"\"]');

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_productprice_index`
--

CREATE TABLE `spices_j2store_productprice_index` (
  `product_id` int(11) NOT NULL,
  `min_price` decimal(12,4) NOT NULL,
  `max_price` decimal(12,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_productquantities`
--

CREATE TABLE `spices_j2store_productquantities` (
  `j2store_productquantity_id` int(11) NOT NULL,
  `product_attributes` text NOT NULL COMMENT 'A CSV of productattributeoption_id values, always in numerical order',
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `on_hold` int(11) NOT NULL,
  `sold` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_products`
--

CREATE TABLE `spices_j2store_products` (
  `j2store_product_id` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `product_source` varchar(255) DEFAULT NULL,
  `product_source_id` int(11) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `main_tag` varchar(255) NOT NULL,
  `taxprofile_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `has_options` int(11) DEFAULT NULL,
  `addtocart_text` varchar(255) NOT NULL,
  `enabled` int(11) DEFAULT NULL,
  `plugins` text,
  `params` text,
  `created_on` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_on` varchar(45) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `up_sells` varchar(255) NOT NULL,
  `cross_sells` varchar(255) NOT NULL,
  `productfilter_ids` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_products`
--

INSERT INTO `spices_j2store_products` (`j2store_product_id`, `visibility`, `product_source`, `product_source_id`, `product_type`, `main_tag`, `taxprofile_id`, `manufacturer_id`, `vendor_id`, `has_options`, `addtocart_text`, `enabled`, `plugins`, `params`, `created_on`, `created_by`, `modified_on`, `modified_by`, `up_sells`, `cross_sells`, `productfilter_ids`) VALUES
(1, 1, 'com_content', 1, 'simple', '', 0, 0, NULL, NULL, '', 1, NULL, '{\"product_css_class\":\"\"}', '2022-06-23 17:44:55', 382, '2022-06-23 17:47:59', 382, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_product_filters`
--

CREATE TABLE `spices_j2store_product_filters` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_product_options`
--

CREATE TABLE `spices_j2store_product_options` (
  `j2store_productoption_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ordering` tinyint(7) NOT NULL,
  `required` int(11) NOT NULL,
  `is_variant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_product_optionvalues`
--

CREATE TABLE `spices_j2store_product_optionvalues` (
  `j2store_product_optionvalue_id` int(11) NOT NULL,
  `productoption_id` int(11) NOT NULL,
  `optionvalue_id` int(11) NOT NULL,
  `parent_optionvalue` text NOT NULL,
  `product_optionvalue_price` decimal(15,8) NOT NULL,
  `product_optionvalue_prefix` varchar(255) NOT NULL,
  `product_optionvalue_weight` decimal(15,8) NOT NULL,
  `product_optionvalue_weight_prefix` varchar(255) NOT NULL,
  `product_optionvalue_sku` varchar(255) NOT NULL,
  `product_optionvalue_default` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `product_optionvalue_attribs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_product_prices`
--

CREATE TABLE `spices_j2store_product_prices` (
  `j2store_productprice_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity_from` decimal(15,5) DEFAULT NULL,
  `quantity_to` decimal(15,5) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `price` decimal(15,5) DEFAULT NULL,
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_product_prices`
--

INSERT INTO `spices_j2store_product_prices` (`j2store_productprice_id`, `variant_id`, `quantity_from`, `quantity_to`, `date_from`, `date_to`, `customer_group_id`, `price`, `params`) VALUES
(1, 1, '0.00000', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '200.00000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_product_variant_optionvalues`
--

CREATE TABLE `spices_j2store_product_variant_optionvalues` (
  `variant_id` int(11) NOT NULL,
  `product_optionvalue_ids` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_queues`
--

CREATE TABLE `spices_j2store_queues` (
  `j2store_queue_id` int(11) NOT NULL,
  `relation_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repeat_count` int(11) NOT NULL DEFAULT '0',
  `expired` datetime NOT NULL,
  `created_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_shippingmethods`
--

CREATE TABLE `spices_j2store_shippingmethods` (
  `j2store_shippingmethod_id` int(11) NOT NULL,
  `shipping_method_name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `shipping_method_type` tinyint(1) NOT NULL,
  `params` longtext NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `address_override` varchar(255) NOT NULL,
  `subtotal_minimum` decimal(15,3) NOT NULL,
  `subtotal_maximum` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_shippingrates`
--

CREATE TABLE `spices_j2store_shippingrates` (
  `j2store_shippingrate_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `shipping_rate_price` decimal(12,5) NOT NULL,
  `shipping_rate_weight_start` decimal(11,3) NOT NULL,
  `shipping_rate_weight_end` decimal(11,3) NOT NULL,
  `shipping_rate_handling` decimal(12,5) NOT NULL,
  `created_date` datetime NOT NULL COMMENT 'GMT Only',
  `modified_date` datetime NOT NULL COMMENT 'GMT Only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_taxprofiles`
--

CREATE TABLE `spices_j2store_taxprofiles` (
  `j2store_taxprofile_id` int(11) NOT NULL,
  `taxprofile_name` varchar(255) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_taxrates`
--

CREATE TABLE `spices_j2store_taxrates` (
  `j2store_taxrate_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `taxrate_name` varchar(255) NOT NULL,
  `tax_percent` decimal(11,3) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_taxrules`
--

CREATE TABLE `spices_j2store_taxrules` (
  `j2store_taxrule_id` int(11) NOT NULL,
  `taxprofile_id` int(11) NOT NULL,
  `taxrate_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_uploads`
--

CREATE TABLE `spices_j2store_uploads` (
  `j2store_upload_id` int(11) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `mangled_name` varchar(255) NOT NULL,
  `saved_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_variants`
--

CREATE TABLE `spices_j2store_variants` (
  `j2store_variant_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_master` int(11) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(15,5) DEFAULT NULL COMMENT 'Regular price of the product',
  `pricing_calculator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` int(11) NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci,
  `length` decimal(15,5) DEFAULT NULL,
  `width` decimal(15,5) DEFAULT NULL,
  `height` decimal(15,5) DEFAULT NULL,
  `length_class_id` int(11) DEFAULT NULL,
  `weight` decimal(15,5) DEFAULT NULL,
  `weight_class_id` int(11) DEFAULT NULL,
  `created_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_on` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `manage_stock` int(11) DEFAULT NULL,
  `quantity_restriction` int(11) NOT NULL,
  `min_out_qty` decimal(15,5) DEFAULT NULL,
  `use_store_config_min_out_qty` int(11) DEFAULT NULL,
  `min_sale_qty` decimal(15,5) DEFAULT NULL,
  `use_store_config_min_sale_qty` int(11) DEFAULT NULL,
  `max_sale_qty` decimal(15,5) DEFAULT NULL,
  `use_store_config_max_sale_qty` int(11) DEFAULT NULL,
  `notify_qty` decimal(15,5) DEFAULT NULL,
  `use_store_config_notify_qty` int(11) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `sold` decimal(12,4) DEFAULT NULL,
  `allow_backorder` int(11) NOT NULL,
  `isdefault_variant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_j2store_variants`
--

INSERT INTO `spices_j2store_variants` (`j2store_variant_id`, `product_id`, `is_master`, `sku`, `upc`, `price`, `pricing_calculator`, `shipping`, `params`, `length`, `width`, `height`, `length_class_id`, `weight`, `weight_class_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `manage_stock`, `quantity_restriction`, `min_out_qty`, `use_store_config_min_out_qty`, `min_sale_qty`, `use_store_config_min_sale_qty`, `max_sale_qty`, `use_store_config_max_sale_qty`, `notify_qty`, `use_store_config_notify_qty`, `availability`, `sold`, `allow_backorder`, `isdefault_variant`) VALUES
(1, 1, 1, 'Cinnamon', '', '200.00000', 'standard', 0, '{\"product_css_class\":\"\"}', '0.00000', '0.00000', '0.00000', 0, '0.00000', 0, '2022-06-23 17:47:59', 382, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_vendors`
--

CREATE TABLE `spices_j2store_vendors` (
  `j2store_vendor_id` int(11) NOT NULL,
  `j2store_user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_vouchers`
--

CREATE TABLE `spices_j2store_vouchers` (
  `j2store_voucher_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `email_to` varchar(255) NOT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `voucher_type` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `email_body` longtext NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `voucher_value` decimal(15,8) NOT NULL,
  `ordering` int(11) NOT NULL,
  `enabled` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_weights`
--

CREATE TABLE `spices_j2store_weights` (
  `j2store_weight_id` int(11) NOT NULL,
  `weight_title` varchar(255) NOT NULL,
  `weight_unit` varchar(4) NOT NULL,
  `weight_value` decimal(15,8) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_weights`
--

INSERT INTO `spices_j2store_weights` (`j2store_weight_id`, `weight_title`, `weight_unit`, `weight_value`, `enabled`, `ordering`) VALUES
(1, 'Kilogram', 'kg', '1.00000000', 1, 0),
(2, 'Gram', 'g', '1000.00000000', 1, 0),
(3, 'Ounce', 'oz', '35.27400000', 1, 0),
(4, 'Pound', 'lb', '2.20462000', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_j2store_zones`
--

CREATE TABLE `spices_j2store_zones` (
  `j2store_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_code` varchar(255) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `enabled` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spices_j2store_zones`
--

INSERT INTO `spices_j2store_zones` (`j2store_zone_id`, `country_id`, `zone_code`, `zone_name`, `enabled`, `ordering`) VALUES
(1, 1, 'BDS', 'Badakhshan', 1, 0),
(2, 1, 'BDG', 'Badghis', 1, 0),
(3, 1, 'BGL', 'Baghlan', 1, 0),
(4, 1, 'BAL', 'Balkh', 1, 0),
(5, 1, 'BAM', 'Bamian', 1, 0),
(6, 1, 'FRA', 'Farah', 1, 0),
(7, 1, 'FYB', 'Faryab', 1, 0),
(8, 1, 'GHA', 'Ghazni', 1, 0),
(9, 1, 'GHO', 'Ghowr', 1, 0),
(10, 1, 'HEL', 'Helmand', 1, 0),
(11, 1, 'HER', 'Herat', 1, 0),
(12, 1, 'JOW', 'Jowzjan', 1, 0),
(13, 1, 'KAB', 'Kabul', 1, 0),
(14, 1, 'KAN', 'Kandahar', 1, 0),
(15, 1, 'KAP', 'Kapisa', 1, 0),
(16, 1, 'KHO', 'Khost', 1, 0),
(17, 1, 'KNR', 'Konar', 1, 0),
(18, 1, 'KDZ', 'Kondoz', 1, 0),
(19, 1, 'LAG', 'Laghman', 1, 0),
(20, 1, 'LOW', 'Lowgar', 1, 0),
(21, 1, 'NAN', 'Nangrahar', 1, 0),
(22, 1, 'NIM', 'Nimruz', 1, 0),
(23, 1, 'NUR', 'Nurestan', 1, 0),
(24, 1, 'ORU', 'Oruzgan', 1, 0),
(25, 1, 'PIA', 'Paktia', 1, 0),
(26, 1, 'PKA', 'Paktika', 1, 0),
(27, 1, 'PAR', 'Parwan', 1, 0),
(28, 1, 'SAM', 'Samangan', 1, 0),
(29, 1, 'SAR', 'Sar-e Pol', 1, 0),
(30, 1, 'TAK', 'Takhar', 1, 0),
(31, 1, 'WAR', 'Wardak', 1, 0),
(32, 1, 'ZAB', 'Zabol', 1, 0),
(33, 2, 'BR', 'Berat', 1, 0),
(34, 2, 'BU', 'Bulqize', 1, 0),
(35, 2, 'DL', 'Delvine', 1, 0),
(36, 2, 'DV', 'Devoll', 1, 0),
(37, 2, 'DI', 'Diber', 1, 0),
(38, 2, 'DR', 'Durres', 1, 0),
(39, 2, 'EL', 'Elbasan', 1, 0),
(40, 2, 'ER', 'Kolonje', 1, 0),
(41, 2, 'FR', 'Fier', 1, 0),
(42, 2, 'GJ', 'Gjirokaster', 1, 0),
(43, 2, 'GR', 'Gramsh', 1, 0),
(44, 2, 'HA', 'Has', 1, 0),
(45, 2, 'KA', 'Kavaje', 1, 0),
(46, 2, 'KB', 'Kurbin', 1, 0),
(47, 2, 'KC', 'Kucove', 1, 0),
(48, 2, 'KO', 'Korce', 1, 0),
(49, 2, 'KR', 'Kruje', 1, 0),
(50, 2, 'KU', 'Kukes', 1, 0),
(51, 2, 'LB', 'Librazhd', 1, 0),
(52, 2, 'LE', 'Lezhe', 1, 0),
(53, 2, 'LU', 'Lushnje', 1, 0),
(54, 2, 'MM', 'Malesi e Madhe', 1, 0),
(55, 2, 'MK', 'Mallakaster', 1, 0),
(56, 2, 'MT', 'Mat', 1, 0),
(57, 2, 'MR', 'Mirdite', 1, 0),
(58, 2, 'PQ', 'Peqin', 1, 0),
(59, 2, 'PR', 'Permet', 1, 0),
(60, 2, 'PG', 'Pogradec', 1, 0),
(61, 2, 'PU', 'Puke', 1, 0),
(62, 2, 'SH', 'Shkoder', 1, 0),
(63, 2, 'SK', 'Skrapar', 1, 0),
(64, 2, 'SR', 'Sarande', 1, 0),
(65, 2, 'TE', 'Tepelene', 1, 0),
(66, 2, 'TP', 'Tropoje', 1, 0),
(67, 2, 'TR', 'Tirane', 1, 0),
(68, 2, 'VL', 'Vlore', 1, 0),
(69, 3, 'ADR', 'Adrar', 1, 0),
(70, 3, 'ADE', 'Ain Defla', 1, 0),
(71, 3, 'ATE', 'Ain Temouchent', 1, 0),
(72, 3, 'ALG', 'Alger', 1, 0),
(73, 3, 'ANN', 'Annaba', 1, 0),
(74, 3, 'BAT', 'Batna', 1, 0),
(75, 3, 'BEC', 'Bechar', 1, 0),
(76, 3, 'BEJ', 'Bejaia', 1, 0),
(77, 3, 'BIS', 'Biskra', 1, 0),
(78, 3, 'BLI', 'Blida', 1, 0),
(79, 3, 'BBA', 'Bordj Bou Arreridj', 1, 0),
(80, 3, 'BOA', 'Bouira', 1, 0),
(81, 3, 'BMD', 'Boumerdes', 1, 0),
(82, 3, 'CHL', 'Chlef', 1, 0),
(83, 3, 'CON', 'Constantine', 1, 0),
(84, 3, 'DJE', 'Djelfa', 1, 0),
(85, 3, 'EBA', 'El Bayadh', 1, 0),
(86, 3, 'EOU', 'El Oued', 1, 0),
(87, 3, 'ETA', 'El Tarf', 1, 0),
(88, 3, 'GHA', 'Ghardaia', 1, 0),
(89, 3, 'GUE', 'Guelma', 1, 0),
(90, 3, 'ILL', 'Illizi', 1, 0),
(91, 3, 'JIJ', 'Jijel', 1, 0),
(92, 3, 'KHE', 'Khenchela', 1, 0),
(93, 3, 'LAG', 'Laghouat', 1, 0),
(94, 3, 'MUA', 'Muaskar', 1, 0),
(95, 3, 'MED', 'Medea', 1, 0),
(96, 3, 'MIL', 'Mila', 1, 0),
(97, 3, 'MOS', 'Mostaganem', 1, 0),
(98, 3, 'MSI', 'M\'Sila', 1, 0),
(99, 3, 'NAA', 'Naama', 1, 0),
(100, 3, 'ORA', 'Oran', 1, 0),
(101, 3, 'OUA', 'Ouargla', 1, 0),
(102, 3, 'OEB', 'Oum el-Bouaghi', 1, 0),
(103, 3, 'REL', 'Relizane', 1, 0),
(104, 3, 'SAI', 'Saida', 1, 0),
(105, 3, 'SET', 'Setif', 1, 0),
(106, 3, 'SBA', 'Sidi Bel Abbes', 1, 0),
(107, 3, 'SKI', 'Skikda', 1, 0),
(108, 3, 'SAH', 'Souk Ahras', 1, 0),
(109, 3, 'TAM', 'Tamanghasset', 1, 0),
(110, 3, 'TEB', 'Tebessa', 1, 0),
(111, 3, 'TIA', 'Tiaret', 1, 0),
(112, 3, 'TIN', 'Tindouf', 1, 0),
(113, 3, 'TIP', 'Tipaza', 1, 0),
(114, 3, 'TIS', 'Tissemsilt', 1, 0),
(115, 3, 'TOU', 'Tizi Ouzou', 1, 0),
(116, 3, 'TLE', 'Tlemcen', 1, 0),
(117, 4, 'E', 'Eastern', 1, 0),
(118, 4, 'M', 'Manu\'a', 1, 0),
(119, 4, 'R', 'Rose Island', 1, 0),
(120, 4, 'S', 'Swains Island', 1, 0),
(121, 4, 'W', 'Western', 1, 0),
(122, 5, 'ALV', 'Andorra la Vella', 1, 0),
(123, 5, 'CAN', 'Canillo', 1, 0),
(124, 5, 'ENC', 'Encamp', 1, 0),
(125, 5, 'ESE', 'Escaldes-Engordany', 1, 0),
(126, 5, 'LMA', 'La Massana', 1, 0),
(127, 5, 'ORD', 'Ordino', 1, 0),
(128, 5, 'SJL', 'Sant Julia de Loria', 1, 0),
(129, 6, 'BGO', 'Bengo', 1, 0),
(130, 6, 'BGU', 'Benguela', 1, 0),
(131, 6, 'BIE', 'Bie', 1, 0),
(132, 6, 'CAB', 'Cabinda', 1, 0),
(133, 6, 'CCU', 'Cuando-Cubango', 1, 0),
(134, 6, 'CNO', 'Cuanza Norte', 1, 0),
(135, 6, 'CUS', 'Cuanza Sul', 1, 0),
(136, 6, 'CNN', 'Cunene', 1, 0),
(137, 6, 'HUA', 'Huambo', 1, 0),
(138, 6, 'HUI', 'Huila', 1, 0),
(139, 6, 'LUA', 'Luanda', 1, 0),
(140, 6, 'LNO', 'Lunda Norte', 1, 0),
(141, 6, 'LSU', 'Lunda Sul', 1, 0),
(142, 6, 'MAL', 'Malange', 1, 0),
(143, 6, 'MOX', 'Moxico', 1, 0),
(144, 6, 'NAM', 'Namibe', 1, 0),
(145, 6, 'UIG', 'Uige', 1, 0),
(146, 6, 'ZAI', 'Zaire', 1, 0),
(147, 9, 'ASG', 'Saint George', 1, 0),
(148, 9, 'ASJ', 'Saint John', 1, 0),
(149, 9, 'ASM', 'Saint Mary', 1, 0),
(150, 9, 'ASL', 'Saint Paul', 1, 0),
(151, 9, 'ASR', 'Saint Peter', 1, 0),
(152, 9, 'ASH', 'Saint Philip', 1, 0),
(153, 9, 'BAR', 'Barbuda', 1, 0),
(154, 9, 'RED', 'Redonda', 1, 0),
(155, 10, 'AN', 'Antartida e Islas del Atlantico', 1, 0),
(156, 10, 'BA', 'Buenos Aires', 1, 0),
(157, 10, 'CA', 'Catamarca', 1, 0),
(158, 10, 'CH', 'Chaco', 1, 0),
(159, 10, 'CU', 'Chubut', 1, 0),
(160, 10, 'CO', 'Cordoba', 1, 0),
(161, 10, 'CR', 'Corrientes', 1, 0),
(162, 10, 'DF', 'Distrito Federal', 1, 0),
(163, 10, 'ER', 'Entre Rios', 1, 0),
(164, 10, 'FO', 'Formosa', 1, 0),
(165, 10, 'JU', 'Jujuy', 1, 0),
(166, 10, 'LP', 'La Pampa', 1, 0),
(167, 10, 'LR', 'La Rioja', 1, 0),
(168, 10, 'ME', 'Mendoza', 1, 0),
(169, 10, 'MI', 'Misiones', 1, 0),
(170, 10, 'NE', 'Neuquen', 1, 0),
(171, 10, 'RN', 'Rio Negro', 1, 0),
(172, 10, 'SA', 'Salta', 1, 0),
(173, 10, 'SJ', 'San Juan', 1, 0),
(174, 10, 'SL', 'San Luis', 1, 0),
(175, 10, 'SC', 'Santa Cruz', 1, 0),
(176, 10, 'SF', 'Santa Fe', 1, 0),
(177, 10, 'SD', 'Santiago del Estero', 1, 0),
(178, 10, 'TF', 'Tierra del Fuego', 1, 0),
(179, 10, 'TU', 'Tucuman', 1, 0),
(180, 11, 'AGT', 'Aragatsotn', 1, 0),
(181, 11, 'ARR', 'Ararat', 1, 0),
(182, 11, 'ARM', 'Armavir', 1, 0),
(183, 11, 'GEG', 'Geghark\'unik\'', 1, 0),
(184, 11, 'KOT', 'Kotayk\'', 1, 0),
(185, 11, 'LOR', 'Lorri', 1, 0),
(186, 11, 'SHI', 'Shirak', 1, 0),
(187, 11, 'SYU', 'Syunik\'', 1, 0),
(188, 11, 'TAV', 'Tavush', 1, 0),
(189, 11, 'VAY', 'Vayots\' Dzor', 1, 0),
(190, 11, 'YER', 'Yerevan', 1, 0),
(191, 13, 'ACT', 'Australian Capital Territory', 1, 0),
(192, 13, 'NSW', 'New South Wales', 1, 0),
(193, 13, 'NT', 'Northern Territory', 1, 0),
(194, 13, 'QLD', 'Queensland', 1, 0),
(195, 13, 'SA', 'South Australia', 1, 0),
(196, 13, 'TAS', 'Tasmania', 1, 0),
(197, 13, 'VIC', 'Victoria', 1, 0),
(198, 13, 'WA', 'Western Australia', 1, 0),
(199, 14, 'BUR', 'Burgenland', 1, 0),
(200, 14, 'KAR', 'Kärnten', 1, 0),
(201, 14, 'NOS', 'Nieder&ouml;esterreich', 1, 0),
(202, 14, 'OOS', 'Ober&ouml;esterreich', 1, 0),
(203, 14, 'SAL', 'Salzburg', 1, 0),
(204, 14, 'STE', 'Steiermark', 1, 0),
(205, 14, 'TIR', 'Tirol', 1, 0),
(206, 14, 'VOR', 'Vorarlberg', 1, 0),
(207, 14, 'WIE', 'Wien', 1, 0),
(208, 15, 'AB', 'Ali Bayramli', 1, 0),
(209, 15, 'ABS', 'Abseron', 1, 0),
(210, 15, 'AGC', 'AgcabAdi', 1, 0),
(211, 15, 'AGM', 'Agdam', 1, 0),
(212, 15, 'AGS', 'Agdas', 1, 0),
(213, 15, 'AGA', 'Agstafa', 1, 0),
(214, 15, 'AGU', 'Agsu', 1, 0),
(215, 15, 'AST', 'Astara', 1, 0),
(216, 15, 'BA', 'Baki', 1, 0),
(217, 15, 'BAB', 'BabAk', 1, 0),
(218, 15, 'BAL', 'BalakAn', 1, 0),
(219, 15, 'BAR', 'BArdA', 1, 0),
(220, 15, 'BEY', 'Beylaqan', 1, 0),
(221, 15, 'BIL', 'Bilasuvar', 1, 0),
(222, 15, 'CAB', 'Cabrayil', 1, 0),
(223, 15, 'CAL', 'Calilabab', 1, 0),
(224, 15, 'CUL', 'Culfa', 1, 0),
(225, 15, 'DAS', 'Daskasan', 1, 0),
(226, 15, 'DAV', 'Davaci', 1, 0),
(227, 15, 'FUZ', 'Fuzuli', 1, 0),
(228, 15, 'GA', 'Ganca', 1, 0),
(229, 15, 'GAD', 'Gadabay', 1, 0),
(230, 15, 'GOR', 'Goranboy', 1, 0),
(231, 15, 'GOY', 'Goycay', 1, 0),
(232, 15, 'HAC', 'Haciqabul', 1, 0),
(233, 15, 'IMI', 'Imisli', 1, 0),
(234, 15, 'ISM', 'Ismayilli', 1, 0),
(235, 15, 'KAL', 'Kalbacar', 1, 0),
(236, 15, 'KUR', 'Kurdamir', 1, 0),
(237, 15, 'LA', 'Lankaran', 1, 0),
(238, 15, 'LAC', 'Lacin', 1, 0),
(239, 15, 'LAN', 'Lankaran', 1, 0),
(240, 15, 'LER', 'Lerik', 1, 0),
(241, 15, 'MAS', 'Masalli', 1, 0),
(242, 15, 'MI', 'Mingacevir', 1, 0),
(243, 15, 'NA', 'Naftalan', 1, 0),
(244, 15, 'NEF', 'Neftcala', 1, 0),
(245, 15, 'OGU', 'Oguz', 1, 0),
(246, 15, 'ORD', 'Ordubad', 1, 0),
(247, 15, 'QAB', 'Qabala', 1, 0),
(248, 15, 'QAX', 'Qax', 1, 0),
(249, 15, 'QAZ', 'Qazax', 1, 0),
(250, 15, 'QOB', 'Qobustan', 1, 0),
(251, 15, 'QBA', 'Quba', 1, 0),
(252, 15, 'QBI', 'Qubadli', 1, 0),
(253, 15, 'QUS', 'Qusar', 1, 0),
(254, 15, 'SA', 'Saki', 1, 0),
(255, 15, 'SAT', 'Saatli', 1, 0),
(256, 15, 'SAB', 'Sabirabad', 1, 0),
(257, 15, 'SAD', 'Sadarak', 1, 0),
(258, 15, 'SAH', 'Sahbuz', 1, 0),
(259, 15, 'SAK', 'Saki', 1, 0),
(260, 15, 'SAL', 'Salyan', 1, 0),
(261, 15, 'SM', 'Sumqayit', 1, 0),
(262, 15, 'SMI', 'Samaxi', 1, 0),
(263, 15, 'SKR', 'Samkir', 1, 0),
(264, 15, 'SMX', 'Samux', 1, 0),
(265, 15, 'SAR', 'Sarur', 1, 0),
(266, 15, 'SIY', 'Siyazan', 1, 0),
(267, 15, 'SS', 'Susa', 1, 0),
(268, 15, 'SUS', 'Susa', 1, 0),
(269, 15, 'TAR', 'Tartar', 1, 0),
(270, 15, 'TOV', 'Tovuz', 1, 0),
(271, 15, 'UCA', 'Ucar', 1, 0),
(272, 15, 'XA', 'Xankandi', 1, 0),
(273, 15, 'XAC', 'Xacmaz', 1, 0),
(274, 15, 'XAN', 'Xanlar', 1, 0),
(275, 15, 'XIZ', 'Xizi', 1, 0),
(276, 15, 'XCI', 'Xocali', 1, 0),
(277, 15, 'XVD', 'Xocavand', 1, 0),
(278, 15, 'YAR', 'Yardimli', 1, 0),
(279, 15, 'YEV', 'Yevlax', 1, 0),
(280, 15, 'ZAN', 'Zangilan', 1, 0),
(281, 15, 'ZAQ', 'Zaqatala', 1, 0),
(282, 15, 'ZAR', 'Zardab', 1, 0),
(283, 15, 'NX', 'Naxcivan', 1, 0),
(284, 16, 'ACK', 'Acklins', 1, 0),
(285, 16, 'BER', 'Berry Islands', 1, 0),
(286, 16, 'BIM', 'Bimini', 1, 0),
(287, 16, 'BLK', 'Black Point', 1, 0),
(288, 16, 'CAT', 'Cat Island', 1, 0),
(289, 16, 'CAB', 'Central Abaco', 1, 0),
(290, 16, 'CAN', 'Central Andros', 1, 0),
(291, 16, 'CEL', 'Central Eleuthera', 1, 0),
(292, 16, 'FRE', 'City of Freeport', 1, 0),
(293, 16, 'CRO', 'Crooked Island', 1, 0),
(294, 16, 'EGB', 'East Grand Bahama', 1, 0),
(295, 16, 'EXU', 'Exuma', 1, 0),
(296, 16, 'GRD', 'Grand Cay', 1, 0),
(297, 16, 'HAR', 'Harbour Island', 1, 0),
(298, 16, 'HOP', 'Hope Town', 1, 0),
(299, 16, 'INA', 'Inagua', 1, 0),
(300, 16, 'LNG', 'Long Island', 1, 0),
(301, 16, 'MAN', 'Mangrove Cay', 1, 0),
(302, 16, 'MAY', 'Mayaguana', 1, 0),
(303, 16, 'MOO', 'Moore\'s Island', 1, 0),
(304, 16, 'NAB', 'North Abaco', 1, 0),
(305, 16, 'NAN', 'North Andros', 1, 0),
(306, 16, 'NEL', 'North Eleuthera', 1, 0),
(307, 16, 'RAG', 'Ragged Island', 1, 0),
(308, 16, 'RUM', 'Rum Cay', 1, 0),
(309, 16, 'SAL', 'San Salvador', 1, 0),
(310, 16, 'SAB', 'South Abaco', 1, 0),
(311, 16, 'SAN', 'South Andros', 1, 0),
(312, 16, 'SEL', 'South Eleuthera', 1, 0),
(313, 16, 'SWE', 'Spanish Wells', 1, 0),
(314, 16, 'WGB', 'West Grand Bahama', 1, 0),
(315, 17, 'CAP', 'Capital', 1, 0),
(316, 17, 'CEN', 'Central', 1, 0),
(317, 17, 'MUH', 'Muharraq', 1, 0),
(318, 17, 'NOR', 'Northern', 1, 0),
(319, 17, 'SOU', 'Southern', 1, 0),
(320, 18, 'BAR', 'Barisal', 1, 0),
(321, 18, 'CHI', 'Chittagong', 1, 0),
(322, 18, 'DHA', 'Dhaka', 1, 0),
(323, 18, 'KHU', 'Khulna', 1, 0),
(324, 18, 'RAJ', 'Rajshahi', 1, 0),
(325, 18, 'SYL', 'Sylhet', 1, 0),
(326, 19, 'CC', 'Christ Church', 1, 0),
(327, 19, 'AND', 'Saint Andrew', 1, 0),
(328, 19, 'GEO', 'Saint George', 1, 0),
(329, 19, 'JAM', 'Saint James', 1, 0),
(330, 19, 'JOH', 'Saint John', 1, 0),
(331, 19, 'JOS', 'Saint Joseph', 1, 0),
(332, 19, 'LUC', 'Saint Lucy', 1, 0),
(333, 19, 'MIC', 'Saint Michael', 1, 0),
(334, 19, 'PET', 'Saint Peter', 1, 0),
(335, 19, 'PHI', 'Saint Philip', 1, 0),
(336, 19, 'THO', 'Saint Thomas', 1, 0),
(337, 20, 'BR', 'Brestskaya (Brest)', 1, 0),
(338, 20, 'HO', 'Homyel\'skaya (Homyel\')', 1, 0),
(339, 20, 'HM', 'Horad Minsk', 1, 0),
(340, 20, 'HR', 'Hrodzyenskaya (Hrodna)', 1, 0),
(341, 20, 'MA', 'Mahilyowskaya (Mahilyow)', 1, 0),
(342, 20, 'MI', 'Minskaya', 1, 0),
(343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)', 1, 0),
(344, 21, 'VAN', 'Antwerpen', 1, 0),
(345, 21, 'WBR', 'Brabant Wallon', 1, 0),
(346, 21, 'WHT', 'Hainaut', 1, 0),
(347, 21, 'WLG', 'Liege', 1, 0),
(348, 21, 'VLI', 'Limburg', 1, 0),
(349, 21, 'WLX', 'Luxembourg', 1, 0),
(350, 21, 'WNA', 'Namur', 1, 0),
(351, 21, 'VOV', 'Oost-Vlaanderen', 1, 0),
(352, 21, 'VBR', 'Vlaams Brabant', 1, 0),
(353, 21, 'VWV', 'West-Vlaanderen', 1, 0),
(354, 22, 'BZ', 'Belize', 1, 0),
(355, 22, 'CY', 'Cayo', 1, 0),
(356, 22, 'CR', 'Corozal', 1, 0),
(357, 22, 'OW', 'Orange Walk', 1, 0),
(358, 22, 'SC', 'Stann Creek', 1, 0),
(359, 22, 'TO', 'Toledo', 1, 0),
(360, 23, 'AL', 'Alibori', 1, 0),
(361, 23, 'AK', 'Atakora', 1, 0),
(362, 23, 'AQ', 'Atlantique', 1, 0),
(363, 23, 'BO', 'Borgou', 1, 0),
(364, 23, 'CO', 'Collines', 1, 0),
(365, 23, 'DO', 'Donga', 1, 0),
(366, 23, 'KO', 'Kouffo', 1, 0),
(367, 23, 'LI', 'Littoral', 1, 0),
(368, 23, 'MO', 'Mono', 1, 0),
(369, 23, 'OU', 'Oueme', 1, 0),
(370, 23, 'PL', 'Plateau', 1, 0),
(371, 23, 'ZO', 'Zou', 1, 0),
(372, 24, 'DS', 'Devonshire', 1, 0),
(373, 24, 'HC', 'Hamilton City', 1, 0),
(374, 24, 'HA', 'Hamilton', 1, 0),
(375, 24, 'PG', 'Paget', 1, 0),
(376, 24, 'PB', 'Pembroke', 1, 0),
(377, 24, 'GC', 'Saint George City', 1, 0),
(378, 24, 'SG', 'Saint George\'s', 1, 0),
(379, 24, 'SA', 'Sandys', 1, 0),
(380, 24, 'SM', 'Smith\'s', 1, 0),
(381, 24, 'SH', 'Southampton', 1, 0),
(382, 24, 'WA', 'Warwick', 1, 0),
(383, 25, 'BUM', 'Bumthang', 1, 0),
(384, 25, 'CHU', 'Chukha', 1, 0),
(385, 25, 'DAG', 'Dagana', 1, 0),
(386, 25, 'GAS', 'Gasa', 1, 0),
(387, 25, 'HAA', 'Haa', 1, 0),
(388, 25, 'LHU', 'Lhuntse', 1, 0),
(389, 25, 'MON', 'Mongar', 1, 0),
(390, 25, 'PAR', 'Paro', 1, 0),
(391, 25, 'PEM', 'Pemagatshel', 1, 0),
(392, 25, 'PUN', 'Punakha', 1, 0),
(393, 25, 'SJO', 'Samdrup Jongkhar', 1, 0),
(394, 25, 'SAT', 'Samtse', 1, 0),
(395, 25, 'SAR', 'Sarpang', 1, 0),
(396, 25, 'THI', 'Thimphu', 1, 0),
(397, 25, 'TRG', 'Trashigang', 1, 0),
(398, 25, 'TRY', 'Trashiyangste', 1, 0),
(399, 25, 'TRO', 'Trongsa', 1, 0),
(400, 25, 'TSI', 'Tsirang', 1, 0),
(401, 25, 'WPH', 'Wangdue Phodrang', 1, 0),
(402, 25, 'ZHE', 'Zhemgang', 1, 0),
(403, 26, 'BEN', 'Beni', 1, 0),
(404, 26, 'CHU', 'Chuquisaca', 1, 0),
(405, 26, 'COC', 'Cochabamba', 1, 0),
(406, 26, 'LPZ', 'La Paz', 1, 0),
(407, 26, 'ORU', 'Oruro', 1, 0),
(408, 26, 'PAN', 'Pando', 1, 0),
(409, 26, 'POT', 'Potosi', 1, 0),
(410, 26, 'SCZ', 'Santa Cruz', 1, 0),
(411, 26, 'TAR', 'Tarija', 1, 0),
(412, 27, 'RS', 'Republika Srpska', 1, 0),
(413, 27, 'BRO', 'Brčko District', 1, 0),
(414, 27, 'FUS', 'Unsko-Sanski Kanton', 1, 0),
(415, 27, 'FPO', 'Posavski Kanton', 1, 0),
(416, 27, 'FTU', 'Tuzlanski Kanton', 1, 0),
(417, 27, 'FZE', 'Zeničko-Dobojski Kanton', 1, 0),
(418, 27, 'FBP', 'Bosanskopodrinjski Kanton', 1, 0),
(419, 27, 'FSB', 'Srednjebosanski Kanton', 1, 0),
(420, 27, 'FHN', 'Hercegovačko-neretvanski Kanton', 1, 0),
(421, 27, 'FZH', 'Zapadnohercegovački Kanton', 1, 0),
(422, 27, 'FSA', 'Kanton Sarajevo', 1, 0),
(423, 27, 'FZA', 'Zapadnobosanski Kanton', 1, 0),
(430, 28, 'CE', 'Central', 1, 0),
(431, 28, 'GH', 'Ghanzi', 1, 0),
(432, 28, 'KD', 'Kgalagadi', 1, 0),
(433, 28, 'KT', 'Kgatleng', 1, 0),
(434, 28, 'KW', 'Kweneng', 1, 0),
(435, 28, 'NG', 'Ngamiland', 1, 0),
(436, 28, 'NE', 'North East', 1, 0),
(437, 28, 'NW', 'North West', 1, 0),
(438, 28, 'SE', 'South East', 1, 0),
(439, 28, 'SO', 'Southern', 1, 0),
(440, 30, 'AC', 'Acre', 1, 0),
(441, 30, 'AL', 'Alagoas', 1, 0),
(442, 30, 'AP', 'Amapa', 1, 0),
(443, 30, 'AM', 'Amazonas', 1, 0),
(444, 30, 'BA', 'Bahia', 1, 0),
(445, 30, 'CE', 'Ceara', 1, 0),
(446, 30, 'DF', 'Distrito Federal', 1, 0),
(447, 30, 'ES', 'Espirito Santo', 1, 0),
(448, 30, 'GO', 'Goias', 1, 0),
(449, 30, 'MA', 'Maranhao', 1, 0),
(450, 30, 'MT', 'Mato Grosso', 1, 0),
(451, 30, 'MS', 'Mato Grosso do Sul', 1, 0),
(452, 30, 'MG', 'Minas Gerais', 1, 0),
(453, 30, 'PA', 'Para', 1, 0),
(454, 30, 'PB', 'Paraiba', 1, 0),
(455, 30, 'PR', 'Parana', 1, 0),
(456, 30, 'PE', 'Pernambuco', 1, 0),
(457, 30, 'PI', 'Piaui', 1, 0),
(458, 30, 'RJ', 'Rio de Janeiro', 1, 0),
(459, 30, 'RN', 'Rio Grande do Norte', 1, 0),
(460, 30, 'RS', 'Rio Grande do Sul', 1, 0),
(461, 30, 'RO', 'Rondonia', 1, 0),
(462, 30, 'RR', 'Roraima', 1, 0),
(463, 30, 'SC', 'Santa Catarina', 1, 0),
(464, 30, 'SP', 'Sao Paulo', 1, 0),
(465, 30, 'SE', 'Sergipe', 1, 0),
(466, 30, 'TO', 'Tocantins', 1, 0),
(467, 31, 'PB', 'Peros Banhos', 1, 0),
(468, 31, 'SI', 'Salomon Islands', 1, 0),
(469, 31, 'NI', 'Nelsons Island', 1, 0),
(470, 31, 'TB', 'Three Brothers', 1, 0),
(471, 31, 'EA', 'Eagle Islands', 1, 0),
(472, 31, 'DI', 'Danger Island', 1, 0),
(473, 31, 'EG', 'Egmont Islands', 1, 0),
(474, 31, 'DG', 'Diego Garcia', 1, 0),
(475, 32, 'BEL', 'Belait', 1, 0),
(476, 32, 'BRM', 'Brunei and Muara', 1, 0),
(477, 32, 'TEM', 'Temburong', 1, 0),
(478, 32, 'TUT', 'Tutong', 1, 0),
(479, 33, '', 'Blagoevgrad', 1, 0),
(480, 33, '', 'Burgas', 1, 0),
(481, 33, '', 'Dobrich', 1, 0),
(482, 33, '', 'Gabrovo', 1, 0),
(483, 33, '', 'Haskovo', 1, 0),
(484, 33, '', 'Kardjali', 1, 0),
(485, 33, '', 'Kyustendil', 1, 0),
(486, 33, '', 'Lovech', 1, 0),
(487, 33, '', 'Montana', 1, 0),
(488, 33, '', 'Pazardjik', 1, 0),
(489, 33, '', 'Pernik', 1, 0),
(490, 33, '', 'Pleven', 1, 0),
(491, 33, '', 'Plovdiv', 1, 0),
(492, 33, '', 'Razgrad', 1, 0),
(493, 33, '', 'Shumen', 1, 0),
(494, 33, '', 'Silistra', 1, 0),
(495, 33, '', 'Sliven', 1, 0),
(496, 33, '', 'Smolyan', 1, 0),
(497, 33, '', 'Sofia', 1, 0),
(498, 33, '', 'Sofia - town', 1, 0),
(499, 33, '', 'Stara Zagora', 1, 0),
(500, 33, '', 'Targovishte', 1, 0),
(501, 33, '', 'Varna', 1, 0),
(502, 33, '', 'Veliko Tarnovo', 1, 0),
(503, 33, '', 'Vidin', 1, 0),
(504, 33, '', 'Vratza', 1, 0),
(505, 33, '', 'Yambol', 1, 0),
(506, 34, 'BAL', 'Bale', 1, 0),
(507, 34, 'BAM', 'Bam', 1, 0),
(508, 34, 'BAN', 'Banwa', 1, 0),
(509, 34, 'BAZ', 'Bazega', 1, 0),
(510, 34, 'BOR', 'Bougouriba', 1, 0),
(511, 34, 'BLG', 'Boulgou', 1, 0),
(512, 34, 'BOK', 'Boulkiemde', 1, 0),
(513, 34, 'COM', 'Comoe', 1, 0),
(514, 34, 'GAN', 'Ganzourgou', 1, 0),
(515, 34, 'GNA', 'Gnagna', 1, 0),
(516, 34, 'GOU', 'Gourma', 1, 0),
(517, 34, 'HOU', 'Houet', 1, 0),
(518, 34, 'IOA', 'Ioba', 1, 0),
(519, 34, 'KAD', 'Kadiogo', 1, 0),
(520, 34, 'KEN', 'Kenedougou', 1, 0),
(521, 34, 'KOD', 'Komondjari', 1, 0),
(522, 34, 'KOP', 'Kompienga', 1, 0),
(523, 34, 'KOS', 'Kossi', 1, 0),
(524, 34, 'KOL', 'Koulpelogo', 1, 0),
(525, 34, 'KOT', 'Kouritenga', 1, 0),
(526, 34, 'KOW', 'Kourweogo', 1, 0),
(527, 34, 'LER', 'Leraba', 1, 0),
(528, 34, 'LOR', 'Loroum', 1, 0),
(529, 34, 'MOU', 'Mouhoun', 1, 0),
(530, 34, 'NAH', 'Nahouri', 1, 0),
(531, 34, 'NAM', 'Namentenga', 1, 0),
(532, 34, 'NAY', 'Nayala', 1, 0),
(533, 34, 'NOU', 'Noumbiel', 1, 0),
(534, 34, 'OUB', 'Oubritenga', 1, 0),
(535, 34, 'OUD', 'Oudalan', 1, 0),
(536, 34, 'PAS', 'Passore', 1, 0),
(537, 34, 'PON', 'Poni', 1, 0),
(538, 34, 'SAG', 'Sanguie', 1, 0),
(539, 34, 'SAM', 'Sanmatenga', 1, 0),
(540, 34, 'SEN', 'Seno', 1, 0),
(541, 34, 'SIS', 'Sissili', 1, 0),
(542, 34, 'SOM', 'Soum', 1, 0),
(543, 34, 'SOR', 'Sourou', 1, 0),
(544, 34, 'TAP', 'Tapoa', 1, 0),
(545, 34, 'TUY', 'Tuy', 1, 0),
(546, 34, 'YAG', 'Yagha', 1, 0),
(547, 34, 'YAT', 'Yatenga', 1, 0),
(548, 34, 'ZIR', 'Ziro', 1, 0),
(549, 34, 'ZOD', 'Zondoma', 1, 0),
(550, 34, 'ZOW', 'Zoundweogo', 1, 0),
(551, 35, 'BB', 'Bubanza', 1, 0),
(552, 35, 'BJ', 'Bujumbura', 1, 0),
(553, 35, 'BR', 'Bururi', 1, 0),
(554, 35, 'CA', 'Cankuzo', 1, 0),
(555, 35, 'CI', 'Cibitoke', 1, 0),
(556, 35, 'GI', 'Gitega', 1, 0),
(557, 35, 'KR', 'Karuzi', 1, 0),
(558, 35, 'KY', 'Kayanza', 1, 0),
(559, 35, 'KI', 'Kirundo', 1, 0),
(560, 35, 'MA', 'Makamba', 1, 0),
(561, 35, 'MU', 'Muramvya', 1, 0),
(562, 35, 'MY', 'Muyinga', 1, 0),
(563, 35, 'MW', 'Mwaro', 1, 0),
(564, 35, 'NG', 'Ngozi', 1, 0),
(565, 35, 'RT', 'Rutana', 1, 0),
(566, 35, 'RY', 'Ruyigi', 1, 0),
(567, 36, 'PP', 'Phnom Penh', 1, 0),
(568, 36, 'PS', 'Preah Seihanu (Kompong Som or Sihanoukville)', 1, 0),
(569, 36, 'PA', 'Pailin', 1, 0),
(570, 36, 'KB', 'Keb', 1, 0),
(571, 36, 'BM', 'Banteay Meanchey', 1, 0),
(572, 36, 'BA', 'Battambang', 1, 0),
(573, 36, 'KM', 'Kampong Cham', 1, 0),
(574, 36, 'KN', 'Kampong Chhnang', 1, 0),
(575, 36, 'KU', 'Kampong Speu', 1, 0),
(576, 36, 'KO', 'Kampong Som', 1, 0),
(577, 36, 'KT', 'Kampong Thom', 1, 0),
(578, 36, 'KP', 'Kampot', 1, 0),
(579, 36, 'KL', 'Kandal', 1, 0),
(580, 36, 'KK', 'Kaoh Kong', 1, 0),
(581, 36, 'KR', 'Kratie', 1, 0),
(582, 36, 'MK', 'Mondul Kiri', 1, 0),
(583, 36, 'OM', 'Oddar Meancheay', 1, 0),
(584, 36, 'PU', 'Pursat', 1, 0),
(585, 36, 'PR', 'Preah Vihear', 1, 0),
(586, 36, 'PG', 'Prey Veng', 1, 0),
(587, 36, 'RK', 'Ratanak Kiri', 1, 0),
(588, 36, 'SI', 'Siemreap', 1, 0),
(589, 36, 'ST', 'Stung Treng', 1, 0),
(590, 36, 'SR', 'Svay Rieng', 1, 0),
(591, 36, 'TK', 'Takeo', 1, 0),
(592, 37, 'ADA', 'Adamawa (Adamaoua)', 1, 0),
(593, 37, 'CEN', 'Centre', 1, 0),
(594, 37, 'EST', 'East (Est)', 1, 0),
(595, 37, 'EXN', 'Extreme North (Extreme-Nord)', 1, 0),
(596, 37, 'LIT', 'Littoral', 1, 0),
(597, 37, 'NOR', 'North (Nord)', 1, 0),
(598, 37, 'NOT', 'Northwest (Nord-Ouest)', 1, 0),
(599, 37, 'OUE', 'West (Ouest)', 1, 0),
(600, 37, 'SUD', 'South (Sud)', 1, 0),
(601, 37, 'SOU', 'Southwest (Sud-Ouest).', 1, 0),
(602, 38, 'AB', 'Alberta', 1, 0),
(603, 38, 'BC', 'British Columbia', 1, 0),
(604, 38, 'MB', 'Manitoba', 1, 0),
(605, 38, 'NB', 'New Brunswick', 1, 0),
(606, 38, 'NL', 'Newfoundland and Labrador', 1, 0),
(607, 38, 'NT', 'Northwest Territories', 1, 0),
(608, 38, 'NS', 'Nova Scotia', 1, 0),
(609, 38, 'NU', 'Nunavut', 1, 0),
(610, 38, 'ON', 'Ontario', 1, 0),
(611, 38, 'PE', 'Prince Edward Island', 1, 0),
(612, 38, 'QC', 'Qu&eacute;bec', 1, 0),
(613, 38, 'SK', 'Saskatchewan', 1, 0),
(614, 38, 'YT', 'Yukon Territory', 1, 0),
(615, 39, 'BV', 'Boa Vista', 1, 0),
(616, 39, 'BR', 'Brava', 1, 0),
(617, 39, 'CS', 'Calheta de Sao Miguel', 1, 0),
(618, 39, 'MA', 'Maio', 1, 0),
(619, 39, 'MO', 'Mosteiros', 1, 0),
(620, 39, 'PA', 'Paul', 1, 0),
(621, 39, 'PN', 'Porto Novo', 1, 0),
(622, 39, 'PR', 'Praia', 1, 0),
(623, 39, 'RG', 'Ribeira Grande', 1, 0),
(624, 39, 'SL', 'Sal', 1, 0),
(625, 39, 'CA', 'Santa Catarina', 1, 0),
(626, 39, 'CR', 'Santa Cruz', 1, 0),
(627, 39, 'SD', 'Sao Domingos', 1, 0),
(628, 39, 'SF', 'Sao Filipe', 1, 0),
(629, 39, 'SN', 'Sao Nicolau', 1, 0),
(630, 39, 'SV', 'Sao Vicente', 1, 0),
(631, 39, 'TA', 'Tarrafal', 1, 0),
(632, 40, 'CR', 'Creek', 1, 0),
(633, 40, 'EA', 'Eastern', 1, 0),
(634, 40, 'ML', 'Midland', 1, 0),
(635, 40, 'ST', 'South Town', 1, 0),
(636, 40, 'SP', 'Spot Bay', 1, 0),
(637, 40, 'SK', 'Stake Bay', 1, 0),
(638, 40, 'WD', 'West End', 1, 0),
(639, 40, 'WN', 'Western', 1, 0),
(640, 41, 'BBA', 'Bamingui-Bangoran', 1, 0),
(641, 41, 'BKO', 'Basse-Kotto', 1, 0),
(642, 41, 'HKO', 'Haute-Kotto', 1, 0),
(643, 41, 'HMB', 'Haut-Mbomou', 1, 0),
(644, 41, 'KEM', 'Kemo', 1, 0),
(645, 41, 'LOB', 'Lobaye', 1, 0),
(646, 41, 'MKD', 'Mambéré-Kadéï', 1, 0),
(647, 41, 'MBO', 'Mbomou', 1, 0),
(648, 41, 'NMM', 'Nana-Mambere', 1, 0),
(649, 41, 'OMP', 'Ombella-M\'Poko', 1, 0),
(650, 41, 'OUK', 'Ouaka', 1, 0),
(651, 41, 'OUH', 'Ouham', 1, 0),
(652, 41, 'OPE', 'Ouham-Pende', 1, 0),
(653, 41, 'VAK', 'Vakaga', 1, 0),
(654, 41, 'NGR', 'Nana-Grebizi', 1, 0),
(655, 41, 'SMB', 'Sangha-Mbaere', 1, 0),
(656, 41, 'BAN', 'Bangui', 1, 0),
(657, 42, 'BA', 'Batha', 1, 0),
(658, 42, 'BI', 'Biltine', 1, 0),
(659, 42, 'BE', 'Borkou-Ennedi-Tibesti', 1, 0),
(660, 42, 'CB', 'Chari-Baguirmi', 1, 0),
(661, 42, 'GU', 'Guera', 1, 0),
(662, 42, 'KA', 'Kanem', 1, 0),
(663, 42, 'LA', 'Lac', 1, 0),
(664, 42, 'LC', 'Logone Occidental', 1, 0),
(665, 42, 'LR', 'Logone Oriental', 1, 0),
(666, 42, 'MK', 'Mayo-Kebbi', 1, 0),
(667, 42, 'MC', 'Moyen-Chari', 1, 0),
(668, 42, 'OU', 'Ouaddai', 1, 0),
(669, 42, 'SA', 'Salamat', 1, 0),
(670, 42, 'TA', 'Tandjile', 1, 0),
(671, 43, 'AI', 'Aisen del General Carlos Ibanez', 1, 0),
(672, 43, 'AN', 'Antofagasta', 1, 0),
(673, 43, 'AR', 'Araucania', 1, 0),
(674, 43, 'AT', 'Atacama', 1, 0),
(675, 43, 'BI', 'Bio-Bio', 1, 0),
(676, 43, 'CO', 'Coquimbo', 1, 0),
(677, 43, 'LI', 'Libertador General Bernardo O\'Hi', 1, 0),
(678, 43, 'LL', 'Los Lagos', 1, 0),
(679, 43, 'MA', 'Magallanes y de la Antartica Chi', 1, 0),
(680, 43, 'ML', 'Maule', 1, 0),
(681, 43, 'RM', 'Region Metropolitana', 1, 0),
(682, 43, 'TA', 'Tarapaca', 1, 0),
(683, 43, 'VS', 'Valparaiso', 1, 0),
(684, 44, 'AN', 'Anhui', 1, 0),
(685, 44, 'BE', 'Beijing', 1, 0),
(686, 44, 'CH', 'Chongqing', 1, 0),
(687, 44, 'FU', 'Fujian', 1, 0),
(688, 44, 'GA', 'Gansu', 1, 0),
(689, 44, 'GU', 'Guangdong', 1, 0),
(690, 44, 'GX', 'Guangxi', 1, 0),
(691, 44, 'GZ', 'Guizhou', 1, 0),
(692, 44, 'HA', 'Hainan', 1, 0),
(693, 44, 'HB', 'Hebei', 1, 0),
(694, 44, 'HL', 'Heilongjiang', 1, 0),
(695, 44, 'HE', 'Henan', 1, 0),
(696, 44, 'HK', 'Hong Kong', 1, 0),
(697, 44, 'HU', 'Hubei', 1, 0),
(698, 44, 'HN', 'Hunan', 1, 0),
(699, 44, 'IM', 'Inner Mongolia', 1, 0),
(700, 44, 'JI', 'Jiangsu', 1, 0),
(701, 44, 'JX', 'Jiangxi', 1, 0),
(702, 44, 'JL', 'Jilin', 1, 0),
(703, 44, 'LI', 'Liaoning', 1, 0),
(704, 44, 'MA', 'Macau', 1, 0),
(705, 44, 'NI', 'Ningxia', 1, 0),
(706, 44, 'SH', 'Shaanxi', 1, 0),
(707, 44, 'SA', 'Shandong', 1, 0),
(708, 44, 'SG', 'Shanghai', 1, 0),
(709, 44, 'SX', 'Shanxi', 1, 0),
(710, 44, 'SI', 'Sichuan', 1, 0),
(711, 44, 'TI', 'Tianjin', 1, 0),
(712, 44, 'XI', 'Xinjiang', 1, 0),
(713, 44, 'YU', 'Yunnan', 1, 0),
(714, 44, 'ZH', 'Zhejiang', 1, 0),
(715, 46, 'D', 'Direction Island', 1, 0),
(716, 46, 'H', 'Home Island', 1, 0),
(717, 46, 'O', 'Horsburgh Island', 1, 0),
(718, 46, 'S', 'South Island', 1, 0),
(719, 46, 'W', 'West Island', 1, 0),
(720, 47, 'AMZ', 'Amazonas', 1, 0),
(721, 47, 'ANT', 'Antioquia', 1, 0),
(722, 47, 'ARA', 'Arauca', 1, 0),
(723, 47, 'ATL', 'Atlantico', 1, 0),
(724, 47, 'BDC', 'Bogota D.C.', 1, 0),
(725, 47, 'BOL', 'Bolivar', 1, 0),
(726, 47, 'BOY', 'Boyaca', 1, 0),
(727, 47, 'CAL', 'Caldas', 1, 0),
(728, 47, 'CAQ', 'Caqueta', 1, 0),
(729, 47, 'CAS', 'Casanare', 1, 0),
(730, 47, 'CAU', 'Cauca', 1, 0),
(731, 47, 'CES', 'Cesar', 1, 0),
(732, 47, 'CHO', 'Choco', 1, 0),
(733, 47, 'COR', 'Cordoba', 1, 0),
(734, 47, 'CAM', 'Cundinamarca', 1, 0),
(735, 47, 'GNA', 'Guainia', 1, 0),
(736, 47, 'GJR', 'Guajira', 1, 0),
(737, 47, 'GVR', 'Guaviare', 1, 0),
(738, 47, 'HUI', 'Huila', 1, 0),
(739, 47, 'MAG', 'Magdalena', 1, 0),
(740, 47, 'MET', 'Meta', 1, 0),
(741, 47, 'NAR', 'Narino', 1, 0),
(742, 47, 'NDS', 'Norte de Santander', 1, 0),
(743, 47, 'PUT', 'Putumayo', 1, 0),
(744, 47, 'QUI', 'Quindio', 1, 0),
(745, 47, 'RIS', 'Risaralda', 1, 0),
(746, 47, 'SAP', 'San Andres y Providencia', 1, 0),
(747, 47, 'SAN', 'Santander', 1, 0),
(748, 47, 'SUC', 'Sucre', 1, 0),
(749, 47, 'TOL', 'Tolima', 1, 0),
(750, 47, 'VDC', 'Valle del Cauca', 1, 0),
(751, 47, 'VAU', 'Vaupes', 1, 0),
(752, 47, 'VIC', 'Vichada', 1, 0),
(753, 48, 'G', 'Grande Comore', 1, 0),
(754, 48, 'A', 'Anjouan', 1, 0),
(755, 48, 'M', 'Moheli', 1, 0),
(756, 49, 'BO', 'Bouenza', 1, 0),
(757, 49, 'BR', 'Brazzaville', 1, 0),
(758, 49, 'CU', 'Cuvette', 1, 0),
(759, 49, 'CO', 'Cuvette-Ouest', 1, 0),
(760, 49, 'KO', 'Kouilou', 1, 0),
(761, 49, 'LE', 'Lekoumou', 1, 0),
(762, 49, 'LI', 'Likouala', 1, 0),
(763, 49, 'NI', 'Niari', 1, 0),
(764, 49, 'PL', 'Plateaux', 1, 0),
(765, 49, 'PO', 'Pool', 1, 0),
(766, 49, 'SA', 'Sangha', 1, 0),
(767, 50, 'PU', 'Pukapuka', 1, 0),
(768, 50, 'RK', 'Rakahanga', 1, 0),
(769, 50, 'MK', 'Manihiki', 1, 0),
(770, 50, 'PE', 'Penrhyn', 1, 0),
(771, 50, 'NI', 'Nassau Island', 1, 0),
(772, 50, 'SU', 'Surwarrow', 1, 0),
(773, 50, 'PA', 'Palmerston', 1, 0),
(774, 50, 'AI', 'Aitutaki', 1, 0),
(775, 50, 'MA', 'Manuae', 1, 0),
(776, 50, 'TA', 'Takutea', 1, 0),
(777, 50, 'MT', 'Mitiaro', 1, 0),
(778, 50, 'AT', 'Atiu', 1, 0),
(779, 50, 'MU', 'Mauke', 1, 0),
(780, 50, 'RR', 'Rarotonga', 1, 0),
(781, 50, 'MG', 'Mangaia', 1, 0),
(782, 51, 'AL', 'Alajuela', 1, 0),
(783, 51, 'CA', 'Cartago', 1, 0),
(784, 51, 'GU', 'Guanacaste', 1, 0),
(785, 51, 'HE', 'Heredia', 1, 0),
(786, 51, 'LI', 'Limon', 1, 0),
(787, 51, 'PU', 'Puntarenas', 1, 0),
(788, 51, 'SJ', 'San Jose', 1, 0),
(789, 52, 'ABE', 'Abengourou', 1, 0),
(790, 52, 'ABI', 'Abidjan', 1, 0),
(791, 52, 'ABO', 'Aboisso', 1, 0),
(792, 52, 'ADI', 'Adiake', 1, 0),
(793, 52, 'ADZ', 'Adzope', 1, 0),
(794, 52, 'AGB', 'Agboville', 1, 0),
(795, 52, 'AGN', 'Agnibilekrou', 1, 0),
(796, 52, 'ALE', 'Alepe', 1, 0),
(797, 52, 'BOC', 'Bocanda', 1, 0),
(798, 52, 'BAN', 'Bangolo', 1, 0),
(799, 52, 'BEO', 'Beoumi', 1, 0),
(800, 52, 'BIA', 'Biankouma', 1, 0),
(801, 52, 'BDK', 'Bondoukou', 1, 0),
(802, 52, 'BGN', 'Bongouanou', 1, 0),
(803, 52, 'BFL', 'Bouafle', 1, 0),
(804, 52, 'BKE', 'Bouake', 1, 0),
(805, 52, 'BNA', 'Bouna', 1, 0),
(806, 52, 'BDL', 'Boundiali', 1, 0),
(807, 52, 'DKL', 'Dabakala', 1, 0),
(808, 52, 'DBU', 'Dabou', 1, 0),
(809, 52, 'DAL', 'Daloa', 1, 0),
(810, 52, 'DAN', 'Danane', 1, 0),
(811, 52, 'DAO', 'Daoukro', 1, 0),
(812, 52, 'DIM', 'Dimbokro', 1, 0),
(813, 52, 'DIV', 'Divo', 1, 0),
(814, 52, 'DUE', 'Duekoue', 1, 0),
(815, 52, 'FER', 'Ferkessedougou', 1, 0),
(816, 52, 'GAG', 'Gagnoa', 1, 0),
(817, 52, 'GBA', 'Grand-Bassam', 1, 0),
(818, 52, 'GLA', 'Grand-Lahou', 1, 0),
(819, 52, 'GUI', 'Guiglo', 1, 0),
(820, 52, 'ISS', 'Issia', 1, 0),
(821, 52, 'JAC', 'Jacqueville', 1, 0),
(822, 52, 'KAT', 'Katiola', 1, 0),
(823, 52, 'KOR', 'Korhogo', 1, 0),
(824, 52, 'LAK', 'Lakota', 1, 0),
(825, 52, 'MAN', 'Man', 1, 0),
(826, 52, 'MKN', 'Mankono', 1, 0),
(827, 52, 'MBA', 'Mbahiakro', 1, 0),
(828, 52, 'ODI', 'Odienne', 1, 0),
(829, 52, 'OUM', 'Oume', 1, 0),
(830, 52, 'SAK', 'Sakassou', 1, 0),
(831, 52, 'SPE', 'San-Pedro', 1, 0),
(832, 52, 'SAS', 'Sassandra', 1, 0),
(833, 52, 'SEG', 'Seguela', 1, 0),
(834, 52, 'SIN', 'Sinfra', 1, 0),
(835, 52, 'SOU', 'Soubre', 1, 0),
(836, 52, 'TAB', 'Tabou', 1, 0),
(837, 52, 'TAN', 'Tanda', 1, 0),
(838, 52, 'TIE', 'Tiebissou', 1, 0),
(839, 52, 'TIN', 'Tingrela', 1, 0),
(840, 52, 'TIA', 'Tiassale', 1, 0),
(841, 52, 'TBA', 'Touba', 1, 0),
(842, 52, 'TLP', 'Toulepleu', 1, 0),
(843, 52, 'TMD', 'Toumodi', 1, 0),
(844, 52, 'VAV', 'Vavoua', 1, 0),
(845, 52, 'YAM', 'Yamoussoukro', 1, 0),
(846, 52, 'ZUE', 'Zuenoula', 1, 0),
(847, 53, 'BB', 'Bjelovar-Bilogora', 1, 0),
(848, 53, 'CZ', 'City of Zagreb', 1, 0),
(849, 53, 'DN', 'Dubrovnik-Neretva', 1, 0),
(850, 53, 'IS', 'Istra', 1, 0),
(851, 53, 'KA', 'Karlovac', 1, 0),
(852, 53, 'KK', 'Koprivnica-Krizevci', 1, 0),
(853, 53, 'KZ', 'Krapina-Zagorje', 1, 0),
(854, 53, 'LS', 'Lika-Senj', 1, 0),
(855, 53, 'ME', 'Medimurje', 1, 0),
(856, 53, 'OB', 'Osijek-Baranja', 1, 0),
(857, 53, 'PS', 'Pozega-Slavonia', 1, 0),
(858, 53, 'PG', 'Primorje-Gorski Kotar', 1, 0),
(859, 53, 'SI', 'Sibenik', 1, 0),
(860, 53, 'SM', 'Sisak-Moslavina', 1, 0),
(861, 53, 'SB', 'Slavonski Brod-Posavina', 1, 0),
(862, 53, 'SD', 'Split-Dalmatia', 1, 0),
(863, 53, 'VA', 'Varazdin', 1, 0),
(864, 53, 'VP', 'Virovitica-Podravina', 1, 0),
(865, 53, 'VS', 'Vukovar-Srijem', 1, 0),
(866, 53, 'ZK', 'Zadar-Knin', 1, 0),
(867, 53, 'ZA', 'Zagreb', 1, 0),
(868, 54, 'CA', 'Camaguey', 1, 0),
(869, 54, 'CD', 'Ciego de Avila', 1, 0),
(870, 54, 'CI', 'Cienfuegos', 1, 0),
(871, 54, 'CH', 'Ciudad de La Habana', 1, 0),
(872, 54, 'GR', 'Granma', 1, 0),
(873, 54, 'GU', 'Guantanamo', 1, 0),
(874, 54, 'HO', 'Holguin', 1, 0),
(875, 54, 'IJ', 'Isla de la Juventud', 1, 0),
(876, 54, 'LH', 'La Habana', 1, 0),
(877, 54, 'LT', 'Las Tunas', 1, 0),
(878, 54, 'MA', 'Matanzas', 1, 0),
(879, 54, 'PR', 'Pinar del Rio', 1, 0),
(880, 54, 'SS', 'Sancti Spiritus', 1, 0),
(881, 54, 'SC', 'Santiago de Cuba', 1, 0),
(882, 54, 'VC', 'Villa Clara', 1, 0),
(883, 55, 'F', 'Famagusta', 1, 0),
(884, 55, 'K', 'Kyrenia', 1, 0),
(885, 55, 'A', 'Larnaca', 1, 0),
(886, 55, 'I', 'Limassol', 1, 0),
(887, 55, 'N', 'Nicosia', 1, 0),
(888, 55, 'P', 'Paphos', 1, 0),
(889, 56, 'U', 'Ustecky', 1, 0),
(890, 56, 'C', 'Jihocesky', 1, 0),
(891, 56, 'B', 'Jihomoravsky', 1, 0),
(892, 56, 'K', 'Karlovarsky', 1, 0),
(893, 56, 'H', 'Kralovehradecky', 1, 0),
(894, 56, 'L', 'Liberecky', 1, 0),
(895, 56, 'T', 'Moravskoslezsky', 1, 0),
(896, 56, 'M', 'Olomoucky', 1, 0),
(897, 56, 'E', 'Pardubicky', 1, 0),
(898, 56, 'P', 'Plzensky', 1, 0),
(899, 56, 'A', 'Praha', 1, 0),
(900, 56, 'S', 'Stredocesky', 1, 0),
(901, 56, 'J', 'Vysocina', 1, 0),
(902, 56, 'Z', 'Zlinsky', 1, 0),
(903, 57, 'HS', 'Hovedstaden', 1, 0),
(904, 57, 'MJ', 'Midtjylland', 1, 0),
(905, 57, 'ND', 'Nordjylland', 1, 0),
(906, 57, 'SL', 'Sjælland', 1, 0),
(907, 57, 'SD', 'Syddanmark', 1, 0),
(908, 57, 'FO', 'Faroe Islands', 1, 0),
(909, 57, 'GL', 'Greenland', 1, 0),
(919, 58, 'S', '\'Ali Sabih', 1, 0),
(920, 58, 'K', 'Dikhil', 1, 0),
(921, 58, 'J', 'Djibouti', 1, 0),
(922, 58, 'O', 'Obock', 1, 0),
(923, 58, 'T', 'Tadjoura', 1, 0),
(924, 59, 'AND', 'Saint Andrew Parish', 1, 0),
(925, 59, 'DAV', 'Saint David Parish', 1, 0),
(926, 59, 'GEO', 'Saint George Parish', 1, 0),
(927, 59, 'JOH', 'Saint John Parish', 1, 0),
(928, 59, 'JOS', 'Saint Joseph Parish', 1, 0),
(929, 59, 'LUK', 'Saint Luke Parish', 1, 0),
(930, 59, 'MAR', 'Saint Mark Parish', 1, 0),
(931, 59, 'PAT', 'Saint Patrick Parish', 1, 0),
(932, 59, 'PAU', 'Saint Paul Parish', 1, 0),
(933, 59, 'PET', 'Saint Peter Parish', 1, 0),
(934, 60, 'DN', 'Distrito Nacional', 1, 0),
(935, 60, 'AZ', 'Azua', 1, 0),
(936, 60, 'BC', 'Baoruco', 1, 0),
(937, 60, 'BH', 'Barahona', 1, 0),
(938, 60, 'DJ', 'Dajabon', 1, 0),
(939, 60, 'DU', 'Duarte', 1, 0),
(940, 60, 'EL', 'Elias Pina', 1, 0),
(941, 60, 'SY', 'El Seybo', 1, 0),
(942, 60, 'ET', 'Espaillat', 1, 0),
(943, 60, 'HM', 'Hato Mayor', 1, 0),
(944, 60, 'IN', 'Independencia', 1, 0),
(945, 60, 'AL', 'La Altagracia', 1, 0),
(946, 60, 'RO', 'La Romana', 1, 0),
(947, 60, 'VE', 'La Vega', 1, 0),
(948, 60, 'MT', 'Maria Trinidad Sanchez', 1, 0),
(949, 60, 'MN', 'Monsenor Nouel', 1, 0),
(950, 60, 'MC', 'Monte Cristi', 1, 0),
(951, 60, 'MP', 'Monte Plata', 1, 0),
(952, 60, 'PD', 'Pedernales', 1, 0),
(953, 60, 'PR', 'Peravia (Bani)', 1, 0),
(954, 60, 'PP', 'Puerto Plata', 1, 0),
(955, 60, 'SL', 'Salcedo', 1, 0),
(956, 60, 'SM', 'Samana', 1, 0),
(957, 60, 'SH', 'Sanchez Ramirez', 1, 0),
(958, 60, 'SC', 'San Cristobal', 1, 0),
(959, 60, 'JO', 'San Jose de Ocoa', 1, 0),
(960, 60, 'SJ', 'San Juan', 1, 0),
(961, 60, 'PM', 'San Pedro de Macoris', 1, 0),
(962, 60, 'SA', 'Santiago', 1, 0),
(963, 60, 'ST', 'Santiago Rodriguez', 1, 0),
(964, 60, 'SD', 'Santo Domingo', 1, 0),
(965, 60, 'VA', 'Valverde', 1, 0),
(966, 61, 'AL', 'Aileu', 1, 0),
(967, 61, 'AN', 'Ainaro', 1, 0),
(968, 61, 'BA', 'Baucau', 1, 0),
(969, 61, 'BO', 'Bobonaro', 1, 0),
(970, 61, 'CO', 'Cova Lima', 1, 0),
(971, 61, 'DI', 'Dili', 1, 0),
(972, 61, 'ER', 'Ermera', 1, 0),
(973, 61, 'LA', 'Lautem', 1, 0),
(974, 61, 'LI', 'Liquica', 1, 0),
(975, 61, 'MT', 'Manatuto', 1, 0),
(976, 61, 'MF', 'Manufahi', 1, 0),
(977, 61, 'OE', 'Oecussi', 1, 0),
(978, 61, 'VI', 'Viqueque', 1, 0),
(979, 62, 'AZU', 'Azuay', 1, 0),
(980, 62, 'BOL', 'Bolivar', 1, 0),
(981, 62, 'CAN', 'Ca&ntilde;ar', 1, 0),
(982, 62, 'CAR', 'Carchi', 1, 0),
(983, 62, 'CHI', 'Chimborazo', 1, 0),
(984, 62, 'COT', 'Cotopaxi', 1, 0),
(985, 62, 'EOR', 'El Oro', 1, 0),
(986, 62, 'ESM', 'Esmeraldas', 1, 0),
(987, 62, 'GPS', 'Gal&aacute;pagos', 1, 0),
(988, 62, 'GUA', 'Guayas', 1, 0),
(989, 62, 'IMB', 'Imbabura', 1, 0),
(990, 62, 'LOJ', 'Loja', 1, 0),
(991, 62, 'LRO', 'Los Rios', 1, 0),
(992, 62, 'MAN', 'Manab&iacute;', 1, 0),
(993, 62, 'MSA', 'Morona Santiago', 1, 0),
(994, 62, 'NAP', 'Napo', 1, 0),
(995, 62, 'ORE', 'Orellana', 1, 0),
(996, 62, 'PAS', 'Pastaza', 1, 0),
(997, 62, 'PIC', 'Pichincha', 1, 0),
(998, 62, 'SUC', 'Sucumb&iacute;os', 1, 0),
(999, 62, 'TUN', 'Tungurahua', 1, 0),
(1000, 62, 'ZCH', 'Zamora Chinchipe', 1, 0),
(1001, 63, 'DHY', 'Ad Daqahliyah', 1, 0),
(1002, 63, 'BAM', 'Al Bahr al Ahmar', 1, 0),
(1003, 63, 'BHY', 'Al Buhayrah', 1, 0),
(1004, 63, 'FYM', 'Al Fayyum', 1, 0),
(1005, 63, 'GBY', 'Al Gharbiyah', 1, 0),
(1006, 63, 'IDR', 'Al Iskandariyah', 1, 0),
(1007, 63, 'IML', 'Al Isma\'iliyah', 1, 0),
(1008, 63, 'JZH', 'Al Jizah', 1, 0),
(1009, 63, 'MFY', 'Al Minufiyah', 1, 0),
(1010, 63, 'MNY', 'Al Minya', 1, 0),
(1011, 63, 'QHR', 'Al Qahirah', 1, 0),
(1012, 63, 'QLY', 'Al Qalyubiyah', 1, 0),
(1013, 63, 'WJD', 'Al Wadi al Jadid', 1, 0),
(1014, 63, 'SHQ', 'Ash Sharqiyah', 1, 0),
(1015, 63, 'SWY', 'As Suways', 1, 0),
(1016, 63, 'ASW', 'Aswan', 1, 0),
(1017, 63, 'ASY', 'Asyut', 1, 0),
(1018, 63, 'BSW', 'Bani Suwayf', 1, 0),
(1019, 63, 'BSD', 'Bur Sa\'id', 1, 0),
(1020, 63, 'DMY', 'Dumyat', 1, 0),
(1021, 63, 'JNS', 'Janub Sina\'', 1, 0),
(1022, 63, 'KSH', 'Kafr ash Shaykh', 1, 0),
(1023, 63, 'MAT', 'Matruh', 1, 0),
(1024, 63, 'QIN', 'Qina', 1, 0),
(1025, 63, 'SHS', 'Shamal Sina\'', 1, 0),
(1026, 63, 'SUH', 'Suhaj', 1, 0),
(1027, 64, 'AH', 'Ahuachapan', 1, 0),
(1028, 64, 'CA', 'Cabanas', 1, 0),
(1029, 64, 'CH', 'Chalatenango', 1, 0),
(1030, 64, 'CU', 'Cuscatlan', 1, 0),
(1031, 64, 'LB', 'La Libertad', 1, 0),
(1032, 64, 'PZ', 'La Paz', 1, 0),
(1033, 64, 'UN', 'La Union', 1, 0),
(1034, 64, 'MO', 'Morazan', 1, 0),
(1035, 64, 'SM', 'San Miguel', 1, 0),
(1036, 64, 'SS', 'San Salvador', 1, 0),
(1037, 64, 'SV', 'San Vicente', 1, 0),
(1038, 64, 'SA', 'Santa Ana', 1, 0),
(1039, 64, 'SO', 'Sonsonate', 1, 0),
(1040, 64, 'US', 'Usulutan', 1, 0),
(1041, 65, 'AN', 'Provincia Annobon', 1, 0),
(1042, 65, 'BN', 'Provincia Bioko Norte', 1, 0),
(1043, 65, 'BS', 'Provincia Bioko Sur', 1, 0),
(1044, 65, 'CS', 'Provincia Centro Sur', 1, 0),
(1045, 65, 'KN', 'Provincia Kie-Ntem', 1, 0),
(1046, 65, 'LI', 'Provincia Litoral', 1, 0),
(1047, 65, 'WN', 'Provincia Wele-Nzas', 1, 0),
(1048, 66, 'MA', 'Central (Maekel)', 1, 0),
(1049, 66, 'KE', 'Anseba (Keren)', 1, 0),
(1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bahri)', 1, 0),
(1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Bahri)', 1, 0),
(1052, 66, 'DE', 'Southern (Debub)', 1, 0),
(1053, 66, 'BR', 'Gash-Barka (Barentu)', 1, 0),
(1054, 67, 'HA', 'Harjumaa (Tallinn)', 1, 0),
(1055, 67, 'HI', 'Hiiumaa (Kardla)', 1, 0),
(1056, 67, 'IV', 'Ida-Virumaa (Johvi)', 1, 0),
(1057, 67, 'JA', 'Jarvamaa (Paide)', 1, 0),
(1058, 67, 'JO', 'Jogevamaa (Jogeva)', 1, 0),
(1059, 67, 'LV', 'Laane-Virumaa (Rakvere)', 1, 0),
(1060, 67, 'LA', 'Laanemaa (Haapsalu)', 1, 0),
(1061, 67, 'PA', 'Parnumaa (Parnu)', 1, 0),
(1062, 67, 'PO', 'Polvamaa (Polva)', 1, 0),
(1063, 67, 'RA', 'Raplamaa (Rapla)', 1, 0),
(1064, 67, 'SA', 'Saaremaa (Kuessaare)', 1, 0),
(1065, 67, 'TA', 'Tartumaa (Tartu)', 1, 0),
(1066, 67, 'VA', 'Valgamaa (Valga)', 1, 0),
(1067, 67, 'VI', 'Viljandimaa (Viljandi)', 1, 0),
(1068, 67, 'VO', 'Vorumaa (Voru)', 1, 0),
(1069, 68, 'AF', 'Afar', 1, 0),
(1070, 68, 'AH', 'Amhara', 1, 0),
(1071, 68, 'BG', 'Benishangul-Gumaz', 1, 0),
(1072, 68, 'GB', 'Gambela', 1, 0),
(1073, 68, 'HR', 'Hariai', 1, 0),
(1074, 68, 'OR', 'Oromia', 1, 0),
(1075, 68, 'SM', 'Somali', 1, 0),
(1076, 68, 'SN', 'Southern Nations - Nationalities and Peoples Region', 1, 0),
(1077, 68, 'TG', 'Tigray', 1, 0),
(1078, 68, 'AA', 'Addis Ababa', 1, 0),
(1079, 68, 'DD', 'Dire Dawa', 1, 0),
(1080, 71, 'C', 'Central Division', 1, 0),
(1081, 71, 'N', 'Northern Division', 1, 0),
(1082, 71, 'E', 'Eastern Division', 1, 0),
(1083, 71, 'W', 'Western Division', 1, 0),
(1084, 71, 'R', 'Rotuma', 1, 0),
(1085, 72, 'AL', 'Ahvenanmaan Laani', 1, 0),
(1086, 72, 'ES', 'Etela-Suomen Laani', 1, 0),
(1087, 72, 'IS', 'Ita-Suomen Laani', 1, 0),
(1088, 72, 'LS', 'Lansi-Suomen Laani', 1, 0),
(1089, 72, 'LA', 'Lapin Lanani', 1, 0),
(1090, 72, 'OU', 'Oulun Laani', 1, 0),
(1091, 73, 'AL', 'Alsace', 1, 0),
(1092, 73, 'AQ', 'Aquitaine', 1, 0),
(1093, 73, 'AU', 'Auvergne', 1, 0),
(1094, 73, 'BR', 'Brittany', 1, 0),
(1095, 73, 'BU', 'Burgundy', 1, 0),
(1096, 73, 'CE', 'Center Loire Valley', 1, 0),
(1097, 73, 'CH', 'Champagne', 1, 0),
(1098, 73, 'CO', 'Corse', 1, 0),
(1099, 73, 'FR', 'France Comte', 1, 0),
(1100, 73, 'LA', 'Languedoc Roussillon', 1, 0),
(1101, 73, 'LI', 'Limousin', 1, 0),
(1102, 73, 'LO', 'Lorraine', 1, 0),
(1103, 73, 'MI', 'Midi Pyrenees', 1, 0),
(1104, 73, 'NO', 'Nord Pas de Calais', 1, 0),
(1105, 73, 'NR', 'Normandy', 1, 0),
(1106, 73, 'PA', 'Paris / Ill de France', 1, 0),
(1107, 73, 'PI', 'Picardie', 1, 0),
(1108, 73, 'PO', 'Poitou Charente', 1, 0),
(1109, 73, 'PR', 'Provence', 1, 0),
(1110, 73, 'RH', 'Rhone Alps', 1, 0),
(1111, 73, 'RI', 'Riviera', 1, 0),
(1112, 73, 'WE', 'Western Loire Valley', 1, 0),
(1113, 74, 'Et', 'Etranger', 1, 0),
(1114, 74, '01', 'Ain', 1, 0),
(1115, 74, '02', 'Aisne', 1, 0),
(1116, 74, '03', 'Allier', 1, 0),
(1117, 74, '04', 'Alpes de Haute Provence', 1, 0),
(1118, 74, '05', 'Hautes-Alpes', 1, 0),
(1119, 74, '06', 'Alpes Maritimes', 1, 0),
(1120, 74, '07', 'Ard&egrave;che', 1, 0),
(1121, 74, '08', 'Ardennes', 1, 0),
(1122, 74, '09', 'Ari&egrave;ge', 1, 0),
(1123, 74, '10', 'Aube', 1, 0),
(1124, 74, '11', 'Aude', 1, 0),
(1125, 74, '12', 'Aveyron', 1, 0),
(1126, 74, '13', 'Bouches du Rh&ocirc;ne', 1, 0),
(1127, 74, '14', 'Calvados', 1, 0),
(1128, 74, '15', 'Cantal', 1, 0),
(1129, 74, '16', 'Charente', 1, 0),
(1130, 74, '17', 'Charente Maritime', 1, 0),
(1131, 74, '18', 'Cher', 1, 0),
(1132, 74, '19', 'Corr&egrave;ze', 1, 0),
(1133, 74, '2A', 'Corse du Sud', 1, 0),
(1134, 74, '2B', 'Haute Corse', 1, 0),
(1135, 74, '21', 'C&ocirc;te d&#039;or', 1, 0),
(1136, 74, '22', 'C&ocirc;tes d&#039;Armor', 1, 0),
(1137, 74, '23', 'Creuse', 1, 0),
(1138, 74, '24', 'Dordogne', 1, 0),
(1139, 74, '25', 'Doubs', 1, 0),
(1140, 74, '26', 'Dr&ocirc;me', 1, 0),
(1141, 74, '27', 'Eure', 1, 0),
(1142, 74, '28', 'Eure et Loir', 1, 0),
(1143, 74, '29', 'Finist&egrave;re', 1, 0),
(1144, 74, '30', 'Gard', 1, 0),
(1145, 74, '31', 'Haute Garonne', 1, 0),
(1146, 74, '32', 'Gers', 1, 0),
(1147, 74, '33', 'Gironde', 1, 0),
(1148, 74, '34', 'H&eacute;rault', 1, 0),
(1149, 74, '35', 'Ille et Vilaine', 1, 0),
(1150, 74, '36', 'Indre', 1, 0),
(1151, 74, '37', 'Indre et Loire', 1, 0),
(1152, 74, '38', 'Is&eacute;re', 1, 0),
(1153, 74, '39', 'Jura', 1, 0),
(1154, 74, '40', 'Landes', 1, 0),
(1155, 74, '41', 'Loir et Cher', 1, 0),
(1156, 74, '42', 'Loire', 1, 0),
(1157, 74, '43', 'Haute Loire', 1, 0),
(1158, 74, '44', 'Loire Atlantique', 1, 0),
(1159, 74, '45', 'Loiret', 1, 0),
(1160, 74, '46', 'Lot', 1, 0),
(1161, 74, '47', 'Lot et Garonne', 1, 0),
(1162, 74, '48', 'Loz&egrave;re', 1, 0),
(1163, 74, '49', 'Maine et Loire', 1, 0),
(1164, 74, '50', 'Manche', 1, 0),
(1165, 74, '51', 'Marne', 1, 0),
(1166, 74, '52', 'Haute Marne', 1, 0),
(1167, 74, '53', 'Mayenne', 1, 0),
(1168, 74, '54', 'Meurthe et Moselle', 1, 0),
(1169, 74, '55', 'Meuse', 1, 0),
(1170, 74, '56', 'Morbihan', 1, 0),
(1171, 74, '57', 'Moselle', 1, 0),
(1172, 74, '58', 'Ni&egrave;vre', 1, 0),
(1173, 74, '59', 'Nord', 1, 0),
(1174, 74, '60', 'Oise', 1, 0),
(1175, 74, '61', 'Orne', 1, 0),
(1176, 74, '62', 'Pas de Calais', 1, 0),
(1177, 74, '63', 'Puy de D&ocirc;me', 1, 0),
(1178, 74, '64', 'Pyr&eacute;n&eacute;es Atlantiques', 1, 0),
(1179, 74, '65', 'Hautes Pyr&eacute;n&eacute;es', 1, 0),
(1180, 74, '66', 'Pyr&eacute;n&eacute;es Orientales', 1, 0),
(1181, 74, '67', 'Bas Rhin', 1, 0),
(1182, 74, '68', 'Haut Rhin', 1, 0),
(1183, 74, '69', 'Rh&ocirc;ne', 1, 0),
(1184, 74, '70', 'Haute Sa&ocirc;ne', 1, 0),
(1185, 74, '71', 'Sa&ocirc;ne et Loire', 1, 0),
(1186, 74, '72', 'Sarthe', 1, 0),
(1187, 74, '73', 'Savoie', 1, 0),
(1188, 74, '74', 'Haute Savoie', 1, 0),
(1189, 74, '75', 'Paris', 1, 0),
(1190, 74, '76', 'Seine Maritime', 1, 0),
(1191, 74, '77', 'Seine et Marne', 1, 0),
(1192, 74, '78', 'Yvelines', 1, 0),
(1193, 74, '79', 'Deux S&egrave;vres', 1, 0),
(1194, 74, '80', 'Somme', 1, 0),
(1195, 74, '81', 'Tarn', 1, 0),
(1196, 74, '82', 'Tarn et Garonne', 1, 0),
(1197, 74, '83', 'Var', 1, 0),
(1198, 74, '84', 'Vaucluse', 1, 0),
(1199, 74, '85', 'Vend&eacute;e', 1, 0),
(1200, 74, '86', 'Vienne', 1, 0),
(1201, 74, '87', 'Haute Vienne', 1, 0),
(1202, 74, '88', 'Vosges', 1, 0),
(1203, 74, '89', 'Yonne', 1, 0),
(1204, 74, '90', 'Territoire de Belfort', 1, 0),
(1205, 74, '91', 'Essonne', 1, 0),
(1206, 74, '92', 'Hauts de Seine', 1, 0),
(1207, 74, '93', 'Seine St-Denis', 1, 0),
(1208, 74, '94', 'Val de Marne', 1, 0),
(1209, 74, '95', 'Val d\'Oise', 1, 0),
(1210, 76, 'M', 'Archipel des Marquises', 1, 0),
(1211, 76, 'T', 'Archipel des Tuamotu', 1, 0),
(1212, 76, 'I', 'Archipel des Tubuai', 1, 0),
(1213, 76, 'V', 'Iles du Vent', 1, 0),
(1214, 76, 'S', 'Iles Sous-le-Vent', 1, 0),
(1215, 77, 'C', 'Iles Crozet', 1, 0),
(1216, 77, 'K', 'Iles Kerguelen', 1, 0),
(1217, 77, 'A', 'Ile Amsterdam', 1, 0),
(1218, 77, 'P', 'Ile Saint-Paul', 1, 0),
(1219, 77, 'D', 'Adelie Land', 1, 0),
(1220, 78, 'ES', 'Estuaire', 1, 0),
(1221, 78, 'HO', 'Haut-Ogooue', 1, 0),
(1222, 78, 'MO', 'Moyen-Ogooue', 1, 0),
(1223, 78, 'NG', 'Ngounie', 1, 0),
(1224, 78, 'NY', 'Nyanga', 1, 0),
(1225, 78, 'OI', 'Ogooue-Ivindo', 1, 0),
(1226, 78, 'OL', 'Ogooue-Lolo', 1, 0),
(1227, 78, 'OM', 'Ogooue-Maritime', 1, 0),
(1228, 78, 'WN', 'Woleu-Ntem', 1, 0),
(1229, 79, 'BJ', 'Banjul', 1, 0),
(1230, 79, 'BS', 'Basse', 1, 0),
(1231, 79, 'BR', 'Brikama', 1, 0),
(1232, 79, 'JA', 'Janjangbure', 1, 0),
(1233, 79, 'KA', 'Kanifeng', 1, 0),
(1234, 79, 'KE', 'Kerewan', 1, 0),
(1235, 79, 'KU', 'Kuntaur', 1, 0),
(1236, 79, 'MA', 'Mansakonko', 1, 0),
(1237, 79, 'LR', 'Lower River', 1, 0),
(1238, 79, 'CR', 'Central River', 1, 0),
(1239, 79, 'NB', 'North Bank', 1, 0),
(1240, 79, 'UR', 'Upper River', 1, 0),
(1241, 79, 'WE', 'Western', 1, 0),
(1242, 80, 'AB', 'Abkhazia', 1, 0),
(1243, 80, 'AJ', 'Ajaria', 1, 0),
(1244, 80, 'TB', 'Tbilisi', 1, 0),
(1245, 80, 'GU', 'Guria', 1, 0),
(1246, 80, 'IM', 'Imereti', 1, 0),
(1247, 80, 'KA', 'Kakheti', 1, 0),
(1248, 80, 'KK', 'Kvemo Kartli', 1, 0),
(1249, 80, 'MM', 'Mtskheta-Mtianeti', 1, 0),
(1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet', 1, 0),
(1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti', 1, 0),
(1252, 80, 'SJ', 'Samtskhe-Javakheti', 1, 0),
(1253, 80, 'SK', 'Shida Kartli', 1, 0),
(1254, 81, 'BAW', 'Baden-W&uuml;rttemberg', 1, 0),
(1255, 81, 'BAY', 'Bayern', 1, 0),
(1256, 81, 'BER', 'Berlin', 1, 0),
(1257, 81, 'BRG', 'Brandenburg', 1, 0),
(1258, 81, 'BRE', 'Bremen', 1, 0),
(1259, 81, 'HAM', 'Hamburg', 1, 0),
(1260, 81, 'HES', 'Hessen', 1, 0),
(1261, 81, 'MEC', 'Mecklenburg-Vorpommern', 1, 0),
(1262, 81, 'NDS', 'Niedersachsen', 1, 0),
(1263, 81, 'NRW', 'Nordrhein-Westfalen', 1, 0),
(1264, 81, 'RHE', 'Rheinland-Pfalz', 1, 0),
(1265, 81, 'SAR', 'Saarland', 1, 0),
(1266, 81, 'SAS', 'Sachsen', 1, 0),
(1267, 81, 'SAC', 'Sachsen-Anhalt', 1, 0),
(1268, 81, 'SCN', 'Schleswig-Holstein', 1, 0),
(1269, 81, 'THE', 'Th&uuml;ringen', 1, 0),
(1270, 82, 'AS', 'Ashanti Region', 1, 0),
(1271, 82, 'BA', 'Brong-Ahafo Region', 1, 0),
(1272, 82, 'CE', 'Central Region', 1, 0),
(1273, 82, 'EA', 'Eastern Region', 1, 0),
(1274, 82, 'GA', 'Greater Accra Region', 1, 0),
(1275, 82, 'NO', 'Northern Region', 1, 0),
(1276, 82, 'UE', 'Upper East Region', 1, 0),
(1277, 82, 'UW', 'Upper West Region', 1, 0),
(1278, 82, 'VO', 'Volta Region', 1, 0),
(1279, 82, 'WE', 'Western Region', 1, 0),
(1280, 84, 'AT', 'Attica', 1, 0),
(1281, 84, 'CN', 'Central Greece', 1, 0),
(1282, 84, 'CM', 'Central Macedonia', 1, 0),
(1283, 84, 'CR', 'Crete', 1, 0),
(1284, 84, 'EM', 'East Macedonia and Thrace', 1, 0),
(1285, 84, 'EP', 'Epirus', 1, 0),
(1286, 84, 'II', 'Ionian Islands', 1, 0),
(1287, 84, 'NA', 'North Aegean', 1, 0),
(1288, 84, 'PP', 'Peloponnesos', 1, 0),
(1289, 84, 'SA', 'South Aegean', 1, 0),
(1290, 84, 'TH', 'Thessaly', 1, 0),
(1291, 84, 'WG', 'West Greece', 1, 0),
(1292, 84, 'WM', 'West Macedonia', 1, 0),
(1293, 85, 'A', 'Avannaa', 1, 0),
(1294, 85, 'T', 'Tunu', 1, 0),
(1295, 85, 'K', 'Kitaa', 1, 0),
(1296, 86, 'A', 'Saint Andrew', 1, 0),
(1297, 86, 'D', 'Saint David', 1, 0),
(1298, 86, 'G', 'Saint George', 1, 0),
(1299, 86, 'J', 'Saint John', 1, 0),
(1300, 86, 'M', 'Saint Mark', 1, 0),
(1301, 86, 'P', 'Saint Patrick', 1, 0),
(1302, 86, 'C', 'Carriacou', 1, 0),
(1303, 86, 'Q', 'Petit Martinique', 1, 0),
(1304, 89, 'AV', 'Alta Verapaz', 1, 0),
(1305, 89, 'BV', 'Baja Verapaz', 1, 0),
(1306, 89, 'CM', 'Chimaltenango', 1, 0),
(1307, 89, 'CQ', 'Chiquimula', 1, 0),
(1308, 89, 'PE', 'El Peten', 1, 0),
(1309, 89, 'PR', 'El Progreso', 1, 0),
(1310, 89, 'QC', 'El Quiche', 1, 0),
(1311, 89, 'ES', 'Escuintla', 1, 0),
(1312, 89, 'GU', 'Guatemala', 1, 0),
(1313, 89, 'HU', 'Huehuetenango', 1, 0),
(1314, 89, 'IZ', 'Izabal', 1, 0),
(1315, 89, 'JA', 'Jalapa', 1, 0),
(1316, 89, 'JU', 'Jutiapa', 1, 0),
(1317, 89, 'QZ', 'Quetzaltenango', 1, 0),
(1318, 89, 'RE', 'Retalhuleu', 1, 0),
(1319, 89, 'ST', 'Sacatepequez', 1, 0),
(1320, 89, 'SM', 'San Marcos', 1, 0),
(1321, 89, 'SR', 'Santa Rosa', 1, 0),
(1322, 89, 'SO', 'Solola', 1, 0),
(1323, 89, 'SU', 'Suchitepequez', 1, 0),
(1324, 89, 'TO', 'Totonicapan', 1, 0),
(1325, 89, 'ZA', 'Zacapa', 1, 0),
(1326, 90, 'CNK', 'Conakry', 1, 0),
(1327, 90, 'BYL', 'Beyla', 1, 0),
(1328, 90, 'BFA', 'Boffa', 1, 0),
(1329, 90, 'BOK', 'Boke', 1, 0),
(1330, 90, 'COY', 'Coyah', 1, 0),
(1331, 90, 'DBL', 'Dabola', 1, 0),
(1332, 90, 'DLB', 'Dalaba', 1, 0),
(1333, 90, 'DGR', 'Dinguiraye', 1, 0),
(1334, 90, 'DBR', 'Dubreka', 1, 0),
(1335, 90, 'FRN', 'Faranah', 1, 0),
(1336, 90, 'FRC', 'Forecariah', 1, 0),
(1337, 90, 'FRI', 'Fria', 1, 0),
(1338, 90, 'GAO', 'Gaoual', 1, 0),
(1339, 90, 'GCD', 'Gueckedou', 1, 0),
(1340, 90, 'KNK', 'Kankan', 1, 0),
(1341, 90, 'KRN', 'Kerouane', 1, 0),
(1342, 90, 'KND', 'Kindia', 1, 0),
(1343, 90, 'KSD', 'Kissidougou', 1, 0),
(1344, 90, 'KBA', 'Koubia', 1, 0),
(1345, 90, 'KDA', 'Koundara', 1, 0),
(1346, 90, 'KRA', 'Kouroussa', 1, 0),
(1347, 90, 'LAB', 'Labe', 1, 0),
(1348, 90, 'LLM', 'Lelouma', 1, 0),
(1349, 90, 'LOL', 'Lola', 1, 0),
(1350, 90, 'MCT', 'Macenta', 1, 0),
(1351, 90, 'MAL', 'Mali', 1, 0),
(1352, 90, 'MAM', 'Mamou', 1, 0),
(1353, 90, 'MAN', 'Mandiana', 1, 0),
(1354, 90, 'NZR', 'Nzerekore', 1, 0),
(1355, 90, 'PIT', 'Pita', 1, 0),
(1356, 90, 'SIG', 'Siguiri', 1, 0),
(1357, 90, 'TLM', 'Telimele', 1, 0),
(1358, 90, 'TOG', 'Tougue', 1, 0),
(1359, 90, 'YOM', 'Yomou', 1, 0),
(1360, 91, 'BF', 'Bafata Region', 1, 0),
(1361, 91, 'BB', 'Biombo Region', 1, 0),
(1362, 91, 'BS', 'Bissau Region', 1, 0),
(1363, 91, 'BL', 'Bolama Region', 1, 0),
(1364, 91, 'CA', 'Cacheu Region', 1, 0),
(1365, 91, 'GA', 'Gabu Region', 1, 0),
(1366, 91, 'OI', 'Oio Region', 1, 0),
(1367, 91, 'QU', 'Quinara Region', 1, 0),
(1368, 91, 'TO', 'Tombali Region', 1, 0),
(1369, 92, 'BW', 'Barima-Waini', 1, 0),
(1370, 92, 'CM', 'Cuyuni-Mazaruni', 1, 0),
(1371, 92, 'DM', 'Demerara-Mahaica', 1, 0),
(1372, 92, 'EC', 'East Berbice-Corentyne', 1, 0),
(1373, 92, 'EW', 'Essequibo Islands-West Demerara', 1, 0),
(1374, 92, 'MB', 'Mahaica-Berbice', 1, 0),
(1375, 92, 'PM', 'Pomeroon-Supenaam', 1, 0),
(1376, 92, 'PI', 'Potaro-Siparuni', 1, 0),
(1377, 92, 'UD', 'Upper Demerara-Berbice', 1, 0),
(1378, 92, 'UT', 'Upper Takutu-Upper Essequibo', 1, 0),
(1379, 93, 'AR', 'Artibonite', 1, 0),
(1380, 93, 'CE', 'Centre', 1, 0),
(1381, 93, 'GA', 'Grand\'Anse', 1, 0),
(1382, 93, 'ND', 'Nord', 1, 0),
(1383, 93, 'NE', 'Nord-Est', 1, 0),
(1384, 93, 'NO', 'Nord-Ouest', 1, 0),
(1385, 93, 'OU', 'Ouest', 1, 0),
(1386, 93, 'SD', 'Sud', 1, 0),
(1387, 93, 'SE', 'Sud-Est', 1, 0),
(1388, 94, 'F', 'Flat Island', 1, 0),
(1389, 94, 'M', 'McDonald Island', 1, 0),
(1390, 94, 'S', 'Shag Island', 1, 0),
(1391, 94, 'H', 'Heard Island', 1, 0),
(1392, 95, 'AT', 'Atlantida', 1, 0),
(1393, 95, 'CH', 'Choluteca', 1, 0),
(1394, 95, 'CL', 'Colon', 1, 0),
(1395, 95, 'CM', 'Comayagua', 1, 0),
(1396, 95, 'CP', 'Copan', 1, 0),
(1397, 95, 'CR', 'Cortes', 1, 0),
(1398, 95, 'PA', 'El Paraiso', 1, 0),
(1399, 95, 'FM', 'Francisco Morazan', 1, 0),
(1400, 95, 'GD', 'Gracias a Dios', 1, 0),
(1401, 95, 'IN', 'Intibuca', 1, 0),
(1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)', 1, 0),
(1403, 95, 'PZ', 'La Paz', 1, 0),
(1404, 95, 'LE', 'Lempira', 1, 0),
(1405, 95, 'OC', 'Ocotepeque', 1, 0),
(1406, 95, 'OL', 'Olancho', 1, 0),
(1407, 95, 'SB', 'Santa Barbara', 1, 0),
(1408, 95, 'VA', 'Valle', 1, 0),
(1409, 95, 'YO', 'Yoro', 1, 0),
(1410, 96, 'HCW', 'Central and Western Hong Kong Island', 1, 0),
(1411, 96, 'HEA', 'Eastern Hong Kong Island', 1, 0),
(1412, 96, 'HSO', 'Southern Hong Kong Island', 1, 0),
(1413, 96, 'HWC', 'Wan Chai Hong Kong Island', 1, 0),
(1414, 96, 'KKC', 'Kowloon City Kowloon', 1, 0),
(1415, 96, 'KKT', 'Kwun Tong Kowloon', 1, 0),
(1416, 96, 'KSS', 'Sham Shui Po Kowloon', 1, 0),
(1417, 96, 'KWT', 'Wong Tai Sin Kowloon', 1, 0),
(1418, 96, 'KYT', 'Yau Tsim Mong Kowloon', 1, 0),
(1419, 96, 'NIS', 'Islands New Territories', 1, 0),
(1420, 96, 'NKT', 'Kwai Tsing New Territories', 1, 0),
(1421, 96, 'NNO', 'North New Territories', 1, 0),
(1422, 96, 'NSK', 'Sai Kung New Territories', 1, 0),
(1423, 96, 'NST', 'Sha Tin New Territories', 1, 0),
(1424, 96, 'NTP', 'Tai Po New Territories', 1, 0);
INSERT INTO `spices_j2store_zones` (`j2store_zone_id`, `country_id`, `zone_code`, `zone_name`, `enabled`, `ordering`) VALUES
(1425, 96, 'NTW', 'Tsuen Wan New Territories', 1, 0),
(1426, 96, 'NTM', 'Tuen Mun New Territories', 1, 0),
(1427, 96, 'NYL', 'Yuen Long New Territories', 1, 0),
(1428, 97, 'BK', 'Bacs-Kiskun', 1, 0),
(1429, 97, 'BA', 'Baranya', 1, 0),
(1430, 97, 'BE', 'Bekes', 1, 0),
(1431, 97, 'BS', 'Bekescsaba', 1, 0),
(1432, 97, 'BZ', 'Borsod-Abauj-Zemplen', 1, 0),
(1433, 97, 'BU', 'Budapest', 1, 0),
(1434, 97, 'CS', 'Csongrad', 1, 0),
(1435, 97, 'DE', 'Debrecen', 1, 0),
(1436, 97, 'DU', 'Dunaujvaros', 1, 0),
(1437, 97, 'EG', 'Eger', 1, 0),
(1438, 97, 'FE', 'Fejer', 1, 0),
(1439, 97, 'GY', 'Gyor', 1, 0),
(1440, 97, 'GM', 'Gyor-Moson-Sopron', 1, 0),
(1441, 97, 'HB', 'Hajdu-Bihar', 1, 0),
(1442, 97, 'HE', 'Heves', 1, 0),
(1443, 97, 'HO', 'Hodmezovasarhely', 1, 0),
(1444, 97, 'JN', 'Jasz-Nagykun-Szolnok', 1, 0),
(1445, 97, 'KA', 'Kaposvar', 1, 0),
(1446, 97, 'KE', 'Kecskemet', 1, 0),
(1447, 97, 'KO', 'Komarom-Esztergom', 1, 0),
(1448, 97, 'MI', 'Miskolc', 1, 0),
(1449, 97, 'NA', 'Nagykanizsa', 1, 0),
(1450, 97, 'NO', 'Nograd', 1, 0),
(1451, 97, 'NY', 'Nyiregyhaza', 1, 0),
(1452, 97, 'PE', 'Pecs', 1, 0),
(1453, 97, 'PS', 'Pest', 1, 0),
(1454, 97, 'SO', 'Somogy', 1, 0),
(1455, 97, 'SP', 'Sopron', 1, 0),
(1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg', 1, 0),
(1457, 97, 'SZ', 'Szeged', 1, 0),
(1458, 97, 'SE', 'Szekesfehervar', 1, 0),
(1459, 97, 'SL', 'Szolnok', 1, 0),
(1460, 97, 'SM', 'Szombathely', 1, 0),
(1461, 97, 'TA', 'Tatabanya', 1, 0),
(1462, 97, 'TO', 'Tolna', 1, 0),
(1463, 97, 'VA', 'Vas', 1, 0),
(1464, 97, 'VE', 'Veszprem', 1, 0),
(1465, 97, 'ZA', 'Zala', 1, 0),
(1466, 97, 'ZZ', 'Zalaegerszeg', 1, 0),
(1467, 98, 'AL', 'Austurland', 1, 0),
(1468, 98, 'HF', 'Hofuoborgarsvaeoi', 1, 0),
(1469, 98, 'NE', 'Norourland eystra', 1, 0),
(1470, 98, 'NV', 'Norourland vestra', 1, 0),
(1471, 98, 'SL', 'Suourland', 1, 0),
(1472, 98, 'SN', 'Suournes', 1, 0),
(1473, 98, 'VF', 'Vestfiroir', 1, 0),
(1474, 98, 'VL', 'Vesturland', 1, 0),
(1475, 99, 'AN', 'Andaman and Nicobar Islands', 1, 0),
(1476, 99, 'AP', 'Andhra Pradesh', 1, 0),
(1477, 99, 'AR', 'Arunachal Pradesh', 1, 0),
(1478, 99, 'AS', 'Assam', 1, 0),
(1479, 99, 'BI', 'Bihar', 1, 0),
(1480, 99, 'CH', 'Chandigarh', 1, 0),
(1481, 99, 'DA', 'Dadra and Nagar Haveli', 1, 0),
(1482, 99, 'DM', 'Daman and Diu', 1, 0),
(1483, 99, 'DE', 'Delhi', 1, 0),
(1484, 99, 'GO', 'Goa', 1, 0),
(1485, 99, 'GU', 'Gujarat', 1, 0),
(1486, 99, 'HA', 'Haryana', 1, 0),
(1487, 99, 'HP', 'Himachal Pradesh', 1, 0),
(1488, 99, 'JA', 'Jammu and Kashmir', 1, 0),
(1489, 99, 'KA', 'Karnataka', 1, 0),
(1490, 99, 'KE', 'Kerala', 1, 0),
(1491, 99, 'LI', 'Lakshadweep Islands', 1, 0),
(1492, 99, 'MP', 'Madhya Pradesh', 1, 0),
(1493, 99, 'MA', 'Maharashtra', 1, 0),
(1494, 99, 'MN', 'Manipur', 1, 0),
(1495, 99, 'ME', 'Meghalaya', 1, 0),
(1496, 99, 'MI', 'Mizoram', 1, 0),
(1497, 99, 'NA', 'Nagaland', 1, 0),
(1498, 99, 'OR', 'Orissa', 1, 0),
(1499, 99, 'PO', 'Pondicherry', 1, 0),
(1500, 99, 'PU', 'Punjab', 1, 0),
(1501, 99, 'RA', 'Rajasthan', 1, 0),
(1502, 99, 'SI', 'Sikkim', 1, 0),
(1503, 99, 'TN', 'Tamil Nadu', 1, 0),
(1504, 99, 'TR', 'Tripura', 1, 0),
(1505, 99, 'UP', 'Uttar Pradesh', 1, 0),
(1506, 99, 'WB', 'West Bengal', 1, 0),
(1507, 100, 'AC', 'Aceh', 1, 0),
(1508, 100, 'BA', 'Bali', 1, 0),
(1509, 100, 'BT', 'Banten', 1, 0),
(1510, 100, 'BE', 'Bengkulu', 1, 0),
(1511, 100, 'BD', 'BoDeTaBek', 1, 0),
(1512, 100, 'GO', 'Gorontalo', 1, 0),
(1513, 100, 'JK', 'Jakarta Raya', 1, 0),
(1514, 100, 'JA', 'Jambi', 1, 0),
(1515, 100, 'JB', 'Jawa Barat', 1, 0),
(1516, 100, 'JT', 'Jawa Tengah', 1, 0),
(1517, 100, 'JI', 'Jawa Timur', 1, 0),
(1518, 100, 'KB', 'Kalimantan Barat', 1, 0),
(1519, 100, 'KS', 'Kalimantan Selatan', 1, 0),
(1520, 100, 'KT', 'Kalimantan Tengah', 1, 0),
(1521, 100, 'KI', 'Kalimantan Timur', 1, 0),
(1522, 100, 'BB', 'Kepulauan Bangka Belitung', 1, 0),
(1523, 100, 'LA', 'Lampung', 1, 0),
(1524, 100, 'MA', 'Maluku', 1, 0),
(1525, 100, 'MU', 'Maluku Utara', 1, 0),
(1526, 100, 'NB', 'Nusa Tenggara Barat', 1, 0),
(1527, 100, 'NT', 'Nusa Tenggara Timur', 1, 0),
(1528, 100, 'PA', 'Papua', 1, 0),
(1529, 100, 'RI', 'Riau', 1, 0),
(1530, 100, 'SN', 'Sulawesi Selatan', 1, 0),
(1531, 100, 'ST', 'Sulawesi Tengah', 1, 0),
(1532, 100, 'SG', 'Sulawesi Tenggara', 1, 0),
(1533, 100, 'SA', 'Sulawesi Utara', 1, 0),
(1534, 100, 'SB', 'Sumatera Barat', 1, 0),
(1535, 100, 'SS', 'Sumatera Selatan', 1, 0),
(1536, 100, 'SU', 'Sumatera Utara', 1, 0),
(1537, 100, 'YO', 'Yogyakarta', 1, 0),
(1538, 101, 'TEH', 'Tehran', 1, 0),
(1539, 101, 'QOM', 'Qom', 1, 0),
(1540, 101, 'MKZ', 'Markazi', 1, 0),
(1541, 101, 'QAZ', 'Qazvin', 1, 0),
(1542, 101, 'GIL', 'Gilan', 1, 0),
(1543, 101, 'ARD', 'Ardabil', 1, 0),
(1544, 101, 'ZAN', 'Zanjan', 1, 0),
(1545, 101, 'EAZ', 'East Azarbaijan', 1, 0),
(1546, 101, 'WEZ', 'West Azarbaijan', 1, 0),
(1547, 101, 'KRD', 'Kurdistan', 1, 0),
(1548, 101, 'HMD', 'Hamadan', 1, 0),
(1549, 101, 'KRM', 'Kermanshah', 1, 0),
(1550, 101, 'ILM', 'Ilam', 1, 0),
(1551, 101, 'LRS', 'Lorestan', 1, 0),
(1552, 101, 'KZT', 'Khuzestan', 1, 0),
(1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari', 1, 0),
(1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad', 1, 0),
(1555, 101, 'BSH', 'Bushehr', 1, 0),
(1556, 101, 'FAR', 'Fars', 1, 0),
(1557, 101, 'HRM', 'Hormozgan', 1, 0),
(1558, 101, 'SBL', 'Sistan and Baluchistan', 1, 0),
(1559, 101, 'KRB', 'Kerman', 1, 0),
(1560, 101, 'YZD', 'Yazd', 1, 0),
(1561, 101, 'EFH', 'Esfahan', 1, 0),
(1562, 101, 'SMN', 'Semnan', 1, 0),
(1563, 101, 'MZD', 'Mazandaran', 1, 0),
(1564, 101, 'GLS', 'Golestan', 1, 0),
(1565, 101, 'NKH', 'North Khorasan', 1, 0),
(1566, 101, 'RKH', 'Razavi Khorasan', 1, 0),
(1567, 101, 'SKH', 'South Khorasan', 1, 0),
(1568, 102, 'BD', 'Baghdad', 1, 0),
(1569, 102, 'SD', 'Salah ad Din', 1, 0),
(1570, 102, 'DY', 'Diyala', 1, 0),
(1571, 102, 'WS', 'Wasit', 1, 0),
(1572, 102, 'MY', 'Maysan', 1, 0),
(1573, 102, 'BA', 'Al Basrah', 1, 0),
(1574, 102, 'DQ', 'Dhi Qar', 1, 0),
(1575, 102, 'MU', 'Al Muthanna', 1, 0),
(1576, 102, 'QA', 'Al Qadisyah', 1, 0),
(1577, 102, 'BB', 'Babil', 1, 0),
(1578, 102, 'KB', 'Al Karbala', 1, 0),
(1579, 102, 'NJ', 'An Najaf', 1, 0),
(1580, 102, 'AB', 'Al Anbar', 1, 0),
(1581, 102, 'NN', 'Ninawa', 1, 0),
(1582, 102, 'DH', 'Dahuk', 1, 0),
(1583, 102, 'AL', 'Arbil', 1, 0),
(1584, 102, 'TM', 'At Ta\'mim', 1, 0),
(1585, 102, 'SL', 'As Sulaymaniyah', 1, 0),
(1586, 103, 'CA', 'Carlow', 1, 0),
(1587, 103, 'CV', 'Cavan', 1, 0),
(1588, 103, 'CL', 'Clare', 1, 0),
(1589, 103, 'CO', 'Cork', 1, 0),
(1590, 103, 'DO', 'Donegal', 1, 0),
(1591, 103, 'DU', 'Dublin', 1, 0),
(1592, 103, 'GA', 'Galway', 1, 0),
(1593, 103, 'KE', 'Kerry', 1, 0),
(1594, 103, 'KI', 'Kildare', 1, 0),
(1595, 103, 'KL', 'Kilkenny', 1, 0),
(1596, 103, 'LA', 'Laois', 1, 0),
(1597, 103, 'LE', 'Leitrim', 1, 0),
(1598, 103, 'LI', 'Limerick', 1, 0),
(1599, 103, 'LO', 'Longford', 1, 0),
(1600, 103, 'LU', 'Louth', 1, 0),
(1601, 103, 'MA', 'Mayo', 1, 0),
(1602, 103, 'ME', 'Meath', 1, 0),
(1603, 103, 'MO', 'Monaghan', 1, 0),
(1604, 103, 'OF', 'Offaly', 1, 0),
(1605, 103, 'RO', 'Roscommon', 1, 0),
(1606, 103, 'SL', 'Sligo', 1, 0),
(1607, 103, 'TI', 'Tipperary', 1, 0),
(1608, 103, 'WA', 'Waterford', 1, 0),
(1609, 103, 'WE', 'Westmeath', 1, 0),
(1610, 103, 'WX', 'Wexford', 1, 0),
(1611, 103, 'WI', 'Wicklow', 1, 0),
(1612, 104, 'BS', 'Be\'er Sheva', 1, 0),
(1613, 104, 'BH', 'Bika\'at Hayarden', 1, 0),
(1614, 104, 'EA', 'Eilat and Arava', 1, 0),
(1615, 104, 'GA', 'Galil', 1, 0),
(1616, 104, 'HA', 'Haifa', 1, 0),
(1617, 104, 'JM', 'Jehuda Mountains', 1, 0),
(1618, 104, 'JE', 'Jerusalem', 1, 0),
(1619, 104, 'NE', 'Negev', 1, 0),
(1620, 104, 'SE', 'Semaria', 1, 0),
(1621, 104, 'SH', 'Sharon', 1, 0),
(1622, 104, 'TA', 'Tel Aviv (Gosh Dan)', 1, 0),
(1643, 106, 'CLA', 'Clarendon Parish', 1, 0),
(1644, 106, 'HAN', 'Hanover Parish', 1, 0),
(1645, 106, 'KIN', 'Kingston Parish', 1, 0),
(1646, 106, 'MAN', 'Manchester Parish', 1, 0),
(1647, 106, 'POR', 'Portland Parish', 1, 0),
(1648, 106, 'AND', 'Saint Andrew Parish', 1, 0),
(1649, 106, 'ANN', 'Saint Ann Parish', 1, 0),
(1650, 106, 'CAT', 'Saint Catherine Parish', 1, 0),
(1651, 106, 'ELI', 'Saint Elizabeth Parish', 1, 0),
(1652, 106, 'JAM', 'Saint James Parish', 1, 0),
(1653, 106, 'MAR', 'Saint Mary Parish', 1, 0),
(1654, 106, 'THO', 'Saint Thomas Parish', 1, 0),
(1655, 106, 'TRL', 'Trelawny Parish', 1, 0),
(1656, 106, 'WML', 'Westmoreland Parish', 1, 0),
(1657, 107, 'AI', 'Aichi', 1, 0),
(1658, 107, 'AK', 'Akita', 1, 0),
(1659, 107, 'AO', 'Aomori', 1, 0),
(1660, 107, 'CH', 'Chiba', 1, 0),
(1661, 107, 'EH', 'Ehime', 1, 0),
(1662, 107, 'FK', 'Fukui', 1, 0),
(1663, 107, 'FU', 'Fukuoka', 1, 0),
(1664, 107, 'FS', 'Fukushima', 1, 0),
(1665, 107, 'GI', 'Gifu', 1, 0),
(1666, 107, 'GU', 'Gumma', 1, 0),
(1667, 107, 'HI', 'Hiroshima', 1, 0),
(1668, 107, 'HO', 'Hokkaido', 1, 0),
(1669, 107, 'HY', 'Hyogo', 1, 0),
(1670, 107, 'IB', 'Ibaraki', 1, 0),
(1671, 107, 'IS', 'Ishikawa', 1, 0),
(1672, 107, 'IW', 'Iwate', 1, 0),
(1673, 107, 'KA', 'Kagawa', 1, 0),
(1674, 107, 'KG', 'Kagoshima', 1, 0),
(1675, 107, 'KN', 'Kanagawa', 1, 0),
(1676, 107, 'KO', 'Kochi', 1, 0),
(1677, 107, 'KU', 'Kumamoto', 1, 0),
(1678, 107, 'KY', 'Kyoto', 1, 0),
(1679, 107, 'MI', 'Mie', 1, 0),
(1680, 107, 'MY', 'Miyagi', 1, 0),
(1681, 107, 'MZ', 'Miyazaki', 1, 0),
(1682, 107, 'NA', 'Nagano', 1, 0),
(1683, 107, 'NG', 'Nagasaki', 1, 0),
(1684, 107, 'NR', 'Nara', 1, 0),
(1685, 107, 'NI', 'Niigata', 1, 0),
(1686, 107, 'OI', 'Oita', 1, 0),
(1687, 107, 'OK', 'Okayama', 1, 0),
(1688, 107, 'ON', 'Okinawa', 1, 0),
(1689, 107, 'OS', 'Osaka', 1, 0),
(1690, 107, 'SA', 'Saga', 1, 0),
(1691, 107, 'SI', 'Saitama', 1, 0),
(1692, 107, 'SH', 'Shiga', 1, 0),
(1693, 107, 'SM', 'Shimane', 1, 0),
(1694, 107, 'SZ', 'Shizuoka', 1, 0),
(1695, 107, 'TO', 'Tochigi', 1, 0),
(1696, 107, 'TS', 'Tokushima', 1, 0),
(1697, 107, 'TK', 'Tokyo', 1, 0),
(1698, 107, 'TT', 'Tottori', 1, 0),
(1699, 107, 'TY', 'Toyama', 1, 0),
(1700, 107, 'WA', 'Wakayama', 1, 0),
(1701, 107, 'YA', 'Yamagata', 1, 0),
(1702, 107, 'YM', 'Yamaguchi', 1, 0),
(1703, 107, 'YN', 'Yamanashi', 1, 0),
(1704, 108, 'AM', '\'Amman', 1, 0),
(1705, 108, 'AJ', 'Ajlun', 1, 0),
(1706, 108, 'AA', 'Al \'Aqabah', 1, 0),
(1707, 108, 'AB', 'Al Balqa\'', 1, 0),
(1708, 108, 'AK', 'Al Karak', 1, 0),
(1709, 108, 'AL', 'Al Mafraq', 1, 0),
(1710, 108, 'AT', 'At Tafilah', 1, 0),
(1711, 108, 'AZ', 'Az Zarqa\'', 1, 0),
(1712, 108, 'IR', 'Irbid', 1, 0),
(1713, 108, 'JA', 'Jarash', 1, 0),
(1714, 108, 'MA', 'Ma\'an', 1, 0),
(1715, 108, 'MD', 'Madaba', 1, 0),
(1716, 109, 'AL', 'Almaty', 1, 0),
(1717, 109, 'AC', 'Almaty City', 1, 0),
(1718, 109, 'AM', 'Aqmola', 1, 0),
(1719, 109, 'AQ', 'Aqtobe', 1, 0),
(1720, 109, 'AS', 'Astana City', 1, 0),
(1721, 109, 'AT', 'Atyrau', 1, 0),
(1722, 109, 'BA', 'Batys Qazaqstan', 1, 0),
(1723, 109, 'BY', 'Bayqongyr City', 1, 0),
(1724, 109, 'MA', 'Mangghystau', 1, 0),
(1725, 109, 'ON', 'Ongtustik Qazaqstan', 1, 0),
(1726, 109, 'PA', 'Pavlodar', 1, 0),
(1727, 109, 'QA', 'Qaraghandy', 1, 0),
(1728, 109, 'QO', 'Qostanay', 1, 0),
(1729, 109, 'QY', 'Qyzylorda', 1, 0),
(1730, 109, 'SH', 'Shyghys Qazaqstan', 1, 0),
(1731, 109, 'SO', 'Soltustik Qazaqstan', 1, 0),
(1732, 109, 'ZH', 'Zhambyl', 1, 0),
(1733, 110, 'CE', 'Central', 1, 0),
(1734, 110, 'CO', 'Coast', 1, 0),
(1735, 110, 'EA', 'Eastern', 1, 0),
(1736, 110, 'NA', 'Nairobi Area', 1, 0),
(1737, 110, 'NE', 'North Eastern', 1, 0),
(1738, 110, 'NY', 'Nyanza', 1, 0),
(1739, 110, 'RV', 'Rift Valley', 1, 0),
(1740, 110, 'WE', 'Western', 1, 0),
(1741, 111, 'AG', 'Abaiang', 1, 0),
(1742, 111, 'AM', 'Abemama', 1, 0),
(1743, 111, 'AK', 'Aranuka', 1, 0),
(1744, 111, 'AO', 'Arorae', 1, 0),
(1745, 111, 'BA', 'Banaba', 1, 0),
(1746, 111, 'BE', 'Beru', 1, 0),
(1747, 111, 'bT', 'Butaritari', 1, 0),
(1748, 111, 'KA', 'Kanton', 1, 0),
(1749, 111, 'KR', 'Kiritimati', 1, 0),
(1750, 111, 'KU', 'Kuria', 1, 0),
(1751, 111, 'MI', 'Maiana', 1, 0),
(1752, 111, 'MN', 'Makin', 1, 0),
(1753, 111, 'ME', 'Marakei', 1, 0),
(1754, 111, 'NI', 'Nikunau', 1, 0),
(1755, 111, 'NO', 'Nonouti', 1, 0),
(1756, 111, 'ON', 'Onotoa', 1, 0),
(1757, 111, 'TT', 'Tabiteuea', 1, 0),
(1758, 111, 'TR', 'Tabuaeran', 1, 0),
(1759, 111, 'TM', 'Tamana', 1, 0),
(1760, 111, 'TW', 'Tarawa', 1, 0),
(1761, 111, 'TE', 'Teraina', 1, 0),
(1762, 112, 'CHA', 'Chagang-do', 1, 0),
(1763, 112, 'HAB', 'Hamgyong-bukto', 1, 0),
(1764, 112, 'HAN', 'Hamgyong-namdo', 1, 0),
(1765, 112, 'HWB', 'Hwanghae-bukto', 1, 0),
(1766, 112, 'HWN', 'Hwanghae-namdo', 1, 0),
(1767, 112, 'KAN', 'Kangwon-do', 1, 0),
(1768, 112, 'PYB', 'P\'yongan-bukto', 1, 0),
(1769, 112, 'PYN', 'P\'yongan-namdo', 1, 0),
(1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)', 1, 0),
(1771, 112, 'NAJ', 'Rason Directly Governed City', 1, 0),
(1772, 112, 'PYO', 'P\'yongyang Special City', 1, 0),
(1773, 113, 'CO', 'Ch\'ungch\'ong-bukto', 1, 0),
(1774, 113, 'CH', 'Ch\'ungch\'ong-namdo', 1, 0),
(1775, 113, 'CD', 'Cheju-do', 1, 0),
(1776, 113, 'CB', 'Cholla-bukto', 1, 0),
(1777, 113, 'CN', 'Cholla-namdo', 1, 0),
(1778, 113, 'IG', 'Inch\'on-gwangyoksi', 1, 0),
(1779, 113, 'KA', 'Kangwon-do', 1, 0),
(1780, 113, 'KG', 'Kwangju-gwangyoksi', 1, 0),
(1781, 113, 'KD', 'Kyonggi-do', 1, 0),
(1782, 113, 'KB', 'Kyongsang-bukto', 1, 0),
(1783, 113, 'KN', 'Kyongsang-namdo', 1, 0),
(1784, 113, 'PG', 'Pusan-gwangyoksi', 1, 0),
(1785, 113, 'SO', 'Soul-t\'ukpyolsi', 1, 0),
(1786, 113, 'TA', 'Taegu-gwangyoksi', 1, 0),
(1787, 113, 'TG', 'Taejon-gwangyoksi', 1, 0),
(1788, 114, 'AL', 'Al \'Asimah', 1, 0),
(1789, 114, 'AA', 'Al Ahmadi', 1, 0),
(1790, 114, 'AF', 'Al Farwaniyah', 1, 0),
(1791, 114, 'AJ', 'Al Jahra\'', 1, 0),
(1792, 114, 'HA', 'Hawalli', 1, 0),
(1793, 115, 'GB', 'Bishkek', 1, 0),
(1794, 115, 'B', 'Batken', 1, 0),
(1795, 115, 'C', 'Chu', 1, 0),
(1796, 115, 'J', 'Jalal-Abad', 1, 0),
(1797, 115, 'N', 'Naryn', 1, 0),
(1798, 115, 'O', 'Osh', 1, 0),
(1799, 115, 'T', 'Talas', 1, 0),
(1800, 115, 'Y', 'Ysyk-Kol', 1, 0),
(1801, 116, 'VT', 'Vientiane', 1, 0),
(1802, 116, 'AT', 'Attapu', 1, 0),
(1803, 116, 'BK', 'Bokeo', 1, 0),
(1804, 116, 'BL', 'Bolikhamxai', 1, 0),
(1805, 116, 'CH', 'Champasak', 1, 0),
(1806, 116, 'HO', 'Houaphan', 1, 0),
(1807, 116, 'KH', 'Khammouan', 1, 0),
(1808, 116, 'LM', 'Louang Namtha', 1, 0),
(1809, 116, 'LP', 'Louangphabang', 1, 0),
(1810, 116, 'OU', 'Oudomxai', 1, 0),
(1811, 116, 'PH', 'Phongsali', 1, 0),
(1812, 116, 'SL', 'Salavan', 1, 0),
(1813, 116, 'SV', 'Savannakhet', 1, 0),
(1814, 116, 'VI', 'Vientiane', 1, 0),
(1815, 116, 'XA', 'Xaignabouli', 1, 0),
(1816, 116, 'XE', 'Xekong', 1, 0),
(1817, 116, 'XI', 'Xiangkhoang', 1, 0),
(1818, 116, 'XN', 'Xaisomboun', 1, 0),
(1819, 117, 'AIZ', 'Aizkraukles Rajons', 1, 0),
(1820, 117, 'ALU', 'Aluksnes Rajons', 1, 0),
(1821, 117, 'BAL', 'Balvu Rajons', 1, 0),
(1822, 117, 'BAU', 'Bauskas Rajons', 1, 0),
(1823, 117, 'CES', 'Cesu Rajons', 1, 0),
(1824, 117, 'DGR', 'Daugavpils Rajons', 1, 0),
(1825, 117, 'DOB', 'Dobeles Rajons', 1, 0),
(1826, 117, 'GUL', 'Gulbenes Rajons', 1, 0),
(1827, 117, 'JEK', 'Jekabpils Rajons', 1, 0),
(1828, 117, 'JGR', 'Jelgavas Rajons', 1, 0),
(1829, 117, 'KRA', 'Kraslavas Rajons', 1, 0),
(1830, 117, 'KUL', 'Kuldigas Rajons', 1, 0),
(1831, 117, 'LPR', 'Liepajas Rajons', 1, 0),
(1832, 117, 'LIM', 'Limbazu Rajons', 1, 0),
(1833, 117, 'LUD', 'Ludzas Rajons', 1, 0),
(1834, 117, 'MAD', 'Madonas Rajons', 1, 0),
(1835, 117, 'OGR', 'Ogres Rajons', 1, 0),
(1836, 117, 'PRE', 'Preilu Rajons', 1, 0),
(1837, 117, 'RZR', 'Rezeknes Rajons', 1, 0),
(1838, 117, 'RGR', 'Rigas Rajons', 1, 0),
(1839, 117, 'SAL', 'Saldus Rajons', 1, 0),
(1840, 117, 'TAL', 'Talsu Rajons', 1, 0),
(1841, 117, 'TUK', 'Tukuma Rajons', 1, 0),
(1842, 117, 'VLK', 'Valkas Rajons', 1, 0),
(1843, 117, 'VLM', 'Valmieras Rajons', 1, 0),
(1844, 117, 'VSR', 'Ventspils Rajons', 1, 0),
(1845, 117, 'DGV', 'Daugavpils', 1, 0),
(1846, 117, 'JGV', 'Jelgava', 1, 0),
(1847, 117, 'JUR', 'Jurmala', 1, 0),
(1848, 117, 'LPK', 'Liepaja', 1, 0),
(1849, 117, 'RZK', 'Rezekne', 1, 0),
(1850, 117, 'RGA', 'Riga', 1, 0),
(1851, 117, 'VSL', 'Ventspils', 1, 0),
(1852, 119, 'BE', 'Berea', 1, 0),
(1853, 119, 'BB', 'Butha-Buthe', 1, 0),
(1854, 119, 'LE', 'Leribe', 1, 0),
(1855, 119, 'MF', 'Mafeteng', 1, 0),
(1856, 119, 'MS', 'Maseru', 1, 0),
(1857, 119, 'MH', 'Mohale\'s Hoek', 1, 0),
(1858, 119, 'MK', 'Mokhotlong', 1, 0),
(1859, 119, 'QN', 'Qacha\'s Nek', 1, 0),
(1860, 119, 'QT', 'Quthing', 1, 0),
(1861, 119, 'TT', 'Thaba-Tseka', 1, 0),
(1862, 120, 'BI', 'Bomi', 1, 0),
(1863, 120, 'BG', 'Bong', 1, 0),
(1864, 120, 'GB', 'Grand Bassa', 1, 0),
(1865, 120, 'CM', 'Grand Cape Mount', 1, 0),
(1866, 120, 'GG', 'Grand Gedeh', 1, 0),
(1867, 120, 'GK', 'Grand Kru', 1, 0),
(1868, 120, 'LO', 'Lofa', 1, 0),
(1869, 120, 'MG', 'Margibi', 1, 0),
(1870, 120, 'ML', 'Maryland', 1, 0),
(1871, 120, 'MS', 'Montserrado', 1, 0),
(1872, 120, 'NB', 'Nimba', 1, 0),
(1873, 120, 'RC', 'River Cess', 1, 0),
(1874, 120, 'SN', 'Sinoe', 1, 0),
(1875, 121, 'AJ', 'Ajdabiya', 1, 0),
(1876, 121, 'AZ', 'Al \'Aziziyah', 1, 0),
(1877, 121, 'FA', 'Al Fatih', 1, 0),
(1878, 121, 'JA', 'Al Jabal al Akhdar', 1, 0),
(1879, 121, 'JU', 'Al Jufrah', 1, 0),
(1880, 121, 'KH', 'Al Khums', 1, 0),
(1881, 121, 'KU', 'Al Kufrah', 1, 0),
(1882, 121, 'NK', 'An Nuqat al Khams', 1, 0),
(1883, 121, 'AS', 'Ash Shati\'', 1, 0),
(1884, 121, 'AW', 'Awbari', 1, 0),
(1885, 121, 'ZA', 'Az Zawiyah', 1, 0),
(1886, 121, 'BA', 'Banghazi', 1, 0),
(1887, 121, 'DA', 'Darnah', 1, 0),
(1888, 121, 'GD', 'Ghadamis', 1, 0),
(1889, 121, 'GY', 'Gharyan', 1, 0),
(1890, 121, 'MI', 'Misratah', 1, 0),
(1891, 121, 'MZ', 'Murzuq', 1, 0),
(1892, 121, 'SB', 'Sabha', 1, 0),
(1893, 121, 'SW', 'Sawfajjin', 1, 0),
(1894, 121, 'SU', 'Surt', 1, 0),
(1895, 121, 'TL', 'Tarabulus (Tripoli)', 1, 0),
(1896, 121, 'TH', 'Tarhunah', 1, 0),
(1897, 121, 'TU', 'Tubruq', 1, 0),
(1898, 121, 'YA', 'Yafran', 1, 0),
(1899, 121, 'ZL', 'Zlitan', 1, 0),
(1900, 122, 'V', 'Vaduz', 1, 0),
(1901, 122, 'A', 'Schaan', 1, 0),
(1902, 122, 'B', 'Balzers', 1, 0),
(1903, 122, 'N', 'Triesen', 1, 0),
(1904, 122, 'E', 'Eschen', 1, 0),
(1905, 122, 'M', 'Mauren', 1, 0),
(1906, 122, 'T', 'Triesenberg', 1, 0),
(1907, 122, 'R', 'Ruggell', 1, 0),
(1908, 122, 'G', 'Gamprin', 1, 0),
(1909, 122, 'L', 'Schellenberg', 1, 0),
(1910, 122, 'P', 'Planken', 1, 0),
(1911, 123, 'AL', 'Alytus', 1, 0),
(1912, 123, 'KA', 'Kaunas', 1, 0),
(1913, 123, 'KL', 'Klaipeda', 1, 0),
(1914, 123, 'MA', 'Marijampole', 1, 0),
(1915, 123, 'PA', 'Panevezys', 1, 0),
(1916, 123, 'SI', 'Siauliai', 1, 0),
(1917, 123, 'TA', 'Taurage', 1, 0),
(1918, 123, 'TE', 'Telsiai', 1, 0),
(1919, 123, 'UT', 'Utena', 1, 0),
(1920, 123, 'VI', 'Vilnius', 1, 0),
(1921, 124, 'DD', 'Diekirch', 1, 0),
(1922, 124, 'DC', 'Clervaux', 1, 0),
(1923, 124, 'DR', 'Redange', 1, 0),
(1924, 124, 'DV', 'Vianden', 1, 0),
(1925, 124, 'DW', 'Wiltz', 1, 0),
(1926, 124, 'GG', 'Grevenmacher', 1, 0),
(1927, 124, 'GE', 'Echternach', 1, 0),
(1928, 124, 'GR', 'Remich', 1, 0),
(1929, 124, 'LL', 'Luxembourg', 1, 0),
(1930, 124, 'LC', 'Capellen', 1, 0),
(1931, 124, 'LE', 'Esch-sur-Alzette', 1, 0),
(1932, 124, 'LM', 'Mersch', 1, 0),
(1933, 125, 'OLF', 'Our Lady Fatima Parish', 1, 0),
(1934, 125, 'ANT', 'St. Anthony Parish', 1, 0),
(1935, 125, 'LAZ', 'St. Lazarus Parish', 1, 0),
(1936, 125, 'CAT', 'Cathedral Parish', 1, 0),
(1937, 125, 'LAW', 'St. Lawrence Parish', 1, 0),
(1938, 127, 'AN', 'Antananarivo', 1, 0),
(1939, 127, 'AS', 'Antsiranana', 1, 0),
(1940, 127, 'FN', 'Fianarantsoa', 1, 0),
(1941, 127, 'MJ', 'Mahajanga', 1, 0),
(1942, 127, 'TM', 'Toamasina', 1, 0),
(1943, 127, 'TL', 'Toliara', 1, 0),
(1944, 128, 'BLK', 'Balaka', 1, 0),
(1945, 128, 'BLT', 'Blantyre', 1, 0),
(1946, 128, 'CKW', 'Chikwawa', 1, 0),
(1947, 128, 'CRD', 'Chiradzulu', 1, 0),
(1948, 128, 'CTP', 'Chitipa', 1, 0),
(1949, 128, 'DDZ', 'Dedza', 1, 0),
(1950, 128, 'DWA', 'Dowa', 1, 0),
(1951, 128, 'KRG', 'Karonga', 1, 0),
(1952, 128, 'KSG', 'Kasungu', 1, 0),
(1953, 128, 'LKM', 'Likoma', 1, 0),
(1954, 128, 'LLG', 'Lilongwe', 1, 0),
(1955, 128, 'MCG', 'Machinga', 1, 0),
(1956, 128, 'MGC', 'Mangochi', 1, 0),
(1957, 128, 'MCH', 'Mchinji', 1, 0),
(1958, 128, 'MLJ', 'Mulanje', 1, 0),
(1959, 128, 'MWZ', 'Mwanza', 1, 0),
(1960, 128, 'MZM', 'Mzimba', 1, 0),
(1961, 128, 'NTU', 'Ntcheu', 1, 0),
(1962, 128, 'NKB', 'Nkhata Bay', 1, 0),
(1963, 128, 'NKH', 'Nkhotakota', 1, 0),
(1964, 128, 'NSJ', 'Nsanje', 1, 0),
(1965, 128, 'NTI', 'Ntchisi', 1, 0),
(1966, 128, 'PHL', 'Phalombe', 1, 0),
(1967, 128, 'RMP', 'Rumphi', 1, 0),
(1968, 128, 'SLM', 'Salima', 1, 0),
(1969, 128, 'THY', 'Thyolo', 1, 0),
(1970, 128, 'ZBA', 'Zomba', 1, 0),
(1971, 129, 'JO', 'Johor', 1, 0),
(1972, 129, 'KE', 'Kedah', 1, 0),
(1973, 129, 'KL', 'Kelantan', 1, 0),
(1974, 129, 'LA', 'Labuan', 1, 0),
(1975, 129, 'ME', 'Melaka', 1, 0),
(1976, 129, 'NS', 'Negeri Sembilan', 1, 0),
(1977, 129, 'PA', 'Pahang', 1, 0),
(1978, 129, 'PE', 'Perak', 1, 0),
(1979, 129, 'PR', 'Perlis', 1, 0),
(1980, 129, 'PP', 'Pulau Pinang', 1, 0),
(1981, 129, 'SA', 'Sabah', 1, 0),
(1982, 129, 'SR', 'Sarawak', 1, 0),
(1983, 129, 'SE', 'Selangor', 1, 0),
(1984, 129, 'TE', 'Terengganu', 1, 0),
(1985, 129, 'WP', 'Wilayah Persekutuan', 1, 0),
(1986, 130, 'THU', 'Thiladhunmathi Uthuru', 1, 0),
(1987, 130, 'THD', 'Thiladhunmathi Dhekunu', 1, 0),
(1988, 130, 'MLU', 'Miladhunmadulu Uthuru', 1, 0),
(1989, 130, 'MLD', 'Miladhunmadulu Dhekunu', 1, 0),
(1990, 130, 'MAU', 'Maalhosmadulu Uthuru', 1, 0),
(1991, 130, 'MAD', 'Maalhosmadulu Dhekunu', 1, 0),
(1992, 130, 'FAA', 'Faadhippolhu', 1, 0),
(1993, 130, 'MAA', 'Male Atoll', 1, 0),
(1994, 130, 'AAU', 'Ari Atoll Uthuru', 1, 0),
(1995, 130, 'AAD', 'Ari Atoll Dheknu', 1, 0),
(1996, 130, 'FEA', 'Felidhe Atoll', 1, 0),
(1997, 130, 'MUA', 'Mulaku Atoll', 1, 0),
(1998, 130, 'NAU', 'Nilandhe Atoll Uthuru', 1, 0),
(1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu', 1, 0),
(2000, 130, 'KLH', 'Kolhumadulu', 1, 0),
(2001, 130, 'HDH', 'Hadhdhunmathi', 1, 0),
(2002, 130, 'HAU', 'Huvadhu Atoll Uthuru', 1, 0),
(2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu', 1, 0),
(2004, 130, 'FMU', 'Fua Mulaku', 1, 0),
(2005, 130, 'ADD', 'Addu', 1, 0),
(2006, 131, 'GA', 'Gao', 1, 0),
(2007, 131, 'KY', 'Kayes', 1, 0),
(2008, 131, 'KD', 'Kidal', 1, 0),
(2009, 131, 'KL', 'Koulikoro', 1, 0),
(2010, 131, 'MP', 'Mopti', 1, 0),
(2011, 131, 'SG', 'Segou', 1, 0),
(2012, 131, 'SK', 'Sikasso', 1, 0),
(2013, 131, 'TB', 'Tombouctou', 1, 0),
(2014, 131, 'CD', 'Bamako Capital District', 1, 0),
(2015, 132, 'ATT', 'Attard', 1, 0),
(2016, 132, 'BAL', 'Balzan', 1, 0),
(2017, 132, 'BGU', 'Birgu', 1, 0),
(2018, 132, 'BKK', 'Birkirkara', 1, 0),
(2019, 132, 'BRZ', 'Birzebbuga', 1, 0),
(2020, 132, 'BOR', 'Bormla', 1, 0),
(2021, 132, 'DIN', 'Dingli', 1, 0),
(2022, 132, 'FGU', 'Fgura', 1, 0),
(2023, 132, 'FLO', 'Floriana', 1, 0),
(2024, 132, 'GDJ', 'Gudja', 1, 0),
(2025, 132, 'GZR', 'Gzira', 1, 0),
(2026, 132, 'GRG', 'Gargur', 1, 0),
(2027, 132, 'GXQ', 'Gaxaq', 1, 0),
(2028, 132, 'HMR', 'Hamrun', 1, 0),
(2029, 132, 'IKL', 'Iklin', 1, 0),
(2030, 132, 'ISL', 'Isla', 1, 0),
(2031, 132, 'KLK', 'Kalkara', 1, 0),
(2032, 132, 'KRK', 'Kirkop', 1, 0),
(2033, 132, 'LIJ', 'Lija', 1, 0),
(2034, 132, 'LUQ', 'Luqa', 1, 0),
(2035, 132, 'MRS', 'Marsa', 1, 0),
(2036, 132, 'MKL', 'Marsaskala', 1, 0),
(2037, 132, 'MXL', 'Marsaxlokk', 1, 0),
(2038, 132, 'MDN', 'Mdina', 1, 0),
(2039, 132, 'MEL', 'Melliea', 1, 0),
(2040, 132, 'MGR', 'Mgarr', 1, 0),
(2041, 132, 'MST', 'Mosta', 1, 0),
(2042, 132, 'MQA', 'Mqabba', 1, 0),
(2043, 132, 'MSI', 'Msida', 1, 0),
(2044, 132, 'MTF', 'Mtarfa', 1, 0),
(2045, 132, 'NAX', 'Naxxar', 1, 0),
(2046, 132, 'PAO', 'Paola', 1, 0),
(2047, 132, 'PEM', 'Pembroke', 1, 0),
(2048, 132, 'PIE', 'Pieta', 1, 0),
(2049, 132, 'QOR', 'Qormi', 1, 0),
(2050, 132, 'QRE', 'Qrendi', 1, 0),
(2051, 132, 'RAB', 'Rabat', 1, 0),
(2052, 132, 'SAF', 'Safi', 1, 0),
(2053, 132, 'SGI', 'San Giljan', 1, 0),
(2054, 132, 'SLU', 'Santa Lucija', 1, 0),
(2055, 132, 'SPB', 'San Pawl il-Bahar', 1, 0),
(2056, 132, 'SGW', 'San Gwann', 1, 0),
(2057, 132, 'SVE', 'Santa Venera', 1, 0),
(2058, 132, 'SIG', 'Siggiewi', 1, 0),
(2059, 132, 'SLM', 'Sliema', 1, 0),
(2060, 132, 'SWQ', 'Swieqi', 1, 0),
(2061, 132, 'TXB', 'Ta Xbiex', 1, 0),
(2062, 132, 'TRX', 'Tarxien', 1, 0),
(2063, 132, 'VLT', 'Valletta', 1, 0),
(2064, 132, 'XGJ', 'Xgajra', 1, 0),
(2065, 132, 'ZBR', 'Zabbar', 1, 0),
(2066, 132, 'ZBG', 'Zebbug', 1, 0),
(2067, 132, 'ZJT', 'Zejtun', 1, 0),
(2068, 132, 'ZRQ', 'Zurrieq', 1, 0),
(2069, 132, 'FNT', 'Fontana', 1, 0),
(2070, 132, 'GHJ', 'Ghajnsielem', 1, 0),
(2071, 132, 'GHR', 'Gharb', 1, 0),
(2072, 132, 'GHS', 'Ghasri', 1, 0),
(2073, 132, 'KRC', 'Kercem', 1, 0),
(2074, 132, 'MUN', 'Munxar', 1, 0),
(2075, 132, 'NAD', 'Nadur', 1, 0),
(2076, 132, 'QAL', 'Qala', 1, 0),
(2077, 132, 'VIC', 'Victoria', 1, 0),
(2078, 132, 'SLA', 'San Lawrenz', 1, 0),
(2079, 132, 'SNT', 'Sannat', 1, 0),
(2080, 132, 'ZAG', 'Xagra', 1, 0),
(2081, 132, 'XEW', 'Xewkija', 1, 0),
(2082, 132, 'ZEB', 'Zebbug', 1, 0),
(2083, 133, 'ALG', 'Ailinginae', 1, 0),
(2084, 133, 'ALL', 'Ailinglaplap', 1, 0),
(2085, 133, 'ALK', 'Ailuk', 1, 0),
(2086, 133, 'ARN', 'Arno', 1, 0),
(2087, 133, 'AUR', 'Aur', 1, 0),
(2088, 133, 'BKR', 'Bikar', 1, 0),
(2089, 133, 'BKN', 'Bikini', 1, 0),
(2090, 133, 'BKK', 'Bokak', 1, 0),
(2091, 133, 'EBN', 'Ebon', 1, 0),
(2092, 133, 'ENT', 'Enewetak', 1, 0),
(2093, 133, 'EKB', 'Erikub', 1, 0),
(2094, 133, 'JBT', 'Jabat', 1, 0),
(2095, 133, 'JLT', 'Jaluit', 1, 0),
(2096, 133, 'JEM', 'Jemo', 1, 0),
(2097, 133, 'KIL', 'Kili', 1, 0),
(2098, 133, 'KWJ', 'Kwajalein', 1, 0),
(2099, 133, 'LAE', 'Lae', 1, 0),
(2100, 133, 'LIB', 'Lib', 1, 0),
(2101, 133, 'LKP', 'Likiep', 1, 0),
(2102, 133, 'MJR', 'Majuro', 1, 0),
(2103, 133, 'MLP', 'Maloelap', 1, 0),
(2104, 133, 'MJT', 'Mejit', 1, 0),
(2105, 133, 'MIL', 'Mili', 1, 0),
(2106, 133, 'NMK', 'Namorik', 1, 0),
(2107, 133, 'NAM', 'Namu', 1, 0),
(2108, 133, 'RGL', 'Rongelap', 1, 0),
(2109, 133, 'RGK', 'Rongrik', 1, 0),
(2110, 133, 'TOK', 'Toke', 1, 0),
(2111, 133, 'UJA', 'Ujae', 1, 0),
(2112, 133, 'UJL', 'Ujelang', 1, 0),
(2113, 133, 'UTK', 'Utirik', 1, 0),
(2114, 133, 'WTH', 'Wotho', 1, 0),
(2115, 133, 'WTJ', 'Wotje', 1, 0),
(2116, 135, 'AD', 'Adrar', 1, 0),
(2117, 135, 'AS', 'Assaba', 1, 0),
(2118, 135, 'BR', 'Brakna', 1, 0),
(2119, 135, 'DN', 'Dakhlet Nouadhibou', 1, 0),
(2120, 135, 'GO', 'Gorgol', 1, 0),
(2121, 135, 'GM', 'Guidimaka', 1, 0),
(2122, 135, 'HC', 'Hodh Ech Chargui', 1, 0),
(2123, 135, 'HG', 'Hodh El Gharbi', 1, 0),
(2124, 135, 'IN', 'Inchiri', 1, 0),
(2125, 135, 'TA', 'Tagant', 1, 0),
(2126, 135, 'TZ', 'Tiris Zemmour', 1, 0),
(2127, 135, 'TR', 'Trarza', 1, 0),
(2128, 135, 'NO', 'Nouakchott', 1, 0),
(2129, 136, 'BR', 'Beau Bassin-Rose Hill', 1, 0),
(2130, 136, 'CU', 'Curepipe', 1, 0),
(2131, 136, 'PU', 'Port Louis', 1, 0),
(2132, 136, 'QB', 'Quatre Bornes', 1, 0),
(2133, 136, 'VP', 'Vacoas-Phoenix', 1, 0),
(2134, 136, 'AG', 'Agalega Islands', 1, 0),
(2135, 136, 'CC', 'Cargados Cara#_ Shoals (Saint Brandon Islands)', 1, 0),
(2136, 136, 'RO', 'Rodrigues', 1, 0),
(2137, 136, 'BL', 'Black River', 1, 0),
(2138, 136, 'FL', 'Flacq', 1, 0),
(2139, 136, 'GP', 'Grand Port', 1, 0),
(2140, 136, 'MO', 'Moka', 1, 0),
(2141, 136, 'PA', 'Pamplemousses', 1, 0),
(2142, 136, 'PW', 'Plaines Wilhems', 1, 0),
(2143, 136, 'PL', 'Port Louis', 1, 0),
(2144, 136, 'RR', 'Riviere du Rempart', 1, 0),
(2145, 136, 'SA', 'Savanne', 1, 0),
(2146, 138, 'BA', 'Baja California Norte', 1, 0),
(2147, 138, 'BJ', 'Baja California Sur', 1, 0),
(2148, 138, 'CE', 'Campeche', 1, 0),
(2149, 138, 'CI', 'Chiapas', 1, 0),
(2150, 138, 'CH', 'Chihuahua', 1, 0),
(2151, 138, 'CU', 'Coahuila de Zaragoza', 1, 0),
(2152, 138, 'CL', 'Colima', 1, 0),
(2153, 138, 'DF', 'Distrito Federal', 1, 0),
(2154, 138, 'DO', 'Durango', 1, 0),
(2155, 138, 'GX', 'Guanajuato', 1, 0),
(2156, 138, 'GR', 'Guerrero', 1, 0),
(2157, 138, 'HL', 'Hidalgo', 1, 0),
(2158, 138, 'JL', 'Jalisco', 1, 0),
(2159, 138, 'MX', 'Estado de México', 1, 0),
(2160, 138, 'MC', 'Michoacan de Ocampo', 1, 0),
(2161, 138, 'MR', 'Morelos', 1, 0),
(2162, 138, 'NA', 'Nayarit', 1, 0),
(2163, 138, 'NN', 'Nuevo Leon', 1, 0),
(2164, 138, 'OA', 'Oaxaca', 1, 0),
(2165, 138, 'PU', 'Puebla', 1, 0),
(2166, 138, 'QU', 'Queretaro de Arteaga', 1, 0),
(2167, 138, 'QR', 'Quintana Roo', 1, 0),
(2168, 138, 'SL', 'San Luis Potosi', 1, 0),
(2169, 138, 'SI', 'Sinaloa', 1, 0),
(2170, 138, 'SO', 'Sonora', 1, 0),
(2171, 138, 'TB', 'Tabasco', 1, 0),
(2172, 138, 'TA', 'Tamaulipas', 1, 0),
(2173, 138, 'TL', 'Tlaxcala', 1, 0),
(2174, 138, 'VC', 'Veracruz-Llave', 1, 0),
(2175, 138, 'YU', 'Yucatan', 1, 0),
(2176, 138, 'ZA', 'Zacatecas', 1, 0),
(2177, 139, 'C', 'Chuuk', 1, 0),
(2178, 139, 'K', 'Kosrae', 1, 0),
(2179, 139, 'P', 'Pohnpei', 1, 0),
(2180, 139, 'Y', 'Yap', 1, 0),
(2181, 140, 'GA', 'Gagauzia', 1, 0),
(2182, 140, 'CU', 'Chisinau', 1, 0),
(2183, 140, 'BA', 'Balti', 1, 0),
(2184, 140, 'CA', 'Cahul', 1, 0),
(2185, 140, 'ED', 'Edinet', 1, 0),
(2186, 140, 'LA', 'Lapusna', 1, 0),
(2187, 140, 'OR', 'Orhei', 1, 0),
(2188, 140, 'SO', 'Soroca', 1, 0),
(2189, 140, 'TI', 'Tighina', 1, 0),
(2190, 140, 'UN', 'Ungheni', 1, 0),
(2191, 140, 'SN', 'Stînga Nistrului', 1, 0),
(2192, 141, 'FV', 'Fontvieille', 1, 0),
(2193, 141, 'LC', 'La Condamine', 1, 0),
(2194, 141, 'MV', 'Monaco-Ville', 1, 0),
(2195, 141, 'MC', 'Monte-Carlo', 1, 0),
(2196, 142, '1', 'Ulanbaatar', 1, 0),
(2197, 142, '035', 'Orhon', 1, 0),
(2198, 142, '037', 'Darhan uul', 1, 0),
(2199, 142, '039', 'Hentiy', 1, 0),
(2200, 142, '041', 'Hovsgol', 1, 0),
(2201, 142, '043', 'Hovd', 1, 0),
(2202, 142, '046', 'Uvs', 1, 0),
(2203, 142, '047', 'Tov', 1, 0),
(2204, 142, '049', 'Selenge', 1, 0),
(2205, 142, '051', 'Suhbaatar', 1, 0),
(2206, 142, '053', 'Omnogovi', 1, 0),
(2207, 142, '055', 'Ovorhangay', 1, 0),
(2208, 142, '057', 'Dzavhan', 1, 0),
(2209, 142, '059', 'DundgovL', 1, 0),
(2210, 142, '061', 'Dornod', 1, 0),
(2211, 142, '063', 'Dornogov', 1, 0),
(2212, 142, '064', 'Govi-Sumber', 1, 0),
(2213, 142, '065', 'Govi-Altay', 1, 0),
(2214, 142, '067', 'Bulgan', 1, 0),
(2215, 142, '069', 'Bayanhongor', 1, 0),
(2216, 142, '071', 'Bayan-Olgiy', 1, 0),
(2217, 142, '073', 'Arhangay', 1, 0),
(2218, 143, 'A', 'Saint Anthony', 1, 0),
(2219, 143, 'G', 'Saint Georges', 1, 0),
(2220, 143, 'P', 'Saint Peter', 1, 0),
(2221, 144, 'AGD', 'Agadir', 1, 0),
(2222, 144, 'HOC', 'Al Hoceima', 1, 0),
(2223, 144, 'AZI', 'Azilal', 1, 0),
(2224, 144, 'BME', 'Beni Mellal', 1, 0),
(2225, 144, 'BSL', 'Ben Slimane', 1, 0),
(2226, 144, 'BLM', 'Boulemane', 1, 0),
(2227, 144, 'CBL', 'Casablanca', 1, 0),
(2228, 144, 'CHA', 'Chaouen', 1, 0),
(2229, 144, 'EJA', 'El Jadida', 1, 0),
(2230, 144, 'EKS', 'El Kelaa des Sraghna', 1, 0),
(2231, 144, 'ERA', 'Er Rachidia', 1, 0),
(2232, 144, 'ESS', 'Essaouira', 1, 0),
(2233, 144, 'FES', 'Fes', 1, 0),
(2234, 144, 'FIG', 'Figuig', 1, 0),
(2235, 144, 'GLM', 'Guelmim', 1, 0),
(2236, 144, 'IFR', 'Ifrane', 1, 0),
(2237, 144, 'KEN', 'Kenitra', 1, 0),
(2238, 144, 'KHM', 'Khemisset', 1, 0),
(2239, 144, 'KHN', 'Khenifra', 1, 0),
(2240, 144, 'KHO', 'Khouribga', 1, 0),
(2241, 144, 'LYN', 'Laayoune', 1, 0),
(2242, 144, 'LAR', 'Larache', 1, 0),
(2243, 144, 'MRK', 'Marrakech', 1, 0),
(2244, 144, 'MKN', 'Meknes', 1, 0),
(2245, 144, 'NAD', 'Nador', 1, 0),
(2246, 144, 'ORZ', 'Ouarzazate', 1, 0),
(2247, 144, 'OUJ', 'Oujda', 1, 0),
(2248, 144, 'RSA', 'Rabat-Sale', 1, 0),
(2249, 144, 'SAF', 'Safi', 1, 0),
(2250, 144, 'SET', 'Settat', 1, 0),
(2251, 144, 'SKA', 'Sidi Kacem', 1, 0),
(2252, 144, 'TGR', 'Tangier', 1, 0),
(2253, 144, 'TAN', 'Tan-Tan', 1, 0),
(2254, 144, 'TAO', 'Taounate', 1, 0),
(2255, 144, 'TRD', 'Taroudannt', 1, 0),
(2256, 144, 'TAT', 'Tata', 1, 0),
(2257, 144, 'TAZ', 'Taza', 1, 0),
(2258, 144, 'TET', 'Tetouan', 1, 0),
(2259, 144, 'TIZ', 'Tiznit', 1, 0),
(2260, 144, 'ADK', 'Ad Dakhla', 1, 0),
(2261, 144, 'BJD', 'Boujdour', 1, 0),
(2262, 144, 'ESM', 'Es Smara', 1, 0),
(2263, 145, 'CD', 'Cabo Delgado', 1, 0),
(2264, 145, 'GZ', 'Gaza', 1, 0),
(2265, 145, 'IN', 'Inhambane', 1, 0),
(2266, 145, 'MN', 'Manica', 1, 0),
(2267, 145, 'MC', 'Maputo (city)', 1, 0),
(2268, 145, 'MP', 'Maputo', 1, 0),
(2269, 145, 'NA', 'Nampula', 1, 0),
(2270, 145, 'NI', 'Niassa', 1, 0),
(2271, 145, 'SO', 'Sofala', 1, 0),
(2272, 145, 'TE', 'Tete', 1, 0),
(2273, 145, 'ZA', 'Zambezia', 1, 0),
(2274, 146, 'AY', 'Ayeyarwady', 1, 0),
(2275, 146, 'BG', 'Bago', 1, 0),
(2276, 146, 'MG', 'Magway', 1, 0),
(2277, 146, 'MD', 'Mandalay', 1, 0),
(2278, 146, 'SG', 'Sagaing', 1, 0),
(2279, 146, 'TN', 'Tanintharyi', 1, 0),
(2280, 146, 'YG', 'Yangon', 1, 0),
(2281, 146, 'CH', 'Chin State', 1, 0),
(2282, 146, 'KC', 'Kachin State', 1, 0),
(2283, 146, 'KH', 'Kayah State', 1, 0),
(2284, 146, 'KN', 'Kayin State', 1, 0),
(2285, 146, 'MN', 'Mon State', 1, 0),
(2286, 146, 'RK', 'Rakhine State', 1, 0),
(2287, 146, 'SH', 'Shan State', 1, 0),
(2288, 147, 'CA', 'Caprivi', 1, 0),
(2289, 147, 'ER', 'Erongo', 1, 0),
(2290, 147, 'HA', 'Hardap', 1, 0),
(2291, 147, 'KR', 'Karas', 1, 0),
(2292, 147, 'KV', 'Kavango', 1, 0),
(2293, 147, 'KH', 'Khomas', 1, 0),
(2294, 147, 'KU', 'Kunene', 1, 0),
(2295, 147, 'OW', 'Ohangwena', 1, 0),
(2296, 147, 'OK', 'Omaheke', 1, 0),
(2297, 147, 'OT', 'Omusati', 1, 0),
(2298, 147, 'ON', 'Oshana', 1, 0),
(2299, 147, 'OO', 'Oshikoto', 1, 0),
(2300, 147, 'OJ', 'Otjozondjupa', 1, 0),
(2301, 148, 'AO', 'Aiwo', 1, 0),
(2302, 148, 'AA', 'Anabar', 1, 0),
(2303, 148, 'AT', 'Anetan', 1, 0),
(2304, 148, 'AI', 'Anibare', 1, 0),
(2305, 148, 'BA', 'Baiti', 1, 0),
(2306, 148, 'BO', 'Boe', 1, 0),
(2307, 148, 'BU', 'Buada', 1, 0),
(2308, 148, 'DE', 'Denigomodu', 1, 0),
(2309, 148, 'EW', 'Ewa', 1, 0),
(2310, 148, 'IJ', 'Ijuw', 1, 0),
(2311, 148, 'ME', 'Meneng', 1, 0),
(2312, 148, 'NI', 'Nibok', 1, 0),
(2313, 148, 'UA', 'Uaboe', 1, 0),
(2314, 148, 'YA', 'Yaren', 1, 0),
(2315, 149, 'BA', 'Bagmati', 1, 0),
(2316, 149, 'BH', 'Bheri', 1, 0),
(2317, 149, 'DH', 'Dhawalagiri', 1, 0),
(2318, 149, 'GA', 'Gandaki', 1, 0),
(2319, 149, 'JA', 'Janakpur', 1, 0),
(2320, 149, 'KA', 'Karnali', 1, 0),
(2321, 149, 'KO', 'Kosi', 1, 0),
(2322, 149, 'LU', 'Lumbini', 1, 0),
(2323, 149, 'MA', 'Mahakali', 1, 0),
(2324, 149, 'ME', 'Mechi', 1, 0),
(2325, 149, 'NA', 'Narayani', 1, 0),
(2326, 149, 'RA', 'Rapti', 1, 0),
(2327, 149, 'SA', 'Sagarmatha', 1, 0),
(2328, 149, 'SE', 'Seti', 1, 0),
(2329, 150, 'DR', 'Drenthe', 1, 0),
(2330, 150, 'FL', 'Flevoland', 1, 0),
(2331, 150, 'FR', 'Friesland', 1, 0),
(2332, 150, 'GE', 'Gelderland', 1, 0),
(2333, 150, 'GR', 'Groningen', 1, 0),
(2334, 150, 'LI', 'Limburg', 1, 0),
(2335, 150, 'NB', 'Noord Brabant', 1, 0),
(2336, 150, 'NH', 'Noord Holland', 1, 0),
(2337, 150, 'OV', 'Overijssel', 1, 0),
(2338, 150, 'UT', 'Utrecht', 1, 0),
(2339, 150, 'ZE', 'Zeeland', 1, 0),
(2340, 150, 'ZH', 'Zuid Holland', 1, 0),
(2341, 152, 'L', 'Iles Loyaute', 1, 0),
(2342, 152, 'N', 'Nord', 1, 0),
(2343, 152, 'S', 'Sud', 1, 0),
(2344, 153, 'AUK', 'Auckland', 1, 0),
(2345, 153, 'BOP', 'Bay of Plenty', 1, 0),
(2346, 153, 'CAN', 'Canterbury', 1, 0),
(2347, 153, 'COR', 'Coromandel', 1, 0),
(2348, 153, 'GIS', 'Gisborne', 1, 0),
(2349, 153, 'FIO', 'Fiordland', 1, 0),
(2350, 153, 'HKB', 'Hawke\'s Bay', 1, 0),
(2351, 153, 'MBH', 'Marlborough', 1, 0),
(2352, 153, 'MWT', 'Manawatu-Wanganui', 1, 0),
(2353, 153, 'MCM', 'Mt Cook-Mackenzie', 1, 0),
(2354, 153, 'NSN', 'Nelson', 1, 0),
(2355, 153, 'NTL', 'Northland', 1, 0),
(2356, 153, 'OTA', 'Otago', 1, 0),
(2357, 153, 'STL', 'Southland', 1, 0),
(2358, 153, 'TKI', 'Taranaki', 1, 0),
(2359, 153, 'WGN', 'Wellington', 1, 0),
(2360, 153, 'WKO', 'Waikato', 1, 0),
(2361, 153, 'WAI', 'Wairprarapa', 1, 0),
(2362, 153, 'WTC', 'West Coast', 1, 0),
(2363, 154, 'AN', 'Atlantico Norte', 1, 0),
(2364, 154, 'AS', 'Atlantico Sur', 1, 0),
(2365, 154, 'BO', 'Boaco', 1, 0),
(2366, 154, 'CA', 'Carazo', 1, 0),
(2367, 154, 'CI', 'Chinandega', 1, 0),
(2368, 154, 'CO', 'Chontales', 1, 0),
(2369, 154, 'ES', 'Esteli', 1, 0),
(2370, 154, 'GR', 'Granada', 1, 0),
(2371, 154, 'JI', 'Jinotega', 1, 0),
(2372, 154, 'LE', 'Leon', 1, 0),
(2373, 154, 'MD', 'Madriz', 1, 0),
(2374, 154, 'MN', 'Managua', 1, 0),
(2375, 154, 'MS', 'Masaya', 1, 0),
(2376, 154, 'MT', 'Matagalpa', 1, 0),
(2377, 154, 'NS', 'Nuevo Segovia', 1, 0),
(2378, 154, 'RS', 'Rio San Juan', 1, 0),
(2379, 154, 'RI', 'Rivas', 1, 0),
(2380, 155, 'AG', 'Agadez', 1, 0),
(2381, 155, 'DF', 'Diffa', 1, 0),
(2382, 155, 'DS', 'Dosso', 1, 0),
(2383, 155, 'MA', 'Maradi', 1, 0),
(2384, 155, 'NM', 'Niamey', 1, 0),
(2385, 155, 'TH', 'Tahoua', 1, 0),
(2386, 155, 'TL', 'Tillaberi', 1, 0),
(2387, 155, 'ZD', 'Zinder', 1, 0),
(2388, 156, 'AB', 'Abia', 1, 0),
(2389, 156, 'CT', 'Abuja Federal Capital Territory', 1, 0),
(2390, 156, 'AD', 'Adamawa', 1, 0),
(2391, 156, 'AK', 'Akwa Ibom', 1, 0),
(2392, 156, 'AN', 'Anambra', 1, 0),
(2393, 156, 'BC', 'Bauchi', 1, 0),
(2394, 156, 'BY', 'Bayelsa', 1, 0),
(2395, 156, 'BN', 'Benue', 1, 0),
(2396, 156, 'BO', 'Borno', 1, 0),
(2397, 156, 'CR', 'Cross River', 1, 0),
(2398, 156, 'DE', 'Delta', 1, 0),
(2399, 156, 'EB', 'Ebonyi', 1, 0),
(2400, 156, 'ED', 'Edo', 1, 0),
(2401, 156, 'EK', 'Ekiti', 1, 0),
(2402, 156, 'EN', 'Enugu', 1, 0),
(2403, 156, 'GO', 'Gombe', 1, 0),
(2404, 156, 'IM', 'Imo', 1, 0),
(2405, 156, 'JI', 'Jigawa', 1, 0),
(2406, 156, 'KD', 'Kaduna', 1, 0),
(2407, 156, 'KN', 'Kano', 1, 0),
(2408, 156, 'KT', 'Katsina', 1, 0),
(2409, 156, 'KE', 'Kebbi', 1, 0),
(2410, 156, 'KO', 'Kogi', 1, 0),
(2411, 156, 'KW', 'Kwara', 1, 0),
(2412, 156, 'LA', 'Lagos', 1, 0),
(2413, 156, 'NA', 'Nassarawa', 1, 0),
(2414, 156, 'NI', 'Niger', 1, 0),
(2415, 156, 'OG', 'Ogun', 1, 0),
(2416, 156, 'ONG', 'Ondo', 1, 0),
(2417, 156, 'OS', 'Osun', 1, 0),
(2418, 156, 'OY', 'Oyo', 1, 0),
(2419, 156, 'PL', 'Plateau', 1, 0),
(2420, 156, 'RI', 'Rivers', 1, 0),
(2421, 156, 'SO', 'Sokoto', 1, 0),
(2422, 156, 'TA', 'Taraba', 1, 0),
(2423, 156, 'YO', 'Yobe', 1, 0),
(2424, 156, 'ZA', 'Zamfara', 1, 0),
(2425, 159, 'N', 'Northern Islands', 1, 0),
(2426, 159, 'R', 'Rota', 1, 0),
(2427, 159, 'S', 'Saipan', 1, 0),
(2428, 159, 'T', 'Tinian', 1, 0),
(2429, 160, 'AK', 'Akershus', 1, 0),
(2430, 160, 'AA', 'Aust-Agder', 1, 0),
(2431, 160, 'BU', 'Buskerud', 1, 0),
(2432, 160, 'FM', 'Finnmark', 1, 0),
(2433, 160, 'HM', 'Hedmark', 1, 0),
(2434, 160, 'HL', 'Hordaland', 1, 0),
(2435, 160, 'MR', 'More og Romdal', 1, 0),
(2436, 160, 'NT', 'Nord-Trondelag', 1, 0),
(2437, 160, 'NL', 'Nordland', 1, 0),
(2438, 160, 'OF', 'Ostfold', 1, 0),
(2439, 160, 'OP', 'Oppland', 1, 0),
(2440, 160, 'OL', 'Oslo', 1, 0),
(2441, 160, 'RL', 'Rogaland', 1, 0),
(2442, 160, 'ST', 'Sor-Trondelag', 1, 0),
(2443, 160, 'SJ', 'Sogn og Fjordane', 1, 0),
(2444, 160, 'SV', 'Svalbard', 1, 0),
(2445, 160, 'TM', 'Telemark', 1, 0),
(2446, 160, 'TR', 'Troms', 1, 0),
(2447, 160, 'VA', 'Vest-Agder', 1, 0),
(2448, 160, 'VF', 'Vestfold', 1, 0),
(2449, 161, 'DA', 'Ad Dakhiliyah', 1, 0),
(2450, 161, 'BA', 'Al Batinah', 1, 0),
(2451, 161, 'WU', 'Al Wusta', 1, 0),
(2452, 161, 'SH', 'Ash Sharqiyah', 1, 0),
(2453, 161, 'ZA', 'Az Zahirah', 1, 0),
(2454, 161, 'MA', 'Masqat', 1, 0),
(2455, 161, 'MU', 'Musandam', 1, 0),
(2456, 161, 'ZU', 'Zufar', 1, 0),
(2457, 162, 'B', 'Balochistan', 1, 0),
(2458, 162, 'T', 'Federally Administered Tribal Areas', 1, 0),
(2459, 162, 'I', 'Islamabad Capital Territory', 1, 0),
(2460, 162, 'N', 'North-West Frontier', 1, 0),
(2461, 162, 'P', 'Punjab', 1, 0),
(2462, 162, 'S', 'Sindh', 1, 0),
(2463, 163, 'AM', 'Aimeliik', 1, 0),
(2464, 163, 'AR', 'Airai', 1, 0),
(2465, 163, 'AN', 'Angaur', 1, 0),
(2466, 163, 'HA', 'Hatohobei', 1, 0),
(2467, 163, 'KA', 'Kayangel', 1, 0),
(2468, 163, 'KO', 'Koror', 1, 0),
(2469, 163, 'ME', 'Melekeok', 1, 0),
(2470, 163, 'NA', 'Ngaraard', 1, 0),
(2471, 163, 'NG', 'Ngarchelong', 1, 0),
(2472, 163, 'ND', 'Ngardmau', 1, 0),
(2473, 163, 'NT', 'Ngatpang', 1, 0),
(2474, 163, 'NC', 'Ngchesar', 1, 0),
(2475, 163, 'NR', 'Ngeremlengui', 1, 0),
(2476, 163, 'NW', 'Ngiwal', 1, 0),
(2477, 163, 'PE', 'Peleliu', 1, 0),
(2478, 163, 'SO', 'Sonsorol', 1, 0),
(2479, 164, 'BT', 'Bocas del Toro', 1, 0),
(2480, 164, 'CH', 'Chiriqui', 1, 0),
(2481, 164, 'CC', 'Cocle', 1, 0),
(2482, 164, 'CL', 'Colon', 1, 0),
(2483, 164, 'DA', 'Darien', 1, 0),
(2484, 164, 'HE', 'Herrera', 1, 0),
(2485, 164, 'LS', 'Los Santos', 1, 0),
(2486, 164, 'PA', 'Panama', 1, 0),
(2487, 164, 'SB', 'San Blas', 1, 0),
(2488, 164, 'VG', 'Veraguas', 1, 0),
(2489, 165, 'BV', 'Bougainville', 1, 0),
(2490, 165, 'CE', 'Central', 1, 0),
(2491, 165, 'CH', 'Chimbu', 1, 0),
(2492, 165, 'EH', 'Eastern Highlands', 1, 0),
(2493, 165, 'EB', 'East New Britain', 1, 0),
(2494, 165, 'ES', 'East Sepik', 1, 0),
(2495, 165, 'EN', 'Enga', 1, 0),
(2496, 165, 'GU', 'Gulf', 1, 0),
(2497, 165, 'MD', 'Madang', 1, 0),
(2498, 165, 'MN', 'Manus', 1, 0),
(2499, 165, 'MB', 'Milne Bay', 1, 0),
(2500, 165, 'MR', 'Morobe', 1, 0),
(2501, 165, 'NC', 'National Capital', 1, 0),
(2502, 165, 'NI', 'New Ireland', 1, 0),
(2503, 165, 'NO', 'Northern', 1, 0),
(2504, 165, 'SA', 'Sandaun', 1, 0),
(2505, 165, 'SH', 'Southern Highlands', 1, 0),
(2506, 165, 'WE', 'Western', 1, 0),
(2507, 165, 'WH', 'Western Highlands', 1, 0),
(2508, 165, 'WB', 'West New Britain', 1, 0),
(2509, 166, 'AG', 'Alto Paraguay', 1, 0),
(2510, 166, 'AN', 'Alto Parana', 1, 0),
(2511, 166, 'AM', 'Amambay', 1, 0),
(2512, 166, 'AS', 'Asuncion', 1, 0),
(2513, 166, 'BO', 'Boqueron', 1, 0),
(2514, 166, 'CG', 'Caaguazu', 1, 0),
(2515, 166, 'CZ', 'Caazapa', 1, 0),
(2516, 166, 'CN', 'Canindeyu', 1, 0),
(2517, 166, 'CE', 'Central', 1, 0),
(2518, 166, 'CC', 'Concepcion', 1, 0),
(2519, 166, 'CD', 'Cordillera', 1, 0),
(2520, 166, 'GU', 'Guaira', 1, 0),
(2521, 166, 'IT', 'Itapua', 1, 0),
(2522, 166, 'MI', 'Misiones', 1, 0),
(2523, 166, 'NE', 'Neembucu', 1, 0),
(2524, 166, 'PA', 'Paraguari', 1, 0),
(2525, 166, 'PH', 'Presidente Hayes', 1, 0),
(2526, 166, 'SP', 'San Pedro', 1, 0),
(2527, 167, 'AM', 'Amazonas', 1, 0),
(2528, 167, 'AN', 'Ancash', 1, 0),
(2529, 167, 'AP', 'Apurimac', 1, 0),
(2530, 167, 'AR', 'Arequipa', 1, 0),
(2531, 167, 'AY', 'Ayacucho', 1, 0),
(2532, 167, 'CJ', 'Cajamarca', 1, 0),
(2533, 167, 'CL', 'Callao', 1, 0),
(2534, 167, 'CU', 'Cusco', 1, 0),
(2535, 167, 'HV', 'Huancavelica', 1, 0),
(2536, 167, 'HO', 'Huanuco', 1, 0),
(2537, 167, 'IC', 'Ica', 1, 0),
(2538, 167, 'JU', 'Junin', 1, 0),
(2539, 167, 'LD', 'La Libertad', 1, 0),
(2540, 167, 'LY', 'Lambayeque', 1, 0),
(2541, 167, 'LI', 'Lima', 1, 0),
(2542, 167, 'LO', 'Loreto', 1, 0),
(2543, 167, 'MD', 'Madre de Dios', 1, 0),
(2544, 167, 'MO', 'Moquegua', 1, 0),
(2545, 167, 'PA', 'Pasco', 1, 0),
(2546, 167, 'PI', 'Piura', 1, 0),
(2547, 167, 'PU', 'Puno', 1, 0),
(2548, 167, 'SM', 'San Martin', 1, 0),
(2549, 167, 'TA', 'Tacna', 1, 0),
(2550, 167, 'TU', 'Tumbes', 1, 0),
(2551, 167, 'UC', 'Ucayali', 1, 0),
(2552, 168, 'ABR', 'Abra', 1, 0),
(2553, 168, 'ANO', 'Agusan del Norte', 1, 0),
(2554, 168, 'ASU', 'Agusan del Sur', 1, 0),
(2555, 168, 'AKL', 'Aklan', 1, 0),
(2556, 168, 'ALB', 'Albay', 1, 0),
(2557, 168, 'ANT', 'Antique', 1, 0),
(2558, 168, 'APY', 'Apayao', 1, 0),
(2559, 168, 'AUR', 'Aurora', 1, 0),
(2560, 168, 'BAS', 'Basilan', 1, 0),
(2561, 168, 'BTA', 'Bataan', 1, 0),
(2562, 168, 'BTE', 'Batanes', 1, 0),
(2563, 168, 'BTG', 'Batangas', 1, 0),
(2564, 168, 'BLR', 'Biliran', 1, 0),
(2565, 168, 'BEN', 'Benguet', 1, 0),
(2566, 168, 'BOL', 'Bohol', 1, 0),
(2567, 168, 'BUK', 'Bukidnon', 1, 0),
(2568, 168, 'BUL', 'Bulacan', 1, 0),
(2569, 168, 'CAG', 'Cagayan', 1, 0),
(2570, 168, 'CNO', 'Camarines Norte', 1, 0),
(2571, 168, 'CSU', 'Camarines Sur', 1, 0),
(2572, 168, 'CAM', 'Camiguin', 1, 0),
(2573, 168, 'CAP', 'Capiz', 1, 0),
(2574, 168, 'CAT', 'Catanduanes', 1, 0),
(2575, 168, 'CAV', 'Cavite', 1, 0),
(2576, 168, 'CEB', 'Cebu', 1, 0),
(2577, 168, 'CMP', 'Compostela', 1, 0),
(2578, 168, 'DNO', 'Davao del Norte', 1, 0),
(2579, 168, 'DSU', 'Davao del Sur', 1, 0),
(2580, 168, 'DOR', 'Davao Oriental', 1, 0),
(2581, 168, 'ESA', 'Eastern Samar', 1, 0),
(2582, 168, 'GUI', 'Guimaras', 1, 0),
(2583, 168, 'IFU', 'Ifugao', 1, 0),
(2584, 168, 'INO', 'Ilocos Norte', 1, 0),
(2585, 168, 'ISU', 'Ilocos Sur', 1, 0),
(2586, 168, 'ILO', 'Iloilo', 1, 0),
(2587, 168, 'ISA', 'Isabela', 1, 0),
(2588, 168, 'KAL', 'Kalinga', 1, 0),
(2589, 168, 'LAG', 'Laguna', 1, 0),
(2590, 168, 'LNO', 'Lanao del Norte', 1, 0),
(2591, 168, 'LSU', 'Lanao del Sur', 1, 0),
(2592, 168, 'UNI', 'La Union', 1, 0),
(2593, 168, 'LEY', 'Leyte', 1, 0),
(2594, 168, 'MAG', 'Maguindanao', 1, 0),
(2595, 168, 'MRN', 'Marinduque', 1, 0),
(2596, 168, 'MSB', 'Masbate', 1, 0),
(2597, 168, 'MIC', 'Mindoro Occidental', 1, 0),
(2598, 168, 'MIR', 'Mindoro Oriental', 1, 0),
(2599, 168, 'MSC', 'Misamis Occidental', 1, 0),
(2600, 168, 'MOR', 'Misamis Oriental', 1, 0),
(2601, 168, 'MOP', 'Mountain', 1, 0),
(2602, 168, 'NOC', 'Negros Occidental', 1, 0),
(2603, 168, 'NOR', 'Negros Oriental', 1, 0),
(2604, 168, 'NCT', 'North Cotabato', 1, 0),
(2605, 168, 'NSM', 'Northern Samar', 1, 0),
(2606, 168, 'NEC', 'Nueva Ecija', 1, 0),
(2607, 168, 'NVZ', 'Nueva Vizcaya', 1, 0),
(2608, 168, 'PLW', 'Palawan', 1, 0),
(2609, 168, 'PMP', 'Pampanga', 1, 0),
(2610, 168, 'PNG', 'Pangasinan', 1, 0),
(2611, 168, 'QZN', 'Quezon', 1, 0),
(2612, 168, 'QRN', 'Quirino', 1, 0),
(2613, 168, 'RIZ', 'Rizal', 1, 0),
(2614, 168, 'ROM', 'Romblon', 1, 0),
(2615, 168, 'SMR', 'Samar', 1, 0),
(2616, 168, 'SRG', 'Sarangani', 1, 0),
(2617, 168, 'SQJ', 'Siquijor', 1, 0),
(2618, 168, 'SRS', 'Sorsogon', 1, 0),
(2619, 168, 'SCO', 'South Cotabato', 1, 0),
(2620, 168, 'SLE', 'Southern Leyte', 1, 0),
(2621, 168, 'SKU', 'Sultan Kudarat', 1, 0),
(2622, 168, 'SLU', 'Sulu', 1, 0),
(2623, 168, 'SNO', 'Surigao del Norte', 1, 0),
(2624, 168, 'SSU', 'Surigao del Sur', 1, 0),
(2625, 168, 'TAR', 'Tarlac', 1, 0),
(2626, 168, 'TAW', 'Tawi-Tawi', 1, 0),
(2627, 168, 'ZBL', 'Zambales', 1, 0),
(2628, 168, 'ZNO', 'Zamboanga del Norte', 1, 0),
(2629, 168, 'ZSU', 'Zamboanga del Sur', 1, 0),
(2630, 168, 'ZSI', 'Zamboanga Sibugay', 1, 0),
(2631, 170, 'DO', 'Dolnoslaskie', 1, 0),
(2632, 170, 'KP', 'Kujawsko-Pomorskie', 1, 0),
(2633, 170, 'LO', 'Lodzkie', 1, 0),
(2634, 170, 'LL', 'Lubelskie', 1, 0),
(2635, 170, 'LU', 'Lubuskie', 1, 0),
(2636, 170, 'ML', 'Malopolskie', 1, 0),
(2637, 170, 'MZ', 'Mazowieckie', 1, 0),
(2638, 170, 'OP', 'Opolskie', 1, 0),
(2639, 170, 'PP', 'Podkarpackie', 1, 0),
(2640, 170, 'PL', 'Podlaskie', 1, 0),
(2641, 170, 'PM', 'Pomorskie', 1, 0),
(2642, 170, 'SL', 'Slaskie', 1, 0),
(2643, 170, 'SW', 'Swietokrzyskie', 1, 0),
(2644, 170, 'WM', 'Warminsko-Mazurskie', 1, 0),
(2645, 170, 'WP', 'Wielkopolskie', 1, 0),
(2646, 170, 'ZA', 'Zachodniopomorskie', 1, 0),
(2647, 198, 'P', 'Saint Pierre', 1, 0),
(2648, 198, 'M', 'Miquelon', 1, 0),
(2649, 171, 'AC', 'A&ccedil;ores', 1, 0),
(2650, 171, 'AV', 'Aveiro', 1, 0),
(2651, 171, 'BE', 'Beja', 1, 0),
(2652, 171, 'BR', 'Braga', 1, 0),
(2653, 171, 'BA', 'Bragan&ccedil;a', 1, 0),
(2654, 171, 'CB', 'Castelo Branco', 1, 0),
(2655, 171, 'CO', 'Coimbra', 1, 0),
(2656, 171, 'EV', '&Eacute;vora', 1, 0),
(2657, 171, 'FA', 'Faro', 1, 0),
(2658, 171, 'GU', 'Guarda', 1, 0),
(2659, 171, 'LE', 'Leiria', 1, 0),
(2660, 171, 'LI', 'Lisboa', 1, 0),
(2661, 171, 'ME', 'Madeira', 1, 0),
(2662, 171, 'PO', 'Portalegre', 1, 0),
(2663, 171, 'PR', 'Porto', 1, 0),
(2664, 171, 'SA', 'Santar&eacute;m', 1, 0),
(2665, 171, 'SE', 'Set&uacute;bal', 1, 0),
(2666, 171, 'VC', 'Viana do Castelo', 1, 0),
(2667, 171, 'VR', 'Vila Real', 1, 0),
(2668, 171, 'VI', 'Viseu', 1, 0),
(2669, 173, 'DW', 'Ad Dawhah', 1, 0),
(2670, 173, 'GW', 'Al Ghuwayriyah', 1, 0),
(2671, 173, 'JM', 'Al Jumayliyah', 1, 0),
(2672, 173, 'KR', 'Al Khawr', 1, 0),
(2673, 173, 'WK', 'Al Wakrah', 1, 0),
(2674, 173, 'RN', 'Ar Rayyan', 1, 0),
(2675, 173, 'JB', 'Jarayan al Batinah', 1, 0),
(2676, 173, 'MS', 'Madinat ash Shamal', 1, 0),
(2677, 173, 'UD', 'Umm Sa\'id', 1, 0),
(2678, 173, 'UL', 'Umm Salal', 1, 0),
(2679, 175, 'AB', 'Alba', 1, 0),
(2680, 175, 'AR', 'Arad', 1, 0),
(2681, 175, 'AG', 'Arges', 1, 0),
(2682, 175, 'BC', 'Bacau', 1, 0),
(2683, 175, 'BH', 'Bihor', 1, 0),
(2684, 175, 'BN', 'Bistrita-Nasaud', 1, 0),
(2685, 175, 'BT', 'Botosani', 1, 0),
(2686, 175, 'BV', 'Brasov', 1, 0),
(2687, 175, 'BR', 'Braila', 1, 0),
(2688, 175, 'B', 'Bucuresti', 1, 0),
(2689, 175, 'BZ', 'Buzau', 1, 0),
(2690, 175, 'CS', 'Caras-Severin', 1, 0),
(2691, 175, 'CL', 'Calarasi', 1, 0),
(2692, 175, 'CJ', 'Cluj', 1, 0),
(2693, 175, 'CT', 'Constanta', 1, 0),
(2694, 175, 'CV', 'Covasna', 1, 0),
(2695, 175, 'DB', 'Dimbovita', 1, 0),
(2696, 175, 'DJ', 'Dolj', 1, 0),
(2697, 175, 'GL', 'Galati', 1, 0),
(2698, 175, 'GR', 'Giurgiu', 1, 0),
(2699, 175, 'GJ', 'Gorj', 1, 0),
(2700, 175, 'HR', 'Harghita', 1, 0),
(2701, 175, 'HD', 'Hunedoara', 1, 0),
(2702, 175, 'IL', 'Ialomita', 1, 0),
(2703, 175, 'IS', 'Iasi', 1, 0),
(2704, 175, 'IF', 'Ilfov', 1, 0),
(2705, 175, 'MM', 'Maramures', 1, 0),
(2706, 175, 'MH', 'Mehedinti', 1, 0),
(2707, 175, 'MS', 'Mures', 1, 0),
(2708, 175, 'NT', 'Neamt', 1, 0),
(2709, 175, 'OT', 'Olt', 1, 0),
(2710, 175, 'PH', 'Prahova', 1, 0),
(2711, 175, 'SM', 'Satu-Mare', 1, 0),
(2712, 175, 'SJ', 'Salaj', 1, 0),
(2713, 175, 'SB', 'Sibiu', 1, 0),
(2714, 175, 'SV', 'Suceava', 1, 0),
(2715, 175, 'TR', 'Teleorman', 1, 0),
(2716, 175, 'TM', 'Timis', 1, 0),
(2717, 175, 'TL', 'Tulcea', 1, 0),
(2718, 175, 'VS', 'Vaslui', 1, 0),
(2719, 175, 'VL', 'Valcea', 1, 0),
(2720, 175, 'VN', 'Vrancea', 1, 0),
(2721, 176, 'AB', 'Abakan', 1, 0),
(2722, 176, 'AG', 'Aginskoye', 1, 0),
(2723, 176, 'AN', 'Anadyr', 1, 0),
(2724, 176, 'AR', 'Arkahangelsk', 1, 0),
(2725, 176, 'AS', 'Astrakhan', 1, 0),
(2726, 176, 'BA', 'Barnaul', 1, 0),
(2727, 176, 'BE', 'Belgorod', 1, 0),
(2728, 176, 'BI', 'Birobidzhan', 1, 0),
(2729, 176, 'BL', 'Blagoveshchensk', 1, 0),
(2730, 176, 'BR', 'Bryansk', 1, 0),
(2731, 176, 'CH', 'Cheboksary', 1, 0),
(2732, 176, 'CL', 'Chelyabinsk', 1, 0),
(2733, 176, 'CR', 'Cherkessk', 1, 0),
(2734, 176, 'CI', 'Chita', 1, 0),
(2735, 176, 'DU', 'Dudinka', 1, 0),
(2736, 176, 'EL', 'Elista', 1, 0),
(2737, 176, 'GO', 'Gomo-Altaysk', 1, 0),
(2738, 176, 'GA', 'Gorno-Altaysk', 1, 0),
(2739, 176, 'GR', 'Groznyy', 1, 0),
(2740, 176, 'IR', 'Irkutsk', 1, 0),
(2741, 176, 'IV', 'Ivanovo', 1, 0),
(2742, 176, 'IZ', 'Izhevsk', 1, 0),
(2743, 176, 'KA', 'Kalinigrad', 1, 0),
(2744, 176, 'KL', 'Kaluga', 1, 0),
(2745, 176, 'KS', 'Kasnodar', 1, 0),
(2746, 176, 'KZ', 'Kazan', 1, 0),
(2747, 176, 'KE', 'Kemerovo', 1, 0),
(2748, 176, 'KH', 'Khabarovsk', 1, 0),
(2749, 176, 'KM', 'Khanty-Mansiysk', 1, 0),
(2750, 176, 'KO', 'Kostroma', 1, 0),
(2751, 176, 'KR', 'Krasnodar', 1, 0),
(2752, 176, 'KN', 'Krasnoyarsk', 1, 0),
(2753, 176, 'KU', 'Kudymkar', 1, 0),
(2754, 176, 'KG', 'Kurgan', 1, 0),
(2755, 176, 'KK', 'Kursk', 1, 0),
(2756, 176, 'KY', 'Kyzyl', 1, 0),
(2757, 176, 'LI', 'Lipetsk', 1, 0),
(2758, 176, 'MA', 'Magadan', 1, 0),
(2759, 176, 'MK', 'Makhachkala', 1, 0),
(2760, 176, 'MY', 'Maykop', 1, 0),
(2761, 176, 'MO', 'Moscow', 1, 0),
(2762, 176, 'MU', 'Murmansk', 1, 0),
(2763, 176, 'NA', 'Nalchik', 1, 0),
(2764, 176, 'NR', 'Naryan Mar', 1, 0),
(2765, 176, 'NZ', 'Nazran', 1, 0),
(2766, 176, 'NI', 'Nizhniy Novgorod', 1, 0),
(2767, 176, 'NO', 'Novgorod', 1, 0),
(2768, 176, 'NV', 'Novosibirsk', 1, 0),
(2769, 176, 'OM', 'Omsk', 1, 0),
(2770, 176, 'OR', 'Orel', 1, 0),
(2771, 176, 'OE', 'Orenburg', 1, 0),
(2772, 176, 'PA', 'Palana', 1, 0),
(2773, 176, 'PE', 'Penza', 1, 0),
(2774, 176, 'PR', 'Perm', 1, 0),
(2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy', 1, 0),
(2776, 176, 'PT', 'Petrozavodsk', 1, 0),
(2777, 176, 'PS', 'Pskov', 1, 0),
(2778, 176, 'RO', 'Rostov-na-Donu', 1, 0),
(2779, 176, 'RY', 'Ryazan', 1, 0),
(2780, 176, 'SL', 'Salekhard', 1, 0),
(2781, 176, 'SA', 'Samara', 1, 0),
(2782, 176, 'SR', 'Saransk', 1, 0),
(2783, 176, 'SV', 'Saratov', 1, 0),
(2784, 176, 'SM', 'Smolensk', 1, 0),
(2785, 176, 'SP', 'St. Petersburg', 1, 0),
(2786, 176, 'ST', 'Stavropol', 1, 0),
(2787, 176, 'SY', 'Syktyvkar', 1, 0),
(2788, 176, 'TA', 'Tambov', 1, 0),
(2789, 176, 'TO', 'Tomsk', 1, 0),
(2790, 176, 'TU', 'Tula', 1, 0),
(2791, 176, 'TR', 'Tura', 1, 0),
(2792, 176, 'TV', 'Tver', 1, 0),
(2793, 176, 'TY', 'Tyumen', 1, 0),
(2794, 176, 'UF', 'Ufa', 1, 0),
(2795, 176, 'UL', 'Ul\'yanovsk', 1, 0),
(2796, 176, 'UU', 'Ulan-Ude', 1, 0),
(2797, 176, 'US', 'Ust\'-Ordynskiy', 1, 0),
(2798, 176, 'VL', 'Vladikavkaz', 1, 0),
(2799, 176, 'VA', 'Vladimir', 1, 0),
(2800, 176, 'VV', 'Vladivostok', 1, 0),
(2801, 176, 'VG', 'Volgograd', 1, 0),
(2802, 176, 'VD', 'Vologda', 1, 0),
(2803, 176, 'VO', 'Voronezh', 1, 0),
(2804, 176, 'VY', 'Vyatka', 1, 0),
(2805, 176, 'YA', 'Yakutsk', 1, 0),
(2806, 176, 'YR', 'Yaroslavl', 1, 0),
(2807, 176, 'YE', 'Yekaterinburg', 1, 0),
(2808, 176, 'YO', 'Yoshkar-Ola', 1, 0),
(2809, 177, 'BU', 'Butare', 1, 0),
(2810, 177, 'BY', 'Byumba', 1, 0),
(2811, 177, 'CY', 'Cyangugu', 1, 0),
(2812, 177, 'GK', 'Gikongoro', 1, 0),
(2813, 177, 'GS', 'Gisenyi', 1, 0),
(2814, 177, 'GT', 'Gitarama', 1, 0),
(2815, 177, 'KG', 'Kibungo', 1, 0),
(2816, 177, 'KY', 'Kibuye', 1, 0),
(2817, 177, 'KR', 'Kigali Rurale', 1, 0),
(2818, 177, 'KV', 'Kigali-ville', 1, 0),
(2819, 177, 'RU', 'Ruhengeri', 1, 0),
(2820, 177, 'UM', 'Umutara', 1, 0),
(2821, 178, 'CCN', 'Christ Church Nichola Town', 1, 0);
INSERT INTO `spices_j2store_zones` (`j2store_zone_id`, `country_id`, `zone_code`, `zone_name`, `enabled`, `ordering`) VALUES
(2822, 178, 'SAS', 'Saint Anne Sandy Point', 1, 0),
(2823, 178, 'SGB', 'Saint George Basseterre', 1, 0),
(2824, 178, 'SGG', 'Saint George Gingerland', 1, 0),
(2825, 178, 'SJW', 'Saint James Windward', 1, 0),
(2826, 178, 'SJC', 'Saint John Capesterre', 1, 0),
(2827, 178, 'SJF', 'Saint John Figtree', 1, 0),
(2828, 178, 'SMC', 'Saint Mary Cayon', 1, 0),
(2829, 178, 'CAP', 'Saint Paul Capesterre', 1, 0),
(2830, 178, 'CHA', 'Saint Paul Charlestown', 1, 0),
(2831, 178, 'SPB', 'Saint Peter Basseterre', 1, 0),
(2832, 178, 'STL', 'Saint Thomas Lowland', 1, 0),
(2833, 178, 'STM', 'Saint Thomas Middle Island', 1, 0),
(2834, 178, 'TPP', 'Trinity Palmetto Point', 1, 0),
(2835, 179, 'AR', 'Anse-la-Raye', 1, 0),
(2836, 179, 'CA', 'Castries', 1, 0),
(2837, 179, 'CH', 'Choiseul', 1, 0),
(2838, 179, 'DA', 'Dauphin', 1, 0),
(2839, 179, 'DE', 'Dennery', 1, 0),
(2840, 179, 'GI', 'Gros-Islet', 1, 0),
(2841, 179, 'LA', 'Laborie', 1, 0),
(2842, 179, 'MI', 'Micoud', 1, 0),
(2843, 179, 'PR', 'Praslin', 1, 0),
(2844, 179, 'SO', 'Soufriere', 1, 0),
(2845, 179, 'VF', 'Vieux-Fort', 1, 0),
(2846, 180, 'C', 'Charlotte', 1, 0),
(2847, 180, 'R', 'Grenadines', 1, 0),
(2848, 180, 'A', 'Saint Andrew', 1, 0),
(2849, 180, 'D', 'Saint David', 1, 0),
(2850, 180, 'G', 'Saint George', 1, 0),
(2851, 180, 'P', 'Saint Patrick', 1, 0),
(2852, 181, 'AN', 'A\'ana', 1, 0),
(2853, 181, 'AI', 'Aiga-i-le-Tai', 1, 0),
(2854, 181, 'AT', 'Atua', 1, 0),
(2855, 181, 'FA', 'Fa\'asaleleaga', 1, 0),
(2856, 181, 'GE', 'Gaga\'emauga', 1, 0),
(2857, 181, 'GF', 'Gagaifomauga', 1, 0),
(2858, 181, 'PA', 'Palauli', 1, 0),
(2859, 181, 'SA', 'Satupa\'itea', 1, 0),
(2860, 181, 'TU', 'Tuamasaga', 1, 0),
(2861, 181, 'VF', 'Va\'a-o-Fonoti', 1, 0),
(2862, 181, 'VS', 'Vaisigano', 1, 0),
(2863, 182, 'AC', 'Acquaviva', 1, 0),
(2864, 182, 'BM', 'Borgo Maggiore', 1, 0),
(2865, 182, 'CH', 'Chiesanuova', 1, 0),
(2866, 182, 'DO', 'Domagnano', 1, 0),
(2867, 182, 'FA', 'Faetano', 1, 0),
(2868, 182, 'FI', 'Fiorentino', 1, 0),
(2869, 182, 'MO', 'Montegiardino', 1, 0),
(2870, 182, 'SM', 'Citta di San Marino', 1, 0),
(2871, 182, 'SE', 'Serravalle', 1, 0),
(2872, 183, 'S', 'Sao Tome', 1, 0),
(2873, 183, 'P', 'Principe', 1, 0),
(2874, 184, 'BH', 'Al Bahah', 1, 0),
(2875, 184, 'HS', 'Al Hudud ash Shamaliyah', 1, 0),
(2876, 184, 'JF', 'Al Jawf', 1, 0),
(2877, 184, 'MD', 'Al Madinah', 1, 0),
(2878, 184, 'QS', 'Al Qasim', 1, 0),
(2879, 184, 'RD', 'Ar Riyad', 1, 0),
(2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)', 1, 0),
(2881, 184, 'AS', '\'Asir', 1, 0),
(2882, 184, 'HL', 'Ha\'il', 1, 0),
(2883, 184, 'JZ', 'Jizan', 1, 0),
(2884, 184, 'ML', 'Makkah', 1, 0),
(2885, 184, 'NR', 'Najran', 1, 0),
(2886, 184, 'TB', 'Tabuk', 1, 0),
(2887, 185, 'DA', 'Dakar', 1, 0),
(2888, 185, 'DI', 'Diourbel', 1, 0),
(2889, 185, 'FA', 'Fatick', 1, 0),
(2890, 185, 'KA', 'Kaolack', 1, 0),
(2891, 185, 'KO', 'Kolda', 1, 0),
(2892, 185, 'LO', 'Louga', 1, 0),
(2893, 185, 'MA', 'Matam', 1, 0),
(2894, 185, 'SL', 'Saint-Louis', 1, 0),
(2895, 185, 'TA', 'Tambacounda', 1, 0),
(2896, 185, 'TH', 'Thies', 1, 0),
(2897, 185, 'ZI', 'Ziguinchor', 1, 0),
(2898, 186, 'AP', 'Anse aux Pins', 1, 0),
(2899, 186, 'AB', 'Anse Boileau', 1, 0),
(2900, 186, 'AE', 'Anse Etoile', 1, 0),
(2901, 186, 'AL', 'Anse Louis', 1, 0),
(2902, 186, 'AR', 'Anse Royale', 1, 0),
(2903, 186, 'BL', 'Baie Lazare', 1, 0),
(2904, 186, 'BS', 'Baie Sainte Anne', 1, 0),
(2905, 186, 'BV', 'Beau Vallon', 1, 0),
(2906, 186, 'BA', 'Bel Air', 1, 0),
(2907, 186, 'BO', 'Bel Ombre', 1, 0),
(2908, 186, 'CA', 'Cascade', 1, 0),
(2909, 186, 'GL', 'Glacis', 1, 0),
(2910, 186, 'GM', 'Grand\' Anse (on Mahe)', 1, 0),
(2911, 186, 'GP', 'Grand\' Anse (on Praslin)', 1, 0),
(2912, 186, 'DG', 'La Digue', 1, 0),
(2913, 186, 'RA', 'La Riviere Anglaise', 1, 0),
(2914, 186, 'MB', 'Mont Buxton', 1, 0),
(2915, 186, 'MF', 'Mont Fleuri', 1, 0),
(2916, 186, 'PL', 'Plaisance', 1, 0),
(2917, 186, 'PR', 'Pointe La Rue', 1, 0),
(2918, 186, 'PG', 'Port Glaud', 1, 0),
(2919, 186, 'SL', 'Saint Louis', 1, 0),
(2920, 186, 'TA', 'Takamaka', 1, 0),
(2921, 187, 'E', 'Eastern', 1, 0),
(2922, 187, 'N', 'Northern', 1, 0),
(2923, 187, 'S', 'Southern', 1, 0),
(2924, 187, 'W', 'Western', 1, 0),
(2925, 189, 'BA', 'Banskobystricky', 1, 0),
(2926, 189, 'BR', 'Bratislavsky', 1, 0),
(2927, 189, 'KO', 'Kosicky', 1, 0),
(2928, 189, 'NI', 'Nitriansky', 1, 0),
(2929, 189, 'PR', 'Presovsky', 1, 0),
(2930, 189, 'TC', 'Trenciansky', 1, 0),
(2931, 189, 'TV', 'Trnavsky', 1, 0),
(2932, 189, 'ZI', 'Zilinsky', 1, 0),
(2933, 191, 'CE', 'Central', 1, 0),
(2934, 191, 'CH', 'Choiseul', 1, 0),
(2935, 191, 'GC', 'Guadalcanal', 1, 0),
(2936, 191, 'HO', 'Honiara', 1, 0),
(2937, 191, 'IS', 'Isabel', 1, 0),
(2938, 191, 'MK', 'Makira', 1, 0),
(2939, 191, 'ML', 'Malaita', 1, 0),
(2940, 191, 'RB', 'Rennell and Bellona', 1, 0),
(2941, 191, 'TM', 'Temotu', 1, 0),
(2942, 191, 'WE', 'Western', 1, 0),
(2943, 192, 'AW', 'Awdal', 1, 0),
(2944, 192, 'BK', 'Bakool', 1, 0),
(2945, 192, 'BN', 'Banaadir', 1, 0),
(2946, 192, 'BR', 'Bari', 1, 0),
(2947, 192, 'BY', 'Bay', 1, 0),
(2948, 192, 'GA', 'Galguduud', 1, 0),
(2949, 192, 'GE', 'Gedo', 1, 0),
(2950, 192, 'HI', 'Hiiraan', 1, 0),
(2951, 192, 'JD', 'Jubbada Dhexe', 1, 0),
(2952, 192, 'JH', 'Jubbada Hoose', 1, 0),
(2953, 192, 'MU', 'Mudug', 1, 0),
(2954, 192, 'NU', 'Nugaal', 1, 0),
(2955, 192, 'SA', 'Sanaag', 1, 0),
(2956, 192, 'SD', 'Shabeellaha Dhexe', 1, 0),
(2957, 192, 'SH', 'Shabeellaha Hoose', 1, 0),
(2958, 192, 'SL', 'Sool', 1, 0),
(2959, 192, 'TO', 'Togdheer', 1, 0),
(2960, 192, 'WG', 'Woqooyi Galbeed', 1, 0),
(2961, 193, 'EC', 'Eastern Cape', 1, 0),
(2962, 193, 'FS', 'Free State', 1, 0),
(2963, 193, 'GT', 'Gauteng', 1, 0),
(2964, 193, 'KN', 'KwaZulu-Natal', 1, 0),
(2965, 193, 'LP', 'Limpopo', 1, 0),
(2966, 193, 'MP', 'Mpumalanga', 1, 0),
(2967, 193, 'NW', 'North West', 1, 0),
(2968, 193, 'NC', 'Northern Cape', 1, 0),
(2969, 193, 'WC', 'Western Cape', 1, 0),
(2970, 195, 'CA', 'La Coru&ntilde;a', 1, 0),
(2971, 195, 'AL', '&Aacute;lava', 1, 0),
(2972, 195, 'AB', 'Albacete', 1, 0),
(2973, 195, 'AC', 'Alicante', 1, 0),
(2974, 195, 'AM', 'Almeria', 1, 0),
(2975, 195, 'AS', 'Asturias', 1, 0),
(2976, 195, 'AV', '&Aacute;vila', 1, 0),
(2977, 195, 'BJ', 'Badajoz', 1, 0),
(2978, 195, 'IB', 'Baleares', 1, 0),
(2979, 195, 'BA', 'Barcelona', 1, 0),
(2980, 195, 'BU', 'Burgos', 1, 0),
(2981, 195, 'CC', 'C&aacute;ceres', 1, 0),
(2982, 195, 'CZ', 'C&aacute;diz', 1, 0),
(2983, 195, 'CT', 'Cantabria', 1, 0),
(2984, 195, 'CL', 'Castell&oacute;n', 1, 0),
(2985, 195, 'CE', 'Ceuta', 1, 0),
(2986, 195, 'CR', 'Ciudad Real', 1, 0),
(2987, 195, 'CD', 'C&oacute;rdoba', 1, 0),
(2988, 195, 'CU', 'Cuenca', 1, 0),
(2989, 195, 'GI', 'Girona', 1, 0),
(2990, 195, 'GD', 'Granada', 1, 0),
(2991, 195, 'GJ', 'Guadalajara', 1, 0),
(2992, 195, 'GP', 'Guip&uacute;zcoa', 1, 0),
(2993, 195, 'HL', 'Huelva', 1, 0),
(2994, 195, 'HS', 'Huesca', 1, 0),
(2995, 195, 'JN', 'Ja&eacute;n', 1, 0),
(2996, 195, 'RJ', 'La Rioja', 1, 0),
(2997, 195, 'PM', 'Las Palmas', 1, 0),
(2998, 195, 'LE', 'Leon', 1, 0),
(2999, 195, 'LL', 'Lleida', 1, 0),
(3000, 195, 'LG', 'Lugo', 1, 0),
(3001, 195, 'MD', 'Madrid', 1, 0),
(3002, 195, 'MA', 'Malaga', 1, 0),
(3003, 195, 'ML', 'Melilla', 1, 0),
(3004, 195, 'MU', 'Murcia', 1, 0),
(3005, 195, 'NV', 'Navarra', 1, 0),
(3006, 195, 'OU', 'Ourense', 1, 0),
(3007, 195, 'PL', 'Palencia', 1, 0),
(3008, 195, 'PO', 'Pontevedra', 1, 0),
(3009, 195, 'SL', 'Salamanca', 1, 0),
(3010, 195, 'SC', 'Santa Cruz de Tenerife', 1, 0),
(3011, 195, 'SG', 'Segovia', 1, 0),
(3012, 195, 'SV', 'Sevilla', 1, 0),
(3013, 195, 'SO', 'Soria', 1, 0),
(3014, 195, 'TA', 'Tarragona', 1, 0),
(3015, 195, 'TE', 'Teruel', 1, 0),
(3016, 195, 'TO', 'Toledo', 1, 0),
(3017, 195, 'VC', 'Valencia', 1, 0),
(3018, 195, 'VD', 'Valladolid', 1, 0),
(3019, 195, 'VZ', 'Vizcaya', 1, 0),
(3020, 195, 'ZM', 'Zamora', 1, 0),
(3021, 195, 'ZR', 'Zaragoza', 1, 0),
(3022, 196, 'CE', 'Central', 1, 0),
(3023, 196, 'EA', 'Eastern', 1, 0),
(3024, 196, 'NC', 'North Central', 1, 0),
(3025, 196, 'NO', 'Northern', 1, 0),
(3026, 196, 'NW', 'North Western', 1, 0),
(3027, 196, 'SA', 'Sabaragamuwa', 1, 0),
(3028, 196, 'SO', 'Southern', 1, 0),
(3029, 196, 'UV', 'Uva', 1, 0),
(3030, 196, 'WE', 'Western', 1, 0),
(3031, 197, 'A', 'Ascension', 1, 0),
(3032, 197, 'S', 'Saint Helena', 1, 0),
(3033, 197, 'T', 'Tristan da Cunha', 1, 0),
(3034, 199, 'ANL', 'A\'ali an Nil', 1, 0),
(3035, 199, 'BAM', 'Al Bahr al Ahmar', 1, 0),
(3036, 199, 'BRT', 'Al Buhayrat', 1, 0),
(3037, 199, 'JZR', 'Al Jazirah', 1, 0),
(3038, 199, 'KRT', 'Al Khartum', 1, 0),
(3039, 199, 'QDR', 'Al Qadarif', 1, 0),
(3040, 199, 'WDH', 'Al Wahdah', 1, 0),
(3041, 199, 'ANB', 'An Nil al Abyad', 1, 0),
(3042, 199, 'ANZ', 'An Nil al Azraq', 1, 0),
(3043, 199, 'ASH', 'Ash Shamaliyah', 1, 0),
(3044, 199, 'BJA', 'Bahr al Jabal', 1, 0),
(3045, 199, 'GIS', 'Gharb al Istiwa\'iyah', 1, 0),
(3046, 199, 'GBG', 'Gharb Bahr al Ghazal', 1, 0),
(3047, 199, 'GDA', 'Gharb Darfur', 1, 0),
(3048, 199, 'GKU', 'Gharb Kurdufan', 1, 0),
(3049, 199, 'JDA', 'Janub Darfur', 1, 0),
(3050, 199, 'JKU', 'Janub Kurdufan', 1, 0),
(3051, 199, 'JQL', 'Junqali', 1, 0),
(3052, 199, 'KSL', 'Kassala', 1, 0),
(3053, 199, 'NNL', 'Nahr an Nil', 1, 0),
(3054, 199, 'SBG', 'Shamal Bahr al Ghazal', 1, 0),
(3055, 199, 'SDA', 'Shamal Darfur', 1, 0),
(3056, 199, 'SKU', 'Shamal Kurdufan', 1, 0),
(3057, 199, 'SIS', 'Sharq al Istiwa\'iyah', 1, 0),
(3058, 199, 'SNR', 'Sinnar', 1, 0),
(3059, 199, 'WRB', 'Warab', 1, 0),
(3060, 200, 'BR', 'Brokopondo', 1, 0),
(3061, 200, 'CM', 'Commewijne', 1, 0),
(3062, 200, 'CR', 'Coronie', 1, 0),
(3063, 200, 'MA', 'Marowijne', 1, 0),
(3064, 200, 'NI', 'Nickerie', 1, 0),
(3065, 200, 'PA', 'Para', 1, 0),
(3066, 200, 'PM', 'Paramaribo', 1, 0),
(3067, 200, 'SA', 'Saramacca', 1, 0),
(3068, 200, 'SI', 'Sipaliwini', 1, 0),
(3069, 200, 'WA', 'Wanica', 1, 0),
(3070, 202, 'H', 'Hhohho', 1, 0),
(3071, 202, 'L', 'Lubombo', 1, 0),
(3072, 202, 'M', 'Manzini', 1, 0),
(3073, 202, 'S', 'Shishelweni', 1, 0),
(3074, 203, 'K', 'Blekinge', 1, 0),
(3075, 203, 'W', 'Dalama', 1, 0),
(3076, 203, 'X', 'G&auml;vleborg', 1, 0),
(3077, 203, 'I', 'Gotland', 1, 0),
(3078, 203, 'N', 'Halland', 1, 0),
(3079, 203, 'Z', 'J&auml;mtland', 1, 0),
(3080, 203, 'F', 'J&ouml;nk&ouml;ping', 1, 0),
(3081, 203, 'H', 'Kalmar', 1, 0),
(3082, 203, 'G', 'Kronoberg', 1, 0),
(3083, 203, 'BD', 'Norrbotten', 1, 0),
(3084, 203, 'T', '&Ouml;rebro', 1, 0),
(3085, 203, 'E', '&Ouml;sterg&ouml;tland', 1, 0),
(3086, 203, 'M', 'Sk&aring;ne', 1, 0),
(3087, 203, 'D', 'S&ouml;dermanland', 1, 0),
(3088, 203, 'AB', 'Stockholm', 1, 0),
(3089, 203, 'C', 'Uppsala', 1, 0),
(3090, 203, 'S', 'V&auml;rmland', 1, 0),
(3091, 203, 'AC', 'V&auml;sterbotten', 1, 0),
(3092, 203, 'Y', 'V&auml;sternorrland', 1, 0),
(3093, 203, 'U', 'V&auml;stmanland', 1, 0),
(3094, 203, 'O', 'V&auml;stra G&ouml;taland', 1, 0),
(3095, 204, 'AG', 'Aargau', 1, 0),
(3096, 204, 'AR', 'Appenzell Ausserrhoden', 1, 0),
(3097, 204, 'AI', 'Appenzell Innerrhoden', 1, 0),
(3098, 204, 'BS', 'Basel-Stadt', 1, 0),
(3099, 204, 'BL', 'Basel-Landschaft', 1, 0),
(3100, 204, 'BE', 'Bern', 1, 0),
(3101, 204, 'FR', 'Fribourg', 1, 0),
(3102, 204, 'GE', 'Gen&egrave;ve', 1, 0),
(3103, 204, 'GL', 'Glarus', 1, 0),
(3104, 204, 'GR', 'Graub&uuml;nden', 1, 0),
(3105, 204, 'JU', 'Jura', 1, 0),
(3106, 204, 'LU', 'Luzern', 1, 0),
(3107, 204, 'NE', 'Neuch&acirc;tel', 1, 0),
(3108, 204, 'NW', 'Nidwald', 1, 0),
(3109, 204, 'OW', 'Obwald', 1, 0),
(3110, 204, 'SG', 'St. Gallen', 1, 0),
(3111, 204, 'SH', 'Schaffhausen', 1, 0),
(3112, 204, 'SZ', 'Schwyz', 1, 0),
(3113, 204, 'SO', 'Solothurn', 1, 0),
(3114, 204, 'TG', 'Thurgau', 1, 0),
(3115, 204, 'TI', 'Ticino', 1, 0),
(3116, 204, 'UR', 'Uri', 1, 0),
(3117, 204, 'VS', 'Valais', 1, 0),
(3118, 204, 'VD', 'Vaud', 1, 0),
(3119, 204, 'ZG', 'Zug', 1, 0),
(3120, 204, 'ZH', 'Z&uuml;rich', 1, 0),
(3121, 205, 'HA', 'Al Hasakah', 1, 0),
(3122, 205, 'LA', 'Al Ladhiqiyah', 1, 0),
(3123, 205, 'QU', 'Al Qunaytirah', 1, 0),
(3124, 205, 'RQ', 'Ar Raqqah', 1, 0),
(3125, 205, 'SU', 'As Suwayda', 1, 0),
(3126, 205, 'DA', 'Dara', 1, 0),
(3127, 205, 'DZ', 'Dayr az Zawr', 1, 0),
(3128, 205, 'DI', 'Dimashq', 1, 0),
(3129, 205, 'HL', 'Halab', 1, 0),
(3130, 205, 'HM', 'Hamah', 1, 0),
(3131, 205, 'HI', 'Hims', 1, 0),
(3132, 205, 'ID', 'Idlib', 1, 0),
(3133, 205, 'RD', 'Rif Dimashq', 1, 0),
(3134, 205, 'TA', 'Tartus', 1, 0),
(3135, 206, 'CH', 'Chang-hua', 1, 0),
(3136, 206, 'CI', 'Chia-i', 1, 0),
(3137, 206, 'HS', 'Hsin-chu', 1, 0),
(3138, 206, 'HL', 'Hua-lien', 1, 0),
(3139, 206, 'IL', 'I-lan', 1, 0),
(3140, 206, 'KH', 'Kao-hsiung county', 1, 0),
(3141, 206, 'KM', 'Kin-men', 1, 0),
(3142, 206, 'LC', 'Lien-chiang', 1, 0),
(3143, 206, 'ML', 'Miao-li', 1, 0),
(3144, 206, 'NT', 'Nan-t\'ou', 1, 0),
(3145, 206, 'PH', 'P\'eng-hu', 1, 0),
(3146, 206, 'PT', 'P\'ing-tung', 1, 0),
(3147, 206, 'TG', 'T\'ai-chung', 1, 0),
(3148, 206, 'TA', 'T\'ai-nan', 1, 0),
(3149, 206, 'TP', 'T\'ai-pei county', 1, 0),
(3150, 206, 'TT', 'T\'ai-tung', 1, 0),
(3151, 206, 'TY', 'T\'ao-yuan', 1, 0),
(3152, 206, 'YL', 'Yun-lin', 1, 0),
(3153, 206, 'CC', 'Chia-i city', 1, 0),
(3154, 206, 'CL', 'Chi-lung', 1, 0),
(3155, 206, 'HC', 'Hsin-chu', 1, 0),
(3156, 206, 'TH', 'T\'ai-chung', 1, 0),
(3157, 206, 'TN', 'T\'ai-nan', 1, 0),
(3158, 206, 'KC', 'Kao-hsiung city', 1, 0),
(3159, 206, 'TC', 'T\'ai-pei city', 1, 0),
(3160, 207, 'GB', 'Gorno-Badakhstan', 1, 0),
(3161, 207, 'KT', 'Khatlon', 1, 0),
(3162, 207, 'SU', 'Sughd', 1, 0),
(3163, 208, 'AR', 'Arusha', 1, 0),
(3164, 208, 'DS', 'Dar es Salaam', 1, 0),
(3165, 208, 'DO', 'Dodoma', 1, 0),
(3166, 208, 'IR', 'Iringa', 1, 0),
(3167, 208, 'KA', 'Kagera', 1, 0),
(3168, 208, 'KI', 'Kigoma', 1, 0),
(3169, 208, 'KJ', 'Kilimanjaro', 1, 0),
(3170, 208, 'LN', 'Lindi', 1, 0),
(3171, 208, 'MY', 'Manyara', 1, 0),
(3172, 208, 'MR', 'Mara', 1, 0),
(3173, 208, 'MB', 'Mbeya', 1, 0),
(3174, 208, 'MO', 'Morogoro', 1, 0),
(3175, 208, 'MT', 'Mtwara', 1, 0),
(3176, 208, 'MW', 'Mwanza', 1, 0),
(3177, 208, 'PN', 'Pemba North', 1, 0),
(3178, 208, 'PS', 'Pemba South', 1, 0),
(3179, 208, 'PW', 'Pwani', 1, 0),
(3180, 208, 'RK', 'Rukwa', 1, 0),
(3181, 208, 'RV', 'Ruvuma', 1, 0),
(3182, 208, 'SH', 'Shinyanga', 1, 0),
(3183, 208, 'SI', 'Singida', 1, 0),
(3184, 208, 'TB', 'Tabora', 1, 0),
(3185, 208, 'TN', 'Tanga', 1, 0),
(3186, 208, 'ZC', 'Zanzibar Central/South', 1, 0),
(3187, 208, 'ZN', 'Zanzibar North', 1, 0),
(3188, 208, 'ZU', 'Zanzibar Urban/West', 1, 0),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1, 0),
(3190, 209, 'Ang Thong', 'Ang Thong', 1, 0),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1, 0),
(3192, 209, 'Bangkok', 'Bangkok', 1, 0),
(3193, 209, 'Buriram', 'Buriram', 1, 0),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1, 0),
(3195, 209, 'Chai Nat', 'Chai Nat', 1, 0),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1, 0),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1, 0),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1, 0),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1, 0),
(3200, 209, 'Chon Buri', 'Chon Buri', 1, 0),
(3201, 209, 'Chumphon', 'Chumphon', 1, 0),
(3202, 209, 'Kalasin', 'Kalasin', 1, 0),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1, 0),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1, 0),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1, 0),
(3206, 209, 'Krabi', 'Krabi', 1, 0),
(3207, 209, 'Lampang', 'Lampang', 1, 0),
(3208, 209, 'Lamphun', 'Lamphun', 1, 0),
(3209, 209, 'Loei', 'Loei', 1, 0),
(3210, 209, 'Lop Buri', 'Lop Buri', 1, 0),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1, 0),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1, 0),
(3213, 209, 'Mukdahan', 'Mukdahan', 1, 0),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1, 0),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1, 0),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1, 0),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1, 0),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1, 0),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1, 0),
(3220, 209, 'Nan', 'Nan', 1, 0),
(3221, 209, 'Narathiwat', 'Narathiwat', 1, 0),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1, 0),
(3223, 209, 'Nong Khai', 'Nong Khai', 1, 0),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1, 0),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1, 0),
(3226, 209, 'Pattani', 'Pattani', 1, 0),
(3227, 209, 'Phangnga', 'Phangnga', 1, 0),
(3228, 209, 'Phatthalung', 'Phatthalung', 1, 0),
(3229, 209, 'Phayao', 'Phayao', 1, 0),
(3230, 209, 'Phetchabun', 'Phetchabun', 1, 0),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1, 0),
(3232, 209, 'Phichit', 'Phichit', 1, 0),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1, 0),
(3234, 209, 'Phrae', 'Phrae', 1, 0),
(3235, 209, 'Phuket', 'Phuket', 1, 0),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1, 0),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1, 0),
(3238, 209, 'Ranong', 'Ranong', 1, 0),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1, 0),
(3240, 209, 'Rayong', 'Rayong', 1, 0),
(3241, 209, 'Roi Et', 'Roi Et', 1, 0),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1, 0),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1, 0),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1, 0),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1, 0),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1, 0),
(3247, 209, 'Sara Buri', 'Sara Buri', 1, 0),
(3248, 209, 'Satun', 'Satun', 1, 0),
(3249, 209, 'Sing Buri', 'Sing Buri', 1, 0),
(3250, 209, 'Sisaket', 'Sisaket', 1, 0),
(3251, 209, 'Songkhla', 'Songkhla', 1, 0),
(3252, 209, 'Sukhothai', 'Sukhothai', 1, 0),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1, 0),
(3254, 209, 'Surat Thani', 'Surat Thani', 1, 0),
(3255, 209, 'Surin', 'Surin', 1, 0),
(3256, 209, 'Tak', 'Tak', 1, 0),
(3257, 209, 'Trang', 'Trang', 1, 0),
(3258, 209, 'Trat', 'Trat', 1, 0),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1, 0),
(3260, 209, 'Udon Thani', 'Udon Thani', 1, 0),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1, 0),
(3262, 209, 'Uttaradit', 'Uttaradit', 1, 0),
(3263, 209, 'Yala', 'Yala', 1, 0),
(3264, 209, 'Yasothon', 'Yasothon', 1, 0),
(3265, 210, 'K', 'Kara', 1, 0),
(3266, 210, 'P', 'Plateaux', 1, 0),
(3267, 210, 'S', 'Savanes', 1, 0),
(3268, 210, 'C', 'Centrale', 1, 0),
(3269, 210, 'M', 'Maritime', 1, 0),
(3270, 211, 'A', 'Atafu', 1, 0),
(3271, 211, 'F', 'Fakaofo', 1, 0),
(3272, 211, 'N', 'Nukunonu', 1, 0),
(3273, 212, 'H', 'Ha\'apai', 1, 0),
(3274, 212, 'T', 'Tongatapu', 1, 0),
(3275, 212, 'V', 'Vava\'u', 1, 0),
(3276, 213, 'CT', 'Couva/Tabaquite/Talparo', 1, 0),
(3277, 213, 'DM', 'Diego Martin', 1, 0),
(3278, 213, 'MR', 'Mayaro/Rio Claro', 1, 0),
(3279, 213, 'PD', 'Penal/Debe', 1, 0),
(3280, 213, 'PT', 'Princes Town', 1, 0),
(3281, 213, 'SG', 'Sangre Grande', 1, 0),
(3282, 213, 'SL', 'San Juan/Laventille', 1, 0),
(3283, 213, 'SI', 'Siparia', 1, 0),
(3284, 213, 'TP', 'Tunapuna/Piarco', 1, 0),
(3285, 213, 'PS', 'Port of Spain', 1, 0),
(3286, 213, 'SF', 'San Fernando', 1, 0),
(3287, 213, 'AR', 'Arima', 1, 0),
(3288, 213, 'PF', 'Point Fortin', 1, 0),
(3289, 213, 'CH', 'Chaguanas', 1, 0),
(3290, 213, 'TO', 'Tobago', 1, 0),
(3291, 214, 'AR', 'Ariana', 1, 0),
(3292, 214, 'BJ', 'Beja', 1, 0),
(3293, 214, 'BA', 'Ben Arous', 1, 0),
(3294, 214, 'BI', 'Bizerte', 1, 0),
(3295, 214, 'GB', 'Gabes', 1, 0),
(3296, 214, 'GF', 'Gafsa', 1, 0),
(3297, 214, 'JE', 'Jendouba', 1, 0),
(3298, 214, 'KR', 'Kairouan', 1, 0),
(3299, 214, 'KS', 'Kasserine', 1, 0),
(3300, 214, 'KB', 'Kebili', 1, 0),
(3301, 214, 'KF', 'Kef', 1, 0),
(3302, 214, 'MH', 'Mahdia', 1, 0),
(3303, 214, 'MN', 'Manouba', 1, 0),
(3304, 214, 'ME', 'Medenine', 1, 0),
(3305, 214, 'MO', 'Monastir', 1, 0),
(3306, 214, 'NA', 'Nabeul', 1, 0),
(3307, 214, 'SF', 'Sfax', 1, 0),
(3308, 214, 'SD', 'Sidi', 1, 0),
(3309, 214, 'SL', 'Siliana', 1, 0),
(3310, 214, 'SO', 'Sousse', 1, 0),
(3311, 214, 'TA', 'Tataouine', 1, 0),
(3312, 214, 'TO', 'Tozeur', 1, 0),
(3313, 214, 'TU', 'Tunis', 1, 0),
(3314, 214, 'ZA', 'Zaghouan', 1, 0),
(3315, 215, 'ADA', 'Adana', 1, 0),
(3316, 215, 'ADI', 'Adiyaman', 1, 0),
(3317, 215, 'AFY', 'Afyonkarahisar', 1, 0),
(3318, 215, 'AGR', 'Agri', 1, 0),
(3319, 215, 'AKS', 'Aksaray', 1, 0),
(3320, 215, 'AMA', 'Amasya', 1, 0),
(3321, 215, 'ANK', 'Ankara', 1, 0),
(3322, 215, 'ANT', 'Antalya', 1, 0),
(3323, 215, 'ARD', 'Ardahan', 1, 0),
(3324, 215, 'ART', 'Artvin', 1, 0),
(3325, 215, 'AYI', 'Aydin', 1, 0),
(3326, 215, 'BAL', 'Balikesir', 1, 0),
(3327, 215, 'BAR', 'Bartin', 1, 0),
(3328, 215, 'BAT', 'Batman', 1, 0),
(3329, 215, 'BAY', 'Bayburt', 1, 0),
(3330, 215, 'BIL', 'Bilecik', 1, 0),
(3331, 215, 'BIN', 'Bingol', 1, 0),
(3332, 215, 'BIT', 'Bitlis', 1, 0),
(3333, 215, 'BOL', 'Bolu', 1, 0),
(3334, 215, 'BRD', 'Burdur', 1, 0),
(3335, 215, 'BRS', 'Bursa', 1, 0),
(3336, 215, 'CKL', 'Canakkale', 1, 0),
(3337, 215, 'CKR', 'Cankiri', 1, 0),
(3338, 215, 'COR', 'Corum', 1, 0),
(3339, 215, 'DEN', 'Denizli', 1, 0),
(3340, 215, 'DIY', 'Diyarbakir', 1, 0),
(3341, 215, 'DUZ', 'Duzce', 1, 0),
(3342, 215, 'EDI', 'Edirne', 1, 0),
(3343, 215, 'ELA', 'Elazig', 1, 0),
(3344, 215, 'EZC', 'Erzincan', 1, 0),
(3345, 215, 'EZR', 'Erzurum', 1, 0),
(3346, 215, 'ESK', 'Eskisehir', 1, 0),
(3347, 215, 'GAZ', 'Gaziantep', 1, 0),
(3348, 215, 'GIR', 'Giresun', 1, 0),
(3349, 215, 'GMS', 'Gumushane', 1, 0),
(3350, 215, 'HKR', 'Hakkari', 1, 0),
(3351, 215, 'HTY', 'Hatay', 1, 0),
(3352, 215, 'IGD', 'Igdir', 1, 0),
(3353, 215, 'ISP', 'Isparta', 1, 0),
(3354, 215, 'IST', 'Istanbul', 1, 0),
(3355, 215, 'IZM', 'Izmir', 1, 0),
(3356, 215, 'KAH', 'Kahramanmaras', 1, 0),
(3357, 215, 'KRB', 'Karabuk', 1, 0),
(3358, 215, 'KRM', 'Karaman', 1, 0),
(3359, 215, 'KRS', 'Kars', 1, 0),
(3360, 215, 'KAS', 'Kastamonu', 1, 0),
(3361, 215, 'KAY', 'Kayseri', 1, 0),
(3362, 215, 'KLS', 'Kilis', 1, 0),
(3363, 215, 'KRK', 'Kirikkale', 1, 0),
(3364, 215, 'KLR', 'Kirklareli', 1, 0),
(3365, 215, 'KRH', 'Kirsehir', 1, 0),
(3366, 215, 'KOC', 'Kocaeli', 1, 0),
(3367, 215, 'KON', 'Konya', 1, 0),
(3368, 215, 'KUT', 'Kutahya', 1, 0),
(3369, 215, 'MAL', 'Malatya', 1, 0),
(3370, 215, 'MAN', 'Manisa', 1, 0),
(3371, 215, 'MAR', 'Mardin', 1, 0),
(3372, 215, 'MER', 'Mersin', 1, 0),
(3373, 215, 'MUG', 'Mugla', 1, 0),
(3374, 215, 'MUS', 'Mus', 1, 0),
(3375, 215, 'NEV', 'Nevsehir', 1, 0),
(3376, 215, 'NIG', 'Nigde', 1, 0),
(3377, 215, 'ORD', 'Ordu', 1, 0),
(3378, 215, 'OSM', 'Osmaniye', 1, 0),
(3379, 215, 'RIZ', 'Rize', 1, 0),
(3380, 215, 'SAK', 'Sakarya', 1, 0),
(3381, 215, 'SAM', 'Samsun', 1, 0),
(3382, 215, 'SAN', 'Sanliurfa', 1, 0),
(3383, 215, 'SII', 'Siirt', 1, 0),
(3384, 215, 'SIN', 'Sinop', 1, 0),
(3385, 215, 'SIR', 'Sirnak', 1, 0),
(3386, 215, 'SIV', 'Sivas', 1, 0),
(3387, 215, 'TEL', 'Tekirdag', 1, 0),
(3388, 215, 'TOK', 'Tokat', 1, 0),
(3389, 215, 'TRA', 'Trabzon', 1, 0),
(3390, 215, 'TUN', 'Tunceli', 1, 0),
(3391, 215, 'USK', 'Usak', 1, 0),
(3392, 215, 'VAN', 'Van', 1, 0),
(3393, 215, 'YAL', 'Yalova', 1, 0),
(3394, 215, 'YOZ', 'Yozgat', 1, 0),
(3395, 215, 'ZON', 'Zonguldak', 1, 0),
(3396, 216, 'A', 'Ahal Welayaty', 1, 0),
(3397, 216, 'B', 'Balkan Welayaty', 1, 0),
(3398, 216, 'D', 'Dashhowuz Welayaty', 1, 0),
(3399, 216, 'L', 'Lebap Welayaty', 1, 0),
(3400, 216, 'M', 'Mary Welayaty', 1, 0),
(3401, 217, 'AC', 'Ambergris Cays', 1, 0),
(3402, 217, 'DC', 'Dellis Cay', 1, 0),
(3403, 217, 'FC', 'French Cay', 1, 0),
(3404, 217, 'LW', 'Little Water Cay', 1, 0),
(3405, 217, 'RC', 'Parrot Cay', 1, 0),
(3406, 217, 'PN', 'Pine Cay', 1, 0),
(3407, 217, 'SL', 'Salt Cay', 1, 0),
(3408, 217, 'GT', 'Grand Turk', 1, 0),
(3409, 217, 'SC', 'South Caicos', 1, 0),
(3410, 217, 'EC', 'East Caicos', 1, 0),
(3411, 217, 'MC', 'Middle Caicos', 1, 0),
(3412, 217, 'NC', 'North Caicos', 1, 0),
(3413, 217, 'PR', 'Providenciales', 1, 0),
(3414, 217, 'WC', 'West Caicos', 1, 0),
(3415, 218, 'NMG', 'Nanumanga', 1, 0),
(3416, 218, 'NLK', 'Niulakita', 1, 0),
(3417, 218, 'NTO', 'Niutao', 1, 0),
(3418, 218, 'FUN', 'Funafuti', 1, 0),
(3419, 218, 'NME', 'Nanumea', 1, 0),
(3420, 218, 'NUI', 'Nui', 1, 0),
(3421, 218, 'NFT', 'Nukufetau', 1, 0),
(3422, 218, 'NLL', 'Nukulaelae', 1, 0),
(3423, 218, 'VAI', 'Vaitupu', 1, 0),
(3424, 219, 'KAL', 'Kalangala', 1, 0),
(3425, 219, 'KMP', 'Kampala', 1, 0),
(3426, 219, 'KAY', 'Kayunga', 1, 0),
(3427, 219, 'KIB', 'Kiboga', 1, 0),
(3428, 219, 'LUW', 'Luwero', 1, 0),
(3429, 219, 'MAS', 'Masaka', 1, 0),
(3430, 219, 'MPI', 'Mpigi', 1, 0),
(3431, 219, 'MUB', 'Mubende', 1, 0),
(3432, 219, 'MUK', 'Mukono', 1, 0),
(3433, 219, 'NKS', 'Nakasongola', 1, 0),
(3434, 219, 'RAK', 'Rakai', 1, 0),
(3435, 219, 'SEM', 'Sembabule', 1, 0),
(3436, 219, 'WAK', 'Wakiso', 1, 0),
(3437, 219, 'BUG', 'Bugiri', 1, 0),
(3438, 219, 'BUS', 'Busia', 1, 0),
(3439, 219, 'IGA', 'Iganga', 1, 0),
(3440, 219, 'JIN', 'Jinja', 1, 0),
(3441, 219, 'KAB', 'Kaberamaido', 1, 0),
(3442, 219, 'KML', 'Kamuli', 1, 0),
(3443, 219, 'KPC', 'Kapchorwa', 1, 0),
(3444, 219, 'KTK', 'Katakwi', 1, 0),
(3445, 219, 'KUM', 'Kumi', 1, 0),
(3446, 219, 'MAY', 'Mayuge', 1, 0),
(3447, 219, 'MBA', 'Mbale', 1, 0),
(3448, 219, 'PAL', 'Pallisa', 1, 0),
(3449, 219, 'SIR', 'Sironko', 1, 0),
(3450, 219, 'SOR', 'Soroti', 1, 0),
(3451, 219, 'TOR', 'Tororo', 1, 0),
(3452, 219, 'ADJ', 'Adjumani', 1, 0),
(3453, 219, 'APC', 'Apac', 1, 0),
(3454, 219, 'ARU', 'Arua', 1, 0),
(3455, 219, 'GUL', 'Gulu', 1, 0),
(3456, 219, 'KIT', 'Kitgum', 1, 0),
(3457, 219, 'KOT', 'Kotido', 1, 0),
(3458, 219, 'LIR', 'Lira', 1, 0),
(3459, 219, 'MRT', 'Moroto', 1, 0),
(3460, 219, 'MOY', 'Moyo', 1, 0),
(3461, 219, 'NAK', 'Nakapiripirit', 1, 0),
(3462, 219, 'NEB', 'Nebbi', 1, 0),
(3463, 219, 'PAD', 'Pader', 1, 0),
(3464, 219, 'YUM', 'Yumbe', 1, 0),
(3465, 219, 'BUN', 'Bundibugyo', 1, 0),
(3466, 219, 'BSH', 'Bushenyi', 1, 0),
(3467, 219, 'HOI', 'Hoima', 1, 0),
(3468, 219, 'KBL', 'Kabale', 1, 0),
(3469, 219, 'KAR', 'Kabarole', 1, 0),
(3470, 219, 'KAM', 'Kamwenge', 1, 0),
(3471, 219, 'KAN', 'Kanungu', 1, 0),
(3472, 219, 'KAS', 'Kasese', 1, 0),
(3473, 219, 'KBA', 'Kibaale', 1, 0),
(3474, 219, 'KIS', 'Kisoro', 1, 0),
(3475, 219, 'KYE', 'Kyenjojo', 1, 0),
(3476, 219, 'MSN', 'Masindi', 1, 0),
(3477, 219, 'MBR', 'Mbarara', 1, 0),
(3478, 219, 'NTU', 'Ntungamo', 1, 0),
(3479, 219, 'RUK', 'Rukungiri', 1, 0),
(3480, 220, 'CK', 'Cherkasy', 1, 0),
(3481, 220, 'CH', 'Chernihiv', 1, 0),
(3482, 220, 'CV', 'Chernivtsi', 1, 0),
(3483, 220, 'CR', 'Crimea', 1, 0),
(3484, 220, 'DN', 'Dnipropetrovs\'k', 1, 0),
(3485, 220, 'DO', 'Donets\'k', 1, 0),
(3486, 220, 'IV', 'Ivano-Frankivs\'k', 1, 0),
(3487, 220, 'KL', 'Kharkiv Kherson', 1, 0),
(3488, 220, 'KM', 'Khmel\'nyts\'kyy', 1, 0),
(3489, 220, 'KR', 'Kirovohrad', 1, 0),
(3490, 220, 'KV', 'Kiev', 1, 0),
(3491, 220, 'KY', 'Kyyiv', 1, 0),
(3492, 220, 'LU', 'Luhans\'k', 1, 0),
(3493, 220, 'LV', 'L\'viv', 1, 0),
(3494, 220, 'MY', 'Mykolayiv', 1, 0),
(3495, 220, 'OD', 'Odesa', 1, 0),
(3496, 220, 'PO', 'Poltava', 1, 0),
(3497, 220, 'RI', 'Rivne', 1, 0),
(3498, 220, 'SE', 'Sevastopol', 1, 0),
(3499, 220, 'SU', 'Sumy', 1, 0),
(3500, 220, 'TE', 'Ternopil\'', 1, 0),
(3501, 220, 'VI', 'Vinnytsya', 1, 0),
(3502, 220, 'VO', 'Volyn\'', 1, 0),
(3503, 220, 'ZK', 'Zakarpattya', 1, 0),
(3504, 220, 'ZA', 'Zaporizhzhya', 1, 0),
(3505, 220, 'ZH', 'Zhytomyr', 1, 0),
(3506, 221, 'AZ', 'Abu Zaby', 1, 0),
(3507, 221, 'AJ', '\'Ajman', 1, 0),
(3508, 221, 'FU', 'Al Fujayrah', 1, 0),
(3509, 221, 'SH', 'Ash Shariqah', 1, 0),
(3510, 221, 'DU', 'Dubayy', 1, 0),
(3511, 221, 'RK', 'R\'as al Khaymah', 1, 0),
(3512, 221, 'UQ', 'Umm al Qaywayn', 1, 0),
(3513, 222, 'ABN', 'Aberdeen', 1, 0),
(3514, 222, 'ABNS', 'Aberdeenshire', 1, 0),
(3515, 222, 'ANG', 'Anglesey', 1, 0),
(3516, 222, 'AGS', 'Angus', 1, 0),
(3517, 222, 'ARY', 'Argyll and Bute', 1, 0),
(3518, 222, 'BEDS', 'Bedfordshire', 1, 0),
(3519, 222, 'BERKS', 'Berkshire', 1, 0),
(3520, 222, 'BLA', 'Blaenau Gwent', 1, 0),
(3521, 222, 'BRI', 'Bridgend', 1, 0),
(3522, 222, 'BSTL', 'Bristol', 1, 0),
(3523, 222, 'BUCKS', 'Buckinghamshire', 1, 0),
(3524, 222, 'CAE', 'Caerphilly', 1, 0),
(3525, 222, 'CAMBS', 'Cambridgeshire', 1, 0),
(3526, 222, 'CDF', 'Cardiff', 1, 0),
(3527, 222, 'CARM', 'Carmarthenshire', 1, 0),
(3528, 222, 'CDGN', 'Ceredigion', 1, 0),
(3529, 222, 'CHES', 'Cheshire', 1, 0),
(3530, 222, 'CLACK', 'Clackmannanshire', 1, 0),
(3531, 222, 'CON', 'Conwy', 1, 0),
(3532, 222, 'CORN', 'Cornwall', 1, 0),
(3533, 222, 'DNBG', 'Denbighshire', 1, 0),
(3534, 222, 'DERBY', 'Derbyshire', 1, 0),
(3535, 222, 'DVN', 'Devon', 1, 0),
(3536, 222, 'DOR', 'Dorset', 1, 0),
(3537, 222, 'DGL', 'Dumfries and Galloway', 1, 0),
(3538, 222, 'DUND', 'Dundee', 1, 0),
(3539, 222, 'DHM', 'Durham', 1, 0),
(3540, 222, 'ARYE', 'East Ayrshire', 1, 0),
(3541, 222, 'DUNBE', 'East Dunbartonshire', 1, 0),
(3542, 222, 'LOTE', 'East Lothian', 1, 0),
(3543, 222, 'RENE', 'East Renfrewshire', 1, 0),
(3544, 222, 'ERYS', 'East Riding of Yorkshire', 1, 0),
(3545, 222, 'SXE', 'East Sussex', 1, 0),
(3546, 222, 'EDIN', 'Edinburgh', 1, 0),
(3547, 222, 'ESX', 'Essex', 1, 0),
(3548, 222, 'FALK', 'Falkirk', 1, 0),
(3549, 222, 'FFE', 'Fife', 1, 0),
(3550, 222, 'FLINT', 'Flintshire', 1, 0),
(3551, 222, 'GLAS', 'Glasgow', 1, 0),
(3552, 222, 'GLOS', 'Gloucestershire', 1, 0),
(3553, 222, 'LDN', 'Greater London', 1, 0),
(3554, 222, 'MCH', 'Greater Manchester', 1, 0),
(3555, 222, 'GDD', 'Gwynedd', 1, 0),
(3556, 222, 'HANTS', 'Hampshire', 1, 0),
(3557, 222, 'HWR', 'Herefordshire', 1, 0),
(3558, 222, 'HERTS', 'Hertfordshire', 1, 0),
(3559, 222, 'HLD', 'Highlands', 1, 0),
(3560, 222, 'IVER', 'Inverclyde', 1, 0),
(3561, 222, 'IOW', 'Isle of Wight', 1, 0),
(3562, 222, 'KNT', 'Kent', 1, 0),
(3563, 222, 'LANCS', 'Lancashire', 1, 0),
(3564, 222, 'LEICS', 'Leicestershire', 1, 0),
(3565, 222, 'LINCS', 'Lincolnshire', 1, 0),
(3566, 222, 'MSY', 'Merseyside', 1, 0),
(3567, 222, 'MERT', 'Merthyr Tydfil', 1, 0),
(3568, 222, 'MLOT', 'Midlothian', 1, 0),
(3569, 222, 'MMOUTH', 'Monmouthshire', 1, 0),
(3570, 222, 'MORAY', 'Moray', 1, 0),
(3571, 222, 'NPRTAL', 'Neath Port Talbot', 1, 0),
(3572, 222, 'NEWPT', 'Newport', 1, 0),
(3573, 222, 'NOR', 'Norfolk', 1, 0),
(3574, 222, 'ARYN', 'North Ayrshire', 1, 0),
(3575, 222, 'LANN', 'North Lanarkshire', 1, 0),
(3576, 222, 'YSN', 'North Yorkshire', 1, 0),
(3577, 222, 'NHM', 'Northamptonshire', 1, 0),
(3578, 222, 'NLD', 'Northumberland', 1, 0),
(3579, 222, 'NOT', 'Nottinghamshire', 1, 0),
(3580, 222, 'ORK', 'Orkney Islands', 1, 0),
(3581, 222, 'OFE', 'Oxfordshire', 1, 0),
(3582, 222, 'PEM', 'Pembrokeshire', 1, 0),
(3583, 222, 'PERTH', 'Perth and Kinross', 1, 0),
(3584, 222, 'PWS', 'Powys', 1, 0),
(3585, 222, 'REN', 'Renfrewshire', 1, 0),
(3586, 222, 'RHON', 'Rhondda Cynon Taff', 1, 0),
(3587, 222, 'RUT', 'Rutland', 1, 0),
(3588, 222, 'BOR', 'Scottish Borders', 1, 0),
(3589, 222, 'SHET', 'Shetland Islands', 1, 0),
(3590, 222, 'SPE', 'Shropshire', 1, 0),
(3591, 222, 'SOM', 'Somerset', 1, 0),
(3592, 222, 'ARYS', 'South Ayrshire', 1, 0),
(3593, 222, 'LANS', 'South Lanarkshire', 1, 0),
(3594, 222, 'YSS', 'South Yorkshire', 1, 0),
(3595, 222, 'SFD', 'Staffordshire', 1, 0),
(3596, 222, 'STIR', 'Stirling', 1, 0),
(3597, 222, 'SFK', 'Suffolk', 1, 0),
(3598, 222, 'SRY', 'Surrey', 1, 0),
(3599, 222, 'SWAN', 'Swansea', 1, 0),
(3600, 222, 'TORF', 'Torfaen', 1, 0),
(3601, 222, 'TWR', 'Tyne and Wear', 1, 0),
(3602, 222, 'VGLAM', 'Vale of Glamorgan', 1, 0),
(3603, 222, 'WARKS', 'Warwickshire', 1, 0),
(3604, 222, 'WDUN', 'West Dunbartonshire', 1, 0),
(3605, 222, 'WLOT', 'West Lothian', 1, 0),
(3606, 222, 'WMD', 'West Midlands', 1, 0),
(3607, 222, 'SXW', 'West Sussex', 1, 0),
(3608, 222, 'YSW', 'West Yorkshire', 1, 0),
(3609, 222, 'WIL', 'Western Isles', 1, 0),
(3610, 222, 'WLT', 'Wiltshire', 1, 0),
(3611, 222, 'WORCS', 'Worcestershire', 1, 0),
(3612, 222, 'WRX', 'Wrexham', 1, 0),
(3613, 223, 'AL', 'Alabama', 1, 0),
(3614, 223, 'AK', 'Alaska', 1, 0),
(3615, 223, 'AS', 'American Samoa', 1, 0),
(3616, 223, 'AZ', 'Arizona', 1, 0),
(3617, 223, 'AR', 'Arkansas', 1, 0),
(3618, 223, 'AF', 'Armed Forces Africa', 1, 0),
(3619, 223, 'AA', 'Armed Forces Americas', 1, 0),
(3620, 223, 'AC', 'Armed Forces Canada', 1, 0),
(3621, 223, 'AE', 'Armed Forces Europe', 1, 0),
(3622, 223, 'AM', 'Armed Forces Middle East', 1, 0),
(3623, 223, 'AP', 'Armed Forces Pacific', 1, 0),
(3624, 223, 'CA', 'California', 1, 0),
(3625, 223, 'CO', 'Colorado', 1, 0),
(3626, 223, 'CT', 'Connecticut', 1, 0),
(3627, 223, 'DE', 'Delaware', 1, 0),
(3628, 223, 'DC', 'District of Columbia', 1, 0),
(3629, 223, 'FM', 'Federated States Of Micronesia', 1, 0),
(3630, 223, 'FL', 'Florida', 1, 0),
(3631, 223, 'GA', 'Georgia', 1, 0),
(3632, 223, 'GU', 'Guam', 1, 0),
(3633, 223, 'HI', 'Hawaii', 1, 0),
(3634, 223, 'ID', 'Idaho', 1, 0),
(3635, 223, 'IL', 'Illinois', 1, 0),
(3636, 223, 'IN', 'Indiana', 1, 0),
(3637, 223, 'IA', 'Iowa', 1, 0),
(3638, 223, 'KS', 'Kansas', 1, 0),
(3639, 223, 'KY', 'Kentucky', 1, 0),
(3640, 223, 'LA', 'Louisiana', 1, 0),
(3641, 223, 'ME', 'Maine', 1, 0),
(3642, 223, 'MH', 'Marshall Islands', 1, 0),
(3643, 223, 'MD', 'Maryland', 1, 0),
(3644, 223, 'MA', 'Massachusetts', 1, 0),
(3645, 223, 'MI', 'Michigan', 1, 0),
(3646, 223, 'MN', 'Minnesota', 1, 0),
(3647, 223, 'MS', 'Mississippi', 1, 0),
(3648, 223, 'MO', 'Missouri', 1, 0),
(3649, 223, 'MT', 'Montana', 1, 0),
(3650, 223, 'NE', 'Nebraska', 1, 0),
(3651, 223, 'NV', 'Nevada', 1, 0),
(3652, 223, 'NH', 'New Hampshire', 1, 0),
(3653, 223, 'NJ', 'New Jersey', 1, 0),
(3654, 223, 'NM', 'New Mexico', 1, 0),
(3655, 223, 'NY', 'New York', 1, 0),
(3656, 223, 'NC', 'North Carolina', 1, 0),
(3657, 223, 'ND', 'North Dakota', 1, 0),
(3658, 223, 'MP', 'Northern Mariana Islands', 1, 0),
(3659, 223, 'OH', 'Ohio', 1, 0),
(3660, 223, 'OK', 'Oklahoma', 1, 0),
(3661, 223, 'OR', 'Oregon', 1, 0),
(3662, 223, 'PW', 'Palau', 1, 0),
(3663, 223, 'PA', 'Pennsylvania', 1, 0),
(3664, 223, 'PR', 'Puerto Rico', 1, 0),
(3665, 223, 'RI', 'Rhode Island', 1, 0),
(3666, 223, 'SC', 'South Carolina', 1, 0),
(3667, 223, 'SD', 'South Dakota', 1, 0),
(3668, 223, 'TN', 'Tennessee', 1, 0),
(3669, 223, 'TX', 'Texas', 1, 0),
(3670, 223, 'UT', 'Utah', 1, 0),
(3671, 223, 'VT', 'Vermont', 1, 0),
(3672, 223, 'VI', 'Virgin Islands', 1, 0),
(3673, 223, 'VA', 'Virginia', 1, 0),
(3674, 223, 'WA', 'Washington', 1, 0),
(3675, 223, 'WV', 'West Virginia', 1, 0),
(3676, 223, 'WI', 'Wisconsin', 1, 0),
(3677, 223, 'WY', 'Wyoming', 1, 0),
(3678, 224, 'BI', 'Baker Island', 1, 0),
(3679, 224, 'HI', 'Howland Island', 1, 0),
(3680, 224, 'JI', 'Jarvis Island', 1, 0),
(3681, 224, 'JA', 'Johnston Atoll', 1, 0),
(3682, 224, 'KR', 'Kingman Reef', 1, 0),
(3683, 224, 'MA', 'Midway Atoll', 1, 0),
(3684, 224, 'NI', 'Navassa Island', 1, 0),
(3685, 224, 'PA', 'Palmyra Atoll', 1, 0),
(3686, 224, 'WI', 'Wake Island', 1, 0),
(3687, 225, 'AR', 'Artigas', 1, 0),
(3688, 225, 'CA', 'Canelones', 1, 0),
(3689, 225, 'CL', 'Cerro Largo', 1, 0),
(3690, 225, 'CO', 'Colonia', 1, 0),
(3691, 225, 'DU', 'Durazno', 1, 0),
(3692, 225, 'FS', 'Flores', 1, 0),
(3693, 225, 'FA', 'Florida', 1, 0),
(3694, 225, 'LA', 'Lavalleja', 1, 0),
(3695, 225, 'MA', 'Maldonado', 1, 0),
(3696, 225, 'MO', 'Montevideo', 1, 0),
(3697, 225, 'PA', 'Paysandu', 1, 0),
(3698, 225, 'RN', 'Rio Negro', 1, 0),
(3699, 225, 'RV', 'Rivera', 1, 0),
(3700, 225, 'RO', 'Rocha', 1, 0),
(3701, 225, 'SL', 'Salto', 1, 0),
(3702, 225, 'SJ', 'San Jose', 1, 0),
(3703, 225, 'SO', 'Soriano', 1, 0),
(3704, 225, 'TA', 'Tacuarembo', 1, 0),
(3705, 225, 'TT', 'Treinta y Tres', 1, 0),
(3706, 226, 'AN', 'Andijon', 1, 0),
(3707, 226, 'BU', 'Buxoro', 1, 0),
(3708, 226, 'FA', 'Farg\'ona', 1, 0),
(3709, 226, 'JI', 'Jizzax', 1, 0),
(3710, 226, 'NG', 'Namangan', 1, 0),
(3711, 226, 'NW', 'Navoiy', 1, 0),
(3712, 226, 'QA', 'Qashqadaryo', 1, 0),
(3713, 226, 'QR', 'Qoraqalpog\'iston Republikasi', 1, 0),
(3714, 226, 'SA', 'Samarqand', 1, 0),
(3715, 226, 'SI', 'Sirdaryo', 1, 0),
(3716, 226, 'SU', 'Surxondaryo', 1, 0),
(3717, 226, 'TK', 'Toshkent City', 1, 0),
(3718, 226, 'TO', 'Toshkent Region', 1, 0),
(3719, 226, 'XO', 'Xorazm', 1, 0),
(3720, 227, 'MA', 'Malampa', 1, 0),
(3721, 227, 'PE', 'Penama', 1, 0),
(3722, 227, 'SA', 'Sanma', 1, 0),
(3723, 227, 'SH', 'Shefa', 1, 0),
(3724, 227, 'TA', 'Tafea', 1, 0),
(3725, 227, 'TO', 'Torba', 1, 0),
(3726, 229, 'AM', 'Amazonas', 1, 0),
(3727, 229, 'AN', 'Anzoategui', 1, 0),
(3728, 229, 'AP', 'Apure', 1, 0),
(3729, 229, 'AR', 'Aragua', 1, 0),
(3730, 229, 'BA', 'Barinas', 1, 0),
(3731, 229, 'BO', 'Bolivar', 1, 0),
(3732, 229, 'CA', 'Carabobo', 1, 0),
(3733, 229, 'CO', 'Cojedes', 1, 0),
(3734, 229, 'DA', 'Delta Amacuro', 1, 0),
(3735, 229, 'DF', 'Dependencias Federales', 1, 0),
(3736, 229, 'DI', 'Distrito Federal', 1, 0),
(3737, 229, 'FA', 'Falcon', 1, 0),
(3738, 229, 'GU', 'Guarico', 1, 0),
(3739, 229, 'LA', 'Lara', 1, 0),
(3740, 229, 'ME', 'Merida', 1, 0),
(3741, 229, 'MI', 'Miranda', 1, 0),
(3742, 229, 'MO', 'Monagas', 1, 0),
(3743, 229, 'NE', 'Nueva Esparta', 1, 0),
(3744, 229, 'PO', 'Portuguesa', 1, 0),
(3745, 229, 'SU', 'Sucre', 1, 0),
(3746, 229, 'TA', 'Tachira', 1, 0),
(3747, 229, 'TR', 'Trujillo', 1, 0),
(3748, 229, 'VA', 'Vargas', 1, 0),
(3749, 229, 'YA', 'Yaracuy', 1, 0),
(3750, 229, 'ZU', 'Zulia', 1, 0),
(3751, 230, 'AG', 'An Giang', 1, 0),
(3752, 230, 'BG', 'Bac Giang', 1, 0),
(3753, 230, 'BK', 'Bac Kan', 1, 0),
(3754, 230, 'BL', 'Bac Lieu', 1, 0),
(3755, 230, 'BC', 'Bac Ninh', 1, 0),
(3756, 230, 'BR', 'Ba Ria-Vung Tau', 1, 0),
(3757, 230, 'BN', 'Ben Tre', 1, 0),
(3758, 230, 'BH', 'Binh Dinh', 1, 0),
(3759, 230, 'BU', 'Binh Duong', 1, 0),
(3760, 230, 'BP', 'Binh Phuoc', 1, 0),
(3761, 230, 'BT', 'Binh Thuan', 1, 0),
(3762, 230, 'CM', 'Ca Mau', 1, 0),
(3763, 230, 'CT', 'Can Tho', 1, 0),
(3764, 230, 'CB', 'Cao Bang', 1, 0),
(3765, 230, 'DL', 'Dak Lak', 1, 0),
(3766, 230, 'DG', 'Dak Nong', 1, 0),
(3767, 230, 'DN', 'Da Nang', 1, 0),
(3768, 230, 'DB', 'Dien Bien', 1, 0),
(3769, 230, 'DI', 'Dong Nai', 1, 0),
(3770, 230, 'DT', 'Dong Thap', 1, 0),
(3771, 230, 'GL', 'Gia Lai', 1, 0),
(3772, 230, 'HG', 'Ha Giang', 1, 0),
(3773, 230, 'HD', 'Hai Duong', 1, 0),
(3774, 230, 'HP', 'Hai Phong', 1, 0),
(3775, 230, 'HM', 'Ha Nam', 1, 0),
(3776, 230, 'HI', 'Ha Noi', 1, 0),
(3777, 230, 'HT', 'Ha Tay', 1, 0),
(3778, 230, 'HH', 'Ha Tinh', 1, 0),
(3779, 230, 'HB', 'Hoa Binh', 1, 0),
(3780, 230, 'HC', 'Ho Chi Minh City', 1, 0),
(3781, 230, 'HU', 'Hau Giang', 1, 0),
(3782, 230, 'HY', 'Hung Yen', 1, 0),
(3783, 232, 'C', 'Saint Croix', 1, 0),
(3784, 232, 'J', 'Saint John', 1, 0),
(3785, 232, 'T', 'Saint Thomas', 1, 0),
(3786, 233, 'A', 'Alo', 1, 0),
(3787, 233, 'S', 'Sigave', 1, 0),
(3788, 233, 'W', 'Wallis', 1, 0),
(3789, 235, 'AB', 'Abyan', 1, 0),
(3790, 235, 'AD', 'Adan', 1, 0),
(3791, 235, 'AM', 'Amran', 1, 0),
(3792, 235, 'BA', 'Al Bayda', 1, 0),
(3793, 235, 'DA', 'Ad Dali', 1, 0),
(3794, 235, 'DH', 'Dhamar', 1, 0),
(3795, 235, 'HD', 'Hadramawt', 1, 0),
(3796, 235, 'HJ', 'Hajjah', 1, 0),
(3797, 235, 'HU', 'Al Hudaydah', 1, 0),
(3798, 235, 'IB', 'Ibb', 1, 0),
(3799, 235, 'JA', 'Al Jawf', 1, 0),
(3800, 235, 'LA', 'Lahij', 1, 0),
(3801, 235, 'MA', 'Ma\'rib', 1, 0),
(3802, 235, 'MR', 'Al Mahrah', 1, 0),
(3803, 235, 'MW', 'Al Mahwit', 1, 0),
(3804, 235, 'SD', 'Sa\'dah', 1, 0),
(3805, 235, 'SN', 'San\'a', 1, 0),
(3806, 235, 'SH', 'Shabwah', 1, 0),
(3807, 235, 'TA', 'Ta\'izz', 1, 0),
(3812, 237, 'BC', 'Bas-Congo', 1, 0),
(3813, 237, 'BN', 'Bandundu', 1, 0),
(3814, 237, 'EQ', 'Equateur', 1, 0),
(3815, 237, 'KA', 'Katanga', 1, 0),
(3816, 237, 'KE', 'Kasai-Oriental', 1, 0),
(3817, 237, 'KN', 'Kinshasa', 1, 0),
(3818, 237, 'KW', 'Kasai-Occidental', 1, 0),
(3819, 237, 'MA', 'Maniema', 1, 0),
(3820, 237, 'NK', 'Nord-Kivu', 1, 0),
(3821, 237, 'OR', 'Orientale', 1, 0),
(3822, 237, 'SK', 'Sud-Kivu', 1, 0),
(3823, 238, 'CE', 'Central', 1, 0),
(3824, 238, 'CB', 'Copperbelt', 1, 0),
(3825, 238, 'EA', 'Eastern', 1, 0),
(3826, 238, 'LP', 'Luapula', 1, 0),
(3827, 238, 'LK', 'Lusaka', 1, 0),
(3828, 238, 'NO', 'Northern', 1, 0),
(3829, 238, 'NW', 'North-Western', 1, 0),
(3830, 238, 'SO', 'Southern', 1, 0),
(3831, 238, 'WE', 'Western', 1, 0),
(3832, 239, 'BU', 'Bulawayo', 1, 0),
(3833, 239, 'HA', 'Harare', 1, 0),
(3834, 239, 'ML', 'Manicaland', 1, 0),
(3835, 239, 'MC', 'Mashonaland Central', 1, 0),
(3836, 239, 'ME', 'Mashonaland East', 1, 0),
(3837, 239, 'MW', 'Mashonaland West', 1, 0),
(3838, 239, 'MV', 'Masvingo', 1, 0),
(3839, 239, 'MN', 'Matabeleland North', 1, 0),
(3840, 239, 'MS', 'Matabeleland South', 1, 0),
(3841, 239, 'MD', 'Midlands', 1, 0),
(3842, 105, 'AG', 'Agrigento', 1, 0),
(3843, 105, 'AL', 'Alessandria', 1, 0),
(3844, 105, 'AN', 'Ancona', 1, 0),
(3845, 105, 'AO', 'Aosta', 1, 0),
(3846, 105, 'AR', 'Arezzo', 1, 0),
(3847, 105, 'AP', 'Ascoli Piceno', 1, 0),
(3848, 105, 'AT', 'Asti', 1, 0),
(3849, 105, 'AV', 'Avellino', 1, 0),
(3850, 105, 'BA', 'Bari', 1, 0),
(3851, 105, 'BT', 'Barletta-Andria-Trani', 1, 0),
(3852, 105, 'BL', 'Belluno', 1, 0),
(3853, 105, 'BN', 'Benevento', 1, 0),
(3854, 105, 'BG', 'Bergamo', 1, 0),
(3855, 105, 'BI', 'Biella', 1, 0),
(3856, 105, 'BO', 'Bologna', 1, 0),
(3857, 105, 'BZ', 'Bolzano', 1, 0),
(3858, 105, 'BS', 'Brescia', 1, 0),
(3859, 105, 'BR', 'Brindisi', 1, 0),
(3860, 105, 'CA', 'Cagliari', 1, 0),
(3861, 105, 'CL', 'Caltanissetta', 1, 0),
(3862, 105, 'CB', 'Campobasso', 1, 0),
(3863, 105, 'CI', 'Carbonia-Iglesias', 1, 0),
(3864, 105, 'CE', 'Caserta', 1, 0),
(3865, 105, 'CT', 'Catania', 1, 0),
(3866, 105, 'CZ', 'Catanzaro', 1, 0),
(3867, 105, 'CH', 'Chieti', 1, 0),
(3868, 105, 'CO', 'Como', 1, 0),
(3869, 105, 'CS', 'Cosenza', 1, 0),
(3870, 105, 'CR', 'Cremona', 1, 0),
(3871, 105, 'KR', 'Crotone', 1, 0),
(3872, 105, 'CN', 'Cuneo', 1, 0),
(3873, 105, 'EN', 'Enna', 1, 0),
(3874, 105, 'FM', 'Fermo', 1, 0),
(3875, 105, 'FE', 'Ferrara', 1, 0),
(3876, 105, 'FI', 'Firenze', 1, 0),
(3877, 105, 'FG', 'Foggia', 1, 0),
(3878, 105, 'FC', 'Forl', 1, 0),
(3879, 105, 'FR', 'Frosinone', 1, 0),
(3880, 105, 'GE', 'Genova', 1, 0),
(3881, 105, 'GO', 'Gorizia', 1, 0),
(3882, 105, 'GR', 'Grosseto', 1, 0),
(3883, 105, 'IM', 'Imperia', 1, 0),
(3884, 105, 'IS', 'Isernia', 1, 0),
(3885, 105, 'SP', 'La Spezia', 1, 0),
(3886, 105, 'AQ', 'L\'Aquila', 1, 0),
(3887, 105, 'LT', 'Latina', 1, 0),
(3888, 105, 'LE', 'Lecce', 1, 0),
(3889, 105, 'LC', 'Lecco', 1, 0),
(3890, 105, 'LI', 'Livorno', 1, 0),
(3891, 105, 'LO', 'Lodi', 1, 0),
(3892, 105, 'LU', 'Lucca', 1, 0),
(3893, 105, 'MC', 'Macerata', 1, 0),
(3894, 105, 'MN', 'Mantova', 1, 0),
(3895, 105, 'MS', 'Massa-Carrara', 1, 0),
(3896, 105, 'MT', 'Matera', 1, 0),
(3897, 105, 'ME', 'Messina', 1, 0),
(3898, 105, 'MI', 'Milano', 1, 0),
(3899, 105, 'MO', 'Modena', 1, 0),
(3900, 105, 'MB', 'Monza e della Brianza', 1, 0),
(3901, 105, 'NA', 'Napoli', 1, 0),
(3902, 105, 'NO', 'Novara', 1, 0),
(3903, 105, 'NU', 'Nuoro', 1, 0),
(3904, 105, 'OT', 'Olbia-Tempio', 1, 0),
(3905, 105, 'OR', 'Oristano', 1, 0),
(3906, 105, 'PD', 'Padova', 1, 0),
(3907, 105, 'PA', 'Palermo', 1, 0),
(3908, 105, 'PR', 'Parma', 1, 0),
(3909, 105, 'PV', 'Pavia', 1, 0),
(3910, 105, 'PG', 'Perugia', 1, 0),
(3911, 105, 'PU', 'Pesaro e Urbino', 1, 0),
(3912, 105, 'PE', 'Pescara', 1, 0),
(3913, 105, 'PC', 'Piacenza', 1, 0),
(3914, 105, 'PI', 'Pisa', 1, 0),
(3915, 105, 'PT', 'Pistoia', 1, 0),
(3916, 105, 'PN', 'Pordenone', 1, 0),
(3917, 105, 'PZ', 'Potenza', 1, 0),
(3918, 105, 'PO', 'Prato', 1, 0),
(3919, 105, 'RG', 'Ragusa', 1, 0),
(3920, 105, 'RA', 'Ravenna', 1, 0),
(3921, 105, 'RC', 'Reggio Calabria', 1, 0),
(3922, 105, 'RE', 'Reggio Emilia', 1, 0),
(3923, 105, 'RI', 'Rieti', 1, 0),
(3924, 105, 'RN', 'Rimini', 1, 0),
(3925, 105, 'RM', 'Roma', 1, 0),
(3926, 105, 'RO', 'Rovigo', 1, 0),
(3927, 105, 'SA', 'Salerno', 1, 0),
(3928, 105, 'VS', 'Medio Campidano', 1, 0),
(3929, 105, 'SS', 'Sassari', 1, 0),
(3930, 105, 'SV', 'Savona', 1, 0),
(3931, 105, 'SI', 'Siena', 1, 0),
(3932, 105, 'SR', 'Siracusa', 1, 0),
(3933, 105, 'SO', 'Sondrio', 1, 0),
(3934, 105, 'TA', 'Taranto', 1, 0),
(3935, 105, 'TE', 'Teramo', 1, 0),
(3936, 105, 'TR', 'Terni', 1, 0),
(3937, 105, 'TO', 'Torino', 1, 0),
(3938, 105, 'OG', 'Ogliastra', 1, 0),
(3939, 105, 'TP', 'Trapani', 1, 0),
(3940, 105, 'TN', 'Trento', 1, 0),
(3941, 105, 'TV', 'Treviso', 1, 0),
(3942, 105, 'TS', 'Trieste', 1, 0),
(3943, 105, 'UD', 'Udine', 1, 0),
(3944, 105, 'VA', 'Varese', 1, 0),
(3945, 105, 'VE', 'Venezia', 1, 0),
(3946, 105, 'VB', 'Verbano-Cusio-Ossola', 1, 0),
(3947, 105, 'VC', 'Vercelli', 1, 0),
(3948, 105, 'VR', 'Verona', 1, 0),
(3949, 105, 'VV', 'Vibo Valentia', 1, 0),
(3950, 105, 'VI', 'Vicenza', 1, 0),
(3951, 105, 'VT', 'Viterbo', 1, 0),
(3952, 240, 'VO', 'Vojvodina', 1, 0),
(3953, 240, 'BG', 'Beograd', 1, 0),
(3954, 240, 'ZA', 'Šumadija i Zapadna Srbija', 1, 0),
(3955, 240, 'JI', 'Južna i Istočna Srbija', 1, 0),
(3956, 240, 'KM', 'Kosovo i Metohija', 1, 0),
(3957, 241, 'AN', 'Andrijevica', 1, 0),
(3958, 241, 'BA', 'Berane', 1, 0),
(3959, 241, 'BD', 'Budva', 1, 0),
(3960, 241, 'BP', 'Bijelo Polje', 1, 0),
(3961, 241, 'BR', 'Bar', 1, 0),
(3962, 241, 'CT', 'Cetinje', 1, 0),
(3963, 241, 'DG', 'Danilovgrad', 1, 0),
(3964, 241, 'HN', 'Herceg Novi', 1, 0),
(3965, 241, 'KL', 'Kolašin', 1, 0),
(3966, 241, 'KO', 'Kotor', 1, 0),
(3967, 241, 'MK', 'Mojkovac', 1, 0),
(3968, 241, 'NK', 'Nikšić', 1, 0),
(3969, 241, 'PG', 'Podgorica', 1, 0),
(3970, 241, 'PL', 'Plav', 1, 0),
(3971, 241, 'PŽ', 'Plužine', 1, 0),
(3972, 241, 'PV', 'Pljevlja', 1, 0),
(3973, 241, 'RO', 'Rožaje', 1, 0),
(3974, 241, 'ŠN', 'Šavnik', 1, 0),
(3975, 241, 'TV', 'Tivat', 1, 0),
(3976, 241, 'UL', 'Ulcinj', 1, 0),
(3977, 241, 'ŽB', 'Žabljak', 1, 0),
(3978, 138, 'AG', 'Aguascalientes', 1, 0),
(3979, 83, '83', 'Gibraltar', 1, 0),
(3980, 188, '188', 'Singapore', 1, 0),
(3981, 190, '190', 'Slovenia', 1, 0),
(3982, 222, 'ANT', 'Antrim', 1, 0),
(3983, 222, 'ARM', 'Armagh', 1, 0),
(3984, 222, 'DOW', 'Down', 1, 0),
(3985, 222, 'FER', 'Fermanagh', 1, 0),
(3986, 222, 'DGN', 'Dungannon and South Tyrone', 1, 0),
(3987, 222, 'DRY', 'Derry', 1, 0),
(3988, 118, 'AK', 'Akkar', 1, 0),
(3989, 118, 'BH', 'Baalbek-Hermel', 1, 0),
(3990, 118, 'BA', 'Beirut', 1, 0),
(3991, 118, 'BI', 'Beqaa', 1, 0),
(3992, 118, 'JL', 'Mount Lebanon', 1, 0),
(3993, 118, 'NA', 'Nabatieh', 1, 0),
(3994, 118, 'AS', 'North', 1, 0),
(3995, 118, 'JA', 'South', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_languages`
--

CREATE TABLE `spices_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_languages`
--

INSERT INTO `spices_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spices_menu`
--

CREATE TABLE `spices_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_menu`
--

INSERT INTO `spices_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 47, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(113, 'main', 'J2Store', 'j2store', '', 'j2store', 'index.php?option=com_j2store', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 43, 44, 0, '', 1),
(114, 'mainmenu', 'Shop', 'shop', '', 'shop', 'index.php?option=com_j2store&view=products&catid[0]=8', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"subtemplate\":\"default\",\"orderby_sec\":\"\",\"list_order_direction\":\"ASC\",\"category_order_direction\":\"ASC\",\"order_date\":\"\",\"addtocart_button_class\":\"\",\"choosebtn_class\":\"\",\"show_qty_field\":\"1\",\"product_option_price\":\"1\",\"product_option_price_prefix\":\"1\",\"image_for_product_options\":\"0\",\"breadcrumb_category_inclusion\":\"1\",\"custom_css\":\"\",\"page_limit\":\"20\",\"list_no_of_columns\":\"3\",\"show_subcategory_content\":\"3\",\"show_feature_only\":\"0\",\"list_show_title\":\"1\",\"list_link_title\":\"1\",\"list_show_short_desc\":\"0\",\"list_show_long_desc\":\"0\",\"list_show_product_base_price\":\"1\",\"list_show_product_special_price\":\"1\",\"list_show_discount_percentage\":\"1\",\"list_show_image\":\"1\",\"list_image_type\":\"thumbimage\",\"list_image_thumbnail_width\":\"120\",\"list_image_link_to_product\":\"1\",\"list_show_product_sku\":\"1\",\"list_show_product_stock\":\"1\",\"list_show_cart\":\"1\",\"list_enable_quickview\":\"0\",\"list_show_top_filter\":\"1\",\"list_show_filter\":\"1\",\"list_filter_position\":\"right\",\"list_show_filter_sorting\":\"1\",\"list_show_filter_search\":\"1\",\"list_show_filter_category\":\"1\",\"list_filter_category_toggle\":\"1\",\"list_show_filter_category_all\":\"1\",\"list_show_filter_price\":\"1\",\"list_price_filter_upper_limit\":\"1000\",\"list_price_round_digit\":\"100\",\"list_show_product_filter\":\"1\",\"list_product_filter_list_type\":\"selected\",\"list_product_filter_search_logic_rel\":\"OR\",\"list_filter_productfilter_toggle\":\"1\",\"list_show_manfacturer_filter\":\"1\",\"list_manufacturer_filter_list_type\":\"selected\",\"list_show_vendor_filter\":\"1\",\"list_vendor_filter_list_type\":\"selected\",\"item_show_page_heading\":\"0\",\"item_show_title\":\"1\",\"item_title_headertag\":\"1\",\"item_show_sdesc\":\"1\",\"item_show_ldesc\":\"1\",\"item_show_product_base_price\":\"1\",\"item_show_product_special_price\":\"1\",\"item_show_discount_percentage\":\"1\",\"item_show_product_sku\":\"1\",\"item_show_product_stock\":\"1\",\"item_show_product_main_image\":\"1\",\"item_show_product_additional_image\":\"1\",\"item_product_main_image_width\":\"\",\"item_product_additional_image_width\":\"\",\"item_product_upsell_image_width\":\"\",\"item_product_cross_image_width\":\"\",\"item_enable_image_zoom\":\"1\",\"item_show_product_manufacturer_name\":\"0\",\"item_show_product_upsells\":\"0\",\"item_show_product_cross_sells\":\"0\",\"item_related_product_columns\":\"3\",\"item_show_product_specification\":\"0\",\"item_use_tabs\":\"1\",\"item_show_back_to\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 45, 46, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_menu_types`
--

CREATE TABLE `spices_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_menu_types`
--

INSERT INTO `spices_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_messages`
--

CREATE TABLE `spices_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_messages_cfg`
--

CREATE TABLE `spices_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_modules`
--

CREATE TABLE `spices_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_modules`
--

INSERT INTO `spices_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*'),
(89, 59, 'Privacy Dashboard', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_privacy_dashboard', 6, 1, '{}', 1, '*'),
(90, 61, 'J2 Store Chart', '', '', 1, 'j2store-module-position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_j2store_chart', 1, 1, '', 1, '*'),
(91, 62, 'J2 Store Stats Mini', '', '', 1, 'j2store-module-position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_j2store_stats_mini', 1, 1, '', 1, '*'),
(92, 63, 'J2 Store Orders', '', '', 1, 'j2store-module-position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_j2store_orders', 1, 1, '', 1, '*'),
(93, 64, 'J2 Store Stats', '', '', 1, 'j2store-module-position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_j2store_stats', 1, 1, '', 1, '*'),
(94, 65, 'J2Store Administrator Menu', '', '', 2, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_j2store_menu', 1, 1, '', 1, '*'),
(95, 66, 'J2Store Currency', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_j2store_currency', 1, 1, '', 0, '*'),
(96, 67, 'J2 Store Cart', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_j2store_cart', 1, 1, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `spices_modules_menu`
--

CREATE TABLE `spices_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_modules_menu`
--

INSERT INTO `spices_modules_menu` (`moduleid`, `menuid`) VALUES
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_newsfeeds`
--

CREATE TABLE `spices_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_overrider`
--

CREATE TABLE `spices_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_postinstall_messages`
--

CREATE TABLE `spices_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_postinstall_messages`
--

INSERT INTO `spices_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1),
(10, 700, 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_TITLE', 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_DESCRIPTION', '', 'com_admin', 1, 'message', '', '', '', '', '3.9.27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spices_privacy_consents`
--

CREATE TABLE `spices_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_privacy_requests`
--

CREATE TABLE `spices_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_redirect_links`
--

CREATE TABLE `spices_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(6) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_schemas`
--

CREATE TABLE `spices_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_schemas`
--

INSERT INTO `spices_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.27-2021-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `spices_session`
--

CREATE TABLE `spices_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_session`
--

INSERT INTO `spices_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x6c3976686c6b6e38746f766b6d3064646b766b73616e65713769, 1, 0, 1656006616, 'joomla|s:2880:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo5NTtzOjU6InRva2VuIjtzOjMyOiJuQWFjeDVBNWRxSzB6Y3F3M04wWmpldkNaekFhS1VTSyI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU2MDAzMTQ5O3M6NDoibGFzdCI7aToxNjU2MDA2NjE2O3M6Mzoibm93IjtpOjE2NTYwMDY2MTY7fX1zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Njp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjtzOjEyOiJyZWRpcmVjdF91cmwiO047fXM6MTA6ImNvbV9jb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Imdsb2JhbCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO319fXM6MTE6ImNvbV9wbHVnaW5zIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6InBsdWdpbnMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjU6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo3OiJlbmFibGVkIjtzOjA6IiI7czo2OiJmb2xkZXIiO3M6NzoiY29udGVudCI7czo3OiJlbGVtZW50IjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjt9czo0OiJsaXN0IjthOjQ6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxMDoiZm9sZGVyIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo5OiJzb3J0VGFibGUiO3M6NjoiZm9sZGVyIjtzOjE0OiJkaXJlY3Rpb25UYWJsZSI7czozOiJBU0MiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJwbHVnaW4iO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjg6ImNhdGVnb3J5IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YToyOntpOjA7aTo4O2k6MTtpOjI7fX19fXM6MTE6ImNvbV9jb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiYXJ0aWNsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiMzgyIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX1zOjk6ImNvbV9tZWRpYSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoicmV0dXJuX3VybCI7czoxMTE6ImluZGV4LnBocD9vcHRpb249Y29tX21lZGlhJnZpZXc9aW1hZ2VzJnRtcGw9Y29tcG9uZW50JmZpZWxkaWQ9amZvcm1faW1hZ2VfbWFpbl9pbWFnZSZlX25hbWU9JmFzc2V0PTEmYXV0aG9yPTM4MiI7fX1zOjk6Il9fajJzdG9yZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJjdXJyZW5jeSI7czozOiJVU0QiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 382, 'maxwellwachira'),
(0x7430326d653074626d6d7331673034377569676e347070716a30, 0, 0, 1656006648, 'joomla|s:1248:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE2NTYwMDQxNjc7czo0OiJsYXN0IjtpOjE2NTYwMDY2Mzg7czozOiJub3ciO2k6MTY1NjAwNjY0ODt9czo1OiJ0b2tlbiI7czozMjoiTEM3QVBFT3c0b0pWb09hTzIzTzNKR3M0VWtkNm93bzgiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjIyOiJodHRwOi8vbG9jYWxob3N0OjgwODAvIjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiIzODIiO319czo5OiJfX2oyc3RvcmUiO086ODoic3RkQ2xhc3MiOjY6e3M6MTY6Im1hbnVmYWN0dXJlcl9pZHMiO047czoxMDoidmVuZG9yX2lkcyI7TjtzOjE3OiJwcm9kdWN0ZmlsdGVyX2lkcyI7TjtzOjM2OiJsaXN0X3Byb2R1Y3RfZmlsdGVyX3NlYXJjaF9sb2dpY19yZWwiO047czo4OiJjdXJyZW5jeSI7czozOiJVU0QiO3M6NzoiY2FydF9pZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJjYXJ0IjtpOjE7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 382, 'maxwellwachira');

-- --------------------------------------------------------

--
-- Table structure for table `spices_tags`
--

CREATE TABLE `spices_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_tags`
--

INSERT INTO `spices_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 382, '2022-06-23 16:17:50', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `spices_template_styles`
--

CREATE TABLE `spices_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_template_styles`
--

INSERT INTO `spices_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `spices_ucm_base`
--

CREATE TABLE `spices_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_ucm_content`
--

CREATE TABLE `spices_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint(4) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `spices_ucm_history`
--

CREATE TABLE `spices_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_ucm_history`
--

INSERT INTO `spices_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2022-06-23 17:40:37', 382, 597, '04d76f3897576fa61a1844ae9a83b6b0888a976d', '{\"id\":8,\"asset_id\":68,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Sweet\",\"alias\":\"sweet\",\"note\":\"\",\"description\":\"<p>These are spices that can be used to bake<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"382\",\"created_time\":\"2022-06-23 17:40:37\",\"modified_user_id\":null,\"modified_time\":\"2022-06-23 17:40:37\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(2, 1, 1, '', '2022-06-23 17:43:27', 382, 1830, '1378ca83c161905ef0eae7400cb87bde3c41275d', '{\"id\":1,\"asset_id\":69,\"title\":\"Cinnamon\",\"alias\":\"cinnamon\",\"introtext\":\"<p style=\\\"text-align: center;\\\">Best Cinnamon ever<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2022-06-23 17:43:27\",\"created_by\":\"382\",\"created_by_alias\":\"\",\"modified\":\"2022-06-23 17:43:27\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2022-06-23 17:43:27\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/cinnamon.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(3, 1, 1, '', '2022-06-23 17:44:01', 382, 1849, '090a2c5de5cddbadf3d4f8b4ec54dd37fc7adc8f', '{\"id\":1,\"asset_id\":\"69\",\"title\":\"Cinnamon\",\"alias\":\"cinnamon\",\"introtext\":\"<p style=\\\"text-align: center;\\\">Best Cinnamon ever<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2022-06-23 17:43:27\",\"created_by\":\"382\",\"created_by_alias\":\"\",\"modified\":\"2022-06-23 17:44:01\",\"modified_by\":\"382\",\"checked_out\":\"382\",\"checked_out_time\":\"2022-06-23 17:43:52\",\"publish_up\":\"2022-06-23 17:43:27\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/cinnamon.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_updates`
--

CREATE TABLE `spices_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(4) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `spices_updates`
--

INSERT INTO `spices_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(2, 2, 0, 'Afrikaans', '', '', '', '', 0, '', '', '', '', ''),
(3, 2, 0, 'Albanian', '', '', '', '', 0, '', '', '', '', ''),
(4, 2, 0, 'Arabic Unitag', '', '', '', '', 0, '', '', '', '', ''),
(5, 2, 0, 'Armenian', '', '', '', '', 0, '', '', '', '', ''),
(6, 2, 0, 'Basque', '', '', '', '', 0, '', '', '', '', ''),
(7, 2, 0, 'Belarusian', '', '', '', '', 0, '', '', '', '', ''),
(8, 2, 0, 'Bengali, Bangladesh', '', '', '', '', 0, '', '', '', '', ''),
(9, 2, 0, 'Bosnian', '', '', '', '', 0, '', '', '', '', ''),
(10, 2, 0, 'Bulgarian', '', '', '', '', 0, '', '', '', '', ''),
(11, 2, 0, 'Catalan', '', '', '', '', 0, '', '', '', '', ''),
(12, 2, 0, 'Chinese, Simplified', '', '', '', '', 0, '', '', '', '', ''),
(13, 2, 0, 'Chinese, Traditional', '', '', '', '', 0, '', '', '', '', ''),
(14, 2, 0, 'Croatian', '', '', '', '', 0, '', '', '', '', ''),
(15, 2, 0, 'Czech', '', '', '', '', 0, '', '', '', '', ''),
(16, 2, 0, 'Danish', '', '', '', '', 0, '', '', '', '', ''),
(17, 2, 0, 'Dari Persian', '', '', '', '', 0, '', '', '', '', ''),
(18, 2, 0, 'Dutch', '', '', '', '', 0, '', '', '', '', ''),
(19, 2, 0, 'Dzongkha', '', '', '', '', 0, '', '', '', '', ''),
(20, 2, 0, 'English, Australia', '', '', '', '', 0, '', '', '', '', ''),
(21, 2, 0, 'English, Canada', '', '', '', '', 0, '', '', '', '', ''),
(22, 2, 0, 'English, New Zealand', '', '', '', '', 0, '', '', '', '', ''),
(23, 2, 0, 'English, USA', '', '', '', '', 0, '', '', '', '', ''),
(24, 2, 0, 'Esperanto', '', '', '', '', 0, '', '', '', '', ''),
(25, 2, 0, 'Estonian', '', '', '', '', 0, '', '', '', '', ''),
(26, 2, 0, 'Finnish', '', '', '', '', 0, '', '', '', '', ''),
(27, 2, 0, 'Flemish', '', '', '', '', 0, '', '', '', '', ''),
(28, 2, 0, 'French', '', '', '', '', 0, '', '', '', '', ''),
(29, 2, 0, 'French, Canada', '', '', '', '', 0, '', '', '', '', ''),
(30, 2, 0, 'Galician', '', '', '', '', 0, '', '', '', '', ''),
(31, 2, 0, 'Georgian', '', '', '', '', 0, '', '', '', '', ''),
(32, 2, 0, 'German', '', '', '', '', 0, '', '', '', '', ''),
(33, 2, 0, 'German, Austria', '', '', '', '', 0, '', '', '', '', ''),
(34, 2, 0, 'German, Liechtenstein', '', '', '', '', 0, '', '', '', '', ''),
(35, 2, 0, 'German, Luxembourg', '', '', '', '', 0, '', '', '', '', ''),
(36, 2, 0, 'German, Switzerland', '', '', '', '', 0, '', '', '', '', ''),
(37, 2, 0, 'Greek', '', '', '', '', 0, '', '', '', '', ''),
(38, 2, 0, 'Hebrew', '', '', '', '', 0, '', '', '', '', ''),
(39, 2, 0, 'Hindi, India', '', '', '', '', 0, '', '', '', '', ''),
(40, 2, 0, 'Hungarian', '', '', '', '', 0, '', '', '', '', ''),
(41, 2, 0, 'Indonesian, Bahasa Indonesia', '', '', '', '', 0, '', '', '', '', ''),
(42, 2, 0, 'Irish', '', '', '', '', 0, '', '', '', '', ''),
(43, 2, 0, 'Italian', '', '', '', '', 0, '', '', '', '', ''),
(44, 2, 0, 'Japanese', '', '', '', '', 0, '', '', '', '', ''),
(45, 2, 0, 'Kazakh', '', '', '', '', 0, '', '', '', '', ''),
(46, 2, 0, 'Khmer', '', '', '', '', 0, '', '', '', '', ''),
(47, 2, 0, 'Korean', '', '', '', '', 0, '', '', '', '', ''),
(48, 2, 0, 'Latvian', '', '', '', '', 0, '', '', '', '', ''),
(49, 2, 0, 'Lithuanian', '', '', '', '', 0, '', '', '', '', ''),
(50, 2, 0, 'Macedonian', '', '', '', '', 0, '', '', '', '', ''),
(51, 2, 0, 'Malay', '', '', '', '', 0, '', '', '', '', ''),
(52, 2, 0, 'Montenegrin', '', '', '', '', 0, '', '', '', '', ''),
(53, 2, 0, 'Norwegian Bokmål', '', '', '', '', 0, '', '', '', '', ''),
(54, 2, 0, 'Norwegian Nynorsk', '', '', '', '', 0, '', '', '', '', ''),
(55, 2, 0, 'Persian Farsi', '', '', '', '', 0, '', '', '', '', ''),
(56, 2, 0, 'Polish', '', '', '', '', 0, '', '', '', '', ''),
(57, 2, 0, 'Portuguese, Brazil', '', '', '', '', 0, '', '', '', '', ''),
(58, 2, 0, 'Portuguese, Portugal', '', '', '', '', 0, '', '', '', '', ''),
(59, 2, 0, 'Romanian', '', '', '', '', 0, '', '', '', '', ''),
(60, 2, 0, 'Russian', '', '', '', '', 0, '', '', '', '', ''),
(61, 2, 0, 'Serbian, Cyrillic', '', '', '', '', 0, '', '', '', '', ''),
(62, 2, 0, 'Serbian, Latin', '', '', '', '', 0, '', '', '', '', ''),
(63, 2, 0, 'Sinhala', '', '', '', '', 0, '', '', '', '', ''),
(64, 2, 0, 'Slovak', '', '', '', '', 0, '', '', '', '', ''),
(65, 2, 0, 'Slovenian', '', '', '', '', 0, '', '', '', '', ''),
(66, 2, 0, 'Spanish', '', '', '', '', 0, '', '', '', '', ''),
(67, 2, 0, 'Spanish, Colombia', '', '', '', '', 0, '', '', '', '', ''),
(68, 2, 0, 'Swahili', '', '', '', '', 0, '', '', '', '', ''),
(69, 2, 0, 'Swedish', '', '', '', '', 0, '', '', '', '', ''),
(70, 2, 0, 'Syriac, East', '', '', '', '', 0, '', '', '', '', ''),
(71, 2, 0, 'Tamil, India', '', '', '', '', 0, '', '', '', '', ''),
(72, 2, 0, 'Thai', '', '', '', '', 0, '', '', '', '', ''),
(73, 2, 0, 'Turkish', '', '', '', '', 0, '', '', '', '', ''),
(74, 2, 0, 'Turkmen', '', '', '', '', 0, '', '', '', '', ''),
(75, 2, 0, 'Ukrainian', '', '', '', '', 0, '', '', '', '', ''),
(76, 2, 0, 'Uyghur', '', '', '', '', 0, '', '', '', '', ''),
(77, 2, 0, 'Vietnamese', '', '', '', '', 0, '', '', '', '', ''),
(78, 2, 0, 'Welsh', '', '', '', '', 0, '', '', '', '', ''),
(79, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.10.10', '', 'https://update.joomla.org/core/extension.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spices_update_sites`
--

CREATE TABLE `spices_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `spices_update_sites`
--

INSERT INTO `spices_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1656004726, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1656001136, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1656001138, ''),
(4, 'J2Store Core', 'extension', 'https://cdn.j2store.net/j2storecore.xml', 1, 1656004096, '');

-- --------------------------------------------------------

--
-- Table structure for table `spices_update_sites_extensions`
--

CREATE TABLE `spices_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `spices_update_sites_extensions`
--

INSERT INTO `spices_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `spices_usergroups`
--

CREATE TABLE `spices_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_usergroups`
--

INSERT INTO `spices_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `spices_users`
--

CREATE TABLE `spices_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_users`
--

INSERT INTO `spices_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(382, 'Super User', 'maxwellwachira', 'maxwellwachira67@gmail.com', '$2y$10$ropAtJdKHLfJxCRE9s7GJOd2asFKg3fXiDYm/Ix0j7W/FRB/JK0a6', 0, 1, '2022-06-23 16:17:50', '2022-06-23 17:09:32', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spices_user_keys`
--

CREATE TABLE `spices_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_user_notes`
--

CREATE TABLE `spices_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spices_user_profiles`
--

CREATE TABLE `spices_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `spices_user_usergroup_map`
--

CREATE TABLE `spices_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_user_usergroup_map`
--

INSERT INTO `spices_user_usergroup_map` (`user_id`, `group_id`) VALUES
(382, 8);

-- --------------------------------------------------------

--
-- Table structure for table `spices_utf8_conversion`
--

CREATE TABLE `spices_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_utf8_conversion`
--

INSERT INTO `spices_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `spices_viewlevels`
--

CREATE TABLE `spices_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices_viewlevels`
--

INSERT INTO `spices_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `#__j2store_productquantities`
--
ALTER TABLE `#__j2store_productquantities`
  ADD PRIMARY KEY (`j2store_productquantity_id`),
  ADD UNIQUE KEY `variantidx` (`variant_id`);

--
-- Indexes for table `spices_action_logs`
--
ALTER TABLE `spices_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `spices_action_logs_extensions`
--
ALTER TABLE `spices_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spices_action_logs_users`
--
ALTER TABLE `spices_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `spices_action_log_config`
--
ALTER TABLE `spices_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spices_assets`
--
ALTER TABLE `spices_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `spices_associations`
--
ALTER TABLE `spices_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `spices_banners`
--
ALTER TABLE `spices_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_banner_clients`
--
ALTER TABLE `spices_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `spices_banner_tracks`
--
ALTER TABLE `spices_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `spices_categories`
--
ALTER TABLE `spices_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_contact_details`
--
ALTER TABLE `spices_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `spices_content`
--
ALTER TABLE `spices_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `spices_contentitem_tag_map`
--
ALTER TABLE `spices_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `spices_content_frontpage`
--
ALTER TABLE `spices_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `spices_content_rating`
--
ALTER TABLE `spices_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `spices_content_types`
--
ALTER TABLE `spices_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `spices_extensions`
--
ALTER TABLE `spices_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `spices_fields`
--
ALTER TABLE `spices_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_fields_categories`
--
ALTER TABLE `spices_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `spices_fields_groups`
--
ALTER TABLE `spices_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_fields_values`
--
ALTER TABLE `spices_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `spices_finder_filters`
--
ALTER TABLE `spices_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `spices_finder_links`
--
ALTER TABLE `spices_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `spices_finder_links_terms0`
--
ALTER TABLE `spices_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms1`
--
ALTER TABLE `spices_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms2`
--
ALTER TABLE `spices_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms3`
--
ALTER TABLE `spices_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms4`
--
ALTER TABLE `spices_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms5`
--
ALTER TABLE `spices_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms6`
--
ALTER TABLE `spices_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms7`
--
ALTER TABLE `spices_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms8`
--
ALTER TABLE `spices_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_terms9`
--
ALTER TABLE `spices_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termsa`
--
ALTER TABLE `spices_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termsb`
--
ALTER TABLE `spices_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termsc`
--
ALTER TABLE `spices_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termsd`
--
ALTER TABLE `spices_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termse`
--
ALTER TABLE `spices_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_links_termsf`
--
ALTER TABLE `spices_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `spices_finder_taxonomy`
--
ALTER TABLE `spices_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `spices_finder_taxonomy_map`
--
ALTER TABLE `spices_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `spices_finder_terms`
--
ALTER TABLE `spices_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `spices_finder_terms_common`
--
ALTER TABLE `spices_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `spices_finder_tokens`
--
ALTER TABLE `spices_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `spices_finder_tokens_aggregate`
--
ALTER TABLE `spices_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `spices_finder_types`
--
ALTER TABLE `spices_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `spices_j2store_addresses`
--
ALTER TABLE `spices_j2store_addresses`
  ADD PRIMARY KEY (`j2store_address_id`),
  ADD KEY `idx_address_email` (`email`);

--
-- Indexes for table `spices_j2store_cartitems`
--
ALTER TABLE `spices_j2store_cartitems`
  ADD PRIMARY KEY (`j2store_cartitem_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `spices_j2store_carts`
--
ALTER TABLE `spices_j2store_carts`
  ADD PRIMARY KEY (`j2store_cart_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `session_cart_type` (`session_id`,`cart_type`),
  ADD KEY `user_session_type` (`user_id`,`session_id`,`cart_type`);

--
-- Indexes for table `spices_j2store_configurations`
--
ALTER TABLE `spices_j2store_configurations`
  ADD PRIMARY KEY (`config_meta_key`);

--
-- Indexes for table `spices_j2store_countries`
--
ALTER TABLE `spices_j2store_countries`
  ADD PRIMARY KEY (`j2store_country_id`);

--
-- Indexes for table `spices_j2store_coupons`
--
ALTER TABLE `spices_j2store_coupons`
  ADD PRIMARY KEY (`j2store_coupon_id`),
  ADD UNIQUE KEY `coupon_code` (`coupon_code`);

--
-- Indexes for table `spices_j2store_currencies`
--
ALTER TABLE `spices_j2store_currencies`
  ADD PRIMARY KEY (`j2store_currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Indexes for table `spices_j2store_customfields`
--
ALTER TABLE `spices_j2store_customfields`
  ADD PRIMARY KEY (`j2store_customfield_id`),
  ADD UNIQUE KEY `field_namekey` (`field_namekey`);

--
-- Indexes for table `spices_j2store_emailtemplates`
--
ALTER TABLE `spices_j2store_emailtemplates`
  ADD PRIMARY KEY (`j2store_emailtemplate_id`);

--
-- Indexes for table `spices_j2store_filtergroups`
--
ALTER TABLE `spices_j2store_filtergroups`
  ADD PRIMARY KEY (`j2store_filtergroup_id`);

--
-- Indexes for table `spices_j2store_filters`
--
ALTER TABLE `spices_j2store_filters`
  ADD PRIMARY KEY (`j2store_filter_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `spices_j2store_geozonerules`
--
ALTER TABLE `spices_j2store_geozonerules`
  ADD PRIMARY KEY (`j2store_geozonerule_id`),
  ADD UNIQUE KEY `georule` (`geozone_id`,`country_id`,`zone_id`);

--
-- Indexes for table `spices_j2store_geozones`
--
ALTER TABLE `spices_j2store_geozones`
  ADD PRIMARY KEY (`j2store_geozone_id`);

--
-- Indexes for table `spices_j2store_invoicetemplates`
--
ALTER TABLE `spices_j2store_invoicetemplates`
  ADD PRIMARY KEY (`j2store_invoicetemplate_id`);

--
-- Indexes for table `spices_j2store_lengths`
--
ALTER TABLE `spices_j2store_lengths`
  ADD PRIMARY KEY (`j2store_length_id`);

--
-- Indexes for table `spices_j2store_manufacturers`
--
ALTER TABLE `spices_j2store_manufacturers`
  ADD PRIMARY KEY (`j2store_manufacturer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `spices_j2store_metafields`
--
ALTER TABLE `spices_j2store_metafields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metafields_owner_id_index` (`owner_id`);

--
-- Indexes for table `spices_j2store_options`
--
ALTER TABLE `spices_j2store_options`
  ADD PRIMARY KEY (`j2store_option_id`);

--
-- Indexes for table `spices_j2store_optionvalues`
--
ALTER TABLE `spices_j2store_optionvalues`
  ADD PRIMARY KEY (`j2store_optionvalue_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `spices_j2store_orderdiscounts`
--
ALTER TABLE `spices_j2store_orderdiscounts`
  ADD PRIMARY KEY (`j2store_orderdiscount_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `idx_order_disc_order_disc_type` (`order_id`,`discount_type`),
  ADD KEY `idx_order_disc_id_disc_type` (`discount_entity_id`,`discount_type`);

--
-- Indexes for table `spices_j2store_orderdownloads`
--
ALTER TABLE `spices_j2store_orderdownloads`
  ADD PRIMARY KEY (`j2store_orderdownload_id`),
  ADD KEY `download_order_id` (`order_id`),
  ADD KEY `idx_order_down_order_email` (`order_id`,`user_email`),
  ADD KEY `idx_order_down_order_email_pro` (`order_id`,`user_email`,`product_id`);

--
-- Indexes for table `spices_j2store_orderfees`
--
ALTER TABLE `spices_j2store_orderfees`
  ADD PRIMARY KEY (`j2store_orderfee_id`),
  ADD KEY `idx_order_fee_order_id` (`order_id`);

--
-- Indexes for table `spices_j2store_orderhistories`
--
ALTER TABLE `spices_j2store_orderhistories`
  ADD PRIMARY KEY (`j2store_orderhistory_id`),
  ADD KEY `history_order_id` (`order_id`);

--
-- Indexes for table `spices_j2store_orderinfos`
--
ALTER TABLE `spices_j2store_orderinfos`
  ADD PRIMARY KEY (`j2store_orderinfo_id`),
  ADD KEY `idx_orderinfo_order_id` (`order_id`);

--
-- Indexes for table `spices_j2store_orderitemattributes`
--
ALTER TABLE `spices_j2store_orderitemattributes`
  ADD PRIMARY KEY (`j2store_orderitemattribute_id`),
  ADD KEY `attribute_orderitem_id` (`orderitem_id`);

--
-- Indexes for table `spices_j2store_orderitems`
--
ALTER TABLE `spices_j2store_orderitems`
  ADD PRIMARY KEY (`j2store_orderitem_id`),
  ADD KEY `orderitem_order_id` (`order_id`),
  ADD KEY `idx_order_item_combine` (`order_id`,`product_id`,`variant_id`,`orderitem_attributes`(400));

--
-- Indexes for table `spices_j2store_orders`
--
ALTER TABLE `spices_j2store_orders`
  ADD PRIMARY KEY (`j2store_order_id`),
  ADD KEY `idx_order_id` (`order_id`),
  ADD KEY `idx_token_email` (`user_email`,`token`);

--
-- Indexes for table `spices_j2store_ordershippings`
--
ALTER TABLE `spices_j2store_ordershippings`
  ADD PRIMARY KEY (`j2store_ordershipping_id`),
  ADD KEY `idx_order_shipping_order_id` (`order_id`);

--
-- Indexes for table `spices_j2store_orderstatuses`
--
ALTER TABLE `spices_j2store_orderstatuses`
  ADD PRIMARY KEY (`j2store_orderstatus_id`);

--
-- Indexes for table `spices_j2store_ordertaxes`
--
ALTER TABLE `spices_j2store_ordertaxes`
  ADD PRIMARY KEY (`j2store_ordertax_id`),
  ADD KEY `ordertax_order_id` (`order_id`);

--
-- Indexes for table `spices_j2store_productfiles`
--
ALTER TABLE `spices_j2store_productfiles`
  ADD PRIMARY KEY (`j2store_productfile_id`),
  ADD KEY `productfile_product_id` (`product_id`);

--
-- Indexes for table `spices_j2store_productimages`
--
ALTER TABLE `spices_j2store_productimages`
  ADD PRIMARY KEY (`j2store_productimage_id`),
  ADD KEY `productimage_product_id` (`product_id`);

--
-- Indexes for table `spices_j2store_productprice_index`
--
ALTER TABLE `spices_j2store_productprice_index`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `min_price` (`min_price`),
  ADD KEY `max_price` (`max_price`);

--
-- Indexes for table `spices_j2store_productquantities`
--
ALTER TABLE `spices_j2store_productquantities`
  ADD PRIMARY KEY (`j2store_productquantity_id`),
  ADD UNIQUE KEY `variantidx` (`variant_id`);

--
-- Indexes for table `spices_j2store_products`
--
ALTER TABLE `spices_j2store_products`
  ADD PRIMARY KEY (`j2store_product_id`),
  ADD UNIQUE KEY `catalogsource` (`product_source`,`product_source_id`);

--
-- Indexes for table `spices_j2store_product_filters`
--
ALTER TABLE `spices_j2store_product_filters`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `spices_j2store_product_options`
--
ALTER TABLE `spices_j2store_product_options`
  ADD PRIMARY KEY (`j2store_productoption_id`),
  ADD KEY `productoption_product_id` (`product_id`);

--
-- Indexes for table `spices_j2store_product_optionvalues`
--
ALTER TABLE `spices_j2store_product_optionvalues`
  ADD PRIMARY KEY (`j2store_product_optionvalue_id`),
  ADD KEY `idx_productoption_id` (`productoption_id`),
  ADD KEY `idx_optionvalue_id` (`optionvalue_id`);

--
-- Indexes for table `spices_j2store_product_prices`
--
ALTER TABLE `spices_j2store_product_prices`
  ADD PRIMARY KEY (`j2store_productprice_id`),
  ADD KEY `price_variant_id` (`variant_id`);

--
-- Indexes for table `spices_j2store_product_variant_optionvalues`
--
ALTER TABLE `spices_j2store_product_variant_optionvalues`
  ADD PRIMARY KEY (`variant_id`),
  ADD UNIQUE KEY `variant_id` (`variant_id`);

--
-- Indexes for table `spices_j2store_queues`
--
ALTER TABLE `spices_j2store_queues`
  ADD PRIMARY KEY (`j2store_queue_id`);

--
-- Indexes for table `spices_j2store_shippingmethods`
--
ALTER TABLE `spices_j2store_shippingmethods`
  ADD PRIMARY KEY (`j2store_shippingmethod_id`);

--
-- Indexes for table `spices_j2store_shippingrates`
--
ALTER TABLE `spices_j2store_shippingrates`
  ADD PRIMARY KEY (`j2store_shippingrate_id`);

--
-- Indexes for table `spices_j2store_taxprofiles`
--
ALTER TABLE `spices_j2store_taxprofiles`
  ADD PRIMARY KEY (`j2store_taxprofile_id`);

--
-- Indexes for table `spices_j2store_taxrates`
--
ALTER TABLE `spices_j2store_taxrates`
  ADD PRIMARY KEY (`j2store_taxrate_id`);

--
-- Indexes for table `spices_j2store_taxrules`
--
ALTER TABLE `spices_j2store_taxrules`
  ADD PRIMARY KEY (`j2store_taxrule_id`),
  ADD UNIQUE KEY `taxprofile_id` (`taxprofile_id`,`taxrate_id`,`address`);

--
-- Indexes for table `spices_j2store_uploads`
--
ALTER TABLE `spices_j2store_uploads`
  ADD PRIMARY KEY (`j2store_upload_id`);

--
-- Indexes for table `spices_j2store_variants`
--
ALTER TABLE `spices_j2store_variants`
  ADD PRIMARY KEY (`j2store_variant_id`),
  ADD KEY `variant_product_id` (`product_id`);

--
-- Indexes for table `spices_j2store_vendors`
--
ALTER TABLE `spices_j2store_vendors`
  ADD PRIMARY KEY (`j2store_vendor_id`),
  ADD UNIQUE KEY `j2store_user_id` (`j2store_user_id`);

--
-- Indexes for table `spices_j2store_vouchers`
--
ALTER TABLE `spices_j2store_vouchers`
  ADD PRIMARY KEY (`j2store_voucher_id`),
  ADD UNIQUE KEY `voucher_code` (`voucher_code`);

--
-- Indexes for table `spices_j2store_weights`
--
ALTER TABLE `spices_j2store_weights`
  ADD PRIMARY KEY (`j2store_weight_id`);

--
-- Indexes for table `spices_j2store_zones`
--
ALTER TABLE `spices_j2store_zones`
  ADD PRIMARY KEY (`j2store_zone_id`);

--
-- Indexes for table `spices_languages`
--
ALTER TABLE `spices_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `spices_menu`
--
ALTER TABLE `spices_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_menu_types`
--
ALTER TABLE `spices_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `spices_messages`
--
ALTER TABLE `spices_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `spices_messages_cfg`
--
ALTER TABLE `spices_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `spices_modules`
--
ALTER TABLE `spices_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_modules_menu`
--
ALTER TABLE `spices_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `spices_newsfeeds`
--
ALTER TABLE `spices_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `spices_overrider`
--
ALTER TABLE `spices_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spices_postinstall_messages`
--
ALTER TABLE `spices_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `spices_privacy_consents`
--
ALTER TABLE `spices_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `spices_privacy_requests`
--
ALTER TABLE `spices_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spices_redirect_links`
--
ALTER TABLE `spices_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `spices_schemas`
--
ALTER TABLE `spices_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `spices_session`
--
ALTER TABLE `spices_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `spices_tags`
--
ALTER TABLE `spices_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `spices_template_styles`
--
ALTER TABLE `spices_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `spices_ucm_base`
--
ALTER TABLE `spices_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `spices_ucm_content`
--
ALTER TABLE `spices_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `spices_ucm_history`
--
ALTER TABLE `spices_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `spices_updates`
--
ALTER TABLE `spices_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `spices_update_sites`
--
ALTER TABLE `spices_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `spices_update_sites_extensions`
--
ALTER TABLE `spices_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `spices_usergroups`
--
ALTER TABLE `spices_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `spices_users`
--
ALTER TABLE `spices_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `spices_user_keys`
--
ALTER TABLE `spices_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `spices_user_notes`
--
ALTER TABLE `spices_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `spices_user_profiles`
--
ALTER TABLE `spices_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `spices_user_usergroup_map`
--
ALTER TABLE `spices_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `spices_viewlevels`
--
ALTER TABLE `spices_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `#__j2store_productquantities`
--
ALTER TABLE `#__j2store_productquantities`
  MODIFY `j2store_productquantity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_action_logs`
--
ALTER TABLE `spices_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `spices_action_logs_extensions`
--
ALTER TABLE `spices_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `spices_action_log_config`
--
ALTER TABLE `spices_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `spices_assets`
--
ALTER TABLE `spices_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `spices_banners`
--
ALTER TABLE `spices_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_banner_clients`
--
ALTER TABLE `spices_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_categories`
--
ALTER TABLE `spices_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spices_contact_details`
--
ALTER TABLE `spices_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_content`
--
ALTER TABLE `spices_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_content_types`
--
ALTER TABLE `spices_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `spices_extensions`
--
ALTER TABLE `spices_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10028;

--
-- AUTO_INCREMENT for table `spices_fields`
--
ALTER TABLE `spices_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_fields_groups`
--
ALTER TABLE `spices_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_finder_filters`
--
ALTER TABLE `spices_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_finder_links`
--
ALTER TABLE `spices_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_finder_taxonomy`
--
ALTER TABLE `spices_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_finder_terms`
--
ALTER TABLE `spices_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_finder_types`
--
ALTER TABLE `spices_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_addresses`
--
ALTER TABLE `spices_j2store_addresses`
  MODIFY `j2store_address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_cartitems`
--
ALTER TABLE `spices_j2store_cartitems`
  MODIFY `j2store_cartitem_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_carts`
--
ALTER TABLE `spices_j2store_carts`
  MODIFY `j2store_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_countries`
--
ALTER TABLE `spices_j2store_countries`
  MODIFY `j2store_country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `spices_j2store_coupons`
--
ALTER TABLE `spices_j2store_coupons`
  MODIFY `j2store_coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_currencies`
--
ALTER TABLE `spices_j2store_currencies`
  MODIFY `j2store_currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_customfields`
--
ALTER TABLE `spices_j2store_customfields`
  MODIFY `j2store_customfield_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `spices_j2store_emailtemplates`
--
ALTER TABLE `spices_j2store_emailtemplates`
  MODIFY `j2store_emailtemplate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_filtergroups`
--
ALTER TABLE `spices_j2store_filtergroups`
  MODIFY `j2store_filtergroup_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_filters`
--
ALTER TABLE `spices_j2store_filters`
  MODIFY `j2store_filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_geozonerules`
--
ALTER TABLE `spices_j2store_geozonerules`
  MODIFY `j2store_geozonerule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_geozones`
--
ALTER TABLE `spices_j2store_geozones`
  MODIFY `j2store_geozone_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_invoicetemplates`
--
ALTER TABLE `spices_j2store_invoicetemplates`
  MODIFY `j2store_invoicetemplate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_lengths`
--
ALTER TABLE `spices_j2store_lengths`
  MODIFY `j2store_length_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spices_j2store_manufacturers`
--
ALTER TABLE `spices_j2store_manufacturers`
  MODIFY `j2store_manufacturer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_metafields`
--
ALTER TABLE `spices_j2store_metafields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_options`
--
ALTER TABLE `spices_j2store_options`
  MODIFY `j2store_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_optionvalues`
--
ALTER TABLE `spices_j2store_optionvalues`
  MODIFY `j2store_optionvalue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderdiscounts`
--
ALTER TABLE `spices_j2store_orderdiscounts`
  MODIFY `j2store_orderdiscount_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderdownloads`
--
ALTER TABLE `spices_j2store_orderdownloads`
  MODIFY `j2store_orderdownload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderfees`
--
ALTER TABLE `spices_j2store_orderfees`
  MODIFY `j2store_orderfee_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderhistories`
--
ALTER TABLE `spices_j2store_orderhistories`
  MODIFY `j2store_orderhistory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderinfos`
--
ALTER TABLE `spices_j2store_orderinfos`
  MODIFY `j2store_orderinfo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderitemattributes`
--
ALTER TABLE `spices_j2store_orderitemattributes`
  MODIFY `j2store_orderitemattribute_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderitems`
--
ALTER TABLE `spices_j2store_orderitems`
  MODIFY `j2store_orderitem_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orders`
--
ALTER TABLE `spices_j2store_orders`
  MODIFY `j2store_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_ordershippings`
--
ALTER TABLE `spices_j2store_ordershippings`
  MODIFY `j2store_ordershipping_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_orderstatuses`
--
ALTER TABLE `spices_j2store_orderstatuses`
  MODIFY `j2store_orderstatus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `spices_j2store_ordertaxes`
--
ALTER TABLE `spices_j2store_ordertaxes`
  MODIFY `j2store_ordertax_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_productfiles`
--
ALTER TABLE `spices_j2store_productfiles`
  MODIFY `j2store_productfile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_productimages`
--
ALTER TABLE `spices_j2store_productimages`
  MODIFY `j2store_productimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_productquantities`
--
ALTER TABLE `spices_j2store_productquantities`
  MODIFY `j2store_productquantity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_products`
--
ALTER TABLE `spices_j2store_products`
  MODIFY `j2store_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_product_options`
--
ALTER TABLE `spices_j2store_product_options`
  MODIFY `j2store_productoption_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_product_optionvalues`
--
ALTER TABLE `spices_j2store_product_optionvalues`
  MODIFY `j2store_product_optionvalue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_product_prices`
--
ALTER TABLE `spices_j2store_product_prices`
  MODIFY `j2store_productprice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_queues`
--
ALTER TABLE `spices_j2store_queues`
  MODIFY `j2store_queue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_shippingmethods`
--
ALTER TABLE `spices_j2store_shippingmethods`
  MODIFY `j2store_shippingmethod_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_shippingrates`
--
ALTER TABLE `spices_j2store_shippingrates`
  MODIFY `j2store_shippingrate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_taxprofiles`
--
ALTER TABLE `spices_j2store_taxprofiles`
  MODIFY `j2store_taxprofile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_taxrates`
--
ALTER TABLE `spices_j2store_taxrates`
  MODIFY `j2store_taxrate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_taxrules`
--
ALTER TABLE `spices_j2store_taxrules`
  MODIFY `j2store_taxrule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_uploads`
--
ALTER TABLE `spices_j2store_uploads`
  MODIFY `j2store_upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_variants`
--
ALTER TABLE `spices_j2store_variants`
  MODIFY `j2store_variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_j2store_vendors`
--
ALTER TABLE `spices_j2store_vendors`
  MODIFY `j2store_vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_vouchers`
--
ALTER TABLE `spices_j2store_vouchers`
  MODIFY `j2store_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_j2store_weights`
--
ALTER TABLE `spices_j2store_weights`
  MODIFY `j2store_weight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spices_j2store_zones`
--
ALTER TABLE `spices_j2store_zones`
  MODIFY `j2store_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3996;

--
-- AUTO_INCREMENT for table `spices_languages`
--
ALTER TABLE `spices_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_menu`
--
ALTER TABLE `spices_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `spices_menu_types`
--
ALTER TABLE `spices_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_messages`
--
ALTER TABLE `spices_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_modules`
--
ALTER TABLE `spices_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `spices_newsfeeds`
--
ALTER TABLE `spices_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_overrider`
--
ALTER TABLE `spices_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `spices_postinstall_messages`
--
ALTER TABLE `spices_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `spices_privacy_consents`
--
ALTER TABLE `spices_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_privacy_requests`
--
ALTER TABLE `spices_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_redirect_links`
--
ALTER TABLE `spices_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_tags`
--
ALTER TABLE `spices_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices_template_styles`
--
ALTER TABLE `spices_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spices_ucm_content`
--
ALTER TABLE `spices_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_ucm_history`
--
ALTER TABLE `spices_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `spices_updates`
--
ALTER TABLE `spices_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `spices_update_sites`
--
ALTER TABLE `spices_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spices_usergroups`
--
ALTER TABLE `spices_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spices_users`
--
ALTER TABLE `spices_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `spices_user_keys`
--
ALTER TABLE `spices_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_user_notes`
--
ALTER TABLE `spices_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spices_viewlevels`
--
ALTER TABLE `spices_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
