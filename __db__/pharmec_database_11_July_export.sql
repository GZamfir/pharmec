-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              5.6.17 - MySQL Community Server (GPL)
-- SO server:                    Win32
-- HeidiSQL Versiune:            9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table pharmec.ph_assets
DROP TABLE IF EXISTS `ph_assets`;
CREATE TABLE IF NOT EXISTS `ph_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_assets: ~77 rows (aproximativ)
DELETE FROM `ph_assets`;
/*!40000 ALTER TABLE `ph_assets` DISABLE KEYS */;
INSERT INTO `ph_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
	(1, 0, 0, 153, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
	(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
	(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(8, 1, 17, 36, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
	(9, 1, 37, 38, 1, 'com_cpanel', 'com_cpanel', '{}'),
	(10, 1, 39, 40, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
	(11, 1, 41, 42, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(12, 1, 43, 44, 1, 'com_login', 'com_login', '{}'),
	(13, 1, 45, 46, 1, 'com_mailto', 'com_mailto', '{}'),
	(14, 1, 47, 48, 1, 'com_massmail', 'com_massmail', '{}'),
	(15, 1, 49, 50, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
	(16, 1, 51, 52, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(17, 1, 53, 54, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
	(18, 1, 55, 100, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(19, 1, 101, 104, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(20, 1, 105, 106, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
	(21, 1, 107, 108, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
	(22, 1, 109, 110, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(23, 1, 111, 112, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(24, 1, 113, 116, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(26, 1, 117, 118, 1, 'com_wrapper', 'com_wrapper', '{}'),
	(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(30, 19, 102, 103, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
	(32, 24, 114, 115, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(33, 1, 119, 120, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
	(34, 1, 121, 122, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
	(35, 1, 123, 124, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
	(36, 1, 125, 126, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
	(37, 1, 127, 128, 1, 'com_ajax', 'com_ajax', '{}'),
	(38, 1, 129, 130, 1, 'com_postinstall', 'com_postinstall', '{}'),
	(39, 18, 56, 57, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(40, 18, 58, 59, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(41, 18, 60, 61, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(42, 18, 62, 63, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(43, 18, 64, 65, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(44, 18, 66, 67, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(45, 18, 68, 69, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(46, 18, 70, 71, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(47, 18, 72, 73, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(48, 18, 74, 75, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(49, 18, 76, 77, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(50, 18, 78, 79, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(51, 18, 80, 81, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(52, 18, 82, 83, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(53, 18, 84, 85, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
	(54, 18, 86, 87, 2, 'com_modules.module.87', 'Pharmec Slider', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(55, 18, 88, 89, 2, 'com_modules.module.88', 'Pharmec Parteneri', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(57, 1, 131, 132, 1, 'com_partner', 'COM_PARTNER', '{}'),
	(58, 8, 26, 35, 2, 'com_content.category.8', 'Noutati', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
	(59, 58, 33, 34, 3, 'com_content.article.1', 'Noutate 1', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(60, 58, 31, 32, 3, 'com_content.article.2', 'Noutate 2', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(61, 58, 27, 28, 3, 'com_content.article.3', 'Noutate 3', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
	(62, 58, 29, 30, 3, 'com_content.article.4', 'Noutate 4', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
	(63, 18, 90, 91, 2, 'com_modules.module.89', 'News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(64, 1, 133, 140, 1, 'com_service', 'COM_SERVICE', '{}'),
	(65, 64, 134, 135, 2, 'com_service.category.9', 'Servicii Telekom', ''),
	(66, 64, 136, 137, 2, 'com_service.category.10', 'Servicii Avast', ''),
	(67, 64, 138, 139, 2, 'com_service.category.11', 'Servicii Pharmec', ''),
	(68, 18, 92, 93, 2, 'com_modules.module.90', 'Test', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(69, 18, 94, 95, 2, 'com_modules.module.91', 'Meniu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
	(70, 1, 141, 142, 1, 'com_jce', 'JCE', '{}'),
	(71, 1, 143, 144, 1, 'com_booking', 'COM_BOOKING', '{}'),
	(72, 18, 96, 97, 2, 'com_modules.module.92', 'Pharmec Right Booking', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(73, 18, 98, 99, 2, 'com_modules.module.93', 'Footer Newsletter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
	(74, 1, 145, 146, 1, 'com_pharmec', 'Pharmec', '{}'),
	(75, 27, 19, 20, 3, 'com_content.article.5', '404 Aceasta Pagina Nu Exista', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(76, 1, 147, 148, 1, 'com_newsletter', 'COM_NEWSLETTER', '{}'),
	(77, 27, 21, 22, 3, 'com_content.article.6', 'Test', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(78, 1, 149, 150, 1, 'com_book', 'COM_BOOK', '{}'),
	(79, 27, 23, 24, 3, 'com_content.article.7', 'Login', '{"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
	(80, 1, 151, 152, 1, 'com_phocagallery', 'com_phocagallery', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}');
/*!40000 ALTER TABLE `ph_assets` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_associations
DROP TABLE IF EXISTS `ph_associations`;
CREATE TABLE IF NOT EXISTS `ph_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_associations: ~0 rows (aproximativ)
DELETE FROM `ph_associations`;
/*!40000 ALTER TABLE `ph_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_associations` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_banners
DROP TABLE IF EXISTS `ph_banners`;
CREATE TABLE IF NOT EXISTS `ph_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_banners: ~0 rows (aproximativ)
DELETE FROM `ph_banners`;
/*!40000 ALTER TABLE `ph_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_banners` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_banner_clients
DROP TABLE IF EXISTS `ph_banner_clients`;
CREATE TABLE IF NOT EXISTS `ph_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_banner_clients: ~0 rows (aproximativ)
DELETE FROM `ph_banner_clients`;
/*!40000 ALTER TABLE `ph_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_banner_clients` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_banner_tracks
DROP TABLE IF EXISTS `ph_banner_tracks`;
CREATE TABLE IF NOT EXISTS `ph_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_banner_tracks: ~0 rows (aproximativ)
DELETE FROM `ph_banner_tracks`;
/*!40000 ALTER TABLE `ph_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_banner_tracks` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_book
DROP TABLE IF EXISTS `ph_book`;
CREATE TABLE IF NOT EXISTS `ph_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `reader` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `ebook_link` text NOT NULL,
  `votes` int(11) DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_book: 3 rows
DELETE FROM `ph_book`;
/*!40000 ALTER TABLE `ph_book` DISABLE KEYS */;
INSERT INTO `ph_book` (`id`, `title`, `author`, `genre`, `cover`, `reader`, `summary`, `ebook_link`, `votes`, `published`) VALUES
	(1, 'Test Title', 'Auth', 'gen', '', 'Gaby Zamfir', '', '', 18, 1),
	(2, 'Eu nu strivesc, corola de minuni a lumii', 'Lucian Blaga', 'Poezie', 'images/sampledata/fruitshop/bananas_2.jpg', 'Gaby Zamfir', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'http://www.test.com', 26, 1),
	(3, 'Test', 'Test', 'Test', '', 'Test', '', '', 25, 1);
/*!40000 ALTER TABLE `ph_book` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_booking
DROP TABLE IF EXISTS `ph_booking`;
CREATE TABLE IF NOT EXISTS `ph_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_surname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `service_title` varchar(100) NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_booking: 0 rows
DELETE FROM `ph_booking`;
/*!40000 ALTER TABLE `ph_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_booking` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_book_votes
DROP TABLE IF EXISTS `ph_book_votes`;
CREATE TABLE IF NOT EXISTS `ph_book_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_book_votes: ~14 rows (aproximativ)
DELETE FROM `ph_book_votes`;
/*!40000 ALTER TABLE `ph_book_votes` DISABLE KEYS */;
INSERT INTO `ph_book_votes` (`id`, `book_id`, `user_id`) VALUES
	(1, 2, 502),
	(2, 1, 502),
	(3, 3, 502),
	(4, 3, 502),
	(5, 3, 0),
	(6, 3, 0),
	(7, 3, 0),
	(8, 3, 0),
	(9, 3, 0),
	(10, 3, 0),
	(11, 2, 504),
	(12, 3, 504),
	(13, 3, 505),
	(14, 2, 505),
	(15, 1, 505);
/*!40000 ALTER TABLE `ph_book_votes` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_categories
DROP TABLE IF EXISTS `ph_categories`;
CREATE TABLE IF NOT EXISTS `ph_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_categories: ~8 rows (aproximativ)
DELETE FROM `ph_categories`;
/*!40000 ALTER TABLE `ph_categories` DISABLE KEYS */;
INSERT INTO `ph_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
	(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(3, 28, 1, 7, 8, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(4, 29, 1, 11, 12, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(5, 30, 1, 13, 14, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(7, 32, 1, 15, 16, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
	(8, 58, 1, 17, 18, 1, 'noutati', 'com_content', 'Noutati', 'noutati', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 502, '2015-05-17 13:33:20', 0, '2015-05-17 13:33:20', 0, '*', 1),
	(11, 67, 1, 9, 10, 1, 'servicii-pharmec', 'com_service', 'Servicii Pharmec', 'servicii-pharmec', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"","category_image":"images\\/servicii\\/servicii_pharmec.jpg","category_summary":"O lista a serviciilor pharmec poate include Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","category_description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","show_in_slider":"1"}', '', '', '{"author":"","robots":""}', 502, '2015-05-23 13:06:05', 502, '2015-06-14 16:42:56', 0, '*', 1);
/*!40000 ALTER TABLE `ph_categories` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_contact_details
DROP TABLE IF EXISTS `ph_contact_details`;
CREATE TABLE IF NOT EXISTS `ph_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_contact_details: ~0 rows (aproximativ)
DELETE FROM `ph_contact_details`;
/*!40000 ALTER TABLE `ph_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_contact_details` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_content
DROP TABLE IF EXISTS `ph_content`;
CREATE TABLE IF NOT EXISTS `ph_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_content: ~7 rows (aproximativ)
DELETE FROM `ph_content`;
/*!40000 ALTER TABLE `ph_content` DISABLE KEYS */;
INSERT INTO `ph_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
	(1, 59, 'Noutate 1', 'noutate-1', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Bacon ipsum</strong> dolor amet duis veniam dolore nulla excepteur enim consectetur rump landjaeger qui incididunt pig doner boudin nisi. Spare ribs pig do ut culpa prosciutto. Deserunt bacon shoulder laboris filet mignon laborum, dolore ut mollit ut. Velit esse ball tip, sed spare ribs est fugiat hamburger quis pork chop strip steak meatloaf enim ut aute. Consectetur bresaola ribeye, voluptate pastrami sausage fatback magna.</p>', '', 1, 8, '2015-05-17 13:34:09', 502, '', '2015-06-30 11:39:59', 502, 0, '0000-00-00 00:00:00', '2015-05-17 13:34:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 35, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(2, 60, 'Noutate 2', 'noutate-2', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 1, 8, '2015-05-17 13:34:21', 502, '', '2015-05-17 13:35:13', 502, 0, '0000-00-00 00:00:00', '2015-05-17 13:34:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(3, 61, 'Noutate 3', 'noutate-3', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 1, 8, '2015-05-17 13:34:33', 502, '', '2015-05-17 13:34:33', 0, 0, '0000-00-00 00:00:00', '2015-05-17 13:34:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(4, 62, 'Noutate 4', 'noutate-4', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 1, 8, '2015-05-17 13:34:47', 502, '', '2015-05-17 13:34:47', 0, 0, '0000-00-00 00:00:00', '2015-05-17 13:34:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(5, 75, '404 Aceasta Pagina Nu Exista', '404-aceasta-pagina-nu-exista', '<h3>Ne pare rau dar pagina pe care ati accesat-o este inexistenta. Va rugam sa reveniti la pagina principala.</h3>\r\n<h3><a href="index.php?option=com_content&amp;view=featured&amp;Itemid=101">Inapoi La Pagina Principala</a></h3>', '', 1, 2, '2015-07-01 07:09:33', 502, '', '2015-07-01 07:20:40', 502, 0, '0000-00-00 00:00:00', '2015-07-01 07:09:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"pharmec:error","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 2, '', '', 1, 198, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(6, 77, 'Test', 'test', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><img src="images/demo_images/1920/red.jpg" alt="red" /></p>\r\n<div class="rc">\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n<div class="row">\r\n<div class="small-12 columns"><iframe src="http://www.protv.ro" width="100%" height="500px"></iframe></div>\r\n&nbsp;</div>\r\n<div class="row">&nbsp;</div>\r\n</div>\r\n<div class="small-12 columns serviciu_single">\r\n<div class="small-6 medium-6 large-6 columns end heading_text_bubble">\r\n<h2 style="text-align: left;">Titlu</h2>\r\n</div>\r\n<div class="small-12 columns holder_bubble">\r\n<div class="serviciu_description">Ceva Frumos</div>\r\n</div>\r\n</div>', '', 1, 2, '2015-07-02 19:41:41', 502, '', '2015-07-02 22:55:01', 502, 0, '0000-00-00 00:00:00', '2015-07-02 19:41:41', '0000-00-00 00:00:00', '{"image_intro":"images\\/demo_images\\/1920\\/purple.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"pharmec:newpage","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
	(7, 79, 'Login', 'login-page', '', '', 1, 2, '2015-07-08 06:59:24', 502, '', '2015-07-08 07:01:04', 502, 0, '0000-00-00 00:00:00', '2015-07-08 06:59:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"pharmec:newpage","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
/*!40000 ALTER TABLE `ph_content` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_contentitem_tag_map
DROP TABLE IF EXISTS `ph_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `ph_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- Dumping data for table pharmec.ph_contentitem_tag_map: ~0 rows (aproximativ)
DELETE FROM `ph_contentitem_tag_map`;
/*!40000 ALTER TABLE `ph_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_contentitem_tag_map` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_content_frontpage
DROP TABLE IF EXISTS `ph_content_frontpage`;
CREATE TABLE IF NOT EXISTS `ph_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_content_frontpage: ~0 rows (aproximativ)
DELETE FROM `ph_content_frontpage`;
/*!40000 ALTER TABLE `ph_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_content_frontpage` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_content_rating
DROP TABLE IF EXISTS `ph_content_rating`;
CREATE TABLE IF NOT EXISTS `ph_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_content_rating: ~0 rows (aproximativ)
DELETE FROM `ph_content_rating`;
/*!40000 ALTER TABLE `ph_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_content_rating` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_content_types
DROP TABLE IF EXISTS `ph_content_types`;
CREATE TABLE IF NOT EXISTS `ph_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_content_types: ~16 rows (aproximativ)
DELETE FROM `ph_content_types`;
/*!40000 ALTER TABLE `ph_content_types` DISABLE KEYS */;
INSERT INTO `ph_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
	(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
	(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
	(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
	(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
	(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
	(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
	(14, ' Partner Tags', 'com_partners.partner', '{\r\n		"special": {\r\n			"dbtable": "#__partner",\r\n			"key": "id",\r\n			"type": "partner",\r\n			"prefix": "partnerTable",\r\n			"config": "array()"\r\n		},\r\n		"common": {\r\n			"dbtable": "#__ucm_content",\r\n			"key": "ucm_id",\r\n			"type": "Corecontent",\r\n			"prefix"', '', '{\r\n  "common": {\r\n    "core_content_item_id": "id",\r\n    "core_title": "message",\r\n    "core_state": "published",\r\n    "core_params": "params",\r\n    "core_catid": "catid",\r\n    "core_xreference": "null",\r\n    "asset_id": "null"\r\n  },\r\n  "special": {\r\n    "message": "message"\r\n  }\r\n}', '', NULL),
	(15, ' Partner Tags', 'com_partners.partner', '{\r\n		"special": {\r\n			"dbtable": "#__partner",\r\n			"key": "id",\r\n			"type": "partner",\r\n			"prefix": "partnerTable",\r\n			"config": "array()"\r\n		},\r\n		"common": {\r\n			"dbtable": "#__ucm_content",\r\n			"key": "ucm_id",\r\n			"type": "Corecontent",\r\n			"prefix"', '', '{\r\n  "common": {\r\n    "core_content_item_id": "id",\r\n    "core_title": "message",\r\n    "core_state": "published",\r\n    "core_params": "params",\r\n    "core_catid": "catid",\r\n    "core_xreference": "null",\r\n    "asset_id": "null"\r\n  },\r\n  "special": {\r\n    "message": "message"\r\n  }\r\n}', '', NULL),
	(16, ' Service Tags', 'com_services.service', '{\r\n		"special": {\r\n			"dbtable": "#__service",\r\n			"key": "id",\r\n			"type": "service",\r\n			"prefix": "serviceTable",\r\n			"config": "array()"\r\n		},\r\n		"common": {\r\n			"dbtable": "#__ucm_content",\r\n			"key": "ucm_id",\r\n			"type": "Corecontent",\r\n			"prefix"', '', '{\r\n  "common": {\r\n    "core_content_item_id": "id",\r\n    "core_title": "message",\r\n    "core_state": "published",\r\n    "core_params": "params",\r\n    "core_catid": "catid",\r\n    "core_xreference": "null",\r\n    "asset_id": "null"\r\n  },\r\n  "special": {\r\n    "message": "message"\r\n  }\r\n}', '', NULL);
/*!40000 ALTER TABLE `ph_content_types` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_core_log_searches
DROP TABLE IF EXISTS `ph_core_log_searches`;
CREATE TABLE IF NOT EXISTS `ph_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_core_log_searches: ~0 rows (aproximativ)
DELETE FROM `ph_core_log_searches`;
/*!40000 ALTER TABLE `ph_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_core_log_searches` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_extensions
DROP TABLE IF EXISTS `ph_extensions`;
CREATE TABLE IF NOT EXISTS `ph_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10024 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_extensions: ~150 rows (aproximativ)
DELETE FROM `ph_extensions`;
/*!40000 ALTER TABLE `ph_extensions` DISABLE KEYS */;
INSERT INTO `ph_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
	(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"0","mail_to_admin":"0","captcha":"","frontend_userparams":"0","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"f64c99fa85d921925e8430950680e667"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-03-11 11:59:00","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.2","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
	(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"1","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"0","newlines":"0","invalid_elements":"script,applet","valid_elements":"","extended_elements":"iframe[src|style|width|height|scrolling|marginwidth|marginheight|frameborder]","html_height":"550","html_width":"1100","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
	(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
	(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
	(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
	(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
	(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
	(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
	(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
	(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
	(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
	(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10000, 'Pharmec Template', 'template', 'pharmec', '', 0, 1, 1, 0, '{"name":"Pharmec Template","type":"template","creationDate":"2015-05-09","author":"Gaby Zamfir","copyright":"Pharmec 2008","authorEmail":"zamfir.gaby@gmail.com","authorUrl":"","version":"1.0.2","description":"Pharmec Template","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10001, 'Pharmec Slider', 'module', 'mod_pharmec_slider', '', 0, 1, 1, 0, '{"name":"Pharmec Slider","type":"module","creationDate":"Unknown","author":"Gaby Zamfir","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"Custom Slider Module","group":"","filename":"mod_pharmec_slider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10002, 'Pharmec Parteneri', 'module', 'mod_pharmec_parteneri', '', 0, 1, 1, 0, '{"name":"Pharmec Parteneri","type":"module","creationDate":"Unknown","author":"Gaby Zamfir","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"Parteneri Pharmec Slider","group":"","filename":"mod_pharmec_parteneri"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10004, 'COM_PARTNER', 'component', 'com_partner', '', 1, 1, 0, 0, '{"name":"COM_PARTNER","type":"component","creationDate":"February 2015","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.2","description":"COM_PARTNER_DESCRIPTION","group":"","filename":"partner"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10005, 'Pharmec News', 'module', 'mod_pharmec_news', '', 0, 1, 1, 0, '{"name":"Pharmec News","type":"module","creationDate":"Unknown","author":"Gaby Zamfir","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"News Pharmec","group":"","filename":"mod_pharmec_news"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10006, 'COM_SERVICE', 'component', 'com_service', '', 1, 1, 0, 0, '{"name":"COM_SERVICE","type":"component","creationDate":"February 2015","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.2","description":"COM_SERVICE_DESCRIPTION","group":"","filename":"service"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10007, 'plg_menuitemlogo', 'plugin', 'menuitemlogo', 'content', 0, 1, 1, 0, '{"name":"plg_menuitemlogo","type":"plugin","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"","group":"","filename":"menuitemlogo"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10008, 'plg_editors-xtd_twocolumn', 'plugin', 'twocolumn', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_twocolumn","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_TWOCOLUMN_XML_DESCRIPTION","group":"","filename":"twocolumn"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10009, 'TheGrue Menu', 'module', 'mod_gruemenu', '', 0, 1, 0, 0, '{"name":"TheGrue Menu","type":"module","creationDate":"January, 2015","author":"TheGrue.org","copyright":"Copyright 2014 - TheGrue.org","authorEmail":"support@TheGrue.org","authorUrl":"http:\\/\\/TheGrue.org","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">Responsive Navigation Menu - by TheGrue<\\/h1>\\t\\n\\t<div class=\\"description\\">This module was developed by  <a href=\\"http:\\/\\/thegrue.org\\" target=\\"_blank\\">TheGrue.org<\\/a> and can be downloaded and used for free under <a href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL2<\\/a> license. <br\\/> If you have any question or have found a bug, please <a href=\\"http:\\/\\/thegrue.org\\/responsive-menu-module-joomla\\/\\" target=\\"_blank\\">click here to visit the support page<\\/a>.<\\/div>\\n\\n\\t\\t\\n\\t","group":"","filename":"mod_gruemenu"}', '{"jQuery":"0","startLevel":"1","endLevel":"0","menubg":"#192F4D","menulink":"#d1e3fb","submenubg":"#192F4D","submenulink":"#d1e3fb","menubghover":"#11243d","menulinkhover":"#ffffff","menuradius":"3","fontstyle":"Open+Sans","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10010, 'JCE', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"05 June 2015","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2015 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.5.2","description":"WF_ADMIN_DESC","group":"","filename":"jce"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10011, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"05 June 2015","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.5.2","description":"WF_EDITOR_PLUGIN_DESC","group":"","filename":"jce"}', '{"verify_html":"1","schema":"mixed","entity_encoding":"raw","keep_nbsp":"1","pad_empty_tags":"1","cleanup_pluginmode":"1","forced_root_block":"p","content_style_reset":"1","content_css":"0","content_css_custom":"templates\\/$template\\/css\\/editor.css","body_class":"","compress_javascript":"1","compress_css":"0","compress_gzip":"0","use_cookies":"1","custom_config":"","callback_file":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10012, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"05 June 2015","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2015 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.5.2","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":"","filename":"jcefilebrowser"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10013, 'COM_BOOKING', 'component', 'com_booking', '', 1, 1, 0, 0, '{"name":"COM_BOOKING","type":"component","creationDate":"February 2015","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.2","description":"COM_BOOKING_DESCRIPTION","group":"","filename":"booking"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10014, 'Pharmec Right Booking', 'module', 'mod_pharmec_right_booking', '', 0, 1, 1, 0, '{"name":"Pharmec Right Booking","type":"module","creationDate":"Unknown","author":"Gaby Zamfir","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"Modulul pentru rezervare din partea dreapta","group":"","filename":"mod_pharmec_right_booking"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10015, 'Pharmec Footer Booking', 'module', 'mod_pharmec_footer_booking', '', 0, 1, 1, 0, '{"name":"Pharmec Footer Booking","type":"module","creationDate":"Unknown","author":"Gaby Zamfir","copyright":"","authorEmail":"","authorUrl":"","version":"1.0.0","description":"Modulul pentru rezervare din footer","group":"","filename":"mod_pharmec_footer_booking"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10016, 'Pharmec', 'component', 'com_pharmec', '', 1, 1, 0, 0, '{"name":"Pharmec","type":"component","creationDate":"December 2013","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.5","description":"This component is just to set the global custom values","group":"","filename":"pharmec"}', '{"header_image":"","footer_address":"Strada Tudor Vladimirescu, ConstanČ›a, Romania","footer_phone":"0726-327-192","footer_email":"constanta@psw.ro","news_image":"images\\/banners\\/News.jpg","recipient_email":"zamfir.gaby@gmail.com"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10017, 'COM_NEWSLETTER', 'component', 'com_newsletter', '', 1, 1, 0, 0, '{"name":"COM_NEWSLETTER","type":"component","creationDate":"February 2015","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.2","description":"COM_NEWSLETTER_DESCRIPTION","group":"","filename":"newsletter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10018, 'plg_editors-xtd_insertbubble', 'plugin', 'insertbubble', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_insertbubble","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"Insert Bubble","group":"","filename":"insertbubble"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10019, 'plg_editors-xtd_insertcolumns', 'plugin', 'insertcolumns', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_insertcolumns","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"Insert two columns","group":"","filename":"insertcolumns"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10020, 'plg_editors-xtd_addfield', 'plugin', 'addfield', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_addfield","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_TWOCOLUMN_XML_DESCRIPTION","group":"","filename":"addfield"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10021, 'COM_BOOK', 'component', 'com_book', '', 1, 1, 0, 0, '{"name":"COM_BOOK","type":"component","creationDate":"February 2015","author":"John Doe","copyright":"Copyright Info","authorEmail":"john.doe@example.org","authorUrl":"http:\\/\\/www.example.org","version":"0.1.2","description":"COM_BOOK_DESCRIPTION","group":"","filename":"book"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10022, 'plg_editors-xtd_editfield', 'plugin', 'editfield', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_editfield","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"Edit Selected Field","group":"","filename":"editfield"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
	(10023, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"name":"com_phocagallery","type":"component","creationDate":"21\\/10\\/2014","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"4.1.2","description":"Phoca Gallery","group":"","filename":"phocagallery"}', '{"category_ordering":"1","categories_description":"","image_categories_size":"1","categories_image_ordering":"10","categories_display_avatar":"0","display_subcategories":"1","display_empty_categories":"0","display_access_category":"0","hide_categories":"","show_categories":"","default_pagination_categories":"0","pagination_categories":"5,10,15,20,50","categories_box_space":"0","display_cat_desc_box":"0","char_cat_length_name":"20","categories_mosaic_images":"0","display_image_categories":"1","equal_percentage_width":"1","categories_box_width":"50%","categories_columns":"1","image_ordering":"1","display_new":"0","display_hot":"0","display_name":"1","display_icon_detail":"1","display_icon_download":"2","char_length_name":"15","category_box_space":"0","display_categories_sub":"0","display_subcat_page":"0","display_category_icon_image":"0","category_image_ordering":"10","display_back_button":"1","display_categories_back_button":"1","default_pagination_category":"20","pagination_category":"5,10,15,20,50","display_img_desc_box":"0","diff_thumb_height":"0","display_categories_cv":"0","display_subcat_page_cv":"0","display_back_button_cv":"1","display_categories_back_button_cv":"1","enable_cooliris":"0","start_cooliris":"0","piclens_image":"1","switch_image":"0","switch_width":"640","switch_height":"480","switch_fixed_size":"0","enable_overlib":"0","overlib_image_rate":"","overlib_attributes":"BELOW, RIGHT, CSSCLASS, TEXTFONTCLASS, \'fontPhocaClass\', FGCLASS, \'fgPhocaClass\', BGCLASS, \'bgPhocaClass\', CAPTIONFONTCLASS,\'capfontPhocaClass\', CLOSEFONTCLASS, \'capfontclosePhocaClass\'","display_category_statistics":"0","display_main_cat_stat":"1","display_lastadded_cat_stat":"1","count_lastadded_cat_stat":"3","display_mostviewed_cat_stat":"1","count_mostviewed_cat_stat":"3","display_camera_info":"0","exif_information":"FILE.FileName,FILE.FileDateTime,FILE.FileSize,FILE.MimeType,COMPUTED_Height,COMPUTED_Width,COMPUTED_IsColor,COMPUTED_ApertureFNumber,IFD0.Make,IFD0.Model,IFD0.Orientation,IFD0.XResolution,IFD0.YResolution,IFD0.ResolutionUnit,IFD0.Software,IFD0.DateTime,IFD0.Exif_IFD_Pointer,IFD0.GPS_IFD_Pointer,EXIF.ExposureTime,EXIF.FNumber,EXIF.ExposureProgram,EXIF.ISOSpeedRatings,EXIF.ExifVersion,EXIF.DateTimeOriginal,EXIF.DateTimeDigitized,EXIF.ShutterSpeedValue,EXIF.ApertureValue,EXIF.ExposureBiasValue,EXIF.MaxApertureValue,EXIF.MeteringMode,EXIF.LightSource,EXIF.Flash,EXIF.FocalLength,EXIF.SubSecTimeOriginal,EXIF.SubSecTimeDigitized,EXIF.ColorSpace,EXIF.ExifImageWidth,EXIF.ExifImageLength,EXIF.SensingMethod,EXIF.CustomRendered,EXIF.ExposureMode,EXIF.WhiteBalance,EXIF.DigitalZoomRatio,EXIF.FocalLengthIn35mmFilm,EXIF.SceneCaptureType,EXIF.GainControl,EXIF.Contrast,EXIF.Saturation,EXIF.Sharpness,EXIF.SubjectDistanceRange,GPS.GPSLatitudeRef,GPS.GPSLatitude,GPS.GPSLongitudeRef,GPS.GPSLongitude,GPS.GPSAltitudeRef,GPS.GPSAltitude,GPS.GPSTimeStamp,GPS.GPSStatus,GPS.GPSMapDatum,GPS.GPSDateStamp","detail_window":"0","modal_box_overlay_opacity":"0.3","sb_slideshow_delay":"5","sb_settings":"overlayColor: \'#000\',overlayOpacity:0.5,resizeDuration:0.35,displayCounter:true,displayNav:true","highslide_class":"rounded-white","highslide_opacity":"0","highslide_outline_type":"rounded-white","highslide_fullimg":"0","highslide_close_button":"0","highslide_slideshow":"1","jak_slideshow_delay":"5","jak_orientation":"none","jak_description":"1","jak_description_height":"10","boxplus_theme":"lightsquare","boxplus_bautocenter":"1","boxplus_autofit":"1","boxplus_slideshow":"0","boxplus_loop":"0","boxplus_captions":"bottom","boxplus_thumbs":"inside","boxplus_duration":"250","boxplus_transition":"linear","boxplus_contextmenu":"1","enable_multibox":"0","display_multibox":["1"],"multibox_width":"980","multibox_height":"560","multibox_map_width":"280","multibox_map_height":"300","multibox_thubms_box_width":"300","multibox_thubms_count":"4","multibox_comments_width":"300","multibox_comments_height":"600","multibox_fixed_cols":"1","ytb_display":"0","display_description_detail":"0","display_title_description":"0","slideshow_delay":"3000","slideshow_pause":"2000","slideshow_random":"0","slideshow_description":"peekaboo","detail_buttons":"1","phocagallery_width":"","phocagallery_center":"0","gallery_metadesc":"","gallery_metakey":"","alt_value":"1","display_tags_links":"0","tags_links":"0","display_feed":"1","feed_cat_ids":"","feed_img_ordering":"6","feed_img_count":"5","feed_title":"","enable_picasa_loading":"1","picasa_load_pagination":"20","enable_facebook_loading":"1","fb_load_pagination":"25","enable_cache":"0","display_categories_geotagging":"0","categories_lng":"","categories_lat":"","categories_zoom":"2","categories_map_width":"","categories_map_height":"500","display_icon_geotagging":"0","display_category_geotagging":"0","category_map_width":"","category_map_height":"400","display_icon_vm":"0","enable_user_cp":"0","enable_upload_avatar":"1","enable_avatar_approve":"0","enable_usercat_approve":"0","enable_usersubcat_approve":"0","enable_direct_subcat":"0","user_subcat_count":"5","max_create_cat_char":"1000","user_ucp_lang":"1","enable_userimage_approve":"0","max_upload_char":"1000","upload_maxsize":"3145728","upload_maxres_width":"3072","upload_maxres_height":"2304","user_images_max_size":"20971520","enable_multiple":"0","multiple_upload_method":"1","multiple_upload_chunk":"0","multiple_resize_width":"-1","multiple_resize_height":"-1","enable_java":"-1","java_box_width":"480","java_box_height":"480","youtube_upload":"0","display_rating":"0","display_rating_img":"0","display_comment":"0","display_comment_img":"0","comment_width":"500","max_comment_char":"1000","display_comment_nopup":"0","external_comment_system":"0","fb_comment_user_id":"","pagination_thumbnail_creation":"0","clean_thumbnails":"0","enable_thumb_creation":"1","crop_thumbnail":"5","additional_thumbnails":"0","jpeg_quality":"85","large_image_width":"640","large_image_height":"480","medium_image_width":"100","medium_image_height":"100","small_image_width":"50","small_image_height":"50","front_modal_box_width":"680","front_modal_box_height":"560","create_watermark":"0","watermark_position_x":"center","watermark_position_y":"middle","folder_permissions":"0755","jfile_thumbs":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
/*!40000 ALTER TABLE `ph_extensions` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_filters
DROP TABLE IF EXISTS `ph_finder_filters`;
CREATE TABLE IF NOT EXISTS `ph_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_filters: ~0 rows (aproximativ)
DELETE FROM `ph_finder_filters`;
/*!40000 ALTER TABLE `ph_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_filters` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links
DROP TABLE IF EXISTS `ph_finder_links`;
CREATE TABLE IF NOT EXISTS `ph_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links`;
/*!40000 ALTER TABLE `ph_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms0
DROP TABLE IF EXISTS `ph_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms0: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms0`;
/*!40000 ALTER TABLE `ph_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms0` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms1
DROP TABLE IF EXISTS `ph_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms1: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms1`;
/*!40000 ALTER TABLE `ph_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms1` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms2
DROP TABLE IF EXISTS `ph_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms2: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms2`;
/*!40000 ALTER TABLE `ph_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms2` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms3
DROP TABLE IF EXISTS `ph_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms3: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms3`;
/*!40000 ALTER TABLE `ph_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms3` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms4
DROP TABLE IF EXISTS `ph_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms4: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms4`;
/*!40000 ALTER TABLE `ph_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms4` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms5
DROP TABLE IF EXISTS `ph_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms5: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms5`;
/*!40000 ALTER TABLE `ph_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms5` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms6
DROP TABLE IF EXISTS `ph_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms6: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms6`;
/*!40000 ALTER TABLE `ph_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms6` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms7
DROP TABLE IF EXISTS `ph_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms7: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms7`;
/*!40000 ALTER TABLE `ph_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms7` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms8
DROP TABLE IF EXISTS `ph_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms8: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms8`;
/*!40000 ALTER TABLE `ph_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms8` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_terms9
DROP TABLE IF EXISTS `ph_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_terms9: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_terms9`;
/*!40000 ALTER TABLE `ph_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_terms9` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termsa
DROP TABLE IF EXISTS `ph_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termsa: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termsa`;
/*!40000 ALTER TABLE `ph_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termsa` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termsb
DROP TABLE IF EXISTS `ph_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termsb: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termsb`;
/*!40000 ALTER TABLE `ph_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termsb` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termsc
DROP TABLE IF EXISTS `ph_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termsc: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termsc`;
/*!40000 ALTER TABLE `ph_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termsc` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termsd
DROP TABLE IF EXISTS `ph_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termsd: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termsd`;
/*!40000 ALTER TABLE `ph_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termsd` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termse
DROP TABLE IF EXISTS `ph_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termse: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termse`;
/*!40000 ALTER TABLE `ph_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termse` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_links_termsf
DROP TABLE IF EXISTS `ph_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `ph_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_links_termsf: ~0 rows (aproximativ)
DELETE FROM `ph_finder_links_termsf`;
/*!40000 ALTER TABLE `ph_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_links_termsf` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_taxonomy
DROP TABLE IF EXISTS `ph_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `ph_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_taxonomy: ~0 rows (aproximativ)
DELETE FROM `ph_finder_taxonomy`;
/*!40000 ALTER TABLE `ph_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `ph_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
	(1, 0, 'ROOT', 0, 0, 0);
/*!40000 ALTER TABLE `ph_finder_taxonomy` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_taxonomy_map
DROP TABLE IF EXISTS `ph_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `ph_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_taxonomy_map: ~0 rows (aproximativ)
DELETE FROM `ph_finder_taxonomy_map`;
/*!40000 ALTER TABLE `ph_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_taxonomy_map` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_terms
DROP TABLE IF EXISTS `ph_finder_terms`;
CREATE TABLE IF NOT EXISTS `ph_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_terms: ~0 rows (aproximativ)
DELETE FROM `ph_finder_terms`;
/*!40000 ALTER TABLE `ph_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_terms` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_terms_common
DROP TABLE IF EXISTS `ph_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `ph_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_terms_common: ~115 rows (aproximativ)
DELETE FROM `ph_finder_terms_common`;
/*!40000 ALTER TABLE `ph_finder_terms_common` DISABLE KEYS */;
INSERT INTO `ph_finder_terms_common` (`term`, `language`) VALUES
	('a', 'en'),
	('about', 'en'),
	('after', 'en'),
	('ago', 'en'),
	('all', 'en'),
	('am', 'en'),
	('an', 'en'),
	('and', 'en'),
	('ani', 'en'),
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
	('noth', 'en'),
	('nothing', 'en'),
	('of', 'en'),
	('off', 'en'),
	('often', 'en'),
	('old', 'en'),
	('on', 'en'),
	('onc', 'en'),
	('once', 'en'),
	('onli', 'en'),
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
	('veri', 'en'),
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
	('whi', 'en'),
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
/*!40000 ALTER TABLE `ph_finder_terms_common` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_tokens
DROP TABLE IF EXISTS `ph_finder_tokens`;
CREATE TABLE IF NOT EXISTS `ph_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_tokens: 0 rows
DELETE FROM `ph_finder_tokens`;
/*!40000 ALTER TABLE `ph_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_tokens` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_tokens_aggregate
DROP TABLE IF EXISTS `ph_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `ph_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_tokens_aggregate: 0 rows
DELETE FROM `ph_finder_tokens_aggregate`;
/*!40000 ALTER TABLE `ph_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_tokens_aggregate` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_finder_types
DROP TABLE IF EXISTS `ph_finder_types`;
CREATE TABLE IF NOT EXISTS `ph_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_finder_types: ~0 rows (aproximativ)
DELETE FROM `ph_finder_types`;
/*!40000 ALTER TABLE `ph_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_finder_types` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_languages
DROP TABLE IF EXISTS `ph_languages`;
CREATE TABLE IF NOT EXISTS `ph_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_languages: ~0 rows (aproximativ)
DELETE FROM `ph_languages`;
/*!40000 ALTER TABLE `ph_languages` DISABLE KEYS */;
INSERT INTO `ph_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
	(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);
/*!40000 ALTER TABLE `ph_languages` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_menu
DROP TABLE IF EXISTS `ph_menu`;
CREATE TABLE IF NOT EXISTS `ph_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_menu: ~61 rows (aproximativ)
DELETE FROM `ph_menu`;
/*!40000 ALTER TABLE `ph_menu` DISABLE KEYS */;
INSERT INTO `ph_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
	(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 121, 0, '*', 0),
	(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
	(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
	(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
	(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
	(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
	(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
	(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
	(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
	(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
	(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
	(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
	(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
	(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
	(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
	(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
	(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
	(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
	(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
	(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
	(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
	(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
	(103, 'main', 'COM_PARTNER_MENU', 'com-partner-menu', '', 'com-partner-menu', 'index.php?option=com_partner', 'component', 0, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 43, 44, 0, '', 1),
	(104, 'mainmenu', 'Noutati', 'noutati', '', 'noutati', 'index.php?option=com_content&view=category&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 48, 0, '*', 0),
	(105, 'mainmenu', 'Noutate 1', 'noutate-1', '', 'noutati/noutate-1', 'index.php?option=com_content&view=article&id=1', 'component', 1, 104, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
	(106, 'main', 'COM_SERVICE_MENU', 'com-service-menu', '', 'com-service-menu', 'index.php?option=com_service', 'component', 0, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 49, 50, 0, '', 1),
	(108, 'mainmenu', 'Servicii', 'servicii', '', 'servicii', 'index.php?option=com_service&view=services', 'component', 1, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"service_title_text":"","service_description_text":"","service_embeded_video":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 60, 0, '*', 0),
	(112, 'mainmenu', 'Servicii Avast', 'servicii-avast', '', 'servicii/servicii-avast', 'index.php?option=com_service&view=service&id=6', 'component', 1, 108, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
	(113, 'mainmenu', 'Servicii Telekom', 'servicii-telekom', '', 'servicii/servicii-telekom', 'index.php?option=com_service&view=service&id=7', 'component', 1, 108, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 54, 55, 0, '*', 0),
	(119, 'mainmenu', 'Servicii Pharmec', 'servicii-pharmec', '', 'servicii/servicii-pharmec', 'index.php?option=com_service&view=category&catid=11', 'component', 1, 108, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"service_title_text":"","service_description_text":"","service_embeded_video":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 59, 0, '*', 0),
	(120, 'mainmenu', 'Servicii Hardware', 'servicii-hardware', '', 'servicii/servicii-pharmec/servicii-hardware', 'index.php?option=com_service&view=service&id=8', 'component', 1, 119, 3, 10006, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
	(122, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 61, 70, 0, '', 1),
	(123, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 122, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 62, 63, 0, '', 1),
	(124, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 122, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 64, 65, 0, '', 1),
	(125, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 122, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 66, 67, 0, '', 1),
	(126, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 122, 2, 10010, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 68, 69, 0, '', 1),
	(127, 'mainmenu', 'Parteneri', 'parteneri', '', 'parteneri', 'index.php?option=com_partner&view=partners', 'component', 1, 1, 1, 10004, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
	(128, 'main', 'COM_BOOKING_MENU', 'com-booking-menu', '', 'com-booking-menu', 'index.php?option=com_booking', 'component', 0, 1, 1, 10013, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 73, 74, 0, '', 1),
	(129, 'main', 'PHARMEC DO NOT USE', 'pharmec-do-not-use', '', 'pharmec-do-not-use', 'index.php?option=com_pharmec', 'component', 0, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 75, 76, 0, '', 1),
	(130, 'hidden', '404', '404', '', '404', 'index.php?option=com_content&view=article&id=5', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 77, 78, 0, '*', 0),
	(135, 'main', 'COM_NEWSLETTER_MENU', 'com-newsletter-menu', '', 'com-newsletter-menu', 'index.php?option=com_newsletter', 'component', 0, 1, 1, 10017, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 79, 80, 0, '', 1),
	(136, 'mainmenu', 'Test', 'test', '', 'test', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
	(141, 'main', 'COM_BOOK_MENU', 'com-book-menu', '', 'com-book-menu', 'index.php?option=com_book', 'component', 0, 1, 1, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 83, 84, 0, '', 1),
	(142, 'mainmenu', 'Clubul De Carte', 'clubul-de-carte', '', 'clubul-de-carte', 'index.php?option=com_book&view=books', 'component', 1, 1, 1, 10021, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
	(143, 'hidden', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"\\/clubul-de-carte","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
	(144, 'hidden', 'Register', 'register', '', 'register', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
	(145, 'main', 'COM_PHOCAGALLERY', 'com-phocagallery', '', 'com-phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu.png', 0, '', 91, 118, 0, '', 1),
	(146, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com-phocagallery-controlpanel', '', 'com-phocagallery/com-phocagallery-controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-control-panel.png', 0, '', 92, 93, 0, '', 1),
	(147, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com-phocagallery-images', '', 'com-phocagallery/com-phocagallery-images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-gal.png', 0, '', 94, 95, 0, '', 1),
	(148, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com-phocagallery-categories', '', 'com-phocagallery/com-phocagallery-categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-cat.png', 0, '', 96, 97, 0, '', 1),
	(149, 'main', 'COM_PHOCAGALLERY_THEMES', 'com-phocagallery-themes', '', 'com-phocagallery/com-phocagallery-themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-theme.png', 0, '', 98, 99, 0, '', 1),
	(150, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com-phocagallery-categoryrating', '', 'com-phocagallery/com-phocagallery-categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote.png', 0, '', 100, 101, 0, '', 1),
	(151, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com-phocagallery-imagerating', '', 'com-phocagallery/com-phocagallery-imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-vote-img.png', 0, '', 102, 103, 0, '', 1),
	(152, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com-phocagallery-categorycomments', '', 'com-phocagallery/com-phocagallery-categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment.png', 0, '', 104, 105, 0, '', 1),
	(153, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com-phocagallery-imagecomments', '', 'com-phocagallery/com-phocagallery-imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-comment-img.png', 0, '', 106, 107, 0, '', 1),
	(154, 'main', 'COM_PHOCAGALLERY_USERS', 'com-phocagallery-users', '', 'com-phocagallery/com-phocagallery-users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-users.png', 0, '', 108, 109, 0, '', 1),
	(155, 'main', 'COM_PHOCAGALLERY_FB', 'com-phocagallery-fb', '', 'com-phocagallery/com-phocagallery-fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-fb.png', 0, '', 110, 111, 0, '', 1),
	(156, 'main', 'COM_PHOCAGALLERY_TAGS', 'com-phocagallery-tags', '', 'com-phocagallery/com-phocagallery-tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-tags.png', 0, '', 112, 113, 0, '', 1),
	(157, 'main', 'COM_PHOCAGALLERY_STYLES', 'com-phocagallery-styles', '', 'com-phocagallery/com-phocagallery-styles', 'index.php?option=com_phocagallery&view=phocagalleryefs', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-styles.png', 0, '', 114, 115, 0, '', 1),
	(158, 'main', 'COM_PHOCAGALLERY_INFO', 'com-phocagallery-info', '', 'com-phocagallery/com-phocagallery-info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 145, 2, 10023, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocagallery/images/administrator/icon-16-pg-menu-info.png', 0, '', 116, 117, 0, '', 1),
	(159, 'mainmenu', 'Galerie', 'galerie', '', 'galerie', 'index.php?option=com_phocagallery&view=categories', 'component', 1, 1, 1, 10023, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination_categories":"0","show_pagination_category":"1","show_pagination_limit_categories":"0","show_pagination_limit_category":"0","show_ordering_categories":"0","show_ordering_images":"0","display_cat_name_title":"1","display_cat_name_breadcrumbs":"0","show_parent_categories":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 119, 120, 0, '*', 0);
/*!40000 ALTER TABLE `ph_menu` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_menu_types
DROP TABLE IF EXISTS `ph_menu_types`;
CREATE TABLE IF NOT EXISTS `ph_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_menu_types: ~2 rows (aproximativ)
DELETE FROM `ph_menu_types`;
/*!40000 ALTER TABLE `ph_menu_types` DISABLE KEYS */;
INSERT INTO `ph_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
	(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
	(2, 'hidden', 'Hidden Menu', '');
/*!40000 ALTER TABLE `ph_menu_types` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_messages
DROP TABLE IF EXISTS `ph_messages`;
CREATE TABLE IF NOT EXISTS `ph_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_messages: ~2 rows (aproximativ)
DELETE FROM `ph_messages`;
/*!40000 ALTER TABLE `ph_messages` DISABLE KEYS */;
INSERT INTO `ph_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
	(1, 0, 0, 0, '2015-07-10 13:27:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: SMTP connect() failed. The user who attempted to register is: vote_test'),
	(2, 0, 0, 0, '2015-07-10 13:27:58', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: SMTP connect() failed. The user who attempted to register is: vote_test');
/*!40000 ALTER TABLE `ph_messages` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_messages_cfg
DROP TABLE IF EXISTS `ph_messages_cfg`;
CREATE TABLE IF NOT EXISTS `ph_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_messages_cfg: ~0 rows (aproximativ)
DELETE FROM `ph_messages_cfg`;
/*!40000 ALTER TABLE `ph_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_messages_cfg` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_modules
DROP TABLE IF EXISTS `ph_modules`;
CREATE TABLE IF NOT EXISTS `ph_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_modules: ~22 rows (aproximativ)
DELETE FROM `ph_modules`;
/*!40000 ALTER TABLE `ph_modules` DISABLE KEYS */;
INSERT INTO `ph_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
	(1, 39, 'Main Menu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"101","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
	(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
	(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
	(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
	(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
	(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
	(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
	(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
	(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
	(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
	(16, 50, 'Login Form', '', '', 1, 'login_form', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"142","logout":"142","greeting":"0","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
	(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
	(87, 54, 'Pharmec Slider', '', '', 1, 'top', 502, '2015-06-30 09:39:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pharmec_slider', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(88, 55, 'Pharmec Parteneri', '', '', 0, 'middle', 502, '2015-05-10 19:26:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pharmec_parteneri', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(89, 63, 'News', '', '', 1, 'news', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pharmec_news', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(90, 68, 'Test', '', '', 0, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/www.test.ro","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(91, 69, 'Meniu', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_gruemenu', 1, 1, '{"jQuery":"1","menutype":"mainmenu","startLevel":"1","endLevel":"0","menubg":"#42A6BC","menulink":"#FFFFFF","submenubg":"#ABF9FF","submenulink":"#000536","menubghover":"#429CB0","menulinkhover":"#FFFFFF","menuradius":"3","fontstyle":"Open+Sans","tag_id":"","class_sfx":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(92, 72, 'Pharmec Right Booking', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pharmec_right_booking', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
	(93, 73, 'Footer Newsletter', '', '', 1, 'footer_booking', 502, '2015-06-29 14:01:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pharmec_footer_booking', 1, 1, '{"module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');
/*!40000 ALTER TABLE `ph_modules` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_modules_menu
DROP TABLE IF EXISTS `ph_modules_menu`;
CREATE TABLE IF NOT EXISTS `ph_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_modules_menu: ~29 rows (aproximativ)
DELETE FROM `ph_modules_menu`;
/*!40000 ALTER TABLE `ph_modules_menu` DISABLE KEYS */;
INSERT INTO `ph_modules_menu` (`moduleid`, `menuid`) VALUES
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
	(16, 146),
	(17, 0),
	(79, 0),
	(86, 0),
	(87, 101),
	(87, 108),
	(87, 112),
	(88, 101),
	(89, 101),
	(90, 0),
	(91, 0),
	(92, 108),
	(92, 112),
	(92, 113),
	(92, 119),
	(92, 120),
	(93, 0);
/*!40000 ALTER TABLE `ph_modules_menu` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_newsfeeds
DROP TABLE IF EXISTS `ph_newsfeeds`;
CREATE TABLE IF NOT EXISTS `ph_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_newsfeeds: ~0 rows (aproximativ)
DELETE FROM `ph_newsfeeds`;
/*!40000 ALTER TABLE `ph_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_newsfeeds` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_newsletter
DROP TABLE IF EXISTS `ph_newsletter`;
CREATE TABLE IF NOT EXISTS `ph_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `newsletter_type` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_newsletter: 8 rows
DELETE FROM `ph_newsletter`;
/*!40000 ALTER TABLE `ph_newsletter` DISABLE KEYS */;
INSERT INTO `ph_newsletter` (`id`, `email`, `newsletter_type`, `city`, `phone`, `published`) VALUES
	(1, 'Test', 'Cabinet', '', NULL, 0),
	(2, 'Test 1', 'Cabinet', 'Test', NULL, 0),
	(3, 'Test', 'Farmacie', 'Test', NULL, 0),
	(4, 'test_last@yahoo.com', 'Test', 'Farmacie', NULL, 0),
	(5, 'test@yahoo.com', 'Cabinet', 'test', NULL, 0),
	(6, 'test_phone@yahoo.com', 'Cabinet', 'Test', '1234231', 0),
	(7, 'test_phone@yahoo.com', 'Cabinet', 'Test', '1234231', 0),
	(8, 'test_phone@yahoo.com', 'Cabinet', 'Test', '', 0);
/*!40000 ALTER TABLE `ph_newsletter` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_overrider
DROP TABLE IF EXISTS `ph_overrider`;
CREATE TABLE IF NOT EXISTS `ph_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2803 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_overrider: ~2.793 rows (aproximativ)
DELETE FROM `ph_overrider`;
/*!40000 ALTER TABLE `ph_overrider` DISABLE KEYS */;
INSERT INTO `ph_overrider` (`id`, `constant`, `string`, `file`) VALUES
	(1, 'COM_AJAX', 'Ajax Interface', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(2, 'COM_AJAX_XML_DESCRIPTION', 'An extendable Ajax interface for Joomla.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(3, 'COM_AJAX_SPECIFY_FORMAT', 'Please specify a valid response format, other than that of HTML, such as json, raw, debug, etc.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(4, 'COM_AJAX_METHOD_NOT_EXISTS', 'Method %s does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(5, 'COM_AJAX_FILE_NOT_EXISTS', 'The file at %s does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(6, 'COM_AJAX_MODULE_NOT_ACCESSIBLE', 'Module %s is not published, you do not have access to it, or it\'s not assigned to the current menu item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_ajax.ini'),
	(7, 'COM_CONFIG', 'Admin Services', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(8, 'COM_CONFIG_CONFIGURATION', 'Admin Services Configuration', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(9, 'COM_CONFIG_ERROR_CONTROLLER_NOT_FOUND', 'Controller Not found!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(10, 'COM_CONFIG_FIELD_DEFAULT_ACCESS_LEVEL_DESC', 'Select the default access level for new content, menu items and other items created on your site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(11, 'COM_CONFIG_FIELD_DEFAULT_ACCESS_LEVEL_LABEL', 'Default Access Level', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(12, 'COM_CONFIG_FIELD_DEFAULT_LIST_LIMIT_DESC', 'Sets the default length of lists in the Control Panel for all users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(13, 'COM_CONFIG_FIELD_DEFAULT_LIST_LIMIT_LABEL', 'Default List Limit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(14, 'COM_CONFIG_FIELD_METADESC_DESC', 'Enter a description of the overall website that is to be used by search engines. Generally, a maximum of 20 words is optimal.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(15, 'COM_CONFIG_FIELD_METADESC_LABEL', 'Site Meta Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(16, 'COM_CONFIG_FIELD_METAKEYS_DESC', 'Enter the keywords and phrases that best describe your website. Separate keywords and phrases with a comma.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(17, 'COM_CONFIG_FIELD_METAKEYS_LABEL', 'Site Meta Keywords', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(18, 'COM_CONFIG_FIELD_SEF_URL_DESC', 'Select whether or not the URLs are optimised for Search Engines.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(19, 'COM_CONFIG_FIELD_SEF_URL_LABEL', 'Search Engine Friendly URLs', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(20, 'COM_CONFIG_FIELD_SITE_NAME_DESC', 'Enter the name of your website. This will be used in various locations (eg the Backend browser title bar and <em>Site Offline</em> pages).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(21, 'COM_CONFIG_FIELD_SITE_NAME_LABEL', 'Site Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(22, 'COM_CONFIG_FIELD_VALUE_AFTER', 'After', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(23, 'COM_CONFIG_FIELD_VALUE_BEFORE', 'Before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(24, 'COM_CONFIG_FIELD_SITE_OFFLINE_DESC', 'Select whether access to the Site Frontend is available. If Yes, the Frontend will display a message if set such in Backend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(25, 'COM_CONFIG_FIELD_SITE_OFFLINE_LABEL', 'Site Offline', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(26, 'COM_CONFIG_FIELD_SITENAME_PAGETITLES_DESC', 'Begin or end all Page Titles with the site name (for example, My Site Name - My Article Name).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(27, 'COM_CONFIG_FIELD_SITENAME_PAGETITLES_LABEL', 'Include Site Name in Page Titles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(28, 'COM_CONFIG_METADATA_SETTINGS', 'Metadata Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(29, 'COM_CONFIG_MODULES_MODULE_NAME', 'Module Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(30, 'COM_CONFIG_MODULES_MODULE_TYPE', 'Module Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(31, 'COM_CONFIG_MODULES_SETTINGS_TITLE', 'Module Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(32, 'COM_CONFIG_MODULES_SAVE_SUCCESS', 'Module successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(33, 'COM_CONFIG_SAVE_SUCCESS', 'Configuration successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(34, 'COM_CONFIG_SEO_SETTINGS', 'SEO Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(35, 'COM_CONFIG_SITE_SETTINGS', 'Site Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(36, 'COM_CONFIG_TEMPLATE_SETTINGS', 'Template Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(37, 'COM_CONFIG_XML_DESCRIPTION', 'Frontend Admin Services Configuration Manager.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_config.ini'),
	(38, 'COM_CONTACT_ADDRESS', 'Address', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(39, 'COM_CONTACT_ARTICLES_HEADING', 'Contact\'s articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(40, 'COM_CONTACT_CAPTCHA_LABEL', 'Captcha', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(41, 'COM_CONTACT_CAPTCHA_DESC', 'Type in the textbox what you see in the image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(42, 'COM_CONTACT_CAT_NUM', '# of Contacts :', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(43, 'COM_CONTACT_CONTACT_EMAIL_A_COPY_DESC', 'Sends a copy of the message to the address you have supplied.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(44, 'COM_CONTACT_CONTACT_EMAIL_A_COPY_LABEL', 'Send Copy to Yourself', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(45, 'COM_CONTACT_CONTACT_EMAIL_NAME_DESC', 'Your name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(46, 'COM_CONTACT_CONTACT_EMAIL_NAME_LABEL', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(47, 'COM_CONTACT_CONTACT_ENTER_MESSAGE_DESC', 'Enter your message here.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(48, 'COM_CONTACT_CONTACT_ENTER_MESSAGE_LABEL', 'Message', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(49, 'COM_CONTACT_CONTACT_ENTER_VALID_EMAIL', 'Please enter a valid email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(50, 'COM_CONTACT_CONTENT_TYPE_CONTACT', 'Contact', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(51, 'COM_CONTACT_CONTENT_TYPE_CATEGORY', 'Contact Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(52, 'COM_CONTACT_FILTER_LABEL', 'Filter Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(53, 'COM_CONTACT_FILTER_SEARCH_DESC', 'Contact Filter Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(54, 'COM_CONTACT_CONTACT_MESSAGE_SUBJECT_DESC', 'Enter the subject of your message here.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(55, 'COM_CONTACT_CONTACT_MESSAGE_SUBJECT_LABEL', 'Subject', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(56, 'COM_CONTACT_CONTACT_SEND', 'Send Email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(57, 'COM_CONTACT_COPYSUBJECT_OF', 'Copy of: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(58, 'COM_CONTACT_COPYTEXT_OF', 'This is a copy of the following message you sent to %s via %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(59, 'COM_CONTACT_COUNT', 'Contact count:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(60, 'COM_CONTACT_COUNTRY', 'Country', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(61, 'COM_CONTACT_DEFAULT_PAGE_TITLE', 'Contacts', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(62, 'COM_CONTACT_DETAILS', 'Contact', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(63, 'COM_CONTACT_DOWNLOAD_INFORMATION_AS', 'Download information as:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(64, 'COM_CONTACT_EMAIL_BANNEDTEXT', 'The %s of your email contains banned text.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(65, 'COM_CONTACT_EMAIL_DESC', 'Email Address for contact.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(66, 'COM_CONTACT_EMAIL_FORM', 'Contact Form', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(67, 'COM_CONTACT_EMAIL_LABEL', 'Email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(68, 'COM_CONTACT_EMAIL_THANKS', 'Thank you for your email.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(69, 'COM_CONTACT_ENQUIRY_TEXT', 'This is an enquiry email via %s from:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(70, 'COM_CONTACT_ERROR_CONTACT_NOT_FOUND', 'Contact not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(71, 'COM_CONTACT_FAX', 'Fax', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(72, 'COM_CONTACT_FAX_NUMBER', 'Fax: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(73, 'COM_CONTACT_FORM_LABEL', 'Send an Email. All fields with an * are required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(74, 'COM_CONTACT_FORM_NC', 'Please make sure the form is complete and valid.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(75, 'COM_CONTACT_IMAGE_DETAILS', 'Contact image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(76, 'COM_CONTACT_LINKS', 'Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(77, 'COM_CONTACT_MAILENQUIRY', '%s Enquiry', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(78, 'COM_CONTACT_MOBILE', 'Mobile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(79, 'COM_CONTACT_MOBILE_NUMBER', 'Mobile: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(80, 'COM_CONTACT_NO_CONTACTS', 'There are no Contacts to display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(81, 'COM_CONTACT_NOT_MORE_THAN_ONE_EMAIL_ADDRESS', 'You can\'t enter more than one email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(82, 'COM_CONTACT_OPTIONAL', '(optional)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(83, 'COM_CONTACT_OTHER_INFORMATION', 'Miscellaneous Information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(84, 'COM_CONTACT_POSITION', 'Position', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(85, 'COM_CONTACT_PROFILE', 'Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(86, 'COM_CONTACT_PROFILE_HEADING', 'Contact profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(87, 'COM_CONTACT_SELECT_CONTACT', 'Select a contact:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(88, 'COM_CONTACT_STATE', 'State', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(89, 'COM_CONTACT_SUBURB', 'Suburb', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(90, 'COM_CONTACT_TELEPHONE', 'Phone', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(91, 'COM_CONTACT_TELEPHONE_NUMBER', 'Phone: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(92, 'COM_CONTACT_VCARD', 'vCard', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_contact.ini'),
	(93, 'COM_CONTENT_ACCESS_DELETE_DESC', 'Inherited state for <strong>delete actions</strong> on this article and the calculated state based on the menu selection.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(94, 'COM_CONTENT_ACCESS_EDITSTATE_DESC', 'Inherited state for <strong>edit state actions</strong> on this article and the calculated state based on the menu selection.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(95, 'COM_CONTENT_ACCESS_EDIT_DESC', 'Inherited state for <strong>edit actions</strong> on this article and the calculated state based on the menu selection.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(96, 'COM_CONTENT_ARTICLE_CONTENT', 'Content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(97, 'COM_CONTENT_ARTICLE_HITS', 'Hits: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(98, 'COM_CONTENT_ARTICLE_INFO', 'Detalii', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(99, 'COM_CONTENT_ARTICLE_VOTE_SUCCESS', 'Thank You for rating this Article.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(100, 'COM_CONTENT_ARTICLE_VOTE_FAILURE', 'You already rated this Article today!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(101, 'COM_CONTENT_AUTHOR_FILTER_LABEL', 'Author Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(102, 'COM_CONTENT_CATEGORY', 'Category: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(103, 'COM_CONTENT_CHECKED_OUT_BY', 'Checked out by %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(104, 'COM_CONTENT_CONTENT_TYPE_ARTICLE', 'Article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(105, 'COM_CONTENT_CONTENT_TYPE_CATEGORY', 'Article Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(106, 'COM_CONTENT_CREATE_ARTICLE', 'Submit new article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(107, 'COM_CONTENT_CREATED_DATE', 'Created Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(108, 'COM_CONTENT_CREATED_DATE_ON', 'Created: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(109, 'COM_CONTENT_EDIT_ITEM', 'Edit Article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(110, 'COM_CONTENT_ERROR_ARTICLE_NOT_FOUND', 'Article not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(111, 'COM_CONTENT_ERROR_LOGIN_TO_VIEW_ARTICLE', 'Please login to view the article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(112, 'COM_CONTENT_ERROR_PARENT_CATEGORY_NOT_FOUND', 'Parent category not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(113, 'COM_CONTENT_FEED_READMORE', 'Read More ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(114, 'COM_CONTENT_FILTER_SEARCH_DESC', 'Content Filter Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(115, 'COM_CONTENT_FORM_EDIT_ARTICLE', 'Edit an article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(116, 'COM_CONTENT_HEADING_TITLE', 'Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(117, 'COM_CONTENT_HITS_FILTER_LABEL', 'Hits Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(118, 'COM_CONTENT_INTROTEXT', 'Article must have some content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(119, 'COM_CONTENT_INVALID_RATING', 'Article Rating: Invalid Rating: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(120, 'COM_CONTENT_LAST_UPDATED', 'Last Updated: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(121, 'COM_CONTENT_METADATA', 'Metadata', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(122, 'COM_CONTENT_MODIFIED_DATE', 'Modified Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(123, 'COM_CONTENT_MONTH', 'Month', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(124, 'COM_CONTENT_MORE_ARTICLES', 'More Articles ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(125, 'COM_CONTENT_NEW_ARTICLE', 'New Article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(126, 'COM_CONTENT_NO_ARTICLES', 'There are no articles in this category. If subcategories display on this page, they may contain articles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(127, 'COM_CONTENT_NONE', 'None', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(128, 'COM_CONTENT_NUM_ITEMS', 'Article Count:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(129, 'COM_CONTENT_ON_NEW_CONTENT', 'A new Article has been submitted by \'%1$s\' entitled \'%2$s\'.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(130, 'COM_CONTENT_ORDERING', 'Ordering:<br />New articles default to the first position in the Category. The ordering can be changed in Backend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(131, 'COM_CONTENT_PAGEBREAK_DOC_TITLE', 'Page Break', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(132, 'COM_CONTENT_PAGEBREAK_INSERT_BUTTON', 'Insert Page Break', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(133, 'COM_CONTENT_PAGEBREAK_TITLE', 'Page Title:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(134, 'COM_CONTENT_PAGEBREAK_TOC', 'Table of Contents Alias:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(135, 'COM_CONTENT_PARENT', 'Parent Category: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(136, 'COM_CONTENT_PUBLISHED_DATE', 'Published Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(137, 'COM_CONTENT_PUBLISHED_DATE_ON', 'Publicat la data de: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(138, 'COM_CONTENT_PUBLISHING', 'Publishing', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(139, 'COM_CONTENT_READ_MORE', 'Read more: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(140, 'COM_CONTENT_READ_MORE_TITLE', 'Read more ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(141, 'COM_CONTENT_REGISTER_TO_READ_MORE', 'Register to read more ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(142, 'COM_CONTENT_SAVE_SUCCESS', 'Article successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(143, 'COM_CONTENT_SAVE_WARNING', 'Alias already existed so a number was added at the end. If you want to change the alias, please contact a site administrator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(144, 'COM_CONTENT_SELECT_AN_ARTICLE', 'Select an Article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(145, 'COM_CONTENT_SUBMIT_SAVE_SUCCESS', 'Article successfully submitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(146, 'COM_CONTENT_TITLE_FILTER_LABEL', 'Title Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(147, 'COM_CONTENT_WRITTEN_BY', 'Written by %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(148, 'COM_CONTENT_FIELD_FULL_DESC', 'Image for the single article display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(149, 'COM_CONTENT_FIELD_FULL_LABEL', 'Full Article Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(150, 'COM_CONTENT_FIELD_IMAGE_DESC', 'The image to be displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(151, 'COM_CONTENT_FIELD_IMAGE_ALT_DESC', 'Alternative text used for visitors without access to images. Replaced with caption text if it is present.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(152, 'COM_CONTENT_FIELD_IMAGE_ALT_LABEL', 'Alt Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(153, 'COM_CONTENT_FIELD_IMAGE_CAPTION_DESC', 'Caption attached to the image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(154, 'COM_CONTENT_FIELD_IMAGE_CAPTION_LABEL', 'Caption', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(155, 'COM_CONTENT_FIELD_INTRO_DESC', 'Image for the intro text layouts such as blogs and featured.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(156, 'COM_CONTENT_FIELD_INTRO_LABEL', 'Intro Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(157, 'COM_CONTENT_FIELD_URLC_LABEL', 'Link C', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(158, 'COM_CONTENT_FIELD_URL_DESC', 'Link for display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(159, 'COM_CONTENT_FIELD_URLA_LABEL', 'Link A', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(160, 'COM_CONTENT_FIELD_URLA_LINK_TEXT_LABEL', 'Link A Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(161, 'COM_CONTENT_FIELD_URLB_LABEL', 'Link B', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(162, 'COM_CONTENT_FIELD_URL_LINK_TEXT_DESC', 'Text to display for the link.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(163, 'COM_CONTENT_FIELD_URLB_LINK_TEXT_LABEL', 'Link B Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(164, 'COM_CONTENT_FIELD_URLC_LINK_TEXT_LABEL', 'Link C Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(165, 'COM_CONTENT_FLOAT_DESC', 'Controls placement of the image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(166, 'COM_CONTENT_FLOAT_LABEL', 'Image Float', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(167, 'COM_CONTENT_FLOAT_INTRO_LABEL', 'Intro Image float', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(168, 'COM_CONTENT_FLOAT_FULLTEXT_LABEL', 'Full text image float.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(169, 'COM_CONTENT_LEFT', 'Left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(170, 'COM_CONTENT_RIGHT', 'Right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(171, 'COM_CONTENT_FIELD_URL_LINK_TEXT_LABEL', 'Link Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(172, 'COM_CONTENT_IMAGES_AND_URLS', 'Images and Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_content.ini'),
	(173, 'COM_FINDER', 'Smart Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(174, 'COM_FINDER_ADVANCED_SEARCH_TOGGLE', 'Advanced Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(175, 'COM_FINDER_ADVANCED_TIPS', '<p>Here are a few examples of how you can use the search feature:</p><p>Entering <span class="term">this and that</span> into the search form will return results containing both &quot;this&quot; and &quot;that&quot;.</p><p>Entering <span class="term">this not that</span> into the search form will return results containing &quot;this&quot; and not &quot;that&quot;.</p><p>Entering <span class="term">this or that</span> into the search form will return results containing either &quot;this&quot; or &quot;that&quot;.</p><p>Entering <span class="term">&quot;this and that&quot;</span> (with quotes) into the search form will return results containing the exact phrase &quot;this and that&quot;.</p><p>Search results can also be filtered using a variety of criteria. Select one or more filters below to get started.</p>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(176, 'COM_FINDER_DEFAULT_PAGE_TITLE', 'Search Results', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(177, 'COM_FINDER_FILTER_BRANCH_LABEL', 'Search by %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(178, 'COM_FINDER_FILTER_DATE_BEFORE', 'Before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(179, 'COM_FINDER_FILTER_DATE_EXACTLY', 'Exactly', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(180, 'COM_FINDER_FILTER_DATE_AFTER', 'After', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(181, 'COM_FINDER_FILTER_DATE1', 'Start Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(182, 'COM_FINDER_FILTER_DATE1_DESC', 'Enter a date in YYYY-MM-DD format.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(183, 'COM_FINDER_FILTER_DATE2', 'End Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(184, 'COM_FINDER_FILTER_DATE2_DESC', 'Enter a date in YYYY-MM-DD format.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(185, 'COM_FINDER_FILTER_SELECT_ALL_LABEL', 'Search All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(186, 'COM_FINDER_FILTER_WHEN_AFTER', 'After', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(187, 'COM_FINDER_FILTER_WHEN_BEFORE', 'Before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(188, 'COM_FINDER_QUERY_DATE_CONDITION_AFTER', 'after', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(189, 'COM_FINDER_QUERY_DATE_CONDITION_BEFORE', 'before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(190, 'COM_FINDER_QUERY_DATE_CONDITION_EXACT', 'exactly on', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(191, 'COM_FINDER_QUERY_END_DATE', 'ending date <span class="when">%s</span> <span class="date">%s</span>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(192, 'COM_FINDER_QUERY_OPERATOR_AND', 'and', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(193, 'COM_FINDER_QUERY_OPERATOR_OR', 'or', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(194, 'COM_FINDER_QUERY_OPERATOR_NOT', 'not', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(195, 'COM_FINDER_QUERY_FILTER_BRANCH_VENUE', 'venue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(196, 'COM_FINDER_QUERY_START_DATE', 'beginning date <span class="when">%s</span> <span class="date">%s</span>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(197, 'COM_FINDER_QUERY_TAXONOMY_NODE', 'with <span class="node">%s</span> as <span class="branch">%s</span> ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(198, 'COM_FINDER_QUERY_TOKEN_EXCLUDED', '<span class="term">%s</span> should be excluded.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(199, 'COM_FINDER_QUERY_TOKEN_GLUE', ', and ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(200, 'COM_FINDER_QUERY_TOKEN_INTERPRETED', 'Assuming %s, the following results were found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(201, 'COM_FINDER_QUERY_TOKEN_OPTIONAL', '<span class="term">%s</span> is optional.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(202, 'COM_FINDER_QUERY_TOKEN_REQUIRED', '<span class="term">%s</span> is required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(203, 'COM_FINDER_SEARCH_NO_RESULTS_BODY', 'No search results could be found for query: %s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(204, 'COM_FINDER_SEARCH_NO_RESULTS_BODY_MULTILANG', 'No search results (in English-UK) could be found for query: %s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(205, 'COM_FINDER_SEARCH_NO_RESULTS_HEADING', 'No Results Found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(206, 'COM_FINDER_SEARCH_RESULTS_OF', 'Results <strong>%s</strong> - <strong>%s</strong> of <strong>%s</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(207, 'COM_FINDER_SEARCH_SIMILAR', 'Did you mean: %s?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(208, 'COM_FINDER_SEARCH_TERMS', 'Search Terms:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_finder.ini'),
	(209, 'COMMON_EDIT_CONFIRM', 'Do you want to use the WYSIWYG mode for this textarea?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(210, 'COMMON_APPLY', 'Apply', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(211, 'COMMON_INSERT', 'Insert', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(212, 'COMMON_UPDATE', 'Update', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(213, 'COMMON_CANCEL', 'Cancel', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(214, 'COMMON_CLOSE', 'Close', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(215, 'COMMON_BROWSE', 'Browse', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(216, 'COMMON_CLASS_NAME', 'Class', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(217, 'COMMON_NOT_SET', '-- Not set --', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(218, 'COMMON_CLIPBOARD_MSG', 'Cut and Copy are not available in Mozilla and Firefox. \\nPlease use keyboard shortcuts %s+C and %s+X instead.\\n\\nDo you want more information about this issue?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(219, 'COMMON_CLIPBOARD_NO_SUPPORT', 'Currently not supported by your browser, use keyboard shortcuts instead.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(220, 'COMMON_POPUP_BLOCKED', 'Sorry, but we have noticed that your popup-blocker has disabled a window that provides application functionality. You will need to disable popup blocking on this site in order to fully utilize this tool.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(221, 'COMMON_INVALID_DATA', '{#field} is invalid', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(222, 'COMMON_INVALID_DATA_NUMBER', '{#field} must be a number', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(223, 'COMMON_INVALID_DATA_MIN', '{#field} must be a number greater than {#min}', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(224, 'COMMON_INVALID_DATA_SIZE', '{#field} must be a number or percentage', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(225, 'COMMON_MORE_COLORS', 'More colors', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(226, 'COLORPICKER_HEX_F0F8FF', 'AliceBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(227, 'COLORPICKER_HEX_FAEBD7', 'AntiqueWhite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(228, 'COLORPICKER_HEX_00FFFF', 'Cyan', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(229, 'COLORPICKER_HEX_7FFFD4', 'Aquamarine', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(230, 'COLORPICKER_HEX_F0FFFF', 'Azure', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(231, 'COLORPICKER_HEX_F5F5DC', 'Beige', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(232, 'COLORPICKER_HEX_FFE4C4', 'Bisque', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(233, 'COLORPICKER_HEX_000000', 'Black', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(234, 'COLORPICKER_HEX_FFEBCD', 'BlanchedAlmond', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(235, 'COLORPICKER_HEX_0000FF', 'Blue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(236, 'COLORPICKER_HEX_8A2BE2', 'BlueViolet', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(237, 'COLORPICKER_HEX_A52A2A', 'Brown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(238, 'COLORPICKER_HEX_DEB887', 'BurlyWood', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(239, 'COLORPICKER_HEX_5F9EA0', 'CadetBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(240, 'COLORPICKER_HEX_7FFF00', 'Chartreuse', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(241, 'COLORPICKER_HEX_D2691E', 'Chocolate', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(242, 'COLORPICKER_HEX_FF7F50', 'Coral', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(243, 'COLORPICKER_HEX_6495ED', 'CornflowerBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(244, 'COLORPICKER_HEX_FFF8DC', 'Cornsilk', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(245, 'COLORPICKER_HEX_DC143C', 'Crimson', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(246, 'COLORPICKER_HEX_00008B', 'DarkBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(247, 'COLORPICKER_HEX_008B8B', 'DarkCyan', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(248, 'COLORPICKER_HEX_B8860B', 'DarkGoldenRod', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(249, 'COLORPICKER_HEX_A9A9A9', 'DarkGray', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(250, 'COLORPICKER_HEX_006400', 'DarkGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(251, 'COLORPICKER_HEX_BDB76B', 'DarkKhaki', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(252, 'COLORPICKER_HEX_8B008B', 'DarkMagenta', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(253, 'COLORPICKER_HEX_556B2F', 'DarkOliveGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(254, 'COLORPICKER_HEX_FF8C00', 'Darkorange', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(255, 'COLORPICKER_HEX_9932CC', 'DarkOrchid', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(256, 'COLORPICKER_HEX_8B0000', 'DarkRed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(257, 'COLORPICKER_HEX_E9967A', 'DarkSalmon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(258, 'COLORPICKER_HEX_8FBC8F', 'DarkSeaGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(259, 'COLORPICKER_HEX_483D8B', 'DarkSlateBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(260, 'COLORPICKER_HEX_2F4F4F', 'DarkSlateGrey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(261, 'COLORPICKER_HEX_00CED1', 'DarkTurquoise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(262, 'COLORPICKER_HEX_9400D3', 'DarkViolet', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(263, 'COLORPICKER_HEX_FF1493', 'DeepPink', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(264, 'COLORPICKER_HEX_00BFFF', 'DeepSkyBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(265, 'COLORPICKER_HEX_696969', 'DimGrey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(266, 'COLORPICKER_HEX_1E90FF', 'DodgerBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(267, 'COLORPICKER_HEX_B22222', 'FireBrick', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(268, 'COLORPICKER_HEX_FFFAF0', 'FloralWhite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(269, 'COLORPICKER_HEX_228B22', 'ForestGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(270, 'COLORPICKER_HEX_FF00FF', 'Magenta', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(271, 'COLORPICKER_HEX_DCDCDC', 'Gainsboro', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(272, 'COLORPICKER_HEX_F8F8FF', 'GhostWhite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(273, 'COLORPICKER_HEX_FFD700', 'Gold', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(274, 'COLORPICKER_HEX_DAA520', 'GoldenRod', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(275, 'COLORPICKER_HEX_808080', 'Grey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(276, 'COLORPICKER_HEX_008000', 'Green', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(277, 'COLORPICKER_HEX_ADFF2F', 'GreenYellow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(278, 'COLORPICKER_HEX_F0FFF0', 'HoneyDew', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(279, 'COLORPICKER_HEX_FF69B4', 'HotPink', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(280, 'COLORPICKER_HEX_CD5C5C', 'IndianRed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(281, 'COLORPICKER_HEX_4B0082', 'Indigo', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(282, 'COLORPICKER_HEX_FFFFF0', 'Ivory', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(283, 'COLORPICKER_HEX_F0E68C', 'Khaki', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(284, 'COLORPICKER_HEX_E6E6FA', 'Lavender', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(285, 'COLORPICKER_HEX_FFF0F5', 'LavenderBlush', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(286, 'COLORPICKER_HEX_7CFC00', 'LawnGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(287, 'COLORPICKER_HEX_FFFACD', 'LemonChiffon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(288, 'COLORPICKER_HEX_ADD8E6', 'LightBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(289, 'COLORPICKER_HEX_F08080', 'LightCoral', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(290, 'COLORPICKER_HEX_E0FFFF', 'LightCyan', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(291, 'COLORPICKER_HEX_FAFAD2', 'LightGoldenRodYellow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(292, 'COLORPICKER_HEX_D3D3D3', 'LightGrey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(293, 'COLORPICKER_HEX_90EE90', 'LightGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(294, 'COLORPICKER_HEX_FFB6C1', 'LightPink', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(295, 'COLORPICKER_HEX_FFA07A', 'LightSalmon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(296, 'COLORPICKER_HEX_20B2AA', 'LightSeaGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(297, 'COLORPICKER_HEX_87CEFA', 'LightSkyBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(298, 'COLORPICKER_HEX_778899', 'LightSlateGrey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(299, 'COLORPICKER_HEX_B0C4DE', 'LightSteelBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(300, 'COLORPICKER_HEX_FFFFE0', 'LightYellow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(301, 'COLORPICKER_HEX_00FF00', 'Lime', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(302, 'COLORPICKER_HEX_32CD32', 'LimeGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(303, 'COLORPICKER_HEX_FAF0E6', 'Linen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(304, 'COLORPICKER_HEX_800000', 'Maroon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(305, 'COLORPICKER_HEX_66CDAA', 'MediumAquaMarine', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(306, 'COLORPICKER_HEX_0000CD', 'MediumBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(307, 'COLORPICKER_HEX_BA55D3', 'MediumOrchid', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(308, 'COLORPICKER_HEX_9370D8', 'MediumPurple', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(309, 'COLORPICKER_HEX_3CB371', 'MediumSeaGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(310, 'COLORPICKER_HEX_7B68EE', 'MediumSlateBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(311, 'COLORPICKER_HEX_00FA9A', 'MediumSpringGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(312, 'COLORPICKER_HEX_48D1CC', 'MediumTurquoise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(313, 'COLORPICKER_HEX_C71585', 'MediumVioletRed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(314, 'COLORPICKER_HEX_191970', 'MidnightBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(315, 'COLORPICKER_HEX_F5FFFA', 'MintCream', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(316, 'COLORPICKER_HEX_FFE4E1', 'MistyRose', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(317, 'COLORPICKER_HEX_FFE4B5', 'Moccasin', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(318, 'COLORPICKER_HEX_FFDEAD', 'NavajoWhite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(319, 'COLORPICKER_HEX_000080', 'Navy', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(320, 'COLORPICKER_HEX_FDF5E6', 'OldLace', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(321, 'COLORPICKER_HEX_808000', 'Olive', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(322, 'COLORPICKER_HEX_6B8E23', 'OliveDrab', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(323, 'COLORPICKER_HEX_FFA500', 'Orange', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(324, 'COLORPICKER_HEX_FF4500', 'OrangeRed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(325, 'COLORPICKER_HEX_DA70D6', 'Orchid', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(326, 'COLORPICKER_HEX_EEE8AA', 'PaleGoldenRod', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(327, 'COLORPICKER_HEX_98FB98', 'PaleGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(328, 'COLORPICKER_HEX_AFEEEE', 'PaleTurquoise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(329, 'COLORPICKER_HEX_D87093', 'PaleVioletRed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(330, 'COLORPICKER_HEX_FFEFD5', 'PapayaWhip', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(331, 'COLORPICKER_HEX_FFDAB9', 'PeachPuff', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(332, 'COLORPICKER_HEX_CD853F', 'Peru', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(333, 'COLORPICKER_HEX_FFC0CB', 'Pink', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(334, 'COLORPICKER_HEX_DDA0DD', 'Plum', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(335, 'COLORPICKER_HEX_B0E0E6', 'PowderBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(336, 'COLORPICKER_HEX_800080', 'Purple', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(337, 'COLORPICKER_HEX_FF0000', 'Red', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(338, 'COLORPICKER_HEX_BC8F8F', 'RosyBrown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(339, 'COLORPICKER_HEX_4169E1', 'RoyalBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(340, 'COLORPICKER_HEX_8B4513', 'SaddleBrown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(341, 'COLORPICKER_HEX_FA8072', 'Salmon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(342, 'COLORPICKER_HEX_F4A460', 'SandyBrown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(343, 'COLORPICKER_HEX_2E8B57', 'SeaGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(344, 'COLORPICKER_HEX_FFF5EE', 'SeaShell', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(345, 'COLORPICKER_HEX_A0522D', 'Sienna', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(346, 'COLORPICKER_HEX_C0C0C0', 'Silver', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(347, 'COLORPICKER_HEX_87CEEB', 'SkyBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(348, 'COLORPICKER_HEX_6A5ACD', 'SlateBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(349, 'COLORPICKER_HEX_708090', 'SlateGrey', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(350, 'COLORPICKER_HEX_FFFAFA', 'Snow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(351, 'COLORPICKER_HEX_00FF7F', 'SpringGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(352, 'COLORPICKER_HEX_4682B4', 'SteelBlue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(353, 'COLORPICKER_HEX_D2B48C', 'Tan', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(354, 'COLORPICKER_HEX_008080', 'Teal', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(355, 'COLORPICKER_HEX_D8BFD8', 'Thistle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(356, 'COLORPICKER_HEX_FF6347', 'Tomato', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(357, 'COLORPICKER_HEX_40E0D0', 'Turquoise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(358, 'COLORPICKER_HEX_EE82EE', 'Violet', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(359, 'COLORPICKER_HEX_F5DEB3', 'Wheat', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(360, 'COLORPICKER_HEX_FFFFFF', 'White', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(361, 'COLORPICKER_HEX_F5F5F5', 'WhiteSmoke', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(362, 'COLORPICKER_HEX_FFFF00', 'Yellow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(363, 'COLORPICKER_HEX_9ACD32', 'YellowGreen', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(364, 'COLORPICKER_PICKER', 'Picker', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(365, 'COLORPICKER_COLORPICKER', 'Colour Picker', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(366, 'COLORPICKER_TEMPLATE_DESC', 'The following colours have been retrieved from your template stylesheets', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(367, 'COLORPICKER_PALETTE', 'Web', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(368, 'COLORPICKER_NAMED', 'Named', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(369, 'COLORPICKER_TEMPLATE', 'Template', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(370, 'COLORPICKER_CUSTOM', 'Custom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(371, 'COLORPICKER_COLOR', 'Colour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(372, 'COLORPICKER_APPLY', 'Apply', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(373, 'COLORPICKER_NAME', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(374, 'CONTEXTMENU_ALIGN', 'Alignment', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(375, 'CONTEXTMENU_LEFT', 'Left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(376, 'CONTEXTMENU_CENTER', 'Center', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(377, 'CONTEXTMENU_RIGHT', 'Right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(378, 'CONTEXTMENU_FULL', 'Full', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(379, 'PRINT_DESC', 'Print', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(380, 'PREVIEW_DESC', 'Preview', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(381, 'DIRECTIONALITY_LTR_DESC', 'Direction left to right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(382, 'DIRECTIONALITY_RTL_DESC', 'Direction right to left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(383, 'LAYER_INSERTLAYER_DESC', 'Insert new layer', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(384, 'LAYER_FORWARD_DESC', 'Move forward', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(385, 'LAYER_BACKWARD_DESC', 'Move backward', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(386, 'LAYER_ABSOLUTE_DESC', 'Toggle absolute positioning', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(387, 'LAYER_CONTENT', 'New layer...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(388, 'NONBREAKING_DESC', 'Insert non-breaking space character', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(389, 'EMOTIONS_DESC', 'Emotions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(390, 'SEARCHREPLACE_SEARCH_DESC', 'Find', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(391, 'SEARCHREPLACE_REPLACE_DESC', 'Find/Replace', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(392, 'XHTMLXTRAS_CITE_DESC', 'Citation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(393, 'XHTMLXTRAS_ABBR_DESC', 'Abbreviation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(394, 'XHTMLXTRAS_ACRONYM_DESC', 'Acronym', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(395, 'XHTMLXTRAS_DEL_DESC', 'Deletion', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(396, 'XHTMLXTRAS_INS_DESC', 'Insertion', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(397, 'XHTMLXTRAS_ATTRIBS_DESC', 'Insert/Edit Attributes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(398, 'STYLE_DESC', 'Edit CSS Style', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(399, 'CLIPBOARD_PASTE_DESC', 'Paste', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(400, 'CLIPBOARD_PASTE_TEXT_DESC', 'Paste as Plain Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(401, 'CLIPBOARD_PASTE_WORD_DESC', 'Paste from Word', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(402, 'CLIPBOARD_SELECTALL_DESC', 'Select All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(403, 'CLIPBOARD_PASTE_DLG_TITLE', 'Use %s+V on your keyboard to paste text into the window.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(404, 'TABLE_DESC', 'Inserts a new table', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(405, 'TABLE_ROW_BEFORE_DESC', 'Insert row before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(406, 'TABLE_ROW_AFTER_DESC', 'Insert row after', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(407, 'TABLE_DELETE_ROW_DESC', 'Delete row', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(408, 'TABLE_COL_BEFORE_DESC', 'Insert column before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(409, 'TABLE_COL_AFTER_DESC', 'Insert column after', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(410, 'TABLE_DELETE_COL_DESC', 'Remove column', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(411, 'TABLE_SPLIT_CELLS_DESC', 'Split merged table cells', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(412, 'TABLE_MERGE_CELLS_DESC', 'Merge table cells', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(413, 'TABLE_ROW_DESC', 'Table row properties', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(414, 'TABLE_CELL_DESC', 'Table cell properties', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(415, 'TABLE_PROPS_DESC', 'Table properties', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(416, 'TABLE_PASTE_ROW_BEFORE_DESC', 'Paste table row before', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(417, 'TABLE_PASTE_ROW_AFTER_DESC', 'Paste table row after', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(418, 'TABLE_CUT_ROW_DESC', 'Cut table row', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(419, 'TABLE_COPY_ROW_DESC', 'Copy table row', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(420, 'TABLE_DEL', 'Delete table', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(421, 'TABLE_ROW', 'Row', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(422, 'TABLE_COL', 'Column', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(423, 'TABLE_CELL', 'Cell', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(424, 'AUTOSAVE_UNLOAD_MSG', 'The changes you made will be lost if you navigate away from this page.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(425, 'AUTOSAVE_RESTORE_CONTENT', 'Restore auto-saved content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(426, 'AUTOSAVE_WARNING_MESSAGE', 'If you restore the saved content, you will lose all the content that is currently in the editor.\\n\\nAre you sure you want to restore the saved content?.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(427, 'FULLSCREEN_DESC', 'Toggle fullscreen mode', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(428, 'VISUALCHARS_DESC', 'Visual control characters on/off.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(429, 'SPELLCHECKER_DESC', 'Toggle spellchecker', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(430, 'SPELLCHECKER_MENU', 'Spellchecker settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(431, 'SPELLCHECKER_IGNORE_WORD', 'Ignore word', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(432, 'SPELLCHECKER_IGNORE_WORDS', 'Ignore all', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(433, 'SPELLCHECKER_LANGS', 'Languages', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(434, 'SPELLCHECKER_WAIT', 'Please wait...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(435, 'SPELLCHECKER_SUG', 'Suggestions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(436, 'SPELLCHECKER_NO_SUG', 'No suggestions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(437, 'SPELLCHECKER_NO_MPELL', 'No misspellings found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(438, 'SPELLCHECKER_LEARN_WORD', 'Learn word', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(439, 'ADVLIST_TYPES', 'Types', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(440, 'ADVLIST_DEF', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(441, 'ADVLIST_LOWER_ALPHA', 'Lower alpha', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(442, 'ADVLIST_LOWER_GREEK', 'Lower greek', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(443, 'ADVLIST_LOWER_ROMAN', 'Lower roman', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(444, 'ADVLIST_UPPER_ALPHA', 'Upper alpha', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(445, 'ADVLIST_UPPER_ROMAN', 'Upper roman', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(446, 'ADVLIST_CIRCLE', 'Circle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(447, 'ADVLIST_DISC', 'Disc', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(448, 'ADVLIST_SQUARE', 'Square', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(449, 'ARIA_RICH_TEXT_AREA', 'Rich Text Area', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(450, 'WORDCOUNT_WORDS', 'Words: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(451, 'IFRAME_DESC', 'Insert/Edit IFrame', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(452, 'IMGMANAGER_DESC', 'Insert/Edit image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(453, 'IMGMANAGER_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(454, 'IMGMANAGER_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(455, 'IMGMANAGER_EXT_DESC', 'Insert/Edit image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(456, 'IMGMANAGER_EXT_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(457, 'IMGMANAGER_EXT_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(458, 'LINK_DESC', 'Insert/Edit link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(459, 'LINK_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(460, 'LINK_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(461, 'FILEMANAGER_DESC', 'Insert/Edit file', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(462, 'FILEMANAGER_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(463, 'FILEMANAGER_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(464, 'MEDIAMANAGER_DESC', 'Insert/Edit Media', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(465, 'MEDIAMANAGER_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(466, 'MEDIAMANAGER_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(467, 'CAPTION_DESC', 'Insert/Edit Caption', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(468, 'CAPTION_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(469, 'CAPTION_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(470, 'CAPTION_DELETE', 'Delete Caption', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(471, 'TEMPLATEMANAGER_DESC', 'Insert predefined template content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(472, 'TEMPLATEMANAGER_DELTA_WIDTH', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(473, 'TEMPLATEMANAGER_DELTA_HEIGHT', '0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(474, 'ARTICLE_PAGEBREAK', 'Insert / Edit Pagebreak', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(475, 'ARTICLE_READMORE', 'Insert Read More', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(476, 'ARTICLE_READMORE_TITLE', 'Read More', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(477, 'ARTICLE_READMORE_ALERT', 'There is already a Read More break inserted in this article. Only one such break is permitted. Use a Pagebreak to split the page up further.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(478, 'ARTICLE_TITLE', 'Page Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(479, 'ARTICLE_ALIAS', 'Table of Contents Alias', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(480, 'SOURCE_DESC', 'Source Code Editor', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(481, 'SOURCE_WRAP', 'Toggle Word Wrap', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(482, 'SOURCE_LINENUMBERS', 'Toggle Line Numbers', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(483, 'SOURCE_HIGHLIGHT', 'Toggle Code Highlighting', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(484, 'SOURCE_REPLACE', 'Replace', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(485, 'SOURCE_REPLACE_ALL', 'Replace All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(486, 'SOURCE_SEARCH', 'Find', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(487, 'SOURCE_SEARCH_PREV', 'Find Previous', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(488, 'SOURCE_REGEX', 'Regular Expression', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(489, 'SOURCE_FORMAT', 'Format HTML', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(490, 'TEXTCASE_UPPERCASE', 'Uppercase', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(491, 'TEXTCASE_LOWERCASE', 'Lowercase', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(492, 'TEXTCASE_SENTENCECASE', 'Sentence Case', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(493, 'TEXTCASE_CAMELCASE', 'Camel Case', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(494, 'VISUALBLOCKS_DESC', 'Show/hide block elements', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(495, 'KITCHENSINK_DESC', 'Toggle Toolbars', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(496, 'ANCHOR_DESC', 'Insert/edit anchor', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(497, 'ANCHOR_NAME', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(498, 'ANCHOR_INVALID', 'Please specify a valid anchor Name or ID. The value must start with a letter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(499, 'ANCHOR_EXISTS', 'An anchor with that name or id already exists', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(500, 'UPLOAD_RESPONSE_ERROR', 'Invalid Upload Response', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(501, 'UPLOAD_HTTP_ERROR', 'HTTP Error', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(502, 'UPLOAD_BUTTON_DESCRIPTION', 'Click to upload a file', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(503, 'UPLOAD_LABEL', 'Upload', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(504, 'ADVANCED_STYLE_SELECT', 'Styles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(505, 'ADVANCED_FONT_SIZE', 'Font size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(506, 'ADVANCED_FONTDEFAULT', 'Font family', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(507, 'ADVANCED_BLOCK', 'Format', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(508, 'ADVANCED_PARAGRAPH', 'Paragraph', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(509, 'ADVANCED_DIV', 'Div', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(510, 'ADVANCED_DIV_CONTAINER', 'Div Container', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(511, 'ADVANCED_ADDRESS', 'Address', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(512, 'ADVANCED_PRE', 'Preformatted', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(513, 'ADVANCED_H1', 'Heading 1', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(514, 'ADVANCED_H2', 'Heading 2', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(515, 'ADVANCED_H3', 'Heading 3', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(516, 'ADVANCED_H4', 'Heading 4', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(517, 'ADVANCED_H5', 'Heading 5', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(518, 'ADVANCED_H6', 'Heading 6', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(519, 'ADVANCED_BLOCKQUOTE', 'Blockquote', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(520, 'ADVANCED_CODE', 'Code', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(521, 'ADVANCED_SAMP', 'Code Sample', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(522, 'ADVANCED_DT', 'Definition Term ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(523, 'ADVANCED_DD', 'Definition Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(524, 'ADVANCED_SPAN', 'Span', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(525, 'ADVANCED_SECTION', 'Section', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(526, 'ADVANCED_ARTICLE', 'Article', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(527, 'ADVANCED_HGROUP', 'HGroup', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(528, 'ADVANCED_ASIDE', 'Aside', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(529, 'ADVANCED_FIGURE', 'Figure', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(530, 'ADVANCED_BOLD_DESC', 'Bold (Ctrl+B)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(531, 'ADVANCED_ITALIC_DESC', 'Italic (Ctrl+I)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(532, 'ADVANCED_UNDERLINE_DESC', 'Underline (Ctrl+U)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(533, 'ADVANCED_STRIKETROUGH_DESC', 'Strikethrough', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(534, 'ADVANCED_JUSTIFYLEFT_DESC', 'Align left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(535, 'ADVANCED_JUSTIFYCENTER_DESC', 'Align center', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(536, 'ADVANCED_JUSTIFYRIGHT_DESC', 'Align right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(537, 'ADVANCED_JUSTIFYFULL_DESC', 'Align full', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(538, 'ADVANCED_BULLIST_DESC', 'Unordered list', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(539, 'ADVANCED_NUMLIST_DESC', 'Ordered list', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(540, 'ADVANCED_OUTDENT_DESC', 'Outdent', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(541, 'ADVANCED_INDENT_DESC', 'Indent', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(542, 'ADVANCED_UNDO_DESC', 'Undo (Ctrl+Z)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(543, 'ADVANCED_REDO_DESC', 'Redo (Ctrl+Y)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(544, 'ADVANCED_LINK_DESC', 'Insert/edit link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(545, 'ADVANCED_UNLINK_DESC', 'Unlink', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(546, 'ADVANCED_IMAGE_DESC', 'Insert/edit image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(547, 'ADVANCED_CLEANUP_DESC', 'Cleanup HTML', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(548, 'ADVANCED_CODE_DESC', 'Edit HTML Source', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(549, 'ADVANCED_SUB_DESC', 'Subscript', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(550, 'ADVANCED_SUP_DESC', 'Superscript', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(551, 'ADVANCED_HR_DESC', 'Insert horizontal ruler', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(552, 'ADVANCED_REMOVEFORMAT_DESC', 'Remove formatting', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(553, 'ADVANCED_CUSTOM1_DESC', 'Your custom description here', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(554, 'ADVANCED_FORECOLOR_DESC', 'Select text color', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(555, 'ADVANCED_BACKCOLOR_DESC', 'Select background color', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(556, 'ADVANCED_CHARMAP_DESC', 'Insert custom character', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(557, 'ADVANCED_VISUALAID_DESC', 'Toggle guidelines/invisible elements', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(558, 'ADVANCED_CUT_DESC', 'Cut', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(559, 'ADVANCED_COPY_DESC', 'Copy', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(560, 'ADVANCED_PASTE_DESC', 'Paste', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(561, 'ADVANCED_IMAGE_PROPS_DESC', 'Image properties', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(562, 'ADVANCED_NEWDOCUMENT_DESC', 'New document', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(563, 'ADVANCED_HELP_DESC', 'Help', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(564, 'ADVANCED_BLOCKQUOTE_DESC', 'Blockquote', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(565, 'ADVANCED_CLIPBOARD_MSG', 'Copy/Cut/Paste is not available in Mozilla and Firefox.\\r\\nDo you want more information about this issue?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(566, 'ADVANCED_PATH', 'Path', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(567, 'ADVANCED_NEWDOCUMENT', 'Are you sure you want clear all contents?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(568, 'ADVANCED_TOOLBAR_FOCUS', 'Jump to tool buttons - Alt+Q, Jump to editor - Alt-Z, Jump to element path - Alt-X', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(569, 'ADVANCED_MORE_COLORS', 'More colors', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(570, 'ADVANCED_SHORTCUTS_DESC', 'Accessibility Help', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(571, 'ADVANCED_HELP_SHORTCUT', 'Press ALT F10 for toolbar. Press ALT 0 for help.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(572, 'ADVANCED_RICH_TEXT_AREA', 'Rich Text Area', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(573, 'ADVANCED_TOOLBAR', 'Toolbar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(574, 'DLG_MODIFIED', 'Modified', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(575, 'DLG_FILE', 'File', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(576, 'DLG_FOLDER', 'Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(577, 'DLG_FILES', 'files', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(578, 'DLG_FOLDERS', 'folders', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(579, 'DLG_COMMENTS', 'Comments', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(580, 'DLG_SIZE', 'Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(581, 'DLG_PREVIEW', 'Preview', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(582, 'DLG_DURATION', 'Duration', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(583, 'DLG_DIMENSIONS', 'Dimensions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(584, 'DLG_CONTENTS', 'Contents', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(585, 'DLG_UNWRITABLE', 'Unwritable', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(586, 'DLG_BAD_NAME', 'Invalid file or folder name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(587, 'DLG_MESSAGE_TREE', 'Building tree list...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(588, 'DLG_MESSAGE_LOAD', 'Loading...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(589, 'DLG_MESSAGE_PROPERTIES', 'Retrieving properties...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(590, 'DLG_CURRENT_DIR', 'Current directory is : ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(591, 'DLG_HELP', 'Help', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(592, 'DLG_NAME', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(593, 'DLG_ROOT', 'Root', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(594, 'DLG_OPTIONS', 'Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(595, 'DLG_CONFIRM', 'Confirm', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(596, 'DLG_DLG_YES', 'Yes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(597, 'DLG_DLG_NO', 'No', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(598, 'DLG_ALERT', 'Alert', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(599, 'DLG_FOLDER_NEW', 'New Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(600, 'DLG_FOLDER_EXISTS', 'A folder with that name already exists', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(601, 'DLG_RENAME', 'Rename', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(602, 'DLG_DELETE', 'Delete', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(603, 'DLG_SAVE', 'Save', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(604, 'DLG_DELETE_ITEM_ALERT', 'Delete Selected Items?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(605, 'DLG_RENAME_FOLDER', 'Rename Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(606, 'DLG_RENAME_FILE', 'Rename File', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(607, 'DLG_RENAME_ITEM_ALERT', 'Renaming files/folders will break existing links.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(608, 'DLG_RENAME_ITEM_NAME_NEW', 'Please specify a new name for the file/folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(609, 'DLG_FILE_SELECT', 'Click on a file name to insert, click to the right of the name to view its properties. CTRL+Click selects multiple files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(610, 'DLG_NOTWRITABLE', 'Unwritable', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(611, 'DLG_NOTWRITABLE_DESC', 'Unwritable::Folder or file is not writable and cannot be renamed, moved or deleted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(612, 'DLG_BAD_NAME_DESC', 'Invalid file or folder name::Folder/file name can only contain the characters a-zA-Z0-9_-.~', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(613, 'DLG_SELECT_VALUE', 'Add Value', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(614, 'DLG_SELECT_LABEL', 'Add Value', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(615, 'DLG_SIZE_BYTES', 'Bytes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(616, 'DLG_SIZE_KB', 'KB', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(617, 'DLG_SIZE_MB', 'MB', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(618, 'DLG_DATE_FORMAT', '', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(619, 'DLG_MEDIA_NOT_SUPPORTED', 'Media type not supported by this browser', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(620, 'DLG_ONE_OF_MANY', '%o of %m', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(621, 'DLG_ELEMENT_SELECTION', 'Mixed element/text selection', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(622, 'DLG_UPLOADING', 'Uploading...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(623, 'DLG_UPLOAD', 'Upload', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(624, 'DLG_QUEUE', 'Queue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(625, 'DLG_UPLOAD_DROP', 'Drop files here', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(626, 'DLG_CANCEL', 'Cancel', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(627, 'DLG_OK', 'OK', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(628, 'DLG_BROWSE', 'Browse', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(629, 'DLG_FILE_EXTENSION_ERROR', 'File type not supported', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(630, 'DLG_FILE_SIZE_ERROR', 'File size exceeds maximum allowed size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(631, 'DLG_FILE_INVALID_ERROR', 'Invalid File type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(632, 'DLG_UPLOAD_QUEUE', 'Upload Queue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(633, 'DLG_CLOSE', 'Close', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(634, 'DLG_ERROR_600', '%f (%s) exceeds the maximum allowed size of %m', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(635, 'DLG_ERROR_601', 'FILE=%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(636, 'DLG_ERROR_800', 'FILE=%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(637, 'DLG_ERROR_200', 'Upload error. The server returned an invalid response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(638, 'IMGMANAGER_DLG_MISSING_ALT', 'Are you sure you want to continue without including Alternate Text for the image? Without it the image may not be accessible to some users with disabilities, or to those using a text browser, or browsing the Web with images turned off.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(639, 'IMGMANAGER_DLG_NO_SRC', 'A URL is required. Please select an image or enter a URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(640, 'LINK_DLG_IS_EMAIL', 'The URL you entered seems to be an email address, do you want to add the required mailto: prefix?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(641, 'LINK_DLG_IS_EXTERNAL', 'The URL you entered seems to be an external link, do you want to add the required http:// prefix?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(642, 'LINK_DLG_NO_HREF', 'A URL is required. Please select a link or enter a URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(643, 'LINK_DLG_NO_TEXT', 'Please enter some text for the link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(644, 'LINK_DLG_EMAIL', 'Create E-mail Address', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(645, 'LINK_DLG_TO', 'To', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(646, 'LINK_DLG_CC', 'CC', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(647, 'LINK_DLG_BCC', 'BCC', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(648, 'LINK_DLG_SUBJECT', 'Subject', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(649, 'LINK_DLG_INVALID_EMAIL', ' is not a valid e-mail address!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_jce.ini'),
	(650, 'COM_MAILTO', 'Mailto', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(651, 'COM_MAILTO_CANCEL', 'Cancel', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(652, 'COM_MAILTO_CLOSE_WINDOW', 'Close Window', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(653, 'COM_MAILTO_EMAIL_ERR_NOINFO', 'Please provide a valid email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(654, 'COM_MAILTO_EMAIL_INVALID', 'The address \'%s\' does not appear to be a valid email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(655, 'COM_MAILTO_EMAIL_MSG', 'This is an email from (%s) sent by %s (%s). You may also find the following link interesting: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(656, 'COM_MAILTO_EMAIL_NOT_SENT', 'Email could not be sent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(657, 'COM_MAILTO_EMAIL_SENT', 'Email was sent successfully.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(658, 'COM_MAILTO_EMAIL_TO', 'Email to', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(659, 'COM_MAILTO_EMAIL_TO_A_FRIEND', 'Email this link to a friend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(660, 'COM_MAILTO_LINK_IS_MISSING', 'Link is missing', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(661, 'COM_MAILTO_SEND', 'Send', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(662, 'COM_MAILTO_SENDER', 'Sender', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(663, 'COM_MAILTO_SENT_BY', 'Item sent by', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(664, 'COM_MAILTO_SUBJECT', 'Subject', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(665, 'COM_MAILTO_YOUR_EMAIL', 'Your Email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_mailto.ini'),
	(666, 'COM_MEDIA_ALIGN', 'Image Float', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(667, 'COM_MEDIA_ALIGN_DESC', 'This will apply the classes \'pull-left\', \'pull-center\' or \'pull-right\' to the \'<figure>\' or \'<img>\' element.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(668, 'COM_MEDIA_BROWSE_FILES', 'Browse Files', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(669, 'COM_MEDIA_CAPTION', 'Caption', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(670, 'COM_MEDIA_CAPTION_CLASS_LABEL', 'Caption Class', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(671, 'COM_MEDIA_CAPTION_CLASS_DESC', 'This will apply the entered class to the \'<figcaption>\' element. For example: \'text-left\', \'text-right\', \'text-center\'.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(672, 'COM_MEDIA_CLEAR_LIST', 'Clear List', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(673, 'COM_MEDIA_CONFIGURATION', 'Media Manager Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(674, 'COM_MEDIA_CREATE_FOLDER', 'Create Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(675, 'COM_MEDIA_CURRENT_PROGRESS', 'Current progress', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(676, 'COM_MEDIA_DESCFTP', 'To upload, change and delete media files, Joomla! will most likely need your FTP account details. Please enter them in the form fields below.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(677, 'COM_MEDIA_DESCFTPTITLE', 'FTP Login Details', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(678, 'COM_MEDIA_DETAIL_VIEW', 'Detail View', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(679, 'COM_MEDIA_DIRECTORY', 'Directory', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(680, 'COM_MEDIA_DIRECTORY_UP', 'Directory Up', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(681, 'COM_MEDIA_ERROR_BAD_REQUEST', 'Bad Request', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(682, 'COM_MEDIA_ERROR_FILE_EXISTS', 'File already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(683, 'COM_MEDIA_ERROR_UNABLE_TO_CREATE_FOLDER_WARNDIRNAME', 'Unable to create directory. Directory name must only contain alphanumeric characters and no spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(684, 'COM_MEDIA_ERROR_UNABLE_TO_BROWSE_FOLDER_WARNDIRNAME', 'Unable to browse:&#160;%s. Directory name must only contain alphanumeric characters and no spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(685, 'COM_MEDIA_ERROR_UNABLE_TO_DELETE', ' Unable to delete:&#160;', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(686, 'COM_MEDIA_ERROR_UNABLE_TO_DELETE_FILE_WARNFILENAME', 'Unable to delete:&#160;%s. File name must only contain alphanumeric characters and no spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(687, 'COM_MEDIA_ERROR_UNABLE_TO_DELETE_FOLDER_NOT_EMPTY', 'Unable to delete:&#160;%s. Folder is not empty!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(688, 'COM_MEDIA_ERROR_UNABLE_TO_DELETE_FOLDER_WARNDIRNAME', 'Unable to delete:&#160;%s. Directory name must only contain alphanumeric characters and no spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(689, 'COM_MEDIA_ERROR_UNABLE_TO_UPLOAD_FILE', 'Unable to upload file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(690, 'COM_MEDIA_ERROR_WARNFILETOOLARGE', 'This file is too large to upload.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(691, 'COM_MEDIA_ERROR_WARNUPLOADTOOLARGE', 'Total size of upload exceeds the limit.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(692, 'COM_MEDIA_FIELD_CHECK_MIME_DESC', 'Use MIME Magic or Fileinfo to attempt to verify files. Try disabling this if you get invalid mime type errors.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(693, 'COM_MEDIA_FIELD_CHECK_MIME_LABEL', 'Check MIME Types', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(694, 'COM_MEDIA_FIELD_IGNORED_EXTENSIONS_DESC', 'Ignored file extensions for MIME type checking and restricted uploads.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(695, 'COM_MEDIA_FIELD_IGNORED_EXTENSIONS_LABEL', 'Ignored Extensions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(696, 'COM_MEDIA_FIELD_ILLEGAL_MIME_TYPES_DESC', 'A comma separated list of illegal MIME types for upload (blacklist).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(697, 'COM_MEDIA_FIELD_ILLEGAL_MIME_TYPES_LABEL', 'Illegal MIME Types', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(698, 'COM_MEDIA_FIELD_LEGAL_EXTENSIONS_DESC', ' Extensions (file types) you are allowed to upload (comma separated).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(699, 'COM_MEDIA_FIELD_LEGAL_EXTENSIONS_LABEL', 'Legal Extensions (File Types)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(700, 'COM_MEDIA_FIELD_LEGAL_IMAGE_EXTENSIONS_DESC', ' Image extensions (file types) you are allowed to upload (comma separated). These are used to check for valid image headers.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(701, 'COM_MEDIA_FIELD_LEGAL_IMAGE_EXTENSIONS_LABEL', 'Legal Image Extensions (File Types)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(702, 'COM_MEDIA_FIELD_LEGAL_MIME_TYPES_DESC', 'A comma separated list of legal MIME types for upload.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(703, 'COM_MEDIA_FIELD_LEGAL_MIME_TYPES_LABEL', 'Legal MIME Types', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(704, 'COM_MEDIA_FIELD_MAXIMUM_SIZE_DESC', 'The maximum size for an upload (in bytes). Use zero for no limit. Note: your server has a maximum limit.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(705, 'COM_MEDIA_FIELD_MAXIMUM_SIZE_LABEL', 'Maximum Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(706, 'COM_MEDIA_FIELD_PATH_FILE_FOLDER_DESC', 'Enter the path to the file folder relative to root.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(707, 'COM_MEDIA_FIELD_PATH_FILE_FOLDER_LABEL', 'Path to File Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(708, 'COM_MEDIA_FIELD_PATH_IAMGE_FOLDER_DESC', 'Enter the path to the image folder relative to root.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(709, 'COM_MEDIA_FIELD_PATH_IMAGE_FOLDER_LABEL', 'Path to Image Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(710, 'COM_MEDIA_FIELD_RESTRICT_UPLOADS_DESC', 'Restrict uploads for lower than manager users to just images if Fileinfo or MIME Magic isn\'t installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(711, 'COM_MEDIA_FIELD_RESTRICT_UPLOADS_LABEL', 'Restrict Uploads', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(712, 'COM_MEDIA_FILES', 'Files', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(713, 'COM_MEDIA_FILESIZE', 'File size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(714, 'COM_MEDIA_FOLDER', 'Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(715, 'COM_MEDIA_FOLDERS', 'Folders', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(716, 'COM_MEDIA_IMAGE_DESCRIPTION', 'Image Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(717, 'COM_MEDIA_IMAGE_URL', 'Image URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(718, 'COM_MEDIA_INSERT', 'Insert', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(719, 'COM_MEDIA_INSERT_IMAGE', 'Insert Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(720, 'COM_MEDIA_MAXIMUM_SIZE', 'Maximum Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(721, 'COM_MEDIA_MEDIA', 'Media', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(722, 'COM_MEDIA_NAME', 'Image Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(723, 'COM_MEDIA_NO_IMAGES_FOUND', 'No Images Found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(724, 'COM_MEDIA_NOT_SET', 'Not Set', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(725, 'COM_MEDIA_OVERALL_PROGRESS', 'Overall Progress', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(726, 'COM_MEDIA_PIXEL_DIMENSIONS', 'Pixel Dimensions (w x h)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(727, 'COM_MEDIA_START_UPLOAD', 'Start Upload', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(728, 'COM_MEDIA_THUMBNAIL_VIEW', 'Thumbnail View', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(729, 'COM_MEDIA_TITLE', 'Image Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(730, 'COM_MEDIA_UP', 'Up', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(731, 'COM_MEDIA_UPLOAD', 'Upload', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(732, 'COM_MEDIA_UPLOAD_COMPLETE', 'Upload Complete', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(733, 'COM_MEDIA_UPLOAD_FILE', 'Upload file', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(734, 'COM_MEDIA_UPLOAD_FILES', 'Upload files (Maximum Size: %s MB)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(735, 'COM_MEDIA_UPLOAD_FILES_NOLIMIT', 'Upload files (No maximum size)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(736, 'COM_MEDIA_UPLOAD_SUCCESSFUL', 'Upload Successful', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_media.ini'),
	(737, 'COM_MESSAGES_ERR_SEND_FAILED', 'The user has locked their mailbox. Message failed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_messages.ini'),
	(738, 'COM_MESSAGES_NEW_MESSAGE_ARRIVED', 'A new private message has arrived from %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_messages.ini'),
	(739, 'COM_MESSAGES_PLEASE_LOGIN', 'Please log in to %s to read your message.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_messages.ini'),
	(740, 'COM_NEWSFEEDS_CACHE_DIRECTORY_UNWRITABLE', 'The cache directory is unwritable. The news feed can\'t be displayed. Please contact a site administrator.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(741, 'COM_NEWSFEEDS_CAT_NUM', '# of News feeds :', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(742, 'COM_NEWSFEEDS_CONTENT_TYPE_NEWSFEED', 'News Feed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(743, 'COM_NEWSFEEDS_CONTENT_TYPE_CATEGORY', 'News Feed Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(744, 'COM_NEWSFEEDS_DEFAULT_PAGE_TITLE', 'News Feeds', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(745, 'COM_NEWSFEEDS_ERROR_FEED_NOT_FOUND', 'Error. Feed not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(746, 'COM_NEWSFEEDS_ERRORS_FEED_NOT_RETRIEVED', 'Error. Feed could not be retrieved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(747, 'COM_NEWSFEEDS_FEED_LINK', 'Feed Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(748, 'COM_NEWSFEEDS_FEED_NAME', 'Feed Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(749, 'COM_NEWSFEEDS_FILTER_LABEL', 'Filter Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(750, 'COM_NEWSFEEDS_FILTER_SEARCH_DESC', 'News Feed Filter Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(751, 'COM_NEWSFEEDS_NO_ARTICLES', 'No Articles for this News Feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(752, 'COM_NEWSFEEDS_NUM_ARTICLES', '# Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(753, 'COM_NEWSFEEDS_NUM_ARTICLES_COUNT', '# Articles: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(754, 'COM_NEWSFEEDS_NUM_ITEMS', '# News feeds', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_newsfeeds.ini'),
	(755, 'COM_SEARCH_ALL_WORDS', 'All words', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(756, 'COM_SEARCH_ALPHABETICAL', 'Alphabetical', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(757, 'COM_SEARCH_ANY_WORDS', 'Any words', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(758, 'COM_SEARCH_ERROR_ENTERKEYWORD', 'Enter a search keyword', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(759, 'COM_SEARCH_ERROR_IGNOREKEYWORD', 'One or more common words were ignored in the search.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(760, 'COM_SEARCH_ERROR_SEARCH_MESSAGE', 'Search term must be a minimum of %1$s characters and a maximum of %2$s characters.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(761, 'COM_SEARCH_EXACT_PHRASE', 'Exact Phrase', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(762, 'COM_SEARCH_FIELD_SEARCH_AREAS_DESC', 'Show the search areas checkboxes.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(763, 'COM_SEARCH_FIELD_SEARCH_AREAS_LABEL', 'Use Search Areas', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(764, 'COM_SEARCH_FOR', 'Search for:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(765, 'COM_SEARCH_MOST_POPULAR', 'Most Popular', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(766, 'COM_SEARCH_NEWEST_FIRST', 'Newest First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(767, 'COM_SEARCH_OLDEST_FIRST', 'Oldest First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(768, 'COM_SEARCH_ORDERING', 'Ordering:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(769, 'COM_SEARCH_SEARCH', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(770, 'COM_SEARCH_SEARCH_AGAIN', 'Search Again', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(771, 'COM_SEARCH_SEARCH_KEYWORD', 'Search Keyword:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(772, 'COM_SEARCH_SEARCH_KEYWORD_N_RESULTS_1', '<strong>Total: One result found.</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(773, 'COM_SEARCH_SEARCH_KEYWORD_N_RESULTS', '<strong>Total: %s results found.</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(774, 'COM_SEARCH_SEARCH_ONLY', 'Search Only:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(775, 'COM_SEARCH_SEARCH_RESULT', 'Search Result', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_search.ini'),
	(776, 'COM_TAGS_CREATED_DATE', 'Created Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(777, 'COM_TAGS_FILTER_SEARCH_DESC', 'Enter all or part of the title to search for.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(778, 'COM_TAGS_MODIFIED_DATE', 'Modified Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(779, 'COM_TAGS_NO_ITEMS', 'No matching items were found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(780, 'COM_TAGS_NO_TAGS', 'There are no tags.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(781, 'COM_TAGS_PUBLISHED_DATE', 'Published Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(782, 'COM_TAGS_TITLE_FILTER_LABEL', 'Enter Part of Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_tags.ini'),
	(783, 'COM_USERS_ACTIVATION_TOKEN_NOT_FOUND', 'Verification code not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(784, 'COM_USERS_CAPTCHA_LABEL', 'Captcha', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(785, 'COM_USERS_CAPTCHA_DESC', 'Type in the textbox what you see in the image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(786, 'COM_USERS_DATABASE_ERROR', 'Error getting the user from the database: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(787, 'COM_USERS_DESIRED_PASSWORD', 'Enter your desired password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(788, 'COM_USERS_DESIRED_USERNAME', 'Enter your desired username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(789, 'COM_USERS_EDIT_PROFILE', 'Edit Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(790, 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'Account Details for %s at %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(791, 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', 'Hello administrator,\\n\\nA new user has registered at %s.\\nThe user has verified his email address and requests that you approve his account.\\nThis email contains their details:\\n\\n  Name :  %s \\n  email:  %s \\n Username:  %s \\n\\nYou can activate the user by clicking on the link below:\\n %s \\n', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(792, 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'Registration approval required for account of %s at %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(793, 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', 'Hello %s,\\n\\nYour account has been activated by an administrator. You can now login at %s using the username %s and the password you chose while registering.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(794, 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'Account activated for %s at %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(795, 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', 'Hello,\\n\\nA request has been made to reset your %s account password. To reset your password, you will need to submit this verification code in order to verify that the request was legitimate.\\n\\nThe verification code is %s\\n\\nClick on the URL below and proceed with resetting your password.\\n\\n %s \\n\\nThank you.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(796, 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'Your %s password reset request', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(797, 'COM_USERS_EMAIL_REGISTERED_BODY', 'Hello %s,\\n\\nThank you for registering at %s.\\n\\nYou may now log in to %s using the following username and password:\\n\\nUsername: %s\\nPassword: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(798, 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', 'Hello %s,\\n\\nThank you for registering at %s.\\n\\nYou may now log in to %s using the username and password you registered with.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(799, 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', 'Hello administrator, \\n\\nA new user \'%s\', username \'%s\', has registered at %s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(800, 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', 'Hello %s,\\n\\nThank you for registering at %s. Your account is created and must be activated before you can use it.\\nTo activate the account click on the following link or copy-paste it in your browser:\\n%s \\n\\nAfter activation you may login to %s using the following username and password:\\n\\nUsername: %s\\nPassword: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(801, 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', 'Hello %s,\\n\\nThank you for registering at %s. Your account is created and must be activated before you can use it.\\nTo activate the account click on the following link or copy-paste it in your browser:\\n%s \\n\\nAfter activation you may login to %s using the following username and the password you entered during registration:\\n\\nUsername: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(802, 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', 'Hello %s,\\n\\nThank you for registering at %s. Your account is created and must be verified before you can use it.\\nTo verify the account click on the following link or copy-paste it in your browser:\\n %s \\n\\nAfter verification an administrator will be notified to activate your account. You\'ll receive a confirmation when it\'s done.\\nOnce that account has been activated you may login to %s using the following username and password:\\n\\nUsername: %s\\nPassword: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(803, 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', 'Hello %s,\\n\\nThank you for registering at %s. Your account is created and must be verified before you can use it.\\nTo verify the account click on the following link or copy-paste it in your browser:\\n %s \\n\\nAfter verification an administrator will be notified to activate your account. You\'ll receive a confirmation when it\'s done.\\nOnce that account has been activated you may login to %s using the following username and the password you entered during registration:\\n\\nUsername: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(804, 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', 'Hello,\\n\\nA username reminder has been requested for your %s account.\\n\\nYour username is %s.\\n\\nTo login to your account, click on the link below.\\n\\n%s \\n\\nThank you.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(805, 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'Your %s username', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(806, 'COM_USERS_ERROR_SECRET_CODE_WITHOUT_TFA', 'You have entered a Secret Code but two factor authentication is not enabled in your user account. If you want to use a secret code to secure your login please edit your user profile and enable two factor authentication.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(807, 'COM_USERS_FIELD_PASSWORD_RESET_DESC', 'Please enter the email address associated with your User account.<br />A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(808, 'COM_USERS_FIELD_PASSWORD_RESET_LABEL', 'Email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(809, 'COM_USERS_FIELD_REMIND_EMAIL_DESC', 'Please enter the email address associated with your User account.<br />Your username will be emailed to the email address on file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(810, 'COM_USERS_FIELD_REMIND_EMAIL_LABEL', 'Email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(811, 'COM_USERS_FIELD_RESET_CONFIRM_TOKEN_DESC', 'Enter the password reset verification code you received by email.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(812, 'COM_USERS_FIELD_RESET_CONFIRM_TOKEN_LABEL', 'Verification Code:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(813, 'COM_USERS_FIELD_RESET_CONFIRM_USERNAME_DESC', 'Enter your username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(814, 'COM_USERS_FIELD_RESET_CONFIRM_USERNAME_LABEL', 'Username:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(815, 'COM_USERS_FIELD_RESET_PASSWORD1_DESC', 'Enter your new password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(816, 'COM_USERS_FIELD_RESET_PASSWORD1_LABEL', 'Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(817, 'COM_USERS_FIELD_RESET_PASSWORD1_MESSAGE', 'The passwords you entered do not match. Please enter your desired password in the password field and confirm your entry by entering it in the confirm password field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(818, 'COM_USERS_FIELD_RESET_PASSWORD2_DESC', 'Confirm your new password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(819, 'COM_USERS_FIELD_RESET_PASSWORD2_LABEL', 'Confirm Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(820, 'COM_USERS_INVALID_EMAIL', 'Invalid email address', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(821, 'COM_USERS_LOGIN_IMAGE_ALT', 'Login image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(822, 'COM_USERS_LOGIN_REGISTER', 'Don\'t have an account?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(823, 'COM_USERS_LOGIN_REMEMBER_ME', 'Remember me', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(824, 'COM_USERS_LOGIN_REMIND', 'Forgot your username?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(825, 'COM_USERS_LOGIN_RESET', 'Forgot your password?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(826, 'COM_USERS_LOGIN_USERNAME_LABEL', 'Username', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(827, 'COM_USERS_MAIL_FAILED', 'Failed sending email.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(828, 'COM_USERS_MAIL_SEND_FAILURE_BODY', 'An error was encountered when sending the user registration email. The error is: %s The user who attempted to register is: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(829, 'COM_USERS_MAIL_SEND_FAILURE_SUBJECT', 'Error sending email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(830, 'COM_USERS_MSG_NOT_ENOUGH_INTEGERS_N', 'Password does not contain enough digits. At least %s digits are required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(831, 'COM_USERS_MSG_NOT_ENOUGH_INTEGERS_N_1', 'Password does not contain enough digits. At least 1 digit is required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(832, 'COM_USERS_MSG_NOT_ENOUGH_SYMBOLS_N', 'Password does not contain enough symbols. At least %s symbols are required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(833, 'COM_USERS_MSG_NOT_ENOUGH_SYMBOLS_N_1', 'Password does not contain enough symbols. At least 1 symbol is required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(834, 'COM_USERS_MSG_NOT_ENOUGH_UPPERCASE_LETTERS_N', 'Password does not contain enough uppercase characters. At least %s upper case characters are required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(835, 'COM_USERS_MSG_NOT_ENOUGH_UPPERCASE_LETTERS_N_1', 'Password does not contain enough uppercase characters. At least 1 upper case character is required.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(836, 'COM_USERS_MSG_PASSWORD_TOO_LONG', 'Password is too long. Passwords must be less than 100 characters.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(837, 'COM_USERS_MSG_PASSWORD_TOO_SHORT_N', 'Password is too short. Passwords must have at least %s characters.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(838, 'COM_USERS_MSG_SPACES_IN_PASSWORD', 'Password must not contain spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(839, 'COM_USERS_OPTIONAL', '(optional)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(840, 'COM_USERS_OR', 'or', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(841, 'COM_USERS_PROFILE', 'User Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(842, 'COM_USERS_PROFILE_BIND_FAILED', 'Could not bind profile data: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(843, 'COM_USERS_PROFILE_CORE_LEGEND', 'Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(844, 'COM_USERS_PROFILE_CUSTOM_LEGEND', 'Custom Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(845, 'COM_USERS_PROFILE_DEFAULT_LABEL', 'Edit Your Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(846, 'COM_USERS_PROFILE_EMAIL1_DESC', 'Enter your email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(847, 'COM_USERS_PROFILE_EMAIL1_LABEL', 'Email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(848, 'COM_USERS_PROFILE_EMAIL1_MESSAGE', 'The email address you entered is already in use or invalid. Please enter another email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(849, 'COM_USERS_PROFILE_EMAIL2_DESC', 'Confirm your email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(850, 'COM_USERS_PROFILE_EMAIL2_LABEL', 'Confirm email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(851, 'COM_USERS_PROFILE_EMAIL2_MESSAGE', 'The email addresses you entered do not match. Please enter your email address in the email address field and confirm your entry by entering it in the confirm email address field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(852, 'COM_USERS_PROFILE_LAST_VISITED_DATE_LABEL', 'Last Visited Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(853, 'COM_USERS_PROFILE_MY_PROFILE', 'My Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(854, 'COM_USERS_PROFILE_NAME_DESC', 'Enter your full name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(855, 'COM_USERS_PROFILE_NAME_LABEL', 'Name:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(856, 'COM_USERS_PROFILE_NEVER_VISITED', 'This is the first time you visit this site', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(857, 'COM_USERS_PROFILE_NOCHANGE_USERNAME_DESC', 'If you want to change your username, please contact a site administrator.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(858, 'COM_USERS_PROFILE_OTEPS', 'One time emergency passwords', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(859, 'COM_USERS_PROFILE_OTEPS_DESC', 'If you do not have access to your two factor authentication device you can use any of the following passwords instead of a regular security code. Each one of these emergency passwords is immediately destroyed upon use. We recommend printing these passwords out and keeping the printout in a safe and accessible location, eg your wallet or a safety deposit box.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(860, 'COM_USERS_PROFILE_OTEPS_WAIT_DESC', 'There are currently no emergency one time passwords generated in your account. The passwords will be generated automatically and displayed here as soon as you activate two factor authentication.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(861, 'COM_USERS_PROFILE_PASSWORD1_LABEL', 'Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(862, 'COM_USERS_PROFILE_PASSWORD1_MESSAGE', 'The passwords you entered do not match. Please enter your desired password in the password field and confirm your entry by entering it in the confirm password field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(863, 'COM_USERS_PROFILE_PASSWORD2_DESC', 'Confirm your password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(864, 'COM_USERS_PROFILE_PASSWORD2_LABEL', 'Confirm Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(865, 'COM_USERS_PROFILE_REGISTERED_DATE_LABEL', 'Registered Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(866, 'COM_USERS_PROFILE_SAVE_FAILED', 'Profile could not be saved: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(867, 'COM_USERS_PROFILE_SAVE_SUCCESS', 'Profile successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(868, 'COM_USERS_PROFILE_TWO_FACTOR_AUTH', 'Two Factor Authentication', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(869, 'COM_USERS_PROFILE_TWOFACTOR_LABEL', 'Authentication Method', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(870, 'COM_USERS_PROFILE_TWOFACTOR_DESC', 'Which two factor authentication method you want to activate on the user account.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(871, 'COM_USERS_PROFILE_USERNAME_DESC', 'Enter your desired username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(872, 'COM_USERS_PROFILE_USERNAME_LABEL', 'Username:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(873, 'COM_USERS_PROFILE_USERNAME_MESSAGE', 'The username you entered is not available. Please pick another username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(874, 'COM_USERS_PROFILE_VALUE_NOT_FOUND', 'No Information Entered', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(875, 'COM_USERS_PROFILE_WELCOME', 'Welcome, %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(876, 'COM_USERS_REGISTER_DEFAULT_LABEL', 'Create An Account', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(877, 'COM_USERS_REGISTER_EMAIL1_DESC', 'Enter your email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(878, 'COM_USERS_REGISTER_EMAIL1_LABEL', 'Email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(879, 'COM_USERS_REGISTER_EMAIL1_MESSAGE', 'The email address you entered is already in use or invalid. Please enter another email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(880, 'COM_USERS_REGISTER_EMAIL2_DESC', 'Confirm your email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(881, 'COM_USERS_REGISTER_EMAIL2_LABEL', 'Confirm email Address:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(882, 'COM_USERS_REGISTER_EMAIL2_MESSAGE', 'The email addresses you entered do not match. Please enter your email address in the email address field and confirm your entry by entering it in the confirm email address field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(883, 'COM_USERS_REGISTER_NAME_DESC', 'Enter your full name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(884, 'COM_USERS_REGISTER_NAME_LABEL', 'Name:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(885, 'COM_USERS_REGISTER_PASSWORD1_LABEL', 'Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(886, 'COM_USERS_REGISTER_PASSWORD1_MESSAGE', 'The passwords you entered do not match. Please enter your desired password in the password field and confirm your entry by entering it in the confirm password field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(887, 'COM_USERS_REGISTER_PASSWORD2_DESC', 'Confirm your password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(888, 'COM_USERS_REGISTER_PASSWORD2_LABEL', 'Confirm Password:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(889, 'COM_USERS_REGISTER_REQUIRED', '<strong class="red">*</strong> Required field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(890, 'COM_USERS_REGISTER_USERNAME_DESC', 'Enter your desired username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(891, 'COM_USERS_REGISTER_USERNAME_LABEL', 'Username:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(892, 'COM_USERS_REGISTER_USERNAME_MESSAGE', 'The username you entered is not available. Please pick another username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(893, 'COM_USERS_REGISTRATION', 'User Registration', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(894, 'COM_USERS_REGISTRATION_ACTIVATE_SUCCESS', 'Your Account has been successfully activated. You can now log in using the username and password you chose during the registration.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(895, 'COM_USERS_REGISTRATION_ACTIVATION_NOTIFY_SEND_MAIL_FAILED', 'An error was encountered while sending activation notification email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(896, 'COM_USERS_REGISTRATION_ACTIVATION_SAVE_FAILED', 'Failed to save activation data: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(897, 'COM_USERS_REGISTRATION_ADMINACTIVATE_SUCCESS', 'The user\'s account has been successfully activated and the user has been notified about it.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(898, 'COM_USERS_REGISTRATION_BIND_FAILED', 'Failed to bind registration data: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(899, 'COM_USERS_REGISTRATION_COMPLETE_ACTIVATE', 'Your account has been created and an activation link has been sent to the email address you entered. Note that you must activate the account by clicking on the activation link when you get the email before you can login.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(900, 'COM_USERS_REGISTRATION_COMPLETE_VERIFY', 'Your account has been created and a verification link has been sent to the email address you entered. Note that you must verify the account by clicking on the verification link when you get the email and then an administrator will activate your account before you can login.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(901, 'COM_USERS_REGISTRATION_DEFAULT_LABEL', 'User Registration', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(902, 'COM_USERS_REGISTRATION_SAVE_FAILED', 'Registration failed: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(903, 'COM_USERS_REGISTRATION_SAVE_SUCCESS', 'Thank you for registering. You may now log in using the username and password you registered with.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(904, 'COM_USERS_REGISTRATION_SEND_MAIL_FAILED', 'An error was encountered while sending the registration email. A message has been sent to the administrator of this site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(905, 'COM_USERS_REGISTRATION_VERIFY_SUCCESS', 'Your email address has been verified. Once an administrator approves your account you will be notified by email and you can login to the site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(906, 'COM_USERS_REMIND', 'Reminder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(907, 'COM_USERS_REMIND_DEFAULT_LABEL', 'Please enter the email address associated with your User account. Your username will be emailed to the email address on file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(908, 'COM_USERS_REMIND_EMAIL_LABEL', 'Your Email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(909, 'COM_USERS_REMIND_LIMIT_ERROR_N_HOURS', 'You have exceeded the maximum number of password resets allowed. Please try again in %s hours.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(910, 'COM_USERS_REMIND_LIMIT_ERROR_N_HOURS_1', 'You have exceeded the maximum number of password resets allowed. Please try again in one hour.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(911, 'COM_USERS_REMIND_REQUEST_FAILED', 'Reminder failed: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(912, 'COM_USERS_REMIND_REQUEST_SUCCESS', 'Reminder successfully sent. Please check your mail.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(913, 'COM_USERS_REMIND_SUPERADMIN_ERROR', 'A Super User can\'t request a password reminder. Please contact another Super User or use an alternative method.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(914, 'COM_USERS_RESET', 'Password Reset', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(915, 'COM_USERS_RESET_COMPLETE_ERROR', 'Error completing password reset.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(916, 'COM_USERS_RESET_COMPLETE_FAILED', 'Completing reset password failed: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(917, 'COM_USERS_RESET_COMPLETE_LABEL', 'To complete the password reset process, please enter a new password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(918, 'COM_USERS_RESET_COMPLETE_SUCCESS', 'Reset password successful. You may now login to the site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(919, 'COM_USERS_RESET_CONFIRM_ERROR', 'Error while confirming the password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(920, 'COM_USERS_RESET_CONFIRM_FAILED', 'Your password reset confirmation failed because the verification code was invalid. %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(921, 'COM_USERS_RESET_CONFIRM_LABEL', 'An email has been sent to your email address. The email contains a verification code, please paste the verification code in the field below to prove that you are the owner of this account.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(922, 'COM_USERS_RESET_COMPLETE_TOKENS_MISSING', 'Your password reset confirmation failed because the verification code was missing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(923, 'COM_USERS_RESET_REQUEST_ERROR', 'Error requesting password reset.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(924, 'COM_USERS_RESET_REQUEST_FAILED', 'Reset password failed: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(925, 'COM_USERS_RESET_REQUEST_LABEL', 'Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(926, 'COM_USERS_SETTINGS_FIELDSET_LABEL', 'Basic Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(927, 'COM_USERS_USER_BLOCKED', 'This user is blocked. If this is an error, please contact an administrator.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(928, 'COM_USERS_USER_FIELD_BACKEND_LANGUAGE_DESC', 'Choose your default language for the Backend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(929, 'COM_USERS_USER_FIELD_BACKEND_LANGUAGE_LABEL', 'Backend Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(930, 'COM_USERS_USER_FIELD_BACKEND_TEMPLATE_DESC', 'Select the template style for the Administrator Backend interface. This will only affect this User.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(931, 'COM_USERS_USER_FIELD_BACKEND_TEMPLATE_LABEL', 'Backend Template Style', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(932, 'COM_USERS_USER_FIELD_EDITOR_DESC', 'Choose your text editor.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(933, 'COM_USERS_USER_FIELD_EDITOR_LABEL', 'Editor', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(934, 'COM_USERS_USER_FIELD_FRONTEND_LANGUAGE_DESC', 'Choose your default language for the Frontend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(935, 'COM_USERS_USER_FIELD_FRONTEND_LANGUAGE_LABEL', 'Frontend Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(936, 'COM_USERS_USER_FIELD_HELPSITE_DESC', 'Help site for the Backend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(937, 'COM_USERS_USER_FIELD_HELPSITE_LABEL', 'Help Site', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(938, 'COM_USERS_USER_FIELD_TIMEZONE_DESC', 'Choose your time zone.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(939, 'COM_USERS_USER_FIELD_TIMEZONE_LABEL', 'Time Zone', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(940, 'COM_USERS_USER_NOT_FOUND', 'User not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(941, 'COM_USERS_USER_SAVE_FAILED', 'Failed to save user: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_users.ini'),
	(942, 'COM_WEBLINKS_CONTENT_TYPE_WEBLINK', 'Web Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(943, 'COM_WEBLINKS_CONTENT_TYPE_CATEGORY', 'Web Links Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(944, 'COM_WEBLINKS_DEFAULT_PAGE_TITLE', 'Web Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(945, 'COM_WEBLINKS_EDIT', 'Edit Web link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(946, 'COM_WEBLINKS_ERR_TABLES_NAME', 'There is already a Web Link with that name in this category. Please try again.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(947, 'COM_WEBLINKS_ERR_TABLES_PROVIDE_URL', 'Please provide a valid URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(948, 'COM_WEBLINKS_ERR_TABLES_TITLE', 'Your Web Link must contain a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(949, 'COM_WEBLINKS_ERROR_CATEGORY_NOT_FOUND', 'Web Link category not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(950, 'COM_WEBLINKS_ERROR_UNIQUE_ALIAS', 'Another Web Link from this category has the same alias.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(951, 'COM_WEBLINKS_ERROR_WEBLINK_NOT_FOUND', 'Web Link not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(952, 'COM_WEBLINKS_ERROR_WEBLINK_URL_INVALID', 'Invalid Web link URL.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(953, 'COM_WEBLINKS_FIELD_ALIAS_DESC', 'The alias is for internal use only. Leave this blank and Joomla will fill in a default value from the title. It has to be unique for each web link in the same category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(954, 'COM_WEBLINKS_FIELD_CATEGORY_DESC', 'You must select a Category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(955, 'COM_WEBLINKS_FIELD_DESCRIPTION_DESC', 'Enter a description for your Web link.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(956, 'COM_WEBLINKS_FILTER_LABEL', 'Filter Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(957, 'COM_WEBLINKS_FILTER_SEARCH_DESC', 'Web Links filter search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(958, 'COM_WEBLINKS_FIELD_TITLE_DESC', 'Your Web Link must have a Title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(959, 'COM_WEBLINKS_FIELD_URL_DESC', 'You must enter a URL.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(960, 'COM_WEBLINKS_FIELD_URL_LABEL', 'URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(961, 'COM_WEBLINKS_FORM_CREATE_WEBLINK', 'Submit a Web Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(962, 'COM_WEBLINKS_GRID_TITLE', 'Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(963, 'COM_WEBLINKS_LINK', 'Web Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(964, 'COM_WEBLINKS_NAME', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(965, 'COM_WEBLINKS_NO_WEBLINKS', 'There are no Web Links in this category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(966, 'COM_WEBLINKS_NUM', '# of links:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(967, 'COM_WEBLINKS_FORM_EDIT_WEBLINK', 'Edit a Web Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(968, 'COM_WEBLINKS_FORM_SUBMIT_WEBLINK', 'Submit a Web Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(969, 'COM_WEBLINKS_SAVE_SUCCESS', 'Web link successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(970, 'COM_WEBLINKS_SUBMIT_SAVE_SUCCESS', 'Web Link successfully submitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(971, 'COM_WEBLINKS_WEB_LINKS', 'Web Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(972, 'JGLOBAL_NEWITEMSLAST_DESC', 'New Web Links default to the last position. Ordering can be changed after this Web Link has been saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_weblinks.ini'),
	(973, 'COM_WRAPPER_NO_IFRAMES', 'This option will not work correctly. Unfortunately, your browser does not support inline frames.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.com_wrapper.ini'),
	(974, 'FILES_JOOMLA', 'Joomla CMS', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.files_joomla.sys.ini'),
	(975, 'FILES_JOOMLA_ERROR_FILE_FOLDER', 'Error on deleting file or folder %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.files_joomla.sys.ini'),
	(976, 'FILES_JOOMLA_ERROR_MANIFEST', 'Error on updating manifest cache: (type, element, folder, client) = (%s, %s, %s, %s)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.files_joomla.sys.ini'),
	(977, 'FILES_JOOMLA_XML_DESCRIPTION', 'Joomla! 3 Content Management System.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.files_joomla.sys.ini'),
	(978, 'FINDER_CLI', 'Smart Search INDEXER', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(979, 'FINDER_CLI_BATCH_COMPLETE', ' * Processed batch %s in %s seconds.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(980, 'FINDER_CLI_FILTER_RESTORE_WARNING', 'Warning: Did not find taxonomy %s/%s in filter %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(981, 'FINDER_CLI_INDEX_PURGE', 'Purging index', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(982, 'FINDER_CLI_INDEX_PURGE_FAILED', '- index purge failed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(983, 'FINDER_CLI_INDEX_PURGE_SUCCESS', '- index purge successful', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(984, 'FINDER_CLI_PROCESS_COMPLETE', 'Total Processing Time: %s seconds.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(985, 'FINDER_CLI_RESTORE_FILTER_COMPLETED', '- number of filters restored: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(986, 'FINDER_CLI_RESTORE_FILTERS', 'Restoring filters', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(987, 'FINDER_CLI_SAVE_FILTER_COMPLETED', '- number of saved filters: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(988, 'FINDER_CLI_SAVE_FILTERS', 'Saving filters', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(989, 'FINDER_CLI_SETTING_UP_PLUGINS', 'Setting up Smart Search plugins', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(990, 'FINDER_CLI_SETUP_ITEMS', 'Setup %s items in %s seconds.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(991, 'FINDER_CLI_STARTING_INDEXER', 'Starting Indexer', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.finder_cli.ini'),
	(992, 'JERROR_PARSING_LANGUAGE_FILE', '&#160;: error(s) in line(s) %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(993, 'ERROR', 'Error', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(994, 'MESSAGE', 'Message', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(995, 'NOTICE', 'Notice', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(996, 'WARNING', 'Warning', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(997, 'J1', '1', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(998, 'J2', '2', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(999, 'J3', '3', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1000, 'J4', '4', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1001, 'J5', '5', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1002, 'J6', '6', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1003, 'J7', '7', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1004, 'J8', '8', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1005, 'J9', '9', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1006, 'J10', '10', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1007, 'J15', '15', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1008, 'J20', '20', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1009, 'J25', '25', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1010, 'J30', '30', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1011, 'J50', '50', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1012, 'J100', '100', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1013, 'JACTION_ADMIN', 'Configure', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1014, 'JACTION_ADMIN_GLOBAL', 'Super User', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1015, 'JACTION_COMPONENT_SETTINGS', 'Component Settings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1016, 'JACTION_CREATE', 'Create', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1017, 'JACTION_DELETE', 'Delete', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1018, 'JACTION_EDIT', 'Edit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1019, 'JACTION_EDITOWN', 'Edit Own', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1020, 'JACTION_EDITSTATE', 'Edit State', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1021, 'JACTION_LOGIN_ADMIN', 'Admin Login', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1022, 'JACTION_LOGIN_SITE', 'Site Login', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1023, 'JACTION_MANAGE', 'Access Administration Interface', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1024, 'JADMINISTRATOR', 'Administrator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1025, 'JALL', 'All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1026, 'JALL_LANGUAGE', 'All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1027, 'JARCHIVED', 'Archived', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1028, 'JAUTHOR', 'Author', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1029, 'JCANCEL', 'Cancel', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1030, 'JCATEGORY', 'Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1031, 'JDATE', 'Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1032, 'JDEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1033, 'JDETAILS', 'Details', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1034, 'JDISABLED', 'Disabled', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1035, 'JEDITOR', 'Editor', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1036, 'JENABLED', 'Enabled', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1037, 'JEXPIRED', 'Expired', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1038, 'JFALSE', 'False', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1039, 'JFEATURED', 'Featured', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1040, 'JHIDE', 'Hide', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1041, 'JINVALID_TOKEN', 'Invalid Token', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1042, 'JLOGIN', 'Log in', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1043, 'JLOGOUT', 'Log out', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1044, 'JNEW', 'New', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1045, 'JNEXT', 'Next', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1046, 'JNO', 'No', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1047, 'JNONE', 'None', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1048, 'JNOTPUBLISHEDYET', 'Not published yet', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1049, 'JNOTICE', 'Notice', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1050, 'JOFF', 'Off', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1051, 'JOFFLINE_MESSAGE', 'This site is down for maintenance.<br />Please check back again soon.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1052, 'JON', 'On', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1053, 'JOPTIONS', 'Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1054, 'JPAGETITLE', '%1$s - %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1055, 'JPREV', 'Prev', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1056, 'JPREVIOUS', 'Previous', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1057, 'JPUBLISHED', 'Published', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1058, 'JREGISTER', 'Register', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1059, 'JREQUIRED', 'Required', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1060, 'JSAVE', 'Save', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1061, 'JSHOW', 'Show', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1062, 'JSITE', 'Site', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1063, 'JSTATUS', 'Status', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1064, 'JSUBMIT', 'Submit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1065, 'JTAG', 'Tags', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1066, 'JTAG_DESC', 'Add and delete tags to an item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1067, 'JTOOLBAR_VERSIONS', 'Versions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1068, 'JTRASH', 'Trash', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1069, 'JTRASHED', 'Trashed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1070, 'JTRUE', 'True', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1071, 'JUNPUBLISHED', 'Unpublished', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1072, 'JYEAR', 'Year', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1073, 'JYES', 'Yes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1074, 'JBROWSERTARGET_MODAL', 'Modal', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1075, 'JBROWSERTARGET_NEW', 'Open in new window', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1076, 'JBROWSERTARGET_PARENT', 'Open in parent window', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1077, 'JBROWSERTARGET_POPUP', 'Open in popup', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1078, 'JERROR_ALERTNOAUTHOR', 'You are not authorised to view this resource.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1079, 'JERROR_ALERTNOTEMPLATE', '<strong>The template for this display is not available. Please contact a Site administrator.</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1080, 'JERROR_AN_ERROR_HAS_OCCURRED', 'An error has occurred.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1081, 'JERROR_COULD_NOT_FIND_TEMPLATE', 'Could not find template "%s".', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1082, 'JERROR_ERROR', 'Error', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1083, 'JERROR_LAYOUT_AN_OUT_OF_DATE_BOOKMARK_FAVOURITE', 'an <strong>out-of-date bookmark/favourite</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1084, 'JERROR_LAYOUT_ERROR_HAS_OCCURRED_WHILE_PROCESSING_YOUR_REQUEST', 'An error has occurred while processing your request.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1085, 'JERROR_LAYOUT_GO_TO_THE_HOME_PAGE', 'Go to the Home Page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1086, 'JERROR_LAYOUT_HOME_PAGE', 'Home Page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1087, 'JERROR_LAYOUT_MIS_TYPED_ADDRESS', 'a <strong>mistyped address</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1088, 'JERROR_LAYOUT_NOT_ABLE_TO_VISIT', 'You may not be able to visit this page because of:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1089, 'JERROR_LAYOUT_PAGE_NOT_FOUND', 'The requested page can\'t be found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1090, 'JERROR_LAYOUT_PLEASE_CONTACT_THE_SYSTEM_ADMINISTRATOR', 'If difficulties persist, please contact the System Administrator of this site and report the error below.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1091, 'JERROR_LAYOUT_PLEASE_TRY_ONE_OF_THE_FOLLOWING_PAGES', 'Please try one of the following pages:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1092, 'JERROR_LAYOUT_REQUESTED_RESOURCE_WAS_NOT_FOUND', 'The requested resource was not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1093, 'JERROR_LAYOUT_SEARCH', 'You may wish to search the site or visit the home page.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1094, 'JERROR_LAYOUT_SEARCH_ENGINE_OUT_OF_DATE_LISTING', 'a search engine that has an <strong>out-of-date listing for this site</strong>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1095, 'JERROR_LAYOUT_SEARCH_PAGE', 'Search this site', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1096, 'JERROR_LAYOUT_YOU_HAVE_NO_ACCESS_TO_THIS_PAGE', 'you have <strong>no access</strong> to this page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1097, 'JERROR_LOADING_MENUS', 'Error loading Menus: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1098, 'JERROR_LOGIN_DENIED', 'You can\'t access the private section of this site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1099, 'JERROR_NOLOGIN_BLOCKED', 'Login denied! Your account has either been blocked or you have not activated it yet.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1100, 'JERROR_SESSION_STARTUP', 'Error initialising the session.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1101, 'JERROR_TABLE_BIND_FAILED', 'hmm %s ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1102, 'JERROR_USERS_PROFILE_NOT_FOUND', 'User profile not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1103, 'JFIELD_ACCESS_DESC', 'Access level for this content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1104, 'JFIELD_ACCESS_LABEL', 'Access', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1105, 'JFIELD_ALIAS_DESC', 'The Alias will be used in the SEF URL. Leave this blank and Joomla! will fill in a default value from the title. This value will depend on the SEO settings (Global Configuration->Site). <br />Using Unicode will produce UTF-8 aliases. You may also enter manually any UTF-8 character. Spaces and some forbidden characters will be changed to hyphens.<br />When using default transliteration it will produce an alias in lower case and with dashes instead of spaces. You may enter the Alias manually. Use lowercase letters and hyphens (-). No spaces or underscores are allowed. Default value will be a date and time if the title is typed in non-latin letters .', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1106, 'JFIELD_ALIAS_LABEL', 'Alias', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1107, 'JFIELD_ALIAS_PLACEHOLDER', 'Auto-generate from title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1108, 'JFIELD_ALT_PAGE_TITLE_LABEL', 'Alternative Page Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1109, 'JFIELD_CATEGORY_DESC', 'Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1110, 'JFIELD_LANGUAGE_DESC', 'Assign a language to this article.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1111, 'JFIELD_LANGUAGE_LABEL', 'Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1112, 'JFIELD_META_DESCRIPTION_DESC', 'Metadata description.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1113, 'JFIELD_META_DESCRIPTION_LABEL', 'Meta Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1114, 'JFIELD_META_KEYWORDS_DESC', 'Keywords describing the content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1115, 'JFIELD_META_KEYWORDS_LABEL', 'Keywords', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1116, 'JFIELD_META_RIGHTS_DESC', 'Describe what rights others have to use this content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1117, 'JFIELD_META_RIGHTS_LABEL', 'Content Rights', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1118, 'JFIELD_ORDERING_DESC', 'Ordering of the article within the category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1119, 'JFIELD_ORDERING_LABEL', 'Ordering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1120, 'JFIELD_PUBLISHED_DESC', 'Set publication status.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1121, 'JFIELD_TITLE_DESC', 'Title for the article.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1122, 'JGLOBAL_ARTICLES', 'Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1123, 'JGLOBAL_AUTH_ACCESS_DENIED', 'Access Denied', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1124, 'JGLOBAL_AUTH_ACCESS_GRANTED', 'Access Granted', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1125, 'JGLOBAL_AUTH_BIND_FAILED', 'Failed binding to LDAP server', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1126, 'JGLOBAL_AUTH_CANCEL', 'Authentication cancelled', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1127, 'JGLOBAL_AUTH_CURL_NOT_INSTALLED', 'Curl isn\'t installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1128, 'JGLOBAL_AUTH_EMPTY_PASS_NOT_ALLOWED', 'Empty password not allowed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1129, 'JGLOBAL_AUTH_FAIL', 'Authentication failed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1130, 'JGLOBAL_AUTH_FAILED', 'Failed to authenticate: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1131, 'JGLOBAL_AUTH_INCORRECT', 'Incorrect username/password', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1132, 'JGLOBAL_AUTH_INVALID_PASS', 'Username and password do not match or you do not have an account yet.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1133, 'JGLOBAL_AUTH_INVALID_SECRETKEY', 'The two factor authentication Secret Key is invalid.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1134, 'JGLOBAL_AUTH_NO_BIND', 'Unable to bind to LDAP', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1135, 'JGLOBAL_AUTH_NO_CONNECT', 'Unable to connect to LDAP server', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1136, 'JGLOBAL_AUTH_NO_REDIRECT', 'Could not redirect to server: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1137, 'JGLOBAL_AUTH_NO_USER', 'Username and password do not match or you do not have an account yet.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1138, 'JGLOBAL_AUTH_NOT_CREATE_DIR', 'Could not create the FileStore directory %s. Please check the effective permissions.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1139, 'JGLOBAL_AUTH_PASS_BLANK', 'LDAP can\'t have blank password', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1140, 'JGLOBAL_AUTH_UNKNOWN_ACCESS_DENIED', 'Result Unknown. Access Denied', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1141, 'JGLOBAL_AUTH_USER_BLACKLISTED', 'User is blacklisted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1142, 'JGLOBAL_AUTH_USER_NOT_FOUND', 'Unable to find user', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1143, 'JGLOBAL_AUTO', 'Auto', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1144, 'JGLOBAL_CATEGORY_NOT_FOUND', 'Category not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1145, 'JGLOBAL_CENTER', 'Center', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1146, 'JGLOBAL_CHECK_ALL', 'Check All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1147, 'JGLOBAL_CLICK_TO_SORT_THIS_COLUMN', 'Click to sort by this column', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1148, 'JGLOBAL_CREATED_DATE_ON', 'Created on %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1149, 'JGLOBAL_DESCRIPTION', 'Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1150, 'JGLOBAL_DISPLAY_NUM', 'Display #', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1151, 'JGLOBAL_EDIT', 'Edit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1152, 'JGLOBAL_EMAIL', 'Email', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1153, 'JGLOBAL_FIELD_CREATED_BY_ALIAS_DESC', 'Uses another name than the author\'s for display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1154, 'JGLOBAL_FIELD_CREATED_BY_ALIAS_LABEL', 'Author\'s Alias', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1155, 'JGLOBAL_FIELD_FEATURED_DESC', 'Assign the article to the featured blog layout.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1156, 'JGLOBAL_FIELD_FEATURED_LABEL', 'Featured', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1157, 'JGLOBAL_FIELD_PUBLISH_DOWN_DESC', 'An optional date to stop publishing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1158, 'JGLOBAL_FIELD_PUBLISH_DOWN_LABEL', 'Finish Publishing', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1159, 'JGLOBAL_FIELD_PUBLISH_UP_DESC', 'An optional date to start publishing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1160, 'JGLOBAL_FIELD_PUBLISH_UP_LABEL', 'Start Publishing', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1161, 'JGLOBAL_FIELD_VERSION_NOTE_DESC', 'Enter an optional note for this version of the item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1162, 'JGLOBAL_FIELD_VERSION_NOTE_LABEL', 'Version Note', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1163, 'JGLOBAL_FILTER_BUTTON', 'Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1164, 'JGLOBAL_FILTER_LABEL', 'Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1165, 'JGLOBAL_FULL_TEXT', 'Full Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1166, 'JGLOBAL_GT', '&gt;', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1167, 'JGLOBAL_HELPREFRESH_BUTTON', 'Refresh', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1168, 'JGLOBAL_HITS', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1169, 'JGLOBAL_HITS_COUNT', 'Hits: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1170, 'JGLOBAL_ICON_SEP', '|', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1171, 'JGLOBAL_INHERIT', 'Inherit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1172, 'JGLOBAL_INTRO_TEXT', 'Intro Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1173, 'JGLOBAL_KEEP_TYPING', 'Keep typing ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1174, 'JGLOBAL_LEFT', 'Left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1175, 'JGLOBAL_LOOKING_FOR', 'Looking for', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1176, 'JGLOBAL_LT', '&lt;', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1177, 'JGLOBAL_NEWITEMSLAST_DESC', 'New items default to the last position. Ordering can be changed after this item has been saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1178, 'JGLOBAL_NO_MATCHING_RESULTS', 'No Matching Results', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1179, 'JGLOBAL_NUM', '#', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1180, 'JGLOBAL_OTPMETHOD_NONE', 'Disable Two Factor Authentication', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1181, 'JGLOBAL_PASSWORD', 'Password', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1182, 'JGLOBAL_PASSWORD_RESET_REQUIRED', 'You are required to reset your password before proceeding.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1183, 'JGLOBAL_PRINT', 'Print', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1184, 'JGLOBAL_RECORD_NUMBER', 'Record ID: %d', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1185, 'JGLOBAL_REMEMBER_ME', 'Remember me', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1186, 'JGLOBAL_REMEMBER_MUST_LOGIN', 'For security reasons you must login before editing your personal information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1187, 'JGLOBAL_RESOURCE_NOT_FOUND', 'Resource not found', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1188, 'JGLOBAL_RIGHT', 'Right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1189, 'JGLOBAL_ROOT', 'Root', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1190, 'JGLOBAL_SECRETKEY', 'Secret Key', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1191, 'JGLOBAL_SECRETKEY_HELP', 'If you have enabled two factor authentication in your user account please enter your secret key. If you do not know what this means, you can leave this field blank.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1192, 'JGLOBAL_SELECT_AN_OPTION', 'Select an option', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1193, 'JGLOBAL_SELECT_NO_RESULTS_MATCH', 'No results match', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1194, 'JGLOBAL_SELECT_SOME_OPTIONS', 'Select some options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1195, 'JGLOBAL_START_PUBLISH_AFTER_FINISH', 'Item start publishing date must be before finish publishing date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1196, 'JGLOBAL_SUBCATEGORIES', 'Subcategories', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1197, 'JGLOBAL_SUBHEADING_DESC', 'Optional text to show as a subheading.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1198, 'JGLOBAL_TITLE', 'Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1199, 'JGLOBAL_USE_GLOBAL', 'Use Global', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1200, 'JGLOBAL_USERNAME', 'Username', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1201, 'JGLOBAL_VALIDATION_FORM_FAILED', 'Invalid form', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1202, 'JGLOBAL_YOU_MUST_LOGIN_FIRST', 'Please login first', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1203, 'JGRID_HEADING_ACCESS', 'Access', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1204, 'JGRID_HEADING_ID', 'ID', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1205, 'JGRID_HEADING_LANGUAGE', 'Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1206, 'JLIB_DATABASE_ERROR_ADAPTER_MYSQL', 'The MySQL adapter \'mysql\' is not available.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1207, 'JLIB_DATABASE_ERROR_ADAPTER_MYSQLI', 'The MySQL adapter \'mysqli\' is not available.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1208, 'JLIB_DATABASE_ERROR_CONNECT_DATABASE', 'Unable to connect to the Database: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1209, 'JLIB_DATABASE_ERROR_CONNECT_MYSQL', 'Could not connect to MySQL.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1210, 'JLIB_DATABASE_ERROR_DATABASE_CONNECT', 'Could not connect to database', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1211, 'JLIB_DATABASE_ERROR_LOAD_DATABASE_DRIVER', 'Unable to load Database Driver: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1212, 'JLIB_ERROR_INFINITE_LOOP', 'Infinite loop detected in JError', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1213, 'JOPTION_SELECT_ACCESS', '- Select Access -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1214, 'JOPTION_SELECT_AUTHOR', '- Select Author -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1215, 'JOPTION_SELECT_CATEGORY', '- Select Category -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1216, 'JOPTION_SELECT_LANGUAGE', '- Select Language -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1217, 'JOPTION_SELECT_PUBLISHED', '- Select Status -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1218, 'JOPTION_SELECT_MAX_LEVELS', '- Select Max Levels -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1219, 'JOPTION_SELECT_TAG', '- Select Tag -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1220, 'JOPTION_USE_DEFAULT', '- Use Default -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1221, 'JSEARCH_FILTER_CLEAR', 'Clear', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1222, 'JSEARCH_FILTER_LABEL', 'Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1223, 'JSEARCH_FILTER_SUBMIT', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1224, 'JSEARCH_FILTER', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1225, 'DATE_FORMAT_LC', 'l, d F Y', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1226, 'DATE_FORMAT_LC1', 'l, d F Y', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1227, 'DATE_FORMAT_LC2', 'l, d F Y H:i', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1228, 'DATE_FORMAT_LC3', 'd F Y', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1229, 'DATE_FORMAT_LC4', 'Y-m-d', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1230, 'DATE_FORMAT_JS1', 'y-m-d', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1231, 'JANUARY_SHORT', 'Jan', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1232, 'JANUARY', 'January', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1233, 'FEBRUARY_SHORT', 'Feb', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1234, 'FEBRUARY', 'February', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1235, 'MARCH_SHORT', 'Mar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1236, 'MARCH', 'March', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1237, 'APRIL_SHORT', 'Apr', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1238, 'APRIL', 'April', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1239, 'MAY_SHORT', 'May', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1240, 'MAY', 'May', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1241, 'JUNE_SHORT', 'Jun', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1242, 'JUNE', 'June', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1243, 'JULY_SHORT', 'Jul', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1244, 'JULY', 'July', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1245, 'AUGUST_SHORT', 'Aug', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1246, 'AUGUST', 'August', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1247, 'SEPTEMBER_SHORT', 'Sep', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1248, 'SEPTEMBER', 'September', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1249, 'OCTOBER_SHORT', 'Oct', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1250, 'OCTOBER', 'October', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1251, 'NOVEMBER_SHORT', 'Nov', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1252, 'NOVEMBER', 'November', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1253, 'DECEMBER_SHORT', 'Dec', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1254, 'DECEMBER', 'December', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1255, 'SAT', 'Sat', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1256, 'SATURDAY', 'Saturday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1257, 'SUN', 'Sun', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1258, 'SUNDAY', 'Sunday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1259, 'MON', 'Mon', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1260, 'MONDAY', 'Monday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1261, 'TUE', 'Tue', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1262, 'TUESDAY', 'Tuesday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1263, 'WED', 'Wed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1264, 'WEDNESDAY', 'Wednesday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1265, 'THU', 'Thu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1266, 'THURSDAY', 'Thursday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1267, 'FRI', 'Fri', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1268, 'FRIDAY', 'Friday', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1269, 'DECIMALS_SEPARATOR', '.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1270, 'THOUSANDS_SEPARATOR', ',', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1271, 'PHPMAILER_PROVIDE_ADDRESS', 'You must provide at least one recipient email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1272, 'PHPMAILER_MAILER_IS_NOT_SUPPORTED', ' Mailer is not supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1273, 'PHPMAILER_EXECUTE', 'Could not execute: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1274, 'PHPMAILER_INSTANTIATE', 'Could not start mail function.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1275, 'PHPMAILER_AUTHENTICATE', 'SMTP Error! Could not authenticate.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1276, 'PHPMAILER_FROM_FAILED', 'The following from address failed: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1277, 'PHPMAILER_RECIPIENTS_FAILED', 'SMTP Error! The following recipients failed: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1278, 'PHPMAILER_DATA_NOT_ACCEPTED', 'SMTP Error! Data not accepted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1279, 'PHPMAILER_CONNECT_HOST', 'SMTP Error! Could not connect to SMTP host.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1280, 'PHPMAILER_FILE_ACCESS', 'Could not access file: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1281, 'PHPMAILER_FILE_OPEN', 'File Error: Could not open file: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1282, 'PHPMAILER_ENCODING', 'Unknown encoding: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1283, 'PHPMAILER_SIGNING_ERROR', 'Signing error: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1284, 'PHPMAILER_SMTP_ERROR', 'SMTP server error: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1285, 'PHPMAILER_EMPTY_MESSAGE', 'Empty message body', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1286, 'PHPMAILER_INVALID_ADDRESS', 'Invalid address', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1287, 'PHPMAILER_VARIABLE_SET', 'Can\'t set or reset variable: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1288, 'PHPMAILER_SMTP_CONNECT_FAILED', 'SMTP connect failed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1289, 'PHPMAILER_TLS', 'Could not start TLS', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1290, 'MYSQL', 'MySQL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1291, 'MYSQLI', 'MySQLi', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1292, 'ORACLE', 'Oracle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1293, 'PDOMYSQL', 'MySQL (PDO)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1294, 'POSTGRESQL', 'PostgreSQL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1295, 'SQLAZURE', 'Microsoft SQL Azure', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1296, 'SQLITE', 'SQLite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1297, 'SQLSRV', 'Microsoft SQL Server', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1298, 'JSEARCH_TOOLS', 'Search tools', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1299, 'JSEARCH_TOOLS_DESC', 'Filter the list items.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1300, 'JSEARCH_TOOLS_ORDERING', 'Order by:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.ini'),
	(1301, 'LIB_FOF_XML_DESCRIPTION', 'Framework-on-Framework (FOF) - A rapid component development framework for Joomla!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_fof.sys.ini'),
	(1302, 'LIB_IDNA_XML_DESCRIPTION', 'The class idna_convert allows to convert internationalised domain names (see RFC 3490, 3491, 3492 and 3454 for details) as they can be used with various registries worldwide to be translated between their original (localised) form and their encoded form as it will be used in the DNS (Domain Name System).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_idna_convert.sys.ini'),
	(1303, 'JERROR_PARSING_LANGUAGE_FILE', '&#160;: error(s) in line(s) %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1304, 'JLIB_APPLICATION_ERROR_ACCESS_FORBIDDEN', 'Access forbidden', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1305, 'JLIB_APPLICATION_ERROR_APPLICATION_GET_NAME', 'JApplication: :getName() : Can\'t get or parse class name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1306, 'JLIB_APPLICATION_ERROR_APPLICATION_LOAD', 'Unable to load application: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1307, 'JLIB_APPLICATION_ERROR_BATCH_CANNOT_CREATE', 'You are not allowed to create new items in this category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1308, 'JLIB_APPLICATION_ERROR_BATCH_CANNOT_EDIT', 'You are not allowed to edit one or more of these items.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1309, 'JLIB_APPLICATION_ERROR_BATCH_FAILED', 'Batch process failed with following error: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1310, 'JLIB_APPLICATION_ERROR_BATCH_MOVE_CATEGORY_NOT_FOUND', 'Can\'t find the destination category for this move.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1311, 'JLIB_APPLICATION_ERROR_BATCH_MOVE_ROW_NOT_FOUND', 'Can\'t find the item being moved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1312, 'JLIB_APPLICATION_ERROR_CHECKIN_FAILED', 'Check-in failed with the following error: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1313, 'JLIB_APPLICATION_ERROR_CHECKIN_NOT_CHECKED', 'Item is not checked out.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1314, 'JLIB_APPLICATION_ERROR_CHECKIN_USER_MISMATCH', 'The user checking in does not match the user who checked out the item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1315, 'JLIB_APPLICATION_ERROR_CHECKOUT_FAILED', 'Check-out failed with the following error: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1316, 'JLIB_APPLICATION_ERROR_CHECKOUT_USER_MISMATCH', 'The user checking out does not match the user who checked out the item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1317, 'JLIB_APPLICATION_ERROR_COMPONENT_NOT_FOUND', 'Component not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1318, 'JLIB_APPLICATION_ERROR_COMPONENT_NOT_LOADING', 'Error loading component: %1$s, %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1319, 'JLIB_APPLICATION_ERROR_CONTROLLER_GET_NAME', 'JController: :getName() : Can\'t get or parse class name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1320, 'JLIB_APPLICATION_ERROR_CREATE_RECORD_NOT_PERMITTED', 'Create record not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1321, 'JLIB_APPLICATION_ERROR_DELETE_NOT_PERMITTED', 'Delete not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1322, 'JLIB_APPLICATION_ERROR_EDITSTATE_NOT_PERMITTED', 'Edit state is not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1323, 'JLIB_APPLICATION_ERROR_EDIT_ITEM_NOT_PERMITTED', 'Edit is not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1324, 'JLIB_APPLICATION_ERROR_EDIT_NOT_PERMITTED', 'Edit not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1325, 'JLIB_APPLICATION_ERROR_HISTORY_ID_MISMATCH', 'Error restoring item version from history.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1326, 'JLIB_APPLICATION_ERROR_INSUFFICIENT_BATCH_INFORMATION', 'Insufficient information to perform the batch operation.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1327, 'JLIB_APPLICATION_ERROR_INVALID_CONTROLLER_CLASS', 'Invalid controller class: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1328, 'JLIB_APPLICATION_ERROR_INVALID_CONTROLLER', 'Invalid controller: name=\'%s\', format=\'%s\'', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1329, 'JLIB_APPLICATION_ERROR_LAYOUTFILE_NOT_FOUND', 'Layout %s not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1330, 'JLIB_APPLICATION_ERROR_LIBRARY_NOT_FOUND', 'Library not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1331, 'JLIB_APPLICATION_ERROR_LIBRARY_NOT_LOADING', 'Error loading library: %1$s, %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1332, 'JLIB_APPLICATION_ERROR_MODEL_GET_NAME', 'JModel: :getName() : Can\'t get or parse class name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1333, 'JLIB_APPLICATION_ERROR_MODULE_LOAD', 'Error loading module %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1334, 'JLIB_APPLICATION_ERROR_PATHWAY_LOAD', 'Unable to load pathway: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1335, 'JLIB_APPLICATION_ERROR_REORDER_FAILED', 'Reorder failed. Error: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1336, 'JLIB_APPLICATION_ERROR_ROUTER_LOAD', 'Unable to load router: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1337, 'JLIB_APPLICATION_ERROR_MODELCLASS_NOT_FOUND', 'Model class %s not found in file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1338, 'JLIB_APPLICATION_ERROR_SAVE_FAILED', 'Save failed with the following error: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1339, 'JLIB_APPLICATION_ERROR_SAVE_NOT_PERMITTED', 'Save not permitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1340, 'JLIB_APPLICATION_ERROR_TABLE_NAME_NOT_SUPPORTED', 'Table %s not supported. File not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1341, 'JLIB_APPLICATION_ERROR_TASK_NOT_FOUND', 'Task [%s] not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1342, 'JLIB_APPLICATION_ERROR_UNHELD_ID', 'You are not permitted to use that link to directly access that page (#%d).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1343, 'JLIB_APPLICATION_ERROR_VIEW_CLASS_NOT_FOUND', 'View class not found [class, file]: %1$s, %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1344, 'JLIB_APPLICATION_ERROR_VIEW_GET_NAME_SUBSTRING', 'JView: :getName() : Your classname contains the substring \'view\'. This causes problems when extracting the classname from the name of your objects view. Avoid Object names with the substring \'view\'.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1345, 'JLIB_APPLICATION_ERROR_VIEW_GET_NAME', 'JView: :getName() : Can\'t get or parse class name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1346, 'JLIB_APPLICATION_ERROR_VIEW_NOT_FOUND', 'View not found [name, type, prefix]: %1$s, %2$s, %3$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1347, 'JLIB_APPLICATION_SAVE_SUCCESS', 'Item successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1348, 'JLIB_APPLICATION_SUBMIT_SAVE_SUCCESS', 'Item successfully submitted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1349, 'JLIB_APPLICATION_SUCCESS_BATCH', 'Batch process completed successfully.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1350, 'JLIB_APPLICATION_SUCCESS_ITEM_REORDERED', 'Ordering successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1351, 'JLIB_APPLICATION_SUCCESS_ORDERING_SAVED', 'Ordering successfully saved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1352, 'JLIB_APPLICATION_SUCCESS_LOAD_HISTORY', 'Prior version successfully restored. Saved on %s %s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1353, 'JLIB_LOGIN_AUTHENTICATE', 'Username and password do not match or you do not have an account yet.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1354, 'JLIB_CACHE_ERROR_CACHE_HANDLER_LOAD', 'Unable to load Cache Handler: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1355, 'JLIB_CACHE_ERROR_CACHE_STORAGE_LOAD', 'Unable to load Cache Storage: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1356, 'JLIB_CAPTCHA_ERROR_PLUGIN_NOT_FOUND', 'Captcha plugin not set or not found. Please contact a site administrator.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1357, 'JLIB_CLIENT_ERROR_JFTP_NO_CONNECT', 'JFTP: :connect: Could not connect to host \' %1$s \' on port \' %2$s \'', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1358, 'JLIB_CLIENT_ERROR_JFTP_NO_CONNECT_SOCKET', 'JFTP: :connect: Could not connect to host \' %1$s \' on port \' %2$s \'. Socket error number: %3$s and error message: %4$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1359, 'JLIB_CLIENT_ERROR_JFTP_BAD_RESPONSE', 'JFTP: :connect: Bad response. Server response: %s [Expected: 220]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1360, 'JLIB_CLIENT_ERROR_JFTP_BAD_USERNAME', 'JFTP: :login: Bad Username. Server response: %1$s [Expected: 331]. Username sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1361, 'JLIB_CLIENT_ERROR_JFTP_BAD_PASSWORD', 'JFTP: :login: Bad Password. Server response: %1$s [Expected: 230]. Password sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1362, 'JLIB_CLIENT_ERROR_JFTP_PWD_BAD_RESPONSE_NATIVE', 'FTP: :pwd: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1363, 'JLIB_CLIENT_ERROR_JFTP_PWD_BAD_RESPONSE', 'JFTP: :pwd: Bad response. Server response: %s [Expected: 257]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1364, 'JLIB_CLIENT_ERROR_JFTP_SYST_BAD_RESPONSE_NATIVE', 'JFTP: :syst: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1365, 'JLIB_CLIENT_ERROR_JFTP_SYST_BAD_RESPONSE', 'JFTP: :syst: Bad response. Server response: %s [Expected: 215]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1366, 'JLIB_CLIENT_ERROR_JFTP_CHDIR_BAD_RESPONSE_NATIVE', 'JFTP: :chdir: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1367, 'JLIB_CLIENT_ERROR_JFTP_CHDIR_BAD_RESPONSE', 'JFTP: :chdir: Bad response. Server response: %1$s [Expected: 250]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1368, 'JLIB_CLIENT_ERROR_JFTP_REINIT_BAD_RESPONSE_NATIVE', 'JFTP: :reinit: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1369, 'JLIB_CLIENT_ERROR_JFTP_REINIT_BAD_RESPONSE', 'JFTP: :reinit: Bad response. Server response: %s [Expected: 220]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1370, 'JLIB_CLIENT_ERROR_JFTP_RENAME_BAD_RESPONSE_NATIVE', 'JFTP: :rename: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1371, 'JLIB_CLIENT_ERROR_JFTP_RENAME_BAD_RESPONSE_FROM', 'JFTP: :rename: Bad response. Server response: %1$s [Expected: 350]. From path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1372, 'JLIB_CLIENT_ERROR_JFTP_RENAME_BAD_RESPONSE_TO', 'JFTP: :rename: Bad response. Server response: %1$s [Expected: 250]. To path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1373, 'JLIB_CLIENT_ERROR_JFTP_CHMOD_BAD_RESPONSE_NATIVE', 'JFTP: :chmod: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1374, 'JLIB_CLIENT_ERROR_JFTP_CHMOD_BAD_RESPONSE', 'JFTP: :chmod: Bad response. Server response: %1$s [Expected: 250]. Path sent: %2$s. Mode sent: %3$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1375, 'JLIB_CLIENT_ERROR_JFTP_DELETE_BAD_RESPONSE_NATIVE', 'JFTP: :delete: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1376, 'JLIB_CLIENT_ERROR_JFTP_DELETE_BAD_RESPONSE', 'JFTP: :delete: Bad response. Server response: %1$s [Expected: 250]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1377, 'JLIB_CLIENT_ERROR_JFTP_MKDIR_BAD_RESPONSE_NATIVE', 'JFTP: :mkdir: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1378, 'JLIB_CLIENT_ERROR_JFTP_MKDIR_BAD_RESPONSE', 'JFTP: :mkdir: Bad response. Server response: %1$s [Expected: 257]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1379, 'JLIB_CLIENT_ERROR_JFTP_RESTART_BAD_RESPONSE_NATIVE', 'JFTP: :restart: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1380, 'JLIB_CLIENT_ERROR_JFTP_RESTART_BAD_RESPONSE', 'JFTP: :restart: Bad response. Server response: %1$s [Expected: 350]. Restart point sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1381, 'JLIB_CLIENT_ERROR_JFTP_CREATE_BAD_RESPONSE_BUFFER', 'JFTP: :create: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1382, 'JLIB_CLIENT_ERROR_JFTP_CREATE_BAD_RESPONSE_PASSIVE', 'JFTP: :create: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1383, 'JLIB_CLIENT_ERROR_JFTP_CREATE_BAD_RESPONSE', 'JFTP: :create: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1384, 'JLIB_CLIENT_ERROR_JFTP_CREATE_BAD_RESPONSE_TRANSFER', 'JFTP: :create: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1385, 'JLIB_CLIENT_ERROR_JFTP_READ_BAD_RESPONSE_BUFFER', 'JFTP: :read: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1386, 'JLIB_CLIENT_ERROR_JFTP_READ_BAD_RESPONSE_PASSIVE', 'JFTP: :read: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1387, 'JLIB_CLIENT_ERROR_JFTP_READ_BAD_RESPONSE', 'JFTP: :read: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1388, 'JLIB_CLIENT_ERROR_JFTP_READ_BAD_RESPONSE_TRANSFER', 'JFTP: :read: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1389, 'JLIB_CLIENT_ERROR_JFTP_GET_BAD_RESPONSE', 'JFTP: :get: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1390, 'JLIB_CLIENT_ERROR_JFTP_GET_PASSIVE', 'JFTP: :get: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1391, 'JLIB_CLIENT_ERROR_JFTP_GET_WRITING_LOCAL', 'JFTP: :get: Unable to open local file for writing. Local path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1392, 'JLIB_CLIENT_ERROR_JFTP_GET_BAD_RESPONSE_RETR', 'JFTP: :get: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1393, 'JLIB_CLIENT_ERROR_JFTP_GET_BAD_RESPONSE_TRANSFER', 'JFTP: :get: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1394, 'JLIB_CLIENT_ERROR_JFTP_STORE_PASSIVE', 'JFTP: :store: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1395, 'JLIB_CLIENT_ERROR_JFTP_STORE_BAD_RESPONSE', 'JFTP: :store: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1396, 'JLIB_CLIENT_ERROR_JFTP_STORE_READING_LOCAL', 'JFTP: :store: Unable to open local file for reading. Local path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1397, 'JLIB_CLIENT_ERROR_JFTP_STORE_FIND_LOCAL', 'JFTP: :store: Unable to find local file. Local path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1398, 'JLIB_CLIENT_ERROR_JFTP_STORE_BAD_RESPONSE_STOR', 'JFTP: :store: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1399, 'JLIB_CLIENT_ERROR_JFTP_STORE_DATA_PORT', 'JFTP: :store: Unable to write to data port socket.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1400, 'JLIB_CLIENT_ERROR_JFTP_STORE_BAD_RESPONSE_TRANSFER', 'JFTP: :store: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1401, 'JLIB_CLIENT_ERROR_JFTP_WRITE_PASSIVE', 'JFTP: :write: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1402, 'JLIB_CLIENT_ERROR_JFTP_WRITE_BAD_RESPONSE', 'JFTP: :write: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1403, 'JLIB_CLIENT_ERROR_JFTP_WRITE_BAD_RESPONSE_STOR', 'JFTP: :write: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1404, 'JLIB_CLIENT_ERROR_JFTP_WRITE_DATA_PORT', 'JFTP: :write: Unable to write to data port socket.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1405, 'JLIB_CLIENT_ERROR_JFTP_WRITE_BAD_RESPONSE_TRANSFER', 'JFTP: :write: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1406, 'JLIB_CLIENT_ERROR_JFTP_LISTNAMES_PASSIVE', 'JFTP: :listNames: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1407, 'JLIB_CLIENT_ERROR_JFTP_LISTNAMES_BAD_RESPONSE', 'JFTP: :listNames: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1408, 'JLIB_CLIENT_ERROR_JFTP_LISTNAMES_BAD_RESPONSE_NLST', 'JFTP: :listNames: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1409, 'JLIB_CLIENT_ERROR_JFTP_LISTNAMES_BAD_RESPONSE_TRANSFER', 'JFTP: :listNames: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1410, 'JLIB_CLIENT_ERROR_JFTP_LISTDETAILS_BAD_RESPONSE', 'JFTP: :listDetails: Bad response.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1411, 'JLIB_CLIENT_ERROR_JFTP_LISTDETAILS_PASSIVE', 'JFTP: :listDetails: Unable to use passive mode.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1412, 'JLIB_CLIENT_ERROR_JFTP_LISTDETAILS_BAD_RESPONSE_LIST', 'JFTP: :listDetails: Bad response. Server response: %1$s [Expected: 150 or 125]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1413, 'JLIB_CLIENT_ERROR_JFTP_LISTDETAILS_BAD_RESPONSE_TRANSFER', 'JFTP: :listDetails: Transfer Failed. Server response: %1$s [Expected: 226]. Path sent: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1414, 'JLIB_CLIENT_ERROR_JFTP_LISTDETAILS_UNRECOGNISED', 'JFTP: :listDetails: Unrecognised directory listing format.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1415, 'JLIB_CLIENT_ERROR_JFTP_PUTCMD_UNCONNECTED', 'JFTP: :_putCmd: Not connected to the control port.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1416, 'JLIB_CLIENT_ERROR_JFTP_PUTCMD_SEND', 'JFTP: :_putCmd: Unable to send command: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1417, 'JLIB_CLIENT_ERROR_JFTP_VERIFYRESPONSE', 'JFTP: :_verifyResponse: Timeout or unrecognised response while waiting for a response from the server. Server response: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1418, 'JLIB_CLIENT_ERROR_JFTP_PASSIVE_CONNECT_PORT', 'JFTP: :_passive: Not connected to the control port.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1419, 'JLIB_CLIENT_ERROR_JFTP_PASSIVE_RESPONSE', 'JFTP: :_passive: Timeout or unrecognised response while waiting for a response from the server. Server response: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1420, 'JLIB_CLIENT_ERROR_JFTP_PASSIVE_IP_OBTAIN', 'JFTP: :_passive: Unable to obtain IP and port for data transfer. Server response: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1421, 'JLIB_CLIENT_ERROR_JFTP_PASSIVE_IP_VALID', 'JFTP: :_passive: IP and port for data transfer not valid. Server response: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1422, 'JLIB_CLIENT_ERROR_JFTP_PASSIVE_CONNECT', 'JFTP: :_passive: Could not connect to host %1$s on port %2$s. Socket error number: %3$s and error message: %4$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1423, 'JLIB_CLIENT_ERROR_JFTP_MODE_BINARY', 'JFTP: :_mode: Bad response. Server response: %s [Expected: 200]. Mode sent: Binary.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1424, 'JLIB_CLIENT_ERROR_JFTP_MODE_ASCII', 'JFTP: :_mode: Bad response. Server response: %s [Expected: 200]. Mode sent: Ascii.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1425, 'JLIB_CLIENT_ERROR_HELPER_SETCREDENTIALSFROMREQUEST_FAILED', 'Looks like User\'s credentials are no good.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1426, 'JLIB_CLIENT_ERROR_LDAP_ADDRESS_NOT_AVAILABLE', 'Address not available.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1427, 'JLIB_DATABASE_ERROR_ADAPTER_MYSQL', 'The MySQL adapter \'mysql\' is not available.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1428, 'JLIB_DATABASE_ERROR_ADAPTER_MYSQLI', 'The MySQL adapter \'mysqli\' is not available.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1429, 'JLIB_DATABASE_ERROR_BIND_FAILED_INVALID_SOURCE_ARGUMENT', '%s: :bind failed. Invalid source argument.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1430, 'JLIB_DATABASE_ERROR_ARTICLE_UNIQUE_ALIAS', 'Another article from this category has the same alias.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1431, 'JLIB_DATABASE_ERROR_CATEGORY_UNIQUE_ALIAS', 'Another category with the same parent category has the same alias.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1432, 'JLIB_DATABASE_ERROR_CHECK_FAILED', '%s: :check Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1433, 'JLIB_DATABASE_ERROR_CHECKIN_FAILED', '%s: :check-in failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1434, 'JLIB_DATABASE_ERROR_CHECKOUT_FAILED', '%s: :check-out failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1435, 'JLIB_DATABASE_ERROR_CHILD_ROWS_CHECKED_OUT', 'Child rows checked out.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1436, 'JLIB_DATABASE_ERROR_CLASS_DOES_NOT_SUPPORT_ORDERING', '%s does not support ordering.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1437, 'JLIB_DATABASE_ERROR_CLASS_IS_MISSING_FIELD', 'Missing field in the database: %s &#160; %s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1438, 'JLIB_DATABASE_ERROR_CLASS_NOT_FOUND_IN_FILE', 'Table class %s not found in file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1439, 'JLIB_DATABASE_ERROR_CONNECT_DATABASE', 'Unable to connect to the Database: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1440, 'JLIB_DATABASE_ERROR_CONNECT_MYSQL', 'Could not connect to MySQL.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1441, 'JLIB_DATABASE_ERROR_DATABASE_CONNECT', 'Could not connect to database.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1442, 'JLIB_DATABASE_ERROR_DELETE_CATEGORY', 'Left-Right data inconsistency. Can\'t delete category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1443, 'JLIB_DATABASE_ERROR_DELETE_FAILED', '%s: :delete failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1444, 'JLIB_DATABASE_ERROR_DELETE_ROOT_CATEGORIES', 'Root categories can\'t be deleted.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1445, 'JLIB_DATABASE_ERROR_EMAIL_INUSE', 'This email address is already registered.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1446, 'JLIB_DATABASE_ERROR_EMPTY_ROW_RETURNED', 'The database row is empty.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1447, 'JLIB_DATABASE_ERROR_FUNCTION_FAILED', 'DB function failed with error number %s <br /><span style="color: red;">%s</span>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1448, 'JLIB_DATABASE_ERROR_GET_NEXT_ORDER_FAILED', '%s: :getNextOrder failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1449, 'JLIB_DATABASE_ERROR_GET_TREE_FAILED', '%s: :getTree Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1450, 'JLIB_DATABASE_ERROR_GETNODE_FAILED', '%s: :_getNode Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1451, 'JLIB_DATABASE_ERROR_GETROOTID_FAILED', '%s: :getRootId Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1452, 'JLIB_DATABASE_ERROR_HIT_FAILED', '%s: :hit failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1453, 'JLIB_DATABASE_ERROR_INVALID_LOCATION', '%s: :setLocation - Invalid location.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1454, 'JLIB_DATABASE_ERROR_INVALID_NODE_RECURSION', '%s: :move Failed - Can\'t move the node to be a child of itself.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1455, 'JLIB_DATABASE_ERROR_INVALID_PARENT_ID', 'Invalid parent ID.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1456, 'JLIB_DATABASE_ERROR_LANGUAGE_NO_TITLE', 'The language should have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1457, 'JLIB_DATABASE_ERROR_LANGUAGE_UNIQUE_IMAGE', 'A content language already exists with this Image Prefix.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1458, 'JLIB_DATABASE_ERROR_LANGUAGE_UNIQUE_LANG_CODE', 'A content language already exists with this Language Tag.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1459, 'JLIB_DATABASE_ERROR_LANGUAGE_UNIQUE_SEF', 'A content language already exists with this URL Language Code.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1460, 'JLIB_DATABASE_ERROR_LOAD_DATABASE_DRIVER', 'Unable to load Database Driver: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1461, 'JLIB_DATABASE_ERROR_MENUTYPE', 'Some menu items or some menu modules related to this menutype are checked out by another user or the default menu item is in this menu.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1462, 'JLIB_DATABASE_ERROR_MENUTYPE_CHECKOUT', 'The user checking out does not match the user who checked out this menu and/or its linked menu module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1463, 'JLIB_DATABASE_ERROR_MENUTYPE_EMPTY', 'Menu type empty.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1464, 'JLIB_DATABASE_ERROR_MENUTYPE_EXISTS', 'Menu type exists: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1465, 'JLIB_DATABASE_ERROR_MENU_CANNOT_UNSET_DEFAULT', 'The Language parameter for this menu item must be set to \'All\'. At least one Default menu item must have Language set to All, even if the site is multilingual.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1466, 'JLIB_DATABASE_ERROR_MENU_CANNOT_UNSET_DEFAULT_DEFAULT', 'At least one menu item has to be set as Default.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1467, 'JLIB_DATABASE_ERROR_MENU_UNPUBLISH_DEFAULT_HOME', 'Can\'t unpublish default home.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1468, 'JLIB_DATABASE_ERROR_MENU_DEFAULT_CHECKIN_USER_MISMATCH', 'The current home menu for this language is checked out.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1469, 'JLIB_DATABASE_ERROR_MENU_UNIQUE_ALIAS', 'Another menu item with the same parent has this alias.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1470, 'JLIB_DATABASE_ERROR_MENU_UNIQUE_ALIAS_ROOT', 'Another menu item has the same alias in Root. Root is the top level parent', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1471, 'JLIB_DATABASE_ERROR_MENU_HOME_NOT_COMPONENT', 'The home menu item must be a component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1472, 'JLIB_DATABASE_ERROR_MENU_HOME_NOT_UNIQUE_IN_MENU', 'A menu should contain only one Default home.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1473, 'JLIB_DATABASE_ERROR_MENU_ROOT_ALIAS_COMPONENT', 'A first level menu item alias can\'t be \'component\'.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1474, 'JLIB_DATABASE_ERROR_MENU_ROOT_ALIAS_FOLDER', 'A first level menu item alias can\'t be \'%s\' because \'%s\' is a sub-folder of your joomla installation folder.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1475, 'JLIB_DATABASE_ERROR_MOVE_FAILED', '%s: :move failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1476, 'JLIB_DATABASE_ERROR_MUSTCONTAIN_A_TITLE_CATEGORY', 'Category must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1477, 'JLIB_DATABASE_ERROR_MUSTCONTAIN_A_TITLE_EXTENSION', 'Extension must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1478, 'JLIB_DATABASE_ERROR_MUSTCONTAIN_A_TITLE_MODULE', 'Module must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1479, 'JLIB_DATABASE_ERROR_MUSTCONTAIN_A_TITLE_UPDATESITE', 'Update site must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1480, 'JLIB_DATABASE_ERROR_NEGATIVE_NOT_PERMITTED', '%s can\'t be negative.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1481, 'JLIB_DATABASE_ERROR_NO_ROWS_SELECTED', 'No rows selected.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1482, 'JLIB_DATABASE_ERROR_NOT_SUPPORTED_FILE_NOT_FOUND', 'Table %s not supported. File not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1483, 'JLIB_DATABASE_ERROR_NULL_PRIMARY_KEY', 'Null primary key not allowed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1484, 'JLIB_DATABASE_ERROR_ORDERDOWN_FAILED', '%s: :orderDown Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1485, 'JLIB_DATABASE_ERROR_ORDERUP_FAILED', '%s: :orderUp Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1486, 'JLIB_DATABASE_ERROR_PLEASE_ENTER_A_USER_NAME', 'Please enter a username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1487, 'JLIB_DATABASE_ERROR_PLEASE_ENTER_YOUR_NAME', 'Please enter your name.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1488, 'JLIB_DATABASE_ERROR_PUBLISH_FAILED', '%s: :publish failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1489, 'JLIB_DATABASE_ERROR_REBUILD_FAILED', '%s: :rebuild Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1490, 'JLIB_DATABASE_ERROR_REBUILDPATH_FAILED', '%s: :rebuildPath Failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1491, 'JLIB_DATABASE_ERROR_REORDER_FAILED', '%s: :reorder failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1492, 'JLIB_DATABASE_ERROR_REORDER_UPDATE_ROW_FAILED', '%s: :reorder update the row %s failed - %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1493, 'JLIB_DATABASE_ERROR_ROOT_NODE_NOT_FOUND', 'Root node not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1494, 'JLIB_DATABASE_ERROR_STORE_FAILED_UPDATE_ASSET_ID', 'The asset_id field could not be updated.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1495, 'JLIB_DATABASE_ERROR_STORE_FAILED', '%1$s: :store failed<br />%2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1496, 'JLIB_DATABASE_ERROR_USERGROUP_TITLE', 'User group must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1497, 'JLIB_DATABASE_ERROR_USERGROUP_TITLE_EXISTS', 'User group title already exists. Title must be unique with the same parent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1498, 'JLIB_DATABASE_ERROR_USERLEVEL_NAME_EXISTS', 'Level with the name &quot;%s&quot; already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1499, 'JLIB_DATABASE_ERROR_USERNAME_CANNOT_CHANGE', 'Can\'t use this username.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1500, 'JLIB_DATABASE_ERROR_USERNAME_INUSE', 'Username in use.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1501, 'JLIB_DATABASE_ERROR_VALID_AZ09', 'Please enter a valid username. No space at beginning or end, at least %d characters and must <strong>not</strong> contain the following characters: < > \\ &quot; \' &#37; ; ( ) &.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1502, 'JLIB_DATABASE_ERROR_VALID_MAIL', 'Please enter a valid email address.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1503, 'JLIB_DATABASE_ERROR_VIEWLEVEL', 'Viewlevel must have a title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1504, 'JLIB_DATABASE_FUNCTION_NOERROR', 'DB function reports no errors.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1505, 'JLIB_DATABASE_QUERY_FAILED', 'Database query failed (error # %s): %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1506, 'JLIB_DOCUMENT_ERROR_UNABLE_LOAD_DOC_CLASS', 'Unable to load document class.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1507, 'JLIB_ENVIRONMENT_SESSION_EXPIRED', 'Your session has expired. Please log in again.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1508, 'JLIB_ERROR_INFINITE_LOOP', 'Infinite loop detected in JError.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1509, 'JLIB_EVENT_ERROR_DISPATCHER', 'JEventDispatcher: :register: Event handler not recognised. Handler: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1510, 'JLIB_FILESYSTEM_BZIP_NOT_SUPPORTED', 'BZip2 Not Supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1511, 'JLIB_FILESYSTEM_BZIP_UNABLE_TO_READ', 'Unable to read archive (bz2).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1512, 'JLIB_FILESYSTEM_BZIP_UNABLE_TO_WRITE', 'Unable to write archive (bz2).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1513, 'JLIB_FILESYSTEM_BZIP_UNABLE_TO_WRITE_FILE', 'Unable to write file (bz2).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1514, 'JLIB_FILESYSTEM_GZIP_NOT_SUPPORTED', 'GZlib Not Supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1515, 'JLIB_FILESYSTEM_GZIP_UNABLE_TO_READ', 'Unable to read archive (gz).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1516, 'JLIB_FILESYSTEM_GZIP_UNABLE_TO_WRITE', 'Unable to write archive (gz).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1517, 'JLIB_FILESYSTEM_GZIP_UNABLE_TO_WRITE_FILE', 'Unable to write file (gz).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1518, 'JLIB_FILESYSTEM_GZIP_UNABLE_TO_DECOMPRESS', 'Unable to decompress data', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1519, 'JLIB_FILESYSTEM_TAR_UNABLE_TO_READ', 'Unable to read archive (tar).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1520, 'JLIB_FILESYSTEM_TAR_UNABLE_TO_DECOMPRESS', 'Unable to decompress data', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1521, 'JLIB_FILESYSTEM_TAR_UNABLE_TO_CREATE_DESTINATION', 'Unable to create destination', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1522, 'JLIB_FILESYSTEM_TAR_UNABLE_TO_WRITE_ENTRY', 'Unable to write entry.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1523, 'JLIB_FILESYSTEM_ZIP_NOT_SUPPORTED', 'Zlib Not Supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1524, 'JLIB_FILESYSTEM_ZIP_UNABLE_TO_READ', 'Unable to read archive (zip).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1525, 'JLIB_FILESYSTEM_ZIP_INFO_FAILED', 'Get ZIP Information failed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1526, 'JLIB_FILESYSTEM_ZIP_UNABLE_TO_CREATE_DESTINATION', 'Unable to create destination.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1527, 'JLIB_FILESYSTEM_ZIP_UNABLE_TO_WRITE_ENTRY', 'Unable to write entry.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1528, 'JLIB_FILESYSTEM_ZIP_UNABLE_TO_READ_ENTRY', 'Unable to read entry.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1529, 'JLIB_FILESYSTEM_ZIP_UNABLE_TO_OPEN_ARCHIVE', 'Unable to open archive.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1530, 'JLIB_FILESYSTEM_ZIP_INVALID_ZIP_DATA', 'Invalid ZIP data.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1531, 'JLIB_FILESYSTEM_STREAM_FAILED', 'Failed to register string stream.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1532, 'JLIB_FILESYSTEM_UNKNOWNARCHIVETYPE', 'Unknown Archive type.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1533, 'JLIB_FILESYSTEM_UNABLE_TO_LOAD_ARCHIVE', 'Unable to load archive.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1534, 'JLIB_FILESYSTEM_ERROR_JFILE_FIND_COPY', 'JFile: :copy: Can\'t find or read file: $%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1535, 'JLIB_FILESYSTEM_ERROR_JFILE_STREAMS', 'JFile: :copy(%1$s, %2$s): %3$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1536, 'JLIB_FILESYSTEM_ERROR_COPY_FAILED', 'Copy failed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1537, 'JLIB_FILESYSTEM_DELETE_FAILED', 'Failed deleting %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1538, 'JLIB_FILESYSTEM_CANNOT_FIND_SOURCE_FILE', 'Can\'t find source file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1539, 'JLIB_FILESYSTEM_ERROR_JFILE_MOVE_STREAMS', 'JFile: :move: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1540, 'JLIB_FILESYSTEM_ERROR_RENAME_FILE', 'Rename failed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1541, 'JLIB_FILESYSTEM_ERROR_READ_UNABLE_TO_OPEN_FILE', 'JFile: :read: Unable to open file: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1542, 'JLIB_FILESYSTEM_ERROR_WRITE_STREAMS', 'JFile: :write(%1$s): %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1543, 'JLIB_FILESYSTEM_ERROR_UPLOAD', 'JFile: :upload: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1544, 'JLIB_FILESYSTEM_ERROR_WARNFS_ERR01', 'Warning: Failed to change file permissions!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1545, 'JLIB_FILESYSTEM_ERROR_WARNFS_ERR02', 'Warning: Failed to move file!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1546, 'JLIB_FILESYSTEM_ERROR_WARNFS_ERR03', 'Warning: File %s not uploaded for security reasons!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1547, 'JLIB_FILESYSTEM_ERROR_FIND_SOURCE_FOLDER', 'Can\'t find source folder.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1548, 'JLIB_FILESYSTEM_ERROR_FOLDER_EXISTS', 'Folder already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1549, 'JLIB_FILESYSTEM_ERROR_FOLDER_CREATE', 'Unable to create target folder.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1550, 'JLIB_FILESYSTEM_ERROR_FOLDER_OPEN', 'Unable to open source folder.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1551, 'JLIB_FILESYSTEM_ERROR_FOLDER_LOOP', 'Infinite loop detected.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1552, 'JLIB_FILESYSTEM_ERROR_FOLDER_PATH', 'Path not in open_basedir paths.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1553, 'JLIB_FILESYSTEM_ERROR_COULD_NOT_CREATE_DIRECTORY', 'Could not create directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1554, 'JLIB_FILESYSTEM_ERROR_DELETE_BASE_DIRECTORY', 'You can\'t delete a base directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1555, 'JLIB_FILESYSTEM_ERROR_PATH_IS_NOT_A_FOLDER', 'JFolder: :delete: Path is not a folder. Path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1556, 'JLIB_FILESYSTEM_ERROR_FOLDER_DELETE', 'JFolder: :delete: Could not delete folder. Path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1557, 'JLIB_FILESYSTEM_ERROR_FOLDER_RENAME', 'Rename failed: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1558, 'JLIB_FILESYSTEM_ERROR_PATH_IS_NOT_A_FOLDER_FILES', 'JFolder: :files: Path is not a folder. Path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1559, 'JLIB_FILESYSTEM_ERROR_PATH_IS_NOT_A_FOLDER_FOLDER', 'JFolder: :folder: Path is not a folder. Path: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1560, 'JLIB_FILESYSTEM_ERROR_STREAMS_FILE_SIZE', 'Failed to get file size. This may not work for all streams!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1561, 'JLIB_FILESYSTEM_ERROR_STREAMS_FILE_NOT_OPEN', 'File not open.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1562, 'JLIB_FILESYSTEM_ERROR_STREAMS_FILENAME', 'File name not set.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1563, 'JLIB_FILESYSTEM_ERROR_NO_DATA_WRITTEN', 'Warning: No data written.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1564, 'JLIB_FILESYSTEM_ERROR_STREAMS_FAILED_TO_OPEN_WRITER', 'Failed to open writer: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1565, 'JLIB_FILESYSTEM_ERROR_STREAMS_FAILED_TO_OPEN_READER', 'Failed to open reader: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1566, 'JLIB_FILESYSTEM_ERROR_STREAMS_NOT_UPLOADED_FILE', 'Not an uploaded file!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1567, 'JLIB_FORM_BUTTON_CLEAR', 'Clear', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1568, 'JLIB_FORM_BUTTON_SELECT', 'Select', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1569, 'JLIB_FORM_CHANGE_IMAGE', 'Change Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1570, 'JLIB_FORM_CHANGE_IMAGE_BUTTON', 'Change Image Button', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1571, 'JLIB_FORM_CHANGE_USER', 'Select User', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1572, 'JLIB_FORM_ERROR_FIELDS_CATEGORY_ERROR_EXTENSION_EMPTY', 'Extension attribute is empty in the category field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1573, 'JLIB_FORM_ERROR_FIELDS_GROUPEDLIST_ELEMENT_NAME', 'Unknown element type: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1574, 'JLIB_FORM_ERROR_NO_DATA', 'No data', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1575, 'JLIB_FORM_ERROR_VALIDATE_FIELD', 'Invalid xml field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1576, 'JLIB_FORM_ERROR_XML_FILE_DID_NOT_LOAD', 'XML file did not load.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1577, 'JLIB_FORM_FIELD_INVALID', 'Invalid field:&#160', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1578, 'JLIB_FORM_INPUTMODE', 'latin', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1579, 'JLIB_FORM_INVALID_FORM_OBJECT', 'Invalid Form Object: :%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1580, 'JLIB_FORM_INVALID_FORM_RULE', 'Invalid Form Rule: :%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1581, 'JLIB_FORM_MEDIA_PREVIEW_ALT', 'Selected image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1582, 'JLIB_FORM_MEDIA_PREVIEW_EMPTY', 'No image selected.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1583, 'JLIB_FORM_MEDIA_PREVIEW_SELECTED_IMAGE', 'Selected image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1584, 'JLIB_FORM_MEDIA_PREVIEW_TIP_TITLE', 'Preview', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1585, 'JLIB_FORM_SELECT_USER', 'Select a User', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1586, 'JLIB_FORM_VALIDATE_FIELD_INVALID', 'Invalid field: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1587, 'JLIB_FORM_VALIDATE_FIELD_REQUIRED', 'Field required: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1588, 'JLIB_FORM_VALIDATE_FIELD_RULE_MISSING', 'Validation Rule missing: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1589, 'JLIB_FORM_VALUE_CACHE_APC', 'Alternative PHP Cache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1590, 'JLIB_FORM_VALUE_CACHE_CACHELITE', 'Cache_Lite', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1591, 'JLIB_FORM_VALUE_CACHE_EACCELERATOR', 'eAccelerator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1592, 'JLIB_FORM_VALUE_CACHE_FILE', 'File', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1593, 'JLIB_FORM_VALUE_CACHE_MEMCACHE', 'Memcache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1594, 'JLIB_FORM_VALUE_CACHE_MEMCACHED', 'Memcached (Experimental)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1595, 'JLIB_FORM_VALUE_CACHE_REDIS', 'Redis', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1596, 'JLIB_FORM_VALUE_CACHE_WINCACHE', 'Windows Cache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1597, 'JLIB_FORM_VALUE_CACHE_XCACHE', 'XCache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1598, 'JLIB_FORM_VALUE_SESSION_APC', 'Alternative PHP Cache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1599, 'JLIB_FORM_VALUE_SESSION_DATABASE', 'Database', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1600, 'JLIB_FORM_VALUE_SESSION_EACCELERATOR', 'eAccelerator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1601, 'JLIB_FORM_VALUE_SESSION_MEMCACHE', 'Memcache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1602, 'JLIB_FORM_VALUE_SESSION_MEMCACHED', 'Memcached (Experimental)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1603, 'JLIB_FORM_VALUE_SESSION_NONE', 'None', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1604, 'JLIB_FORM_VALUE_SESSION_WINCACHE', 'Windows Cache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1605, 'JLIB_FORM_VALUE_SESSION_XCACHE', 'XCache', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1606, 'JLIB_FORM_VALUE_TIMEZONE_UTC', 'Universal Time, Coordinated (UTC)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1607, 'JLIB_FORM_VALUE_FROM_TEMPLATE', 'From Template', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1608, 'JLIB_FORM_VALUE_INHERITED', 'Inherited', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1609, 'JLIB_HTML_ACCESS_MODIFY_DESC_CAPTION_ACL', 'ACL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1610, 'JLIB_HTML_ACCESS_MODIFY_DESC_CAPTION_TABLE', 'Table', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1611, 'JLIB_HTML_ACCESS_SUMMARY_DESC_CAPTION', 'ACL Summary Table', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1612, 'JLIB_HTML_ACCESS_SUMMARY_DESC', 'Shown below is an overview of the permission settings for this article. Click the tabs above to customise these settings by action.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1613, 'JLIB_HTML_ACCESS_SUMMARY', 'Summary', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1614, 'JLIB_HTML_ADD_TO_ROOT', 'Add to root', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1615, 'JLIB_HTML_ADD_TO_THIS_MENU', 'Add to this menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1616, 'JLIB_HTML_BATCH_ACCESS_LABEL', 'Set Access Level', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1617, 'JLIB_HTML_BATCH_ACCESS_LABEL_DESC', 'Not making a selection will keep the original access levels when processing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1618, 'JLIB_HTML_BATCH_COPY', 'Copy', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1619, 'JLIB_HTML_BATCH_LANGUAGE_LABEL', 'Set Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1620, 'JLIB_HTML_BATCH_LANGUAGE_LABEL_DESC', 'Not making a selection will keep the original language when processing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1621, 'JLIB_HTML_BATCH_LANGUAGE_NOCHANGE', '- Keep original Language -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1622, 'JLIB_HTML_BATCH_MENU_LABEL', 'Select Category for Move/Copy', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1623, 'JLIB_HTML_BATCH_MOVE', 'Move', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1624, 'JLIB_HTML_BATCH_NOCHANGE', '- Keep original Access Levels -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1625, 'JLIB_HTML_BATCH_TAG_LABEL', 'Add Tag', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1626, 'JLIB_HTML_BATCH_TAG_LABEL_DESC', 'Add a tag to selected items.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1627, 'JLIB_HTML_BATCH_TAG_NOCHANGE', '- Keep original Tags -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1628, 'JLIB_HTML_BATCH_USER_LABEL', 'Set User', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1629, 'JLIB_HTML_BATCH_USER_LABEL_DESC', 'Not making a selection will keep the original user when processing.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1630, 'JLIB_HTML_BATCH_USER_NOCHANGE', '- Keep original User -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1631, 'JLIB_HTML_BATCH_USER_NOUSER', 'No User', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1632, 'JLIB_HTML_BEHAVIOR_ABOUT_THE_CALENDAR', 'About the Calendar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1633, 'JLIB_HTML_BEHAVIOR_CLOSE', 'Close', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1634, 'JLIB_HTML_BEHAVIOR_DATE_SELECTION', 'Date selection:\\n', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1635, 'JLIB_HTML_BEHAVIOR_DISPLAY_S_FIRST', 'Display %s first', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1636, 'JLIB_HTML_BEHAVIOR_DRAG_TO_MOVE', 'Drag to move', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1637, 'JLIB_HTML_BEHAVIOR_GO_TODAY', 'Go to today', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1638, 'JLIB_HTML_BEHAVIOR_GREEN', 'Green', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1639, 'JLIB_HTML_BEHAVIOR_HOLD_MOUSE', '- Hold mouse button on any of the buttons above for faster selection.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1640, 'JLIB_HTML_BEHAVIOR_MONTH_SELECT', '- Use the < and > buttons to select month\\n', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1641, 'JLIB_HTML_BEHAVIOR_NEXT_MONTH_HOLD_FOR_MENU', 'Click to move to the next month. Click and hold for a list of the months.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1642, 'JLIB_HTML_BEHAVIOR_NEXT_YEAR_HOLD_FOR_MENU', 'Click to move to the next year. Click and hold for a list of years.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1643, 'JLIB_HTML_BEHAVIOR_PREV_MONTH_HOLD_FOR_MENU', 'Click to move to the previous month. Click and hold for a list of the months.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1644, 'JLIB_HTML_BEHAVIOR_PREV_YEAR_HOLD_FOR_MENU', 'Click to move to the previous year. Click and hold for a list of years.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1645, 'JLIB_HTML_BEHAVIOR_SELECT_DATE', 'Select a date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1646, 'JLIB_HTML_BEHAVIOR_SHIFT_CLICK_OR_DRAG_TO_CHANGE_VALUE', '(Shift-)Click or Drag to change the value.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1647, 'JLIB_HTML_BEHAVIOR_TIME', 'Time:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1648, 'JLIB_HTML_BEHAVIOR_TODAY', 'Today', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1649, 'JLIB_HTML_BEHAVIOR_TT_DATE_FORMAT', '%a, %b %e', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1650, 'JLIB_HTML_BEHAVIOR_WK', 'wk', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1651, 'JLIB_HTML_BEHAVIOR_YEAR_SELECT', '- Use the Â« and Â» buttons to select year\\n', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1652, 'JLIB_HTML_BUTTON_BASE_CLASS', 'Could not load button base class.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1653, 'JLIB_HTML_BUTTON_NO_LOAD', 'Could not load button %s (%s);', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1654, 'JLIB_HTML_BUTTON_NOT_DEFINED', 'Button not defined for type = %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1655, 'JLIB_HTML_CALENDAR', 'Calendar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1656, 'JLIB_HTML_CHECKED_OUT', 'Checked out', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1657, 'JLIB_HTML_CHECKIN', 'Check-in', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1658, 'JLIB_HTML_CLOAKING', 'This email address is being protected from spambots. You need JavaScript enabled to view it.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1659, 'JLIB_HTML_DATE_RELATIVE_DAYS', '%s days ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1660, 'JLIB_HTML_DATE_RELATIVE_DAYS_1', '%s day ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1661, 'JLIB_HTML_DATE_RELATIVE_DAYS_0', '%s days ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1662, 'JLIB_HTML_DATE_RELATIVE_HOURS', '%s hours ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1663, 'JLIB_HTML_DATE_RELATIVE_HOURS_1', '%s hour ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1664, 'JLIB_HTML_DATE_RELATIVE_HOURS_0', '%s hours ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1665, 'JLIB_HTML_DATE_RELATIVE_LESSTHANAMINUTE', 'Less than a minute ago.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1666, 'JLIB_HTML_DATE_RELATIVE_MINUTES', '%s minutes ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1667, 'JLIB_HTML_DATE_RELATIVE_MINUTES_1', '%s minute ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1668, 'JLIB_HTML_DATE_RELATIVE_MINUTES_0', '%s minutes ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1669, 'JLIB_HTML_DATE_RELATIVE_WEEKS', '%s weeks ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1670, 'JLIB_HTML_DATE_RELATIVE_WEEKS_1', '%s week ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1671, 'JLIB_HTML_DATE_RELATIVE_WEEKS_0', '%s weeks ago', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1672, 'JLIB_HTML_EDIT_MENU_ITEM', 'Edit menu item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1673, 'JLIB_HTML_EDIT_MENU_ITEM_ID', 'Item ID: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1674, 'JLIB_HTML_EDIT_MODULE', 'Edit module', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1675, 'JLIB_HTML_EDIT_MODULE_IN_POSITION', 'Position: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1676, 'JLIB_HTML_EDITOR_CANNOT_LOAD', 'Can\'t load the editor.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1677, 'JLIB_HTML_END', 'End', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1678, 'JLIB_HTML_ERROR_FUNCTION_NOT_SUPPORTED', 'Function not supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1679, 'JLIB_HTML_ERROR_NOTFOUNDINFILE', '%s: :%s not found in file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1680, 'JLIB_HTML_ERROR_NOTSUPPORTED_NOFILE', '%s: :%s not supported. File not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1681, 'JLIB_HTML_ERROR_NOTSUPPORTED', '%s: :%s not supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1682, 'JLIB_HTML_MOVE_DOWN', 'Move Down', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1683, 'JLIB_HTML_MOVE_UP', 'Move Up', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1684, 'JLIB_HTML_NO_PARAMETERS_FOR_THIS_ITEM', 'There are no parameters for this item.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1685, 'JLIB_HTML_NO_RECORDS_FOUND', 'No records found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1686, 'JLIB_HTML_PAGE_CURRENT_OF_TOTAL', 'Page %s of %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1687, 'JLIB_HTML_PLEASE_MAKE_A_SELECTION_FROM_THE_LIST', 'Please first make a selection from the list.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1688, 'JLIB_HTML_PUBLISH_ITEM', 'Publish Item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1689, 'JLIB_HTML_PUBLISHED_EXPIRED_ITEM', 'Published, but has Expired.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1690, 'JLIB_HTML_PUBLISHED_FINISHED', 'Finish: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1691, 'JLIB_HTML_PUBLISHED_ITEM', 'Published and is Current.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1692, 'JLIB_HTML_PUBLISHED_PENDING_ITEM', 'Published, but is Pending.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1693, 'JLIB_HTML_PUBLISHED_START', 'Start: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1694, 'JLIB_HTML_RESULTS_OF', 'Results %s - %s of %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1695, 'JLIB_HTML_SAVE_ORDER', 'Save Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1696, 'JLIB_HTML_SELECT_STATE', 'Select State', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1697, 'JLIB_HTML_START', 'Start', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1698, 'JLIB_HTML_UNPUBLISH_ITEM', 'Unpublish Item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1699, 'JLIB_HTML_VIEW_ALL', 'View All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1700, 'JLIB_HTML_SETDEFAULT_ITEM', 'Set default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1701, 'JLIB_HTML_UNSETDEFAULT_ITEM', 'Unset default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1702, 'JLIB_INSTALLER_ABORT', 'Aborting language installation: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1703, 'JLIB_INSTALLER_ABORT_ALREADYINSTALLED', 'Extension is already installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1704, 'JLIB_INSTALLER_ABORT_ALREADY_EXISTS', 'Extension %1$s: Extension %2$s already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1705, 'JLIB_INSTALLER_ABORT_COMP_BUILDADMINMENUS_FAILED', 'Error building Admin Menus.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1706, 'JLIB_INSTALLER_ABORT_COMP_COPY_MANIFEST', 'Component %1$s: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1707, 'JLIB_INSTALLER_ABORT_COMP_COPY_SETUP', 'Component %1$s: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1708, 'JLIB_INSTALLER_ABORT_COMP_FAIL_ADMIN_FILES', 'Component %s: Failed to copy admin files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1709, 'JLIB_INSTALLER_ABORT_COMP_FAIL_SITE_FILES', 'Component %s: Failed to copy site files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1710, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_COPY_SETUP', 'Component Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1711, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_CUSTOM_INSTALL_FAILURE', 'Component Install: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1712, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_MANIFEST', 'Component Install: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1713, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_PHP_INSTALL', 'Component Install: Could not copy PHP install file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1714, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_PHP_UNINSTALL', 'Component Install: Could not copy PHP uninstall file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1715, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_ROLLBACK', 'Component Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1716, 'JLIB_INSTALLER_ABORT_COMP_INSTALL_SQL_ERROR', 'Component Install: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1717, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_ADMIN_ELEMENT', 'Component Update: The XML file did not contain an administration element.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1718, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_COPY_SETUP', 'Component Update: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1719, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_MANIFEST', 'Component Update: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1720, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_PHP_INSTALL', 'Component Update: Could not copy PHP install file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1721, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_PHP_UNINSTALL', 'Component Update: Could not copy PHP uninstall file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1722, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_ROLLBACK', 'Component Update: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1723, 'JLIB_INSTALLER_ABORT_COMP_UPDATE_SQL_ERROR', 'Component Update: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1724, 'JLIB_INSTALLER_ABORT_CREATE_DIRECTORY', 'Extension %1$s: Failed to create directory: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1725, 'JLIB_INSTALLER_ABORT_DEBUG', 'Installation unexpectedly terminated:', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1726, 'JLIB_INSTALLER_ABORT_DETECTMANIFEST', 'Unable to detect manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1727, 'JLIB_INSTALLER_ABORT_DIRECTORY', 'Extension %1$s: Another %2$s is already using the named directory: %3$s. Are you trying to install the same extension again?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1728, 'JLIB_INSTALLER_ABORT_EXTENSIONNOTVALID', 'Extension is not valid.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1729, 'JLIB_INSTALLER_ABORT_FILE_INSTALL_COPY_SETUP', 'Files Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1730, 'JLIB_INSTALLER_ABORT_FILE_INSTALL_CUSTOM_INSTALL_FAILURE', 'Files Install: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1731, 'JLIB_INSTALLER_ABORT_FILE_INSTALL_FAIL_SOURCE_DIRECTORY', 'Files Install: Failed to find source directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1732, 'JLIB_INSTALLER_ABORT_FILE_INSTALL_ROLLBACK', 'Files Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1733, 'JLIB_INSTALLER_ABORT_FILE_INSTALL_SQL_ERROR', 'Files %1$s: SQL error file %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1734, 'JLIB_INSTALLER_ABORT_FILE_ROLLBACK', 'Files Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1735, 'JLIB_INSTALLER_ABORT_FILE_SAME_NAME', 'Files Install: Another extension with same name already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1736, 'JLIB_INSTALLER_ABORT_FILE_UPDATE_SQL_ERROR', 'Files Update: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1737, 'JLIB_INSTALLER_ABORT_INSTALL_CUSTOM_INSTALL_FAILURE', 'Extension %s: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1738, 'JLIB_INSTALLER_ABORT_LIB_COPY_FILES', 'Library %s: Could not copy files from the source.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1739, 'JLIB_INSTALLER_ABORT_LIB_INSTALL_ALREADY_INSTALLED', 'Library Install: Library already installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1740, 'JLIB_INSTALLER_ABORT_LIB_INSTALL_COPY_SETUP', 'Library Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1741, 'JLIB_INSTALLER_ABORT_LIB_INSTALL_FAILED_TO_CREATE_DIRECTORY', 'Library Install: Failed to create directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1742, 'JLIB_INSTALLER_ABORT_LIB_INSTALL_NOFILE', 'Library Install: No library file specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1743, 'JLIB_INSTALLER_ABORT_LIB_INSTALL_ROLLBACK', 'Library Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1744, 'JLIB_INSTALLER_ABORT_LOAD_DETAILS', 'Failed to load extension details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1745, 'JLIB_INSTALLER_ABORT_MANIFEST', 'Extension %1$s: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1746, 'JLIB_INSTALLER_ABORT_METHODNOTSUPPORTED', 'Method not supported for this extension type.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1747, 'JLIB_INSTALLER_ABORT_METHODNOTSUPPORTED_TYPE', 'Method not supported for this extension type: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1748, 'JLIB_INSTALLER_ABORT_MOD_COPY_FILES', 'Module %s: Could not copy files from the source.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1749, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_COPY_SETUP', 'Module Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1750, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_CREATE_DIRECTORY', 'Module %1$s: Failed to create directory: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1751, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_CUSTOM_INSTALL_FAILURE', 'Module Install: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1752, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_DIRECTORY', 'Module %1$s: Another module is already using directory: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1753, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_MANIFEST', 'Module Install: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1754, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_NOFILE', 'Module %s: No module file specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1755, 'JLIB_INSTALLER_ABORT_MOD_INSTALL_SQL_ERROR', 'Module %1$s: SQL error file %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1756, 'JLIB_INSTALLER_ABORT_MOD_ROLLBACK', 'Module %1$s: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1757, 'JLIB_INSTALLER_ABORT_MOD_UNINSTALL_UNKNOWN_CLIENT', 'Module Uninstall: Unknown client type [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1758, 'JLIB_INSTALLER_ABORT_MOD_UNKNOWN_CLIENT', 'Module %1$s: Unknown client type [%2$s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1759, 'JLIB_INSTALLER_ABORT_NOINSTALLPATH', 'Install path does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1760, 'JLIB_INSTALLER_ABORT_NOUPDATEPATH', 'Update path does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1761, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_COPY_SETUP', 'Package Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1762, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_CREATE_DIRECTORY', 'Package Install: Failed to create directory:%s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1763, 'JLIB_INSTALLER_ABORT_PACKAGE_INSTALL_CUSTOM_INSTALL_FAILURE', 'Package Install: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1764, 'JLIB_INSTALLER_ABORT_PACKAGE_INSTALL_MANIFEST', 'Installation failed: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1765, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_ERROR_EXTENSION', 'Package %1$s: There was an error installing an extension: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1766, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_NO_FILES', 'Package %s: There were no files to install!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1767, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_NO_PACK', 'Package %s: No package file specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1768, 'JLIB_INSTALLER_ABORT_PACK_INSTALL_ROLLBACK', 'Package Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1769, 'JLIB_INSTALLER_ABORT_PLG_COPY_FILES', 'Plugin %s: Could not copy files from the source.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1770, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_ALLREADY_EXISTS', 'Plugin %1$s: Plugin %2$s already exists.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1771, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_COPY_SETUP', 'Plugin %s: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1772, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_CREATE_DIRECTORY', 'Plugin %1$s: Failed to create directory: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1773, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_CUSTOM_INSTALL_FAILURE', 'Plugin Install: Custom install routine failure.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1774, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_DIRECTORY', 'Plugin %1$s: Another plugin is already using directory: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1775, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_MANIFEST', 'Plugin %s: Could not copy PHP manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1776, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_NO_FILE', 'Plugin %s: No plugin file specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1777, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_ROLLBACK', 'Plugin %1$s: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1778, 'JLIB_INSTALLER_ABORT_PLG_INSTALL_SQL_ERROR', 'Plugin %1$s: SQL error file %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1779, 'JLIB_INSTALLER_ABORT_PLG_UNINSTALL_SQL_ERROR', 'Plugin Uninstall: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1780, 'JLIB_INSTALLER_ABORT_REFRESH_MANIFEST_CACHE', 'Refresh Manifest Cache failed: Extension is not currently installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1781, 'JLIB_INSTALLER_ABORT_REFRESH_MANIFEST_CACHE_VALID', 'Refresh Manifest Cache failed: Extension is not valid.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1782, 'JLIB_INSTALLER_ABORT_ROLLBACK', 'Extension %1$s: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1783, 'JLIB_INSTALLER_ABORT_SQL_ERROR', 'Extension %1$s: SQL error processing query: %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1784, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_ALREADY_INSTALLED', 'Template Install: Template already installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1785, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_ANOTHER_TEMPLATE_USING_DIRECTORY', 'Template Install: There is already a Template using the named directory: %s. Are you trying to install the same template again?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1786, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_COPY_FILES', 'Template Install: Could not copy files from the %s source.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1787, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_COPY_SETUP', 'Template Install: Could not copy setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1788, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_FAILED_CREATE_DIRECTORY', 'Template Install: Failed to create directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1789, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_ROLLBACK', 'Template Install: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1790, 'JLIB_INSTALLER_ABORT_TPL_INSTALL_UNKNOWN_CLIENT', 'Template Install: Unknown client type [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1791, 'JLIB_INSTALLER_AVAILABLE_UPDATE_PHP_VERSION', 'For the extension %1$s version %2$s is available, but it requires at least PHP version %3$s while your system only has %4$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1792, 'JLIB_INSTALLER_PURGED_UPDATES', 'Purged updates', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1793, 'JLIB_INSTALLER_FAILED_TO_PURGE_UPDATES', 'Failed to purge updates.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1794, 'JLIB_INSTALLER_DEFAULT_STYLE', '%s - Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1795, 'JLIB_INSTALLER_DISCOVER', 'Discover', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1796, 'JLIB_INSTALLER_ERROR_COMP_DISCOVER_STORE_DETAILS', 'Component Discover install: Failed to store component details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1797, 'JLIB_INSTALLER_ERROR_COMP_FAILED_TO_CREATE_DIRECTORY', 'Component %1$s: Failed to create directory: %2$s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1798, 'JLIB_INSTALLER_ERROR_COMP_INSTALL_ADMIN_ELEMENT', 'Component Install: The XML file did not contain an administration element.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1799, 'JLIB_INSTALLER_ERROR_COMP_INSTALL_DIR_ADMIN', 'Component Install: Another component is already using directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1800, 'JLIB_INSTALLER_ERROR_COMP_INSTALL_DIR_SITE', 'Component Install: Another component is already using directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1801, 'JLIB_INSTALLER_ERROR_COMP_INSTALL_FAILED_TO_CREATE_DIRECTORY_ADMIN', 'Component Install: Failed to create admin directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1802, 'JLIB_INSTALLER_ERROR_COMP_INSTALL_FAILED_TO_CREATE_DIRECTORY_SITE', 'Component Install: Failed to create site directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1803, 'JLIB_INSTALLER_ERROR_COMP_REFRESH_MANIFEST_CACHE', 'Component Refresh manifest cache: Failed to store component details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1804, 'JLIB_INSTALLER_ERROR_COMP_REMOVING_ADMIN_MENUS_FAILED', 'Could not delete the Administrator menus.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1805, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_CUSTOM', 'Component Uninstall: Custom Uninstall script unsuccessful.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1806, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_FAILED_DELETE_CATEGORIES', 'Component Uninstall: Unable to delete the component categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1807, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_ERRORREMOVEMANUALLY', 'Component Uninstall: Can\'t uninstall. Please remove manually.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1808, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_ERRORUNKOWNEXTENSION', 'Component Uninstall: Unknown Extension.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1809, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_FAILED_REMOVE_DIRECTORY_ADMIN', 'Component Uninstall: Unable to remove the component admin directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1810, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_FAILED_REMOVE_DIRECTORY_SITE', 'Component Uninstall: Unable to remove the component site directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1811, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_NO_OPTION', 'Component Uninstall: Option field empty, can\'t remove files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1812, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_SQL_ERROR', 'Component Uninstall: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1813, 'JLIB_INSTALLER_ERROR_COMP_UNINSTALL_WARNCORECOMPONENT', 'Component Uninstall: Trying to uninstall a core component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1814, 'JLIB_INSTALLER_ERROR_COMP_UPDATE_FAILED_TO_CREATE_DIRECTORY_ADMIN', 'Component Update: Failed to create admin directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1815, 'JLIB_INSTALLER_ERROR_COMP_UPDATE_FAILED_TO_CREATE_DIRECTORY_SITE', 'Component Update: Failed to create site directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1816, 'JLIB_INSTALLER_ERROR_CREATE_DIRECTORY', 'JInstaller: :Install: Failed to create directory: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1817, 'JLIB_INSTALLER_ERROR_CREATE_FOLDER_FAILED', 'Failed to create directory [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1818, 'JLIB_INSTALLER_ERROR_DEPRECATED_FORMAT', 'Deprecated install format (client="both"), use package installer in future.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1819, 'JLIB_INSTALLER_ERROR_DISCOVER_INSTALL_UNSUPPORTED', 'A %s extension can not be installed using the discover method. Please install this extension from Extension Manager: Install.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1820, 'JLIB_INSTALLER_ERROR_DOWNLOAD_SERVER_CONNECT', 'Error connecting to the server: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1821, 'JLIB_INSTALLER_ERROR_FAIL_COPY_FILE', 'JInstaller: :Install: Failed to copy file %1$s to %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1822, 'JLIB_INSTALLER_ERROR_FAIL_COPY_FOLDER', 'JInstaller: :Install: Failed to copy folder %1$s to %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1823, 'JLIB_INSTALLER_ERROR_FAILED_READING_NETWORK_RESOURCES', 'Failed reading network resource: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1824, 'JLIB_INSTALLER_ERROR_FILE_EXISTS', 'JInstaller: :Install: File already exists %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1825, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_INVALID_MANIFEST', 'Files Uninstall: Invalid manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1826, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Files Uninstall: Manifest file invalid or not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1827, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_LOAD_ENTRY', 'Files Uninstall: Could not load extension entry.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1828, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_LOAD_MANIFEST', 'Files Uninstall: Could not load manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1829, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_SQL_ERROR', 'Files Uninstall: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1830, 'JLIB_INSTALLER_ERROR_FILE_UNINSTALL_WARNCOREFILE', 'File Uninstall: Trying to uninstall core files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1831, 'JLIB_INSTALLER_ERROR_FOLDER_IN_USE', 'Another extension is already using directory [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1832, 'JLIB_INSTALLER_ERROR_LANG_DISCOVER_STORE_DETAILS', 'Language Discover install: Failed to store language details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1833, 'JLIB_INSTALLER_ERROR_LANG_UNINSTALL_DEFAULT', 'This language can\'t be uninstalled as long as it is defined as a default language.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1834, 'JLIB_INSTALLER_ERROR_LANG_UNINSTALL_DIRECTORY', 'Language Uninstall: Unable to remove the specified Language directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1835, 'JLIB_INSTALLER_ERROR_LANG_UNINSTALL_ELEMENT_EMPTY', 'Language Uninstall: Element is empty, can\'t uninstall files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1836, 'JLIB_INSTALLER_ERROR_LANG_UNINSTALL_PATH_EMPTY', 'Language Uninstall: Language path is empty, can\'t uninstall files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1837, 'JLIB_INSTALLER_ERROR_LANG_UNINSTALL_PROTECTED', 'This language can\'t be uninstalled. It is protected in the database (usually en-GB).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1838, 'JLIB_INSTALLER_ERROR_LIB_DISCOVER_STORE_DETAILS', 'Library Discover install: Failed to store library details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1839, 'JLIB_INSTALLER_ERROR_LIB_UNINSTALL_INVALID_MANIFEST', 'Library Uninstall: Invalid manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1840, 'JLIB_INSTALLER_ERROR_LIB_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Library Uninstall: Manifest file invalid or not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1841, 'JLIB_INSTALLER_ERROR_LIB_UNINSTALL_LOAD_MANIFEST', 'Library Uninstall: Could not load manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1842, 'JLIB_INSTALLER_ERROR_LIB_UNINSTALL_WARNCORELIBRARY', 'Library Uninstall: Trying to uninstall a core library.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1843, 'JLIB_INSTALLER_ERROR_LOAD_XML', 'JInstaller: :Install: Failed to load XML File: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1844, 'JLIB_INSTALLER_ERROR_MOD_DISCOVER_STORE_DETAILS', 'Module Discover install: Failed to store module details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1845, 'JLIB_INSTALLER_ERROR_MOD_REFRESH_MANIFEST_CACHE', 'Module Refresh manifest cache: Failed to store module details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1846, 'JLIB_INSTALLER_ERROR_MOD_UNINSTALL_ERRORUNKOWNEXTENSION', 'Module Uninstall: Unknown Extension.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1847, 'JLIB_INSTALLER_ERROR_MOD_UNINSTALL_EXCEPTION', 'Module Uninstall: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1848, 'JLIB_INSTALLER_ERROR_MOD_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Module Uninstall: Manifest file invalid or not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1849, 'JLIB_INSTALLER_ERROR_MOD_UNINSTALL_SQL_ERROR', 'Module Uninstall: SQL error file %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1850, 'JLIB_INSTALLER_ERROR_MOD_UNINSTALL_WARNCOREMODULE', 'Module Uninstall: Trying to uninstall a core module: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1851, 'JLIB_INSTALLER_ERROR_NO_CORE_LANGUAGE', 'No core pack exists for the language [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1852, 'JLIB_INSTALLER_ERROR_NO_FILE', 'JInstaller: :Install: File does not exist %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1853, 'JLIB_INSTALLER_ERROR_NO_LANGUAGE_TAG', 'The package did not specify a language tag. Are you trying to install an old language package?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1854, 'JLIB_INSTALLER_ERROR_NOTFINDJOOMLAXMLSETUPFILE', 'JInstaller: :Install: Can\'t find Joomla XML setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1855, 'JLIB_INSTALLER_ERROR_NOTFINDXMLSETUPFILE', 'JInstaller: :Install: Can\'t find XML setup file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1856, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_INVALID_MANIFEST', 'Package Uninstall: Invalid manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1857, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Package Uninstall: Manifest file invalid or not found: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1858, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_LOAD_MANIFEST', 'Package Uninstall: Could not load manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1859, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_MANIFEST_NOT_REMOVED', 'Package Uninstall: Errors were detected, manifest file not removed!', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1860, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_MISSINGMANIFEST', 'Package Uninstall: Missing manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1861, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_NOT_PROPER', 'Package Uninstall: This extension may have already been uninstalled or might not have been uninstall properly: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1862, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_WARNCOREPACK', 'Package Uninstall: Trying to uninstall core package.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1863, 'JLIB_INSTALLER_ERROR_PLG_DISCOVER_STORE_DETAILS', 'Plugin Discover install: Failed to store plugin details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1864, 'JLIB_INSTALLER_ERROR_PLG_REFRESH_MANIFEST_CACHE', 'Plugin Refresh manifest cache: Failed to store plugin details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1865, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_ERRORUNKOWNEXTENSION', 'Plugin Uninstall: Unknown Extension.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1866, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_FOLDER_FIELD_EMPTY', 'Plugin Uninstall: Folder field empty, can\'t remove files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1867, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_INVALID_MANIFEST', 'Plugin Uninstall: Invalid manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1868, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Plugin Uninstall: Manifest file invalid or not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1869, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_LOAD_MANIFEST', 'Plugin Uninstall: Could not load manifest file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1870, 'JLIB_INSTALLER_ERROR_PLG_UNINSTALL_WARNCOREPLUGIN', 'Plugin Uninstall: Trying to uninstall a core plugin: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1871, 'JLIB_INSTALLER_ERROR_SQL_ERROR', 'JInstaller: :Install: Error SQL %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1872, 'JLIB_INSTALLER_ERROR_SQL_FILENOTFOUND', 'JInstaller: :Install: SQL File not found %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1873, 'JLIB_INSTALLER_ERROR_SQL_READBUFFER', 'JInstaller: :Install: SQL File Buffer Read Error', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1874, 'JLIB_INSTALLER_ERROR_TPL_DISCOVER_STORE_DETAILS', 'Template Discover install: Failed to store template details.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1875, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_ERRORUNKOWNEXTENSION', 'Template Uninstall: Unknown Extension.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1876, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_INVALID_CLIENT', 'Template Uninstall: Invalid client.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1877, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_INVALID_NOTFOUND_MANIFEST', 'Template Uninstall: Manifest file invalid or not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1878, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_TEMPLATE_DEFAULT', 'Template Uninstall: Can\'t remove default template.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1879, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_TEMPLATE_DIRECTORY', 'Template Uninstall: Directory does not exist, can\'t remove files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1880, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_TEMPLATE_ID_EMPTY', 'Template Uninstall: Template ID is empty, can\'t uninstall files.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1881, 'JLIB_INSTALLER_ERROR_TPL_UNINSTALL_WARNCORETEMPLATE', 'Template Uninstall: Trying to uninstall a core template: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1882, 'JLIB_INSTALLER_ERROR_UNKNOWN_CLIENT_TYPE', 'Unknown Client Type [%s]', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1883, 'JLIB_INSTALLER_INSTALL', 'Install', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1884, 'JLIB_INSTALLER_NOTICE_LANG_RESET_USERS', 'Language set to Default for %d users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1885, 'JLIB_INSTALLER_NOTICE_LANG_RESET_USERS_1', 'Language set to Default for %d user.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1886, 'JLIB_INSTALLER_UNINSTALL', 'Uninstall', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1887, 'JLIB_INSTALLER_UPDATE', 'Update', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1888, 'JLIB_INSTALLER_ERROR_EXTENSION_INVALID_CLIENT_IDENTIFIER', 'Invalid client identifier specified in extension manifest.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1889, 'JLIB_INSTALLER_ERROR_PACK_UNINSTALL_UNKNOWN_EXTENSION', 'Attempting to uninstall unknown extension from package. This extension may have already been removed earlier.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1890, 'JLIB_INSTALLER_NOT_ERROR', 'If the error is related to the installation of TinyMCE language files it has no effect on the installation of the language(s). Some language packs created prior to Joomla! 3.2.0 may try to install separate TinyMCE language files. As these are now included in the core they no longer need to be installed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1891, 'JLIB_INSTALLER_UPDATE_LOG_QUERY', 'Ran query from file %1$s. Query text: %2$s.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1892, 'JLIB_MAIL_FUNCTION_DISABLED', 'The mail() function has been disabled and the mail can\'t be sent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1893, 'JLIB_MAIL_FUNCTION_OFFLINE', 'The mail function has been temporarily disabled on this site, please try again later.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1894, 'JLIB_MAIL_INVALID_EMAIL_SENDER', 'JMail: : Invalid email Sender: %s, JMail: :setSender(%s).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1895, 'JLIB_MEDIA_ERROR_UPLOAD_INPUT', 'Unable to upload file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1896, 'JLIB_MEDIA_ERROR_WARNFILENAME', 'File name must only contain alphanumeric characters and no spaces.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1897, 'JLIB_MEDIA_ERROR_WARNFILETOOLARGE', 'This file is too large to upload.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1898, 'JLIB_MEDIA_ERROR_WARNFILETYPE', 'This file type is not supported.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1899, 'JLIB_MEDIA_ERROR_WARNIEXSS', 'Possible IE XSS Attack found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1900, 'JLIB_MEDIA_ERROR_WARNINVALID_IMG', 'Not a valid image.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1901, 'JLIB_MEDIA_ERROR_WARNINVALID_MIME', 'Illegal or invalid mime type detected.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1902, 'JLIB_MEDIA_ERROR_WARNNOTADMIN', 'Uploaded file is not an image file and you do not have permission.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1903, 'JLIB_PLUGIN_ERROR_LOADING_PLUGINS', 'Error loading Plugins: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1904, 'JLIB_REGISTRY_EXCEPTION_LOAD_FORMAT_CLASS', 'Unable to load format class.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1905, 'JLIB_RULES_ACTION', 'Action', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1906, 'JLIB_RULES_ALLOWED', 'Allowed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1907, 'JLIB_RULES_ALLOWED_ADMIN', 'Allowed (Super User).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1908, 'JLIB_RULES_CALCULATED_SETTING', 'Calculated Setting <sup>2</sup>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1909, 'JLIB_RULES_CONFLICT', 'Conflict', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1910, 'JLIB_RULES_DENIED', 'Denied', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1911, 'JLIB_RULES_GROUP', '%s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1912, 'JLIB_RULES_GROUPS', 'Groups', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1913, 'JLIB_RULES_INHERIT', 'Inherit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1914, 'JLIB_RULES_INHERITED', 'Inherited', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1915, 'JLIB_RULES_NOT_ALLOWED', 'Not Allowed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1916, 'JLIB_RULES_NOT_ALLOWED_ADMIN_CONFLICT', 'Conflict', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1917, 'JLIB_RULES_NOT_ALLOWED_LOCKED', 'Not Allowed (Locked).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1918, 'JLIB_RULES_NOT_SET', 'Not Set', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1919, 'JLIB_RULES_SELECT_ALLOW_DENY_GROUP', 'Allow or deny %s for users in the %s group.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1920, 'JLIB_RULES_SELECT_SETTING', 'Select New Setting <sup>1</sup>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1921, 'JLIB_RULES_SETTING_NOTES', '1. If you change the setting, it will apply to this and all child groups, components and content. Note that <em>Denied</em> will overrule any inherited setting and also the setting in any child group, component or content. In the case of a setting conflict, <em>Deny</em> will take precedence. <em>Not Set</em> is equivalent to <em>Denied</em> but can be changed in child groups, components and content.<br />2. If you select a new setting, click <em>Save</em> to refresh the calculated settings.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1922, 'JLIB_RULES_SETTING_NOTES_ITEM', '1. If you change the setting, it will apply to this item. Note that:<br /><em>Inherited</em> means that the permissions from global configuration, parent group and category will be used.<br /><em>Denied</em> means that no matter what the global configuration, parent group or category settings are, the group being edited can\'t take this action on this item.<br /><em>Allowed</em> means that the group being edited will be able to take this action for this item (but if this is in conflict with the global configuration, parent group or category it will have no impact; a conflict will be indicated by <em>Not Allowed (Locked)</em> under Calculated Settings).<br />2. If you select a new setting, click <em>Save</em> to refresh the calculated settings.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1923, 'JLIB_RULES_SETTINGS_DESC', 'Manage the permission settings for the user groups below. See notes at the bottom.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1924, 'JLIB_UNKNOWN', 'Unknown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1925, 'JLIB_UPDATER_ERROR_COLLECTION_FOPEN', 'The PHP allow_url_fopen setting is disabled. This setting must be enabled for the updater to work.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1926, 'JLIB_UPDATER_ERROR_COLLECTION_OPEN_URL', 'Update: :Collection: Could not open %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1927, 'JLIB_UPDATER_ERROR_COLLECTION_PARSE_URL', 'Update: :Collection: Could not parse %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1928, 'JLIB_UPDATER_ERROR_EXTENSION_OPEN_URL', 'Update: :Extension: Could not open %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1929, 'JLIB_UPDATER_ERROR_EXTENSION_PARSE_URL', 'Update: :Extension: Could not parse %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1930, 'JLIB_UPDATER_ERROR_OPEN_UPDATE_SITE', 'Update: Could not open update site #%d &quot;%s&quot;, URL: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1931, 'JLIB_USER_ERROR_AUTHENTICATION_FAILED_LOAD_PLUGIN', 'JAuthentication: :authenticate: Failed to load plugin: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1932, 'JLIB_USER_ERROR_AUTHENTICATION_LIBRARIES', 'JAuthentication: :__construct: Could not load authentication libraries.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1933, 'JLIB_USER_ERROR_BIND_ARRAY', 'Unable to bind array to user object.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1934, 'JLIB_USER_ERROR_CANNOT_DEMOTE_SELF', 'You can\'t remove your own Super User permissions.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1935, 'JLIB_USER_ERROR_CANNOT_REUSE_PASSWORD', 'You can\'t reuse your current password, please enter a new password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1936, 'JLIB_USER_ERROR_ID_NOT_EXISTS', 'JUser: :_load: User %s does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1937, 'JLIB_USER_ERROR_NOT_SUPERADMIN', 'Only users with Super User permissions can change other Super User user accounts.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1938, 'JLIB_USER_ERROR_PASSWORD_NOT_MATCH', 'Passwords do not match. Please re-enter password.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1939, 'JLIB_USER_ERROR_UNABLE_TO_FIND_USER', 'Unable to find a user with given activation string.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1940, 'JLIB_USER_ERROR_UNABLE_TO_LOAD_USER', 'JUser: :_load: Unable to load user with ID: %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1941, 'JLIB_USER_EXCEPTION_ACCESS_USERGROUP_INVALID', 'User group does not exist.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1942, 'JLIB_UTIL_ERROR_APP_INSTANTIATION', 'Application Startup Error.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1943, 'JLIB_UTIL_ERROR_CONNECT_DATABASE', 'JDatabase: :getInstance: Could not connect to database <br />joomla.library: %1$s - %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1944, 'JLIB_UTIL_ERROR_DOMIT', 'DommitDocument is deprecated. Use DomDocument instead.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1945, 'JLIB_UTIL_ERROR_LOADING_FEED_DATA', 'Error loading feed data.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1946, 'JLIB_UTIL_ERROR_XML_LOAD', 'Failed loading XML file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.ini'),
	(1947, 'LIB_JOOMLA_XML_DESCRIPTION', 'The Joomla! Platform is the Core of the Joomla! Content Management System.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_joomla.sys.ini'),
	(1948, 'LIB_PHPASS_XML_DESCRIPTION', 'phpass is a portable password hashing framework for use in PHP applications. The preferred (most secure) hashing method supported by phpass is the OpenBSD-style bcrypt (known in PHP as CRYPT_BLOWFISH), with a fallback to BSDI-style extended DES-based hashes (known in PHP as CRYPT_EXT_DES) and a last resort fallback to an MD5-based variable iteration count password hashing method implemented in phpass itself.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_phpass.sys.ini'),
	(1949, 'LIB_PHPUTF8_XML_DESCRIPTION', 'Classes for UTF-8.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_phputf8.sys.ini'),
	(1950, 'LIB_SIMPLEPIE_XML_DESCRIPTION', 'PHP based RSS and Atom Feed Framework.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.lib_simplepie.sys.ini'),
	(1951, 'MOD_ARTICLES_ARCHIVE', 'Articles - Archived', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.ini'),
	(1952, 'MOD_ARTICLES_ARCHIVE_FIELD_COUNT_LABEL', '# of Months', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.ini'),
	(1953, 'MOD_ARTICLES_ARCHIVE_FIELD_COUNT_DESC', 'The number of months to display (the default is 10).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.ini'),
	(1954, 'MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION', 'This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.ini'),
	(1955, 'MOD_ARTICLES_ARCHIVE_DATE', '%1$s, %2$s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.ini'),
	(1956, 'MOD_ARTICLES_ARCHIVE', 'Articles - Archived', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.sys.ini'),
	(1957, 'MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION', 'This module shows a list of the calendar months containing Archived Articles. After you have changed the status of an Article to Archived, this list will be automatically generated.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.sys.ini'),
	(1958, 'MOD_ARTICLES_ARCHIVE_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_archive.sys.ini'),
	(1959, 'MOD_ARTICLES_CATEGORIES', 'Articles - Categories', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1960, 'MOD_ARTICLES_CATEGORIES_FIELD_COUNT_DESC', 'Select the number of first level subcategories to display. Default is all.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1961, 'MOD_ARTICLES_CATEGORIES_FIELD_COUNT_LABEL', '# First Subcategories', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1962, 'MOD_ARTICLES_CATEGORIES_FIELD_MAXLEVEL_DESC', 'Select the maximum level depth for each subcategory. Default is all.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1963, 'MOD_ARTICLES_CATEGORIES_FIELD_MAXLEVEL_LABEL', 'Maximum Level Depth', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1964, 'MOD_ARTICLES_CATEGORIES_FIELD_PARENT_DESC', 'Choose a parent category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1965, 'MOD_ARTICLES_CATEGORIES_FIELD_PARENT_LABEL', 'Parent Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1966, 'MOD_ARTICLES_CATEGORIES_FIELD_SHOW_CHILDREN_DESC', 'Show or hide subcategories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1967, 'MOD_ARTICLES_CATEGORIES_FIELD_SHOW_CHILDREN_LABEL', 'Show Subcategories', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1968, 'MOD_ARTICLES_CATEGORIES_FIELD_NUMITEMS_DESC', 'Show or hide number of articles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1969, 'MOD_ARTICLES_CATEGORIES_FIELD_NUMITEMS_LABEL', 'Show Number of Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1970, 'MOD_ARTICLES_CATEGORIES_FIELD_SHOW_DESCRIPTION_DESC', 'Show or hide category descriptions.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1971, 'MOD_ARTICLES_CATEGORIES_FIELD_SHOW_DESCRIPTION_LABEL', 'Category Descriptions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1972, 'MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION', 'This module displays a list of categories from one parent category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1973, 'MOD_ARTICLES_CATEGORIES_TITLE_HEADING_LABEL', 'Heading Style', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1974, 'MOD_ARTICLES_CATEGORIES_TITLE_HEADING_DESC', 'Set the heading style to use.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.ini'),
	(1975, 'MOD_ARTICLES_CATEGORIES', 'Articles - Categories', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.sys.ini'),
	(1976, 'MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION', 'This module displays a list of categories from one parent category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.sys.ini'),
	(1977, 'MOD_ARTICLES_CATEGORIES_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_categories.sys.ini'),
	(1978, 'MOD_ARTICLES_CATEGORY', 'Articles - Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1979, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEGROUPING_DESC', 'Select how you would like the articles to be grouped.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1980, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEGROUPING_LABEL', 'Article Grouping', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1981, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEGROUPINGDIR_DESC', 'Select the direction you would like the Article Groupings to be ordered by.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1982, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEGROUPINGDIR_LABEL', 'Grouping Direction', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1983, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEORDERING_DESC', 'Select which field you would like Articles to be ordered by. Featured Ordering should only be used when Filtering Option for Featured Articles is set to \'Only\'.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1984, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEORDERING_LABEL', 'Article Field to Order By', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1985, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEORDERINGDIR_DESC', 'Select the direction you would like Articles to be ordered by.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1986, 'MOD_ARTICLES_CATEGORY_FIELD_ARTICLEORDERINGDIR_LABEL', 'Ordering Direction', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1987, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHOR_DESC', 'Select one or more authors from the list below.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1988, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHOR_LABEL', 'Authors', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1989, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORALIAS_DESC', 'Select one or more author aliases from the list below.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1990, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORALIAS_LABEL', 'Author Aliases', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1991, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORALIASFILTERING_DESC', 'Select Inclusive to Include the Selected Author Aliases, Exclusive to Exclude the Selected Author Aliases.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1992, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORALIASFILTERING_LABEL', 'Author Alias Filtering Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1993, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORFILTERING_DESC', 'Select Inclusive to Include the Selected Authors, Exclusive to Exclude the Selected Authors.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1994, 'MOD_ARTICLES_CATEGORY_FIELD_AUTHORFILTERING_LABEL', 'Author Filtering Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1995, 'MOD_ARTICLES_CATEGORY_FIELD_CATDEPTH_DESC', 'The number of child category levels to return.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1996, 'MOD_ARTICLES_CATEGORY_FIELD_CATDEPTH_LABEL', 'Category Depth', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1997, 'MOD_ARTICLES_CATEGORY_FIELD_CATEGORY_DESC', 'Please select one or more categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1998, 'MOD_ARTICLES_CATEGORY_FIELD_CATFILTERINGTYPE_DESC', 'Select Inclusive to Include the Selected Categories, Exclusive to Exclude the Selected Categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(1999, 'MOD_ARTICLES_CATEGORY_FIELD_CATFILTERINGTYPE_LABEL', 'Category Filtering Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2000, 'MOD_ARTICLES_CATEGORY_FIELD_COUNT_DESC', 'The number of items to display. The default value of 0 will display all articles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2001, 'MOD_ARTICLES_CATEGORY_FIELD_COUNT_LABEL', 'Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2002, 'MOD_ARTICLES_CATEGORY_FIELD_DATERANGEFIELD_DESC', 'Select which date field you want the date range to be applied to.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2003, 'MOD_ARTICLES_CATEGORY_FIELD_DATERANGEFIELD_LABEL', 'Date Range Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2004, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFIELD_DESC', 'Select which date field you want to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2005, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFIELD_LABEL', 'Date Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2006, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFIELDFORMAT_DESC', 'Please enter in a valid date format. See: http://php.net/date for formatting information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2007, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFIELDFORMAT_LABEL', 'Date Format', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2008, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFILTERING_DESC', 'Select Date Filtering Type.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2009, 'MOD_ARTICLES_CATEGORY_FIELD_DATEFILTERING_LABEL', 'Date Filtering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2010, 'MOD_ARTICLES_CATEGORY_FIELD_ENDDATE_DESC', 'If Date Range is selected above, please enter an End Date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2011, 'MOD_ARTICLES_CATEGORY_FIELD_ENDDATE_LABEL', 'To Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2012, 'MOD_ARTICLES_CATEGORY_FIELD_EXCLUDEDARTICLES_DESC', 'Please enter each Article ID on a new line.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2013, 'MOD_ARTICLES_CATEGORY_FIELD_EXCLUDEDARTICLES_LABEL', 'Article IDs to Exclude', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2014, 'MOD_ARTICLES_CATEGORY_FIELD_GROUP_DISPLAY_LABEL', 'Display Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2015, 'MOD_ARTICLES_CATEGORY_FIELD_GROUP_DYNAMIC_LABEL', 'Dynamic Mode Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2016, 'MOD_ARTICLES_CATEGORY_FIELD_GROUP_FILTERING_LABEL', 'Filtering Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2017, 'MOD_ARTICLES_CATEGORY_FIELD_GROUP_GROUPING_LABEL', 'Grouping Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2018, 'MOD_ARTICLES_CATEGORY_FIELD_GROUP_ORDERING_LABEL', 'Ordering Options', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2019, 'MOD_ARTICLES_CATEGORY_FIELD_INTROTEXTLIMIT_DESC', 'Please enter in a numeric character limit value. The introtext will be trimmed to the number of characters you enter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2020, 'MOD_ARTICLES_CATEGORY_FIELD_INTROTEXTLIMIT_LABEL', 'Introtext Limit', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2021, 'MOD_ARTICLES_CATEGORY_FIELD_LINKTITLES_LABEL', 'Linked Titles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2022, 'MOD_ARTICLES_CATEGORY_FIELD_LINKTITLES_DESC', 'Linked titles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2023, 'MOD_ARTICLES_CATEGORY_FIELD_MODE_DESC', 'Please select the mode you would like to use. If Normal Mode is chosen, then simply configure the module and it will display a static list of Articles on the menu items you assign the module to. If Dynamic Mode is chosen, then you can still configure the module normally, however now the Category option will no longer be used. Instead, the module will dynamically detect whether or not you are on a Category view and will display the list of articles within that Category accordingly. When Dynamic Mode is chosen, it is best to leave the module set to display on all pages, as it will decide whether or not to display anything dynamically.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2024, 'MOD_ARTICLES_CATEGORY_FIELD_MODE_LABEL', 'Mode', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2025, 'MOD_ARTICLES_CATEGORY_FIELD_MONTHYEARFORMAT_DESC', 'Please enter in a valid date format. See: http://php.net/date for formatting information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2026, 'MOD_ARTICLES_CATEGORY_FIELD_MONTHYEARFORMAT_LABEL', 'Month and Year Display Format', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2027, 'MOD_ARTICLES_CATEGORY_FIELD_RELATIVEDATE_DESC', 'If Relative Date is selected above, please enter in a numeric day value. Results will be retrieved relative to the current date and the value you enter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2028, 'MOD_ARTICLES_CATEGORY_FIELD_RELATIVEDATE_LABEL', 'Relative Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2029, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWAUTHOR_DESC', 'Select Show if you would like the author (or author alias instead, if available) to be displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2030, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWCATEGORY_DESC', 'Select Show if you would like the category name displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2031, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWCHILDCATEGORYARTICLES_DESC', 'Include or Exclude Articles from Child Categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2032, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWCHILDCATEGORYARTICLES_LABEL', 'Child Category Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2033, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWDATE_DESC', 'Select Show if you would like the date displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2034, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWFEATURED_DESC', 'Select to Show, Hide, or Only display Featured Articles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2035, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWFEATURED_LABEL', 'Featured Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2036, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWHITS_DESC', 'Select Show if you would like the hits for each article to be displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2037, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWHITS_LABEL', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2038, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWINTROTEXT_DESC', 'Select Show if you would like the introtext to be displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2039, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWINTROTEXT_LABEL', 'Introtext', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2040, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWONARTICLEPAGE_DESC', 'Select to Show or Hide Article List from Article Pages. This means that the module will only display itself dynamically on Category Pages.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2041, 'MOD_ARTICLES_CATEGORY_FIELD_SHOWONARTICLEPAGE_LABEL', 'Show on Article Page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2042, 'MOD_ARTICLES_CATEGORY_FIELD_STARTDATE_DESC', 'If Date Range is selected above, please enter a Starting Date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2043, 'MOD_ARTICLES_CATEGORY_FIELD_STARTDATE_LABEL', 'Start Date Range', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2044, 'MOD_ARTICLES_CATEGORY_OPTION_ASCENDING_VALUE', 'Ascending', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2045, 'MOD_ARTICLES_CATEGORY_OPTION_CREATED_VALUE', 'Created Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2046, 'MOD_ARTICLES_CATEGORY_OPTION_DATERANGE_VALUE', 'Date Range', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2047, 'MOD_ARTICLES_CATEGORY_OPTION_DESCENDING_VALUE', 'Descending', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2048, 'MOD_ARTICLES_CATEGORY_OPTION_DYNAMIC_VALUE', 'Dynamic', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2049, 'MOD_ARTICLES_CATEGORY_OPTION_EXCLUDE_VALUE', 'Exclude', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2050, 'MOD_ARTICLES_CATEGORY_OPTION_EXCLUSIVE_VALUE', 'Exclusive', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2051, 'MOD_ARTICLES_CATEGORY_OPTION_HITS_VALUE', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2052, 'MOD_ARTICLES_CATEGORY_OPTION_ID_VALUE', 'ID', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2053, 'MOD_ARTICLES_CATEGORY_OPTION_INCLUDE_VALUE', 'Include', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2054, 'MOD_ARTICLES_CATEGORY_OPTION_INCLUSIVE_VALUE', 'Inclusive', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2055, 'MOD_ARTICLES_CATEGORY_OPTION_MODIFIED_VALUE', 'Modified Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2056, 'MOD_ARTICLES_CATEGORY_OPTION_MONTHYEAR_VALUE', 'Month and Year', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2057, 'MOD_ARTICLES_CATEGORY_OPTION_NORMAL_VALUE', 'Normal', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2058, 'MOD_ARTICLES_CATEGORY_OPTION_OFF_VALUE', 'Off', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2059, 'MOD_ARTICLES_CATEGORY_OPTION_ONLYFEATURED_VALUE', 'Only', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2060, 'MOD_ARTICLES_CATEGORY_OPTION_ORDERING_VALUE', 'Article Manager Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2061, 'MOD_ARTICLES_CATEGORY_OPTION_ORDERINGFEATURED_VALUE', 'Featured Articles Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2062, 'MOD_ARTICLES_CATEGORY_OPTION_RELATIVEDAY_VALUE', 'Relative Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2063, 'MOD_ARTICLES_CATEGORY_OPTION_STARTPUBLISHING_VALUE', 'Start Publishing Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2064, 'MOD_ARTICLES_CATEGORY_OPTION_FINISHPUBLISHING_VALUE', 'Finish Publishing Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2065, 'MOD_ARTICLES_CATEGORY_OPTION_YEAR_VALUE', 'Year', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2066, 'MOD_ARTICLES_CATEGORY_READ_MORE', 'Read more: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2067, 'MOD_ARTICLES_CATEGORY_READ_MORE_TITLE', 'Read More ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2068, 'MOD_ARTICLES_CATEGORY_REGISTER_TO_READ_MORE', 'Register to read more', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2069, 'MOD_ARTICLES_CATEGORY_XML_DESCRIPTION', 'This module displays a list of articles from one or more categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.ini'),
	(2070, 'MOD_ARTICLES_CATEGORY', 'Articles - Category', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.sys.ini'),
	(2071, 'MOD_ARTICLES_CATEGORY_XML_DESCRIPTION', 'This module displays a list of articles from one or more categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.sys.ini'),
	(2072, 'MOD_ARTICLES_CATEGORY_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_category.sys.ini'),
	(2073, 'MOD_ARTICLES_LATEST', 'Articles - Latest', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2074, 'MOD_LATEST_NEWS_FIELD_CATEGORY_DESC', 'Selects Articles from one or more Categories. If no selection will show all categories as default.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2075, 'MOD_LATEST_NEWS_FIELD_COUNT_DESC', 'The number of Articles to display (the default is 5).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2076, 'MOD_LATEST_NEWS_FIELD_COUNT_LABEL', 'Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2077, 'MOD_LATEST_NEWS_FIELD_FEATURED_DESC', 'Show/Hide articles designated as featured.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2078, 'MOD_LATEST_NEWS_FIELD_FEATURED_LABEL', 'Featured Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2079, 'MOD_LATEST_NEWS_FIELD_ORDERING_DESC', 'Recently Added First: order the articles using their creation date<br />Recently Modified First: order the articles using their modification date<br />Recently Published First: order the articles using their publication date.<br />Recently Touched First: order the articles using their modification or creation dates.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2080, 'MOD_LATEST_NEWS_FIELD_ORDERING_LABEL', 'Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2081, 'MOD_LATEST_NEWS_FIELD_USER_DESC', 'Filter by author.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2082, 'MOD_LATEST_NEWS_FIELD_USER_LABEL', 'Authors', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2083, 'MOD_LATEST_NEWS_VALUE_ADDED_BY_ME', 'Added or modified by me', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2084, 'MOD_LATEST_NEWS_VALUE_ANYONE', 'Anyone', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2085, 'MOD_LATEST_NEWS_VALUE_NOTADDED_BY_ME', 'Not added or modified by me', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2086, 'MOD_LATEST_NEWS_VALUE_ONLY_SHOW_FEATURED', 'Only show Featured Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2087, 'MOD_LATEST_NEWS_VALUE_RECENT_ADDED', 'Recently Added First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2088, 'MOD_LATEST_NEWS_VALUE_RECENT_MODIFIED', 'Recently Modified First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2089, 'MOD_LATEST_NEWS_VALUE_RECENT_RAND', 'Random Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2090, 'MOD_LATEST_NEWS_VALUE_RECENT_PUBLISHED', 'Recently Published First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2091, 'MOD_LATEST_NEWS_VALUE_RECENT_TOUCHED', 'Recently Touched First', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2092, 'MOD_LATEST_NEWS_XML_DESCRIPTION', 'This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.ini'),
	(2093, 'MOD_ARTICLES_LATEST', 'Articles - Latest', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.sys.ini'),
	(2094, 'MOD_LATEST_NEWS_XML_DESCRIPTION', 'This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.sys.ini'),
	(2095, 'MOD_ARTICLES_LATEST_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_latest.sys.ini'),
	(2096, 'MOD_ARTICLES_NEWS', 'Articles - Newsflash', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2097, 'MOD_ARTICLES_NEWS_FIELD_CATEGORY_DESC', 'Select Articles from a specific Category or a set of Categories. If no selection will show all categories as default.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2098, 'MOD_ARTICLES_NEWS_FIELD_IMAGES_DESC', 'Display Article images.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2099, 'MOD_ARTICLES_NEWS_FIELD_IMAGES_LABEL', 'Show Images', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2100, 'MOD_ARTICLES_NEWS_FIELD_ITEMS_DESC', 'The number of Articles to display within this module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2101, 'MOD_ARTICLES_NEWS_FIELD_ITEMS_LABEL', 'Number of Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2102, 'MOD_ARTICLES_NEWS_FIELD_LINKTITLE_DESC', 'Link the Article titles to Articles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2103, 'MOD_ARTICLES_NEWS_FIELD_LINKTITLE_LABEL', 'Linked Titles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2104, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_DESC', 'Select the order in which you want query results presented.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2105, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_LABEL', 'Order Results', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2106, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_CREATED_DATE', 'Created Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2107, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_PUBLISHED_DATE', 'Published Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2108, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_ORDERING', 'Ordering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2109, 'MOD_ARTICLES_NEWS_FIELD_ORDERING_RANDOM', 'Random', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2110, 'MOD_ARTICLES_NEWS_FIELD_READMORE_DESC', 'If set to Show, the \'Read more ...\' link will show if Main text has been provided for an Article.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2111, 'MOD_ARTICLES_NEWS_FIELD_READMORE_LABEL', '\'Read more ...\' Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2112, 'MOD_ARTICLES_NEWS_FIELD_SEPARATOR_DESC', 'Show separator after last Article.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2113, 'MOD_ARTICLES_NEWS_FIELD_SEPARATOR_LABEL', 'Show Last Separator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2114, 'MOD_ARTICLES_NEWS_FIELD_TITLE_DESC', 'Show or hide the Article title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2115, 'MOD_ARTICLES_NEWS_FIELD_TITLE_LABEL', 'Show Article Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2116, 'MOD_ARTICLES_NEWS_READMORE', 'Read more ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2117, 'MOD_ARTICLES_NEWS_READMORE_REGISTER', 'Register to Read More', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2118, 'MOD_ARTICLES_NEWS_TITLE_HEADING', 'Header Level', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2119, 'MOD_ARTICLES_NEWS_TITLE_HEADING_DESCRIPTION', 'Select the desired HTML header level for the Article titles.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2120, 'MOD_ARTICLES_NEWS_XML_DESCRIPTION', 'The Article Newsflash Module will display a fixed number of Articles from a specific Category or a set of Categories.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.ini'),
	(2121, 'MOD_ARTICLES_NEWS', 'Articles - Newsflash', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.sys.ini'),
	(2122, 'MOD_ARTICLES_NEWS_XML_DESCRIPTION', 'The Newsflash Module will display a fixed number of articles from a specific category.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.sys.ini'),
	(2123, 'MOD_ARTICLES_NEWS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_news.sys.ini'),
	(2124, 'MOD_ARTICLES_POPULAR', 'Articles - Most Read', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2125, 'MOD_POPULAR_FIELD_CATEGORY_DESC', 'Select Articles from a specific Category or a set of Categories. If no selection will show all categories as default.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2126, 'MOD_POPULAR_FIELD_COUNT_DESC', 'The number of Articles to display (the default is 5).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2127, 'MOD_POPULAR_FIELD_COUNT_LABEL', 'Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2128, 'MOD_POPULAR_FIELD_FEATURED_DESC', 'Show/Hide Articles designated as Featured.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2129, 'MOD_POPULAR_FIELD_FEATURED_LABEL', 'Featured Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2130, 'MOD_POPULAR_XML_DESCRIPTION', 'This module shows a list of the currently published Articles which have the highest number of page views.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2131, 'MOD_POPULAR_FIELD_DATEFIELD_DESC', 'Select which date field you want the date filter to be applied to.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2132, 'MOD_POPULAR_FIELD_DATEFIELD_LABEL', 'Date Field', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2133, 'MOD_POPULAR_FIELD_DATEFILTERING_DESC', 'Select Date Filtering Type.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2134, 'MOD_POPULAR_FIELD_DATEFILTERING_LABEL', 'Date Filtering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2135, 'MOD_POPULAR_FIELD_ENDDATE_DESC', 'If Date Range is selected above, please enter an End Date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2136, 'MOD_POPULAR_FIELD_ENDDATE_LABEL', 'End Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2137, 'MOD_POPULAR_FIELD_STARTDATE_DESC', 'If Date Range is selected above, please enter a Starting Date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2138, 'MOD_POPULAR_FIELD_STARTDATE_LABEL', 'Start Date Range', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2139, 'MOD_POPULAR_FIELD_RELATIVEDATE_DESC', 'If Relative Date is selected above, please enter a numeric day value. Results will be retrieved relative to the current date and the value you enter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2140, 'MOD_POPULAR_FIELD_RELATIVEDATE_LABEL', 'Relative Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2141, 'MOD_POPULAR_OPTION_CREATED_VALUE', 'Created Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2142, 'MOD_POPULAR_OPTION_DATERANGE_VALUE', 'Date Range', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2143, 'MOD_POPULAR_OPTION_MODIFIED_VALUE', 'Modified Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2144, 'MOD_POPULAR_OPTION_OFF_VALUE', 'Off', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2145, 'MOD_POPULAR_OPTION_RELATIVEDAY_VALUE', 'Relative Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2146, 'MOD_POPULAR_OPTION_STARTPUBLISHING_VALUE', 'Start Publishing Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.ini'),
	(2147, 'MOD_ARTICLES_POPULAR', 'Articles - Most Read', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.sys.ini'),
	(2148, 'MOD_POPULAR_XML_DESCRIPTION', 'This module shows a list of the currently published Articles which have the highest number of page views.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.sys.ini'),
	(2149, 'MOD_ARTICLES_POPULAR_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_articles_popular.sys.ini'),
	(2150, 'COM_BANNERS_NO_CLIENT', '- No client -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2151, 'MOD_BANNERS', 'Banners', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2152, 'MOD_BANNERS_BANNER', 'Banner', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2153, 'MOD_BANNERS_FIELD_BANNERCLIENT_DESC', 'Select banners only from a single client.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2154, 'MOD_BANNERS_FIELD_BANNERCLIENT_LABEL', 'Client', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2155, 'MOD_BANNERS_FIELD_CACHETIME_DESC', 'The time before the module is recached.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2156, 'MOD_BANNERS_FIELD_CACHETIME_LABEL', 'Cache Time', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2157, 'MOD_BANNERS_FIELD_CATEGORY_DESC', 'Select banners from a specific Category or a set of Categories. If no selection then it will show all categories as default.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2158, 'MOD_BANNERS_FIELD_COUNT_DESC', 'The number of banners to display (default 5).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2159, 'MOD_BANNERS_FIELD_COUNT_LABEL', 'Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2160, 'MOD_BANNERS_FIELD_FOOTER_DESC', 'Text or HTML to display after the group of banners.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2161, 'MOD_BANNERS_FIELD_FOOTER_LABEL', 'Footer Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2162, 'MOD_BANNERS_FIELD_HEADER_DESC', 'Text or HTML to display before the group of banners.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2163, 'MOD_BANNERS_FIELD_HEADER_LABEL', 'Header Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2164, 'MOD_BANNERS_FIELD_RANDOMISE_DESC', 'Randomise the ordering of the banners.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2165, 'MOD_BANNERS_FIELD_RANDOMISE_LABEL', 'Randomise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2166, 'MOD_BANNERS_FIELD_TAG_DESC', 'Banner is selected by matching the banner tags to the current document meta keywords.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2167, 'MOD_BANNERS_FIELD_TAG_LABEL', 'Search by Meta Keyword', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2168, 'MOD_BANNERS_FIELD_TARGET_DESC', 'Target window when the link is clicked.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2169, 'MOD_BANNERS_FIELD_TARGET_LABEL', 'Target', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2170, 'MOD_BANNERS_VALUE_STICKYORDERING', 'Pinned, Ordering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2171, 'MOD_BANNERS_VALUE_STICKYRANDOMISE', 'Pinned, Randomise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2172, 'MOD_BANNERS_XML_DESCRIPTION', 'The Banner Module displays the active Banners from the Component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.ini'),
	(2173, 'MOD_BANNERS', 'Banners', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.sys.ini'),
	(2174, 'MOD_BANNERS_XML_DESCRIPTION', 'The Banner Module displays the active Banners from the Component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.sys.ini'),
	(2175, 'MOD_BANNERS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_banners.sys.ini'),
	(2176, 'MOD_BREADCRUMBS', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2177, 'MOD_BREADCRUMBS_FIELD_HOMETEXT_DESC', 'This text will be shown as Home entry. If the field is left empty, it will use the default value from the mod_breadcrumbs.ini language file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2178, 'MOD_BREADCRUMBS_FIELD_HOMETEXT_LABEL', 'Text for Home Entry', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2179, 'MOD_BREADCRUMBS_FIELD_SEPARATOR_DESC', 'A text separator.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2180, 'MOD_BREADCRUMBS_FIELD_SEPARATOR_LABEL', 'Text Separator', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2181, 'MOD_BREADCRUMBS_FIELD_SHOWHERE_DESC', 'Show/Hide &quot;You are here&quot; text in the pathway.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2182, 'MOD_BREADCRUMBS_FIELD_SHOWHERE_LABEL', 'Show &quot;You are here&quot;', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2183, 'MOD_BREADCRUMBS_FIELD_SHOWHOME_DESC', 'Show/Hide the Home element in the pathway.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2184, 'MOD_BREADCRUMBS_FIELD_SHOWHOME_LABEL', 'Show Home', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2185, 'MOD_BREADCRUMBS_FIELD_SHOWLAST_DESC', 'Show/Hide the last element in the pathway.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2186, 'MOD_BREADCRUMBS_FIELD_SHOWLAST_LABEL', 'Show Last', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2187, 'MOD_BREADCRUMBS_HERE', 'You are here: ', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2188, 'MOD_BREADCRUMBS_HOME', 'Home', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2189, 'MOD_BREADCRUMBS_XML_DESCRIPTION', 'This module displays the Breadcrumbs.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.ini'),
	(2190, 'MOD_BREADCRUMBS', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.sys.ini'),
	(2191, 'MOD_BREADCRUMBS_XML_DESCRIPTION', 'This module displays the Breadcrumbs.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.sys.ini'),
	(2192, 'MOD_BREADCRUMBS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_breadcrumbs.sys.ini'),
	(2193, 'MOD_CUSTOM', 'Custom HTML', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2194, 'MOD_CUSTOM_FIELD_PREPARE_CONTENT_DESC', 'Optionally prepare the content with the Joomla Content Plugins.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2195, 'MOD_CUSTOM_FIELD_PREPARE_CONTENT_LABEL', 'Prepare Content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2196, 'MOD_CUSTOM_XML_DESCRIPTION', 'This module allows you to create your own HTML Module using a WYSIWYG editor.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2197, 'MOD_CUSTOM_FIELD_BACKGROUNDIMAGE_LABEL', 'Select a Background Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2198, 'MOD_BACKGROUNDIMAGE_FIELD_LOGO_DESC', 'If you select an image here it will automatically be inserted as an inline style for the wrapping div element.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.ini'),
	(2199, 'MOD_CUSTOM', 'Custom HTML', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.sys.ini'),
	(2200, 'MOD_CUSTOM_XML_DESCRIPTION', 'This module allows you to create your own HTML Module using a WYSIWYG editor.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.sys.ini'),
	(2201, 'MOD_CUSTOM_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_custom.sys.ini'),
	(2202, 'MOD_FEED', 'Feed Display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2203, 'MOD_FEED_ERR_CACHE', 'Please make cache directory writeable.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2204, 'MOD_FEED_ERR_FEED_NOT_RETRIEVED', 'Feed not found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2205, 'MOD_FEED_ERR_NO_URL', 'No feed URL specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2206, 'MOD_FEED_FIELD_DESCRIPTION_DESC', 'Show the description text for the entire feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2207, 'MOD_FEED_FIELD_DESCRIPTION_LABEL', 'Feed Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2208, 'MOD_FEED_FIELD_IMAGE_DESC', 'Show the image associated with the entire feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2209, 'MOD_FEED_FIELD_IMAGE_LABEL', 'Feed Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2210, 'MOD_FEED_FIELD_ITEMDESCRIPTION_DESC', 'Show the description or intro text of individual RSS items.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2211, 'MOD_FEED_FIELD_ITEMDESCRIPTION_LABEL', 'Item Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2212, 'MOD_FEED_FIELD_ITEMS_DESC', 'Enter number of RSS items to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2213, 'MOD_FEED_FIELD_ITEMS_LABEL', 'Feed Items', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2214, 'MOD_FEED_FIELD_RSSTITLE_DESC', 'Display news feed title.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2215, 'MOD_FEED_FIELD_RSSTITLE_LABEL', 'Feed Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2216, 'MOD_FEED_FIELD_RSSURL_DESC', 'Enter the URL of the RSS/RDF/ATOM feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2217, 'MOD_FEED_FIELD_RSSURL_LABEL', 'Feed URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2218, 'MOD_FEED_FIELD_RTL_DESC', 'Display feed in RTL direction.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2219, 'MOD_FEED_FIELD_RTL_LABEL', 'RTL Feed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2220, 'MOD_FEED_FIELD_WORDCOUNT_DESC', 'Allows you to limit the amount of visible Item description text. 0 will show all the text.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2221, 'MOD_FEED_FIELD_WORDCOUNT_LABEL', 'Word Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2222, 'MOD_FEED_XML_DESCRIPTION', 'This module allows the displaying of a syndicated feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.ini'),
	(2223, 'MOD_FEED', 'Feed Display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.sys.ini'),
	(2224, 'MOD_FEED_XML_DESCRIPTION', 'This module allows the displaying of a syndicated feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.sys.ini'),
	(2225, 'MOD_FEED_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_feed.sys.ini'),
	(2226, 'COM_FINDER_FILTER_BRANCH_LABEL', 'Search by %s', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2227, 'COM_FINDER_FILTER_SELECT_ALL_LABEL', 'Search All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2228, 'COM_FINDER_ADVANCED_SEARCH', 'Advanced Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2229, 'COM_FINDER_SELECT_SEARCH_FILTER', '- No Filter -', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2230, 'MOD_FINDER', 'Smart Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2231, 'MOD_FINDER_CONFIG_OPTION_BOTTOM', 'Bottom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2232, 'MOD_FINDER_CONFIG_OPTION_TOP', 'Top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2233, 'MOD_FINDER_FIELDSET_ADVANCED_ALT_DESCRIPTION', 'An alternative label for the search field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2234, 'MOD_FINDER_FIELDSET_ADVANCED_ALT_LABEL', 'Alternative Label', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2235, 'MOD_FINDER_FIELDSET_ADVANCED_BUTTON_POS_DESCRIPTION', 'The position of the search button relative to the search field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2236, 'MOD_FINDER_FIELDSET_ADVANCED_BUTTON_POS_LABEL', 'Button Position', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2237, 'MOD_FINDER_FIELDSET_ADVANCED_FIELD_SIZE_DESCRIPTION', 'The width of the search field by character length.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2238, 'MOD_FINDER_FIELDSET_ADVANCED_FIELD_SIZE_LABEL', 'Search Field Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2239, 'MOD_FINDER_FIELDSET_ADVANCED_LABEL_POS_DESCRIPTION', 'The position of the search label relative to the search field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2240, 'MOD_FINDER_FIELDSET_ADVANCED_LABEL_POS_LABEL', 'Label Position', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2241, 'MOD_FINDER_FIELDSET_ADVANCED_SETITEMID_DESCRIPTION', 'Assign an ItemID by selecting a menu item in the list for the display of the search results if there is no com_finder menu item and a specific display is desired. If you do not know what this means, you may not need it.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2242, 'MOD_FINDER_FIELDSET_ADVANCED_SETITEMID_LABEL', 'Set ItemID', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2243, 'MOD_FINDER_FIELDSET_ADVANCED_SHOW_BUTTON_DESCRIPTION', 'Toggle whether a button should be displayed for the search form.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2244, 'MOD_FINDER_FIELDSET_ADVANCED_SHOW_BUTTON_LABEL', 'Search Button', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2245, 'MOD_FINDER_FIELDSET_ADVANCED_SHOW_LABEL_DESCRIPTION', 'Toggle whether a label should be displayed for the search field.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2246, 'MOD_FINDER_FIELDSET_ADVANCED_SHOW_LABEL_LABEL', 'Search Field Label', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2247, 'MOD_FINDER_FIELDSET_BASIC_AUTOSUGGEST_DESCRIPTION', 'Toggle whether automatic search suggestions should be displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2248, 'MOD_FINDER_FIELDSET_BASIC_AUTOSUGGEST_LABEL', 'Search Suggestions', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2249, 'MOD_FINDER_FIELDSET_BASIC_SEARCHFILTER_DESCRIPTION', 'Selecting a Search Filter will limit any searches submitted through this module to use the selected filter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2250, 'MOD_FINDER_FIELDSET_BASIC_SEARCHFILTER_LABEL', 'Search Filter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2251, 'MOD_FINDER_FIELDSET_BASIC_SHOW_ADVANCED_DESCRIPTION', 'Toggle whether users should be able to see advanced search options. If set to Link to Component option creates a Smart Search link which redirects to the smart search view. If set to show, the advanced search options will be displayed inline.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2252, 'MOD_FINDER_FIELDSET_BASIC_SHOW_ADVANCED_LABEL', 'Advanced Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2253, 'MOD_FINDER_FIELDSET_BASIC_SHOW_ADVANCED_OPTION_LINK', 'Link to Component', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2254, 'MOD_FINDER_FIELD_OPENSEARCH_DESCRIPTION', 'Some browsers can add support for your site\'s search if this option is enabled.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2255, 'MOD_FINDER_FIELD_OPENSEARCH_LABEL', 'OpenSearch Autodiscovery', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2256, 'MOD_FINDER_FIELD_OPENSEARCH_TEXT_DESCRIPTION', 'Text displayed in supported browsers when adding your site as a search provider.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2257, 'MOD_FINDER_FIELD_OPENSEARCH_TEXT_LABEL', 'OpenSearch title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2258, 'MOD_FINDER_SEARCHBUTTON_TEXT', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2259, 'MOD_FINDER_SEARCH_BUTTON', 'Go', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2260, 'MOD_FINDER_SEARCH_VALUE', 'Search ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2261, 'MOD_FINDER_SELECT_MENU_ITEMID', 'Select a menu item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2262, 'MOD_FINDER_XML_DESCRIPTION', 'This is a Smart Search module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.ini'),
	(2263, 'MOD_FINDER', 'Smart Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.sys.ini'),
	(2264, 'MOD_FINDER_XML_DESCRIPTION', 'This is a search module for the Smart Search system.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.sys.ini'),
	(2265, 'MOD_FINDER_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_finder.sys.ini'),
	(2266, 'MOD_FOOTER', 'Footer', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.ini'),
	(2267, 'MOD_FOOTER_LINE1', 'Copyright &#169; %date% %sitename%. All Rights Reserved.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.ini'),
	(2268, 'MOD_FOOTER_LINE2', '<a href="http://www.joomla.org">Joomla!</a> is Free Software released under the <a href="http://www.gnu.org/licenses/gpl-2.0.html">GNU General Public License.</a>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.ini'),
	(2269, 'MOD_FOOTER_XML_DESCRIPTION', 'This module shows the Joomla! copyright information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.ini'),
	(2270, 'MOD_FOOTER', 'Footer', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.sys.ini'),
	(2271, 'MOD_FOOTER_XML_DESCRIPTION', 'This module shows the Joomla! copyright information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.sys.ini'),
	(2272, 'MOD_FOOTER_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_footer.sys.ini'),
	(2273, 'MOD_LANGUAGES', 'Language Switcher', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2274, 'MOD_LANGUAGES_FIELD_ACTIVE_DESC', 'Display or not the active language. If displayed, the class \'lang-active\' will be added to the element.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2275, 'MOD_LANGUAGES_FIELD_ACTIVE_LABEL', 'Active Language', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2276, 'MOD_LANGUAGES_FIELD_CACHING_DESC', 'Select whether to cache or not the content of this module.<br />This should be set to \'No caching\' when using Items Associations.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2277, 'MOD_LANGUAGES_FIELD_DROPDOWN_DESC', 'If set to \'Yes\', the display parameters below will be ignored. The content languages native names will display in a dropdown.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2278, 'MOD_LANGUAGES_FIELD_DROPDOWN_LABEL', 'Use Dropdown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2279, 'MOD_LANGUAGES_FIELD_FOOTER_DESC', 'This is the text or HTML that is displayed below the language switcher.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2280, 'MOD_LANGUAGES_FIELD_FOOTER_LABEL', 'Post-text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2281, 'MOD_LANGUAGES_FIELD_FULL_NAME_DESC', 'If set to \'Yes\' and image flags set to \'No\', full content language native names are displayed. If set to \'No\', upper case abbreviations from the content languages URL Language Code are used. Example: EN for English, FR for French.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2282, 'MOD_LANGUAGES_FIELD_FULL_NAME_LABEL', 'Languages Full Names', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2283, 'MOD_LANGUAGES_FIELD_HEADER_DESC', 'This is the text or HTML that is displayed above the language switcher.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2284, 'MOD_LANGUAGES_FIELD_HEADER_LABEL', 'Pre-text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2285, 'MOD_LANGUAGES_FIELD_INLINE_DESC', 'Default is set to \'Yes\', ie to horizontal display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2286, 'MOD_LANGUAGES_FIELD_INLINE_LABEL', 'Horizontal Display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2287, 'MOD_LANGUAGES_FIELD_MODULE_LAYOUT_DESC', 'Use a different layout from the supplied module or overrides in the default template.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2288, 'MOD_LANGUAGES_FIELD_USEIMAGE_DESC', 'If set to \'Yes\', will display language choice as image flags. Otherwise will use the content language native names.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2289, 'MOD_LANGUAGES_FIELD_USEIMAGE_LABEL', 'Use Image Flags', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2290, 'MOD_LANGUAGES_OPTION_DEFAULT_LANGUAGE', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2291, 'MOD_LANGUAGES_SPACERDROP_LABEL', '<u>If Use Dropdown is set to \'Yes\', <br />the display options below will be ignored</u>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2292, 'MOD_LANGUAGES_SPACERNAME_LABEL', '<u>If Use Image Flags is set to \'Yes\', <br />the display options below will be ignored</u>', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2293, 'MOD_LANGUAGES_XML_DESCRIPTION', 'This module displays a list of available Content Languages (as defined and published in Language Manager Content tab) for switching between them when one wants to use Joomla! as a multilingual site. <br />--The plugin \'System - Language Filter\' has to be enabled.--<br />When switching languages and if the item displayed in the page is not associated to another item, the module redirects to the Home page defined for the chosen language.<br />Otherwise, if the parameter is set for the Language filter plugin, it will redirect to the associated item in the language chosen. Thereafter, the navigation will be the one defined for that language. <br />If the plugin <strong>\'System - Language Filter\'</strong> is disabled, this may have unwanted results.<br /><strong>Method:</strong><br />1. Open Language Manager Content tab and make sure the Languages you want to use in contents are published and have a Language Code for the URL as well as prefix for the image used in the module display.<br />2. Create a Home page by assigning a language to a menu item and defining it as Default Home page for each published content language. <br />3. Thereafter, you can assign a language to any Article, Category, Module, News Feed, Web Links in Joomla.<br />4. Make sure the module is published and the plugin is enabled. <br />5. When using associated items, make sure the module is displayed on the pages concerned. <br />6. The way the flags or names of the languages are displayed is defined by the ordering in the Language Manager - Content Languages.<br ><br >If this module is published, it is suggested to publish the Administrator multilingual status module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.ini'),
	(2294, 'MOD_LANGUAGES', 'Language Switcher', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.sys.ini'),
	(2295, 'MOD_LANGUAGES_XML_DESCRIPTION', 'This module displays a list of available Content Languages (as defined and published in Language Manager Content tab) for switching between them when one wants to use Joomla! as a multilingual site. <br />--The plugin \'System - Language Filter\' has to be enabled.--<br />When switching languages and if the item displayed in the page is not associated to another item, the module redirects to the Home page defined for the chosen language.<br />Otherwise, if the parameter is set for the Language filter plugin, it will redirect to the associated item in the language chosen. Thereafter, the navigation will be the one defined for that language. <br />If the plugin <strong>\'System - Language Filter\'</strong> is disabled, this may have unwanted results.<br /><strong>Method:</strong><br />1. Open Language Manager Content tab and make sure the Languages you want to use in contents are published and have a Language Code for the URL as well as prefix for the image used in the module display.<br />2. Create a Home page by assigning a language to a menu item and defining it as Default Home page for each published content language. <br />3. Thereafter, you can assign a language to any Article, Category, Module, News Feed, Web Links in Joomla.<br />4. Make sure the module is published and the plugin is enabled. <br />5. When using associated items, make sure the module is displayed on the pages concerned. <br />6. The way the flags or names of the languages are displayed is defined by the ordering in the Language Manager - Content Languages.<br ><br >If this module is published, it is suggested to publish the Administrator multilingual status module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.sys.ini'),
	(2296, 'MOD_LANGUAGES_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_languages.sys.ini'),
	(2297, 'MOD_LOGIN', 'Login', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2298, 'MOD_LOGIN_FIELD_GREETING_DESC', 'Show/Hide the simple greeting text.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2299, 'MOD_LOGIN_FIELD_GREETING_LABEL', 'Show Greeting', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2300, 'MOD_LOGIN_FIELD_LOGIN_REDIRECTURL_DESC', 'Select the page the user will be redirected to after a successful login. Select from all the pages listed in the dropdown menu. Choosing &quot;Default&quot; will return to the same page.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2301, 'MOD_LOGIN_FIELD_LOGIN_REDIRECTURL_LABEL', 'Login Redirection Page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2302, 'MOD_LOGIN_FIELD_LOGOUT_REDIRECTURL_DESC', 'Select the page the user will be redirected to after successfully ending their current session by logging out. Select from all the pages listed in the dropdown menu. Choosing &quot;Default&quot; will return to the same page.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2303, 'MOD_LOGIN_FIELD_LOGOUT_REDIRECTURL_LABEL', 'Logout Redirection Page', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2304, 'MOD_LOGIN_FIELD_NAME_DESC', 'Displays name or username after logging in.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2305, 'MOD_LOGIN_FIELD_NAME_LABEL', 'Show Name/Username', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2306, 'MOD_LOGIN_FIELD_POST_TEXT_DESC', 'This is the text or HTML that is displayed below the login form.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2307, 'MOD_LOGIN_FIELD_POST_TEXT_LABEL', 'Post-text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2308, 'MOD_LOGIN_FIELD_PRE_TEXT_DESC', 'This is the text or HTML that is displayed above the login form.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2309, 'MOD_LOGIN_FIELD_PRE_TEXT_LABEL', 'Pre-text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2310, 'MOD_LOGIN_FIELD_USESECURE_DESC', 'Submit encrypted login data (requires SSL). Do not enable this option if Joomla is not accessible using the https:// protocol prefix.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2311, 'MOD_LOGIN_FIELD_USESECURE_LABEL', 'Encrypt Login Form', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2312, 'MOD_LOGIN_FIELD_USETEXT_DESC', 'Choose text or icons to display the field labels. Default is icons.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2313, 'MOD_LOGIN_FIELD_USETEXT_LABEL', 'Display Labels', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2314, 'MOD_LOGIN_FORGOT_YOUR_PASSWORD', 'Forgot your password?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2315, 'MOD_LOGIN_FORGOT_YOUR_USERNAME', 'Forgot your username?', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2316, 'MOD_LOGIN_HINAME', 'Hi %s,', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2317, 'MOD_LOGIN_REGISTER', 'Create an account', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2318, 'MOD_LOGIN_REMEMBER_ME', 'Remember Me', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2319, 'MOD_LOGIN_VALUE_ICONS', 'Icons', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2320, 'MOD_LOGIN_VALUE_NAME', 'Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2321, 'MOD_LOGIN_VALUE_TEXT', 'Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2322, 'MOD_LOGIN_VALUE_USERNAME', 'Username', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2323, 'MOD_LOGIN_XML_DESCRIPTION', 'This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in User Manager > Options), another link will be shown to enable self-registration for users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.ini'),
	(2324, 'MOD_LOGIN', 'Login', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.sys.ini'),
	(2325, 'MOD_LOGIN_XML_DESCRIPTION', 'This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in User Manager > Options), another link will be shown to enable self-registration for users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.sys.ini'),
	(2326, 'MOD_LOGIN_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_login.sys.ini'),
	(2327, 'MOD_MENU', 'Menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2328, 'MOD_MENU_FIELD_ACTIVE_DESC', 'Select a menu item to always be used as the base for the menu display. You must set the Start Level to the same level or higher than the level of the base item. This will cause the module to be displayed on all assigned pages. If Current is selected the currently active item is used as the base. This causes the module to only display when the parent menu item is active.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2329, 'MOD_MENU_FIELD_ACTIVE_LABEL', 'Base Item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2330, 'MOD_MENU_FIELD_ALLCHILDREN_DESC', 'Expand the menu and make its sub-menu items always visible.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2331, 'MOD_MENU_FIELD_ALLCHILDREN_LABEL', 'Show Sub-menu Items', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2332, 'MOD_MENU_FIELD_CLASS_DESC', 'A suffix to be applied to the CSS class of the menu items.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2333, 'MOD_MENU_FIELD_CLASS_LABEL', 'Menu Class Suffix', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2334, 'MOD_MENU_FIELD_ENDLEVEL_DESC', 'Level to stop rendering the menu at. If you choose \'All\', all levels will be shown depending on \'Show Sub-menu Items\' setting.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2335, 'MOD_MENU_FIELD_ENDLEVEL_LABEL', 'End Level', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2336, 'MOD_MENU_FIELD_MENUTYPE_DESC', 'Select a menu in the list.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2337, 'MOD_MENU_FIELD_MENUTYPE_LABEL', 'Select Menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2338, 'MOD_MENU_FIELD_STARTLEVEL_DESC', 'Level to start rendering the menu at. Setting the start and end levels to the same # and setting \'Show Sub-menu Items\' to yes will only display that single level.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2339, 'MOD_MENU_FIELD_STARTLEVEL_LABEL', 'Start Level', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2340, 'MOD_MENU_FIELD_TAG_ID_DESC', 'An ID attribute to assign to the root ul tag of the menu (optional).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2341, 'MOD_MENU_FIELD_TAG_ID_LABEL', 'Menu Tag ID', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2342, 'MOD_MENU_FIELD_TARGET_DESC', 'JavaScript values to position a popup window, eg top=50,left=50,width=200,height=300.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2343, 'MOD_MENU_FIELD_TARGET_LABEL', 'Target Position', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2344, 'MOD_MENU_XML_DESCRIPTION', 'This module displays a menu on the Frontend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.ini'),
	(2345, 'MOD_MENU', 'Menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.sys.ini'),
	(2346, 'MOD_MENU_XML_DESCRIPTION', 'This module displays a menu on the Frontend.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.sys.ini'),
	(2347, 'MOD_MENU_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_menu.sys.ini'),
	(2348, 'MOD_RANDOM_IMAGE', 'Random Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2349, 'MOD_RANDOM_IMAGE_FIELD_FOLDER_DESC', 'Path to the image folder relative to the site URL (eg images).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2350, 'MOD_RANDOM_IMAGE_FIELD_FOLDER_LABEL', 'Image Folder', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2351, 'MOD_RANDOM_IMAGE_FIELD_HEIGHT_DESC', 'Image height forces all images to be displayed with the height in pixels.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2352, 'MOD_RANDOM_IMAGE_FIELD_HEIGHT_LABEL', 'Height (px)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2353, 'MOD_RANDOM_IMAGE_FIELD_LINK_DESC', 'A URL to redirect to if the image is clicked upon (eg http://www.joomla.org).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2354, 'MOD_RANDOM_IMAGE_FIELD_LINK_LABEL', 'Link', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2355, 'MOD_RANDOM_IMAGE_FIELD_TYPE_DESC', 'Type of image PNG/GIF/JPG etc (the default is JPG).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2356, 'MOD_RANDOM_IMAGE_FIELD_TYPE_LABEL', 'Image Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2357, 'MOD_RANDOM_IMAGE_FIELD_WIDTH_DESC', 'Image width forces all images to be displayed with this width in pixels.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2358, 'MOD_RANDOM_IMAGE_FIELD_WIDTH_LABEL', 'Width (px)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2359, 'MOD_RANDOM_IMAGE_NO_IMAGES', 'No Images', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2360, 'MOD_RANDOM_IMAGE_XML_DESCRIPTION', 'This module displays a random image from your chosen directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.ini'),
	(2361, 'MOD_RANDOM_IMAGE', 'Random Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.sys.ini'),
	(2362, 'MOD_RANDOM_IMAGE_XML_DESCRIPTION', 'This module displays a random image from your chosen directory.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.sys.ini'),
	(2363, 'MOD_RANDOM_IMAGE_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_random_image.sys.ini'),
	(2364, 'MOD_RELATED_FIELD_MAX_DESC', 'The maximum number of related articles to display (default is 5).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2365, 'MOD_RELATED_FIELD_MAX_LABEL', 'Maximum Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2366, 'MOD_RELATED_FIELD_SHOWDATE_DESC', 'Show/Hide date.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2367, 'MOD_RELATED_FIELD_SHOWDATE_LABEL', 'Show Date', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2368, 'MOD_RELATED_ITEMS', 'Articles - Related', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2369, 'MOD_RELATED_XML_DESCRIPTION', 'This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta keywords. <br />All the keywords of the current Article are searched against all the keywords of all other published Articles. For example, you may have an Article on &quot;Breeding Parrots&quot; and another on &quot;Hand Raising Black Cockatoos&quot;. If you include the keyword &quot;parrot&quot; in both Articles, then the Related Items Module will list the &quot;Breeding Parrots&quot; Article when viewing &quot;Hand Raising Black Cockatoos&quot; and vice-versa.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.ini'),
	(2370, 'MOD_RELATED_ITEMS', 'Articles - Related', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.sys.ini'),
	(2371, 'MOD_RELATED_XML_DESCRIPTION', 'This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta keywords. <br />All the keywords of the current Article are searched against all the keywords of all other published Articles. For example, you may have an Article on &quot;Breeding Parrots&quot; and another on &quot;Hand Raising Black Cockatoos&quot;. If you include the keyword &quot;parrot&quot; in both Articles, then the Related Items Module will list the &quot;Breeding Parrots&quot; Article when viewing &quot;Hand Raising Black Cockatoos&quot; and vice-versa.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.sys.ini'),
	(2372, 'MOD_RELATED_ITEMS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_related_items.sys.ini'),
	(2373, 'MOD_SEARCH', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2374, 'MOD_SEARCH_FIELD_BOXWIDTH_DESC', 'Size of the search text box in characters.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2375, 'MOD_SEARCH_FIELD_BOXWIDTH_LABEL', 'Box Width', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2376, 'MOD_SEARCH_FIELD_BUTTON_DESC', 'Display a search button.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2377, 'MOD_SEARCH_FIELD_BUTTON_LABEL', 'Search Button', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2378, 'MOD_SEARCH_FIELD_BUTTONPOS_DESC', 'Position of the button relative to the search box.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2379, 'MOD_SEARCH_FIELD_BUTTONPOS_LABEL', 'Button Position', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2380, 'MOD_SEARCH_FIELD_BUTTONTEXT_DESC', 'The text that appears in the search button. If left blank, it will load the \'searchbutton\' string from your language file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2381, 'MOD_SEARCH_FIELD_BUTTONTEXT_LABEL', 'Button Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2382, 'MOD_SEARCH_FIELD_IMAGEBUTTON_DESC', 'Use an image as button. This image has to be named searchButton.gif and must be located in templates/*your template name*/images/.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2383, 'MOD_SEARCH_FIELD_IMAGEBUTTON_LABEL', 'Search Button Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2384, 'MOD_SEARCH_FIELD_SETITEMID_DESC', 'Assign an ItemID by selecting a menu item in the list for the display of the search results if there is no com_search menu and a specific display is desired. If you do not know what this means, you may not need it.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2385, 'MOD_SEARCH_FIELD_SETITEMID_LABEL', 'Set ItemID', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2386, 'MOD_SEARCH_FIELD_LABEL_TEXT_DESC', 'The text that appears in the label of search box. If left blank, it will load \'label\' string from your language file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2387, 'MOD_SEARCH_FIELD_LABEL_TEXT_LABEL', 'Box Label', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2388, 'MOD_SEARCH_FIELD_OPENSEARCH_LABEL', 'OpenSearch Autodiscovery', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2389, 'MOD_SEARCH_FIELD_OPENSEARCH_TEXT_LABEL', 'OpenSearch Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2390, 'MOD_SEARCH_FIELD_OPENSEARCH_TEXT_DESC', 'Text displayed in supported browsers when adding your site as a search provider.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2391, 'MOD_SEARCH_FIELD_OPENSEARCH_DESC', 'Some browsers can add support for your site\'s search if this option is enabled.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2392, 'MOD_SEARCH_FIELD_TEXT_DESC', 'The text that appears in the search text box. If left blank, it will load the \'searchbox\' string from your language file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2393, 'MOD_SEARCH_FIELD_TEXT_LABEL', 'Box Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2394, 'MOD_SEARCH_FIELD_VALUE_BOTTOM', 'Bottom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2395, 'MOD_SEARCH_FIELD_VALUE_LEFT', 'Left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2396, 'MOD_SEARCH_FIELD_VALUE_RIGHT', 'Right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2397, 'MOD_SEARCH_FIELD_VALUE_TOP', 'Top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2398, 'MOD_SEARCH_LABEL_TEXT', 'Search ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2399, 'MOD_SEARCH_SEARCHBOX_TEXT', 'Search ...', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2400, 'MOD_SEARCH_SEARCHBUTTON_TEXT', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2401, 'MOD_SEARCH_SELECT_MENU_ITEMID', 'Select a menu item', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2402, 'MOD_SEARCH_XML_DESCRIPTION', 'This module will display a search box.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.ini'),
	(2403, 'MOD_SEARCH', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.sys.ini'),
	(2404, 'MOD_SEARCH_XML_DESCRIPTION', 'This module will display a search box.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.sys.ini'),
	(2405, 'MOD_SEARCH_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_search.sys.ini'),
	(2406, 'MOD_STATS', 'Statistics', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2407, 'MOD_STATS_ARTICLES', 'Articles', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2408, 'MOD_STATS_ARTICLES_VIEW_HITS', 'Articles View Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2409, 'MOD_STATS_CACHING', 'Caching', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2410, 'MOD_STATS_FIELD_COUNTER_DESC', 'Display hit counter.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2411, 'MOD_STATS_FIELD_COUNTER_LABEL', 'Hit Counter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2412, 'MOD_STATS_FIELD_INCREASECOUNTER_DESC', 'Enter the number of hits to increase the counter by.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2413, 'MOD_STATS_FIELD_INCREASECOUNTER_LABEL', 'Increase Counter', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2414, 'MOD_STATS_FIELD_SERVERINFO_DESC', 'Display server information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2415, 'MOD_STATS_FIELD_SERVERINFO_LABEL', 'Server Information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2416, 'MOD_STATS_FIELD_SITEINFO_DESC', 'Display site information.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2417, 'MOD_STATS_FIELD_SITEINFO_LABEL', 'Site Information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2418, 'MOD_STATS_GZIP', 'GZip', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2419, 'MOD_STATS_MYSQL', 'MySQL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2420, 'MOD_STATS_OS', 'OS', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2421, 'MOD_STATS_PHP', 'PHP', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2422, 'MOD_STATS_TIME', 'Time', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2423, 'MOD_STATS_USERS', 'Users', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2424, 'MOD_STATS_WEBLINKS', 'Web Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2425, 'MOD_STATS_XML_DESCRIPTION', 'The Statistics Module shows information about your server installation together with statistics on the website users, number of Articles in your database and the number of Web links you provide.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.ini'),
	(2426, 'MOD_STATS', 'Statistics', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.sys.ini'),
	(2427, 'MOD_STATS_XML_DESCRIPTION', 'The Statistics Module shows information about your server installation together with statistics on the website users, number of Articles in your database and the number of Web links you provide.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.sys.ini'),
	(2428, 'MOD_STATS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_stats.sys.ini'),
	(2429, 'MOD_SYNDICATE', 'Syndication Feeds', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2430, 'MOD_SYNDICATE_DEFAULT_FEED_ENTRIES', 'Feed Entries', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2431, 'MOD_SYNDICATE_FIELD_DISPLAYTEXT_DESC', 'If set to \'Yes\', text will be displayed next to the icon.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2432, 'MOD_SYNDICATE_FIELD_DISPLAYTEXT_LABEL', 'Display Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2433, 'MOD_SYNDICATE_FIELD_FORMAT_DESC', 'Select the format for the Syndication Feed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2434, 'MOD_SYNDICATE_FIELD_FORMAT_LABEL', 'Feed Format', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2435, 'MOD_SYNDICATE_FIELD_TEXT_DESC', 'If \'Display Text\' is activated, the text entered here will be displayed next to the icon along with the RSS Link. If this field is left empty, the default text displayed will be picked from the site language ini file.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2436, 'MOD_SYNDICATE_FIELD_TEXT_LABEL', 'Text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2437, 'MOD_SYNDICATE_FIELD_VALUE_ATOM', 'Atom 1.0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2438, 'MOD_SYNDICATE_FIELD_VALUE_RSS', 'RSS 2.0', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2439, 'MOD_SYNDICATE_XML_DESCRIPTION', 'Smart Syndication Module that creates a Syndicated Feed for the page where the Module is displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.ini'),
	(2440, 'MOD_SYNDICATE', 'Syndication Feeds', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.sys.ini'),
	(2441, 'MOD_SYNDICATE_XML_DESCRIPTION', 'Smart Syndication Module that creates a Syndicated Feed for the page where the Module is displayed.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.sys.ini'),
	(2442, 'MOD_SYNDICATE_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_syndicate.sys.ini'),
	(2443, 'MOD_TAGS_POPULAR', 'Tags - Popular', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2444, 'MOD_TAGS_POPULAR_FIELD_ALL_TIME', 'All time', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2445, 'MOD_TAGS_POPULAR_FIELD_DISPLAY_COUNT_DESC', 'Choose if the number of tagged items should be displayed next to each tag.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2446, 'MOD_TAGS_POPULAR_FIELD_DISPLAY_COUNT_LABEL', 'Display Number of Items', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2447, 'MOD_TAGS_POPULAR_FIELD_LAST_DAY', 'Last day', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2448, 'MOD_TAGS_POPULAR_FIELD_LAST_HOUR', 'Last hour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2449, 'MOD_TAGS_POPULAR_FIELD_LAST_MONTH', 'Last month', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2450, 'MOD_TAGS_POPULAR_FIELD_LAST_WEEK', 'Last week', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2451, 'MOD_TAGS_POPULAR_FIELD_LAST_YEAR', 'Last year', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2452, 'MOD_TAGS_POPULAR_FIELD_MAX_DESC', 'Sets the maximum number of tags to display in the module. Enter &quot;0&quot; to display all tags.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2453, 'MOD_TAGS_POPULAR_FIELD_MAX_LABEL', 'Maximum Tags', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2454, 'MOD_TAGS_POPULAR_FIELD_MAXSIZE_DESC', 'The maximum font size used for the tags, proportional to the site\'s default font size (eg &quot;2&quot; means 200% of the default size).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2455, 'MOD_TAGS_POPULAR_FIELD_MAXSIZE_LABEL', 'Maximum Font Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2456, 'MOD_TAGS_POPULAR_FIELD_MINSIZE_DESC', 'The minimum font size used for the tags, proportional to the site\'s default font size (eg &quot;2&quot; means 200% of the default size).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2457, 'MOD_TAGS_POPULAR_FIELD_MINSIZE_LABEL', 'Minimum Font Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2458, 'MOD_TAGS_POPULAR_FIELD_NO_RESULTS_DESC', 'Will show a message if no matching tags are found instead of hiding the module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2459, 'MOD_TAGS_POPULAR_FIELD_NO_RESULTS_LABEL', 'Show &quot;No results&quot; text', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2460, 'MOD_TAGS_POPULAR_FIELD_ORDER_VALUE_COUNT', 'Number of Items', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2461, 'MOD_TAGS_POPULAR_FIELD_ORDER_VALUE_DESC', 'The order that tags will show in.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2462, 'MOD_TAGS_POPULAR_FIELD_ORDER_VALUE_LABEL', 'Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2463, 'MOD_TAGS_POPULAR_FIELD_ORDER_VALUE_RANDOM', 'Random', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2464, 'MOD_TAGS_POPULAR_FIELD_ORDER_VALUE_TITLE', 'Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2465, 'MOD_TAGS_POPULAR_FIELD_TIMEFRAME_DESC', 'Sets the time period for which to calculate popularity.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2466, 'MOD_TAGS_POPULAR_FIELD_TIMEFRAME_LABEL', 'Time Period', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2467, 'MOD_TAGS_POPULAR_FIELDSET_CLOUD_LABEL', 'Cloud Layout', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2468, 'MOD_TAGS_POPULAR_MAX_DESC', 'Sets the maximum number of tags to display in the module.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2469, 'MOD_TAGS_POPULAR_MAX_LABEL', 'Maximum tags', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2470, 'MOD_TAGS_POPULAR_NO_ITEMS_FOUND', 'No Tags found.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2471, 'MOD_TAGS_POPULAR_XML_DESCRIPTION', 'This module displays tags used on the site in a list or a cloud layout. Tags can be ordered by title or by the number of tagged items and limited to a specific time period.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.ini'),
	(2472, 'MOD_TAGS_POPULAR', 'Tags - Popular', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.sys.ini'),
	(2473, 'MOD_TAGS_POPULAR_LAYOUT_CLOUD', 'Cloud', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.sys.ini'),
	(2474, 'MOD_TAGS_POPULAR_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.sys.ini'),
	(2475, 'MOD_TAGS_POPULAR_XML_DESCRIPTION', 'This module displays tags used on the site in a list or a cloud layout. Tags can be ordered by title or by the number of tagged items and limited to a specific time period.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_popular.sys.ini'),
	(2476, 'MOD_TAGS_SIMILAR', 'Tags - Similar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2477, 'MOD_TAGS_SIMILAR_FIELD_ALL', 'All', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2478, 'MOD_TAGS_SIMILAR_FIELD_HALF', 'Half', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2479, 'MOD_TAGS_SIMILAR_FIELD_MATCHTYPE_DESC', 'How closely an item\'s tags need to match. All - requires that all tags in the displayed item be matched. Any - requires that at least one tag match. Half - requires that at least half of the tags match (rounded up in the case of decimals).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2480, 'MOD_TAGS_SIMILAR_FIELD_MATCHTYPE_LABEL', 'Match Type', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2481, 'MOD_TAGS_SIMILAR_FIELD_ONE', 'Any', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2482, 'MOD_TAGS_SIMILAR_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2483, 'MOD_TAGS_SIMILAR_MAX_DESC', 'Maximum number of items to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2484, 'MOD_TAGS_SIMILAR_MAX_LABEL', 'Maximum Items', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2485, 'MOD_TAGS_SIMILAR_NO_MATCHING_TAGS', 'No matching tags.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2486, 'MOD_TAGS_SIMILAR_XML_DESCRIPTION', 'The Similar Tags Module displays links to other items with similar tags. The closeness of the match can be specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2487, 'MOD_TAGS_SIMILAR_FIELD_ORDERING_LABEL', 'Order Results', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2488, 'MOD_TAGS_SIMILAR_FIELD_ORDERING_DESC', 'Select the order in which you want query results presented.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2489, 'MOD_TAGS_SIMILAR_FIELD_ORDERING_COUNT', 'Number of matching tags', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2490, 'MOD_TAGS_SIMILAR_FIELD_ORDERING_RANDOM', 'Random', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2491, 'MOD_TAGS_SIMILAR_FIELD_ORDERING_COUNT_AND_RANDOM', 'Number of matching tags & Random', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.ini'),
	(2492, 'MOD_TAGS_SIMILAR', 'Tags - Similar', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.sys.ini'),
	(2493, 'MOD_TAGS_SIMILAR_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.sys.ini'),
	(2494, 'MOD_TAGS_SIMILAR_XML_DESCRIPTION', 'The Similar Tags Module displays links to other items with similar tags. The closeness of the match can be specified.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_tags_similar.sys.ini'),
	(2495, 'MOD_USERS_LATEST', 'Latest Users', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2496, 'MOD_USERS_LATEST_FIELD_FILTER_GROUPS_DESC', 'Choose to filter by groups of the connected user.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2497, 'MOD_USERS_LATEST_FIELD_FILTER_GROUPS_LABEL', 'Filter Groups', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2498, 'MOD_USERS_LATEST_FIELD_LINKTOWHAT_DESC', 'Choose the type of information to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2499, 'MOD_USERS_LATEST_FIELD_LINKTOWHAT_LABEL', 'User Information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2500, 'MOD_USERS_LATEST_FIELD_NUMBER_DESC', 'Number of latest registered users to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2501, 'MOD_USERS_LATEST_FIELD_NUMBER_LABEL', 'Number of Users', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2502, 'MOD_USERS_LATEST_FIELD_VALUE_CONTACT', 'Contact', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2503, 'MOD_USERS_LATEST_FIELD_VALUE_PROFILE', 'Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2504, 'MOD_USERS_LATEST_XML_DESCRIPTION', 'This module displays the latest registered users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.ini'),
	(2505, 'MOD_USERS_LATEST', 'Latest Users', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.sys.ini'),
	(2506, 'MOD_USERS_LATEST_XML_DESCRIPTION', 'This module displays the latest registered users.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.sys.ini'),
	(2507, 'MOD_USERS_LATEST_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_users_latest.sys.ini'),
	(2508, 'MOD_WEBLINKS', 'Weblinks', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2509, 'MOD_WEBLINKS_FIELD_CATEGORY_DESC', 'Choose the Web Links category to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2510, 'MOD_WEBLINKS_FIELD_COUNT_DESC', 'Number of Web Links to display.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2511, 'MOD_WEBLINKS_FIELD_COUNT_LABEL', 'Count', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2512, 'MOD_WEBLINKS_FIELD_COUNTCLICKS_DESC', 'If set to yes, the number of times the link has been clicked will be recorded.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2513, 'MOD_WEBLINKS_FIELD_COUNTCLICKS_LABEL', 'Count Clicks', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2514, 'MOD_WEBLINKS_FIELD_DESCRIPTION_DESC', 'Display Web Link description.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2515, 'MOD_WEBLINKS_FIELD_DESCRIPTION_LABEL', 'Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2516, 'MOD_WEBLINKS_FIELD_FOLLOW_DESC', 'Robots index - allow to follow or not.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2517, 'MOD_WEBLINKS_FIELD_FOLLOW_LABEL', 'Follow/No Follow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2518, 'MOD_WEBLINKS_FIELD_HITS_DESC', 'Show hits.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2519, 'MOD_WEBLINKS_FIELD_HITS_LABEL', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2520, 'MOD_WEBLINKS_FIELD_ORDERDIRECTION_DESC', 'Set the ordering direction.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2521, 'MOD_WEBLINKS_FIELD_ORDERDIRECTION_LABEL', 'Direction', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2522, 'MOD_WEBLINKS_FIELD_ORDERING_DESC', 'Ordering for the Web Links.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2523, 'MOD_WEBLINKS_FIELD_ORDERING_LABEL', 'Ordering', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2524, 'MOD_WEBLINKS_FIELD_TARGET_DESC', 'Target browser window when the link is clicked.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2525, 'MOD_WEBLINKS_FIELD_TARGET_LABEL', 'Target Window', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2526, 'MOD_WEBLINKS_FIELD_VALUE_ASCENDING', 'Ascending', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2527, 'MOD_WEBLINKS_FIELD_VALUE_DESCENDING', 'Descending', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2528, 'MOD_WEBLINKS_FIELD_VALUE_FOLLOW', 'Follow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2529, 'MOD_WEBLINKS_FIELD_VALUE_HITS', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2530, 'MOD_WEBLINKS_FIELD_VALUE_NOFOLLOW', 'No follow', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2531, 'MOD_WEBLINKS_FIELD_VALUE_ORDER', 'Order', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2532, 'MOD_WEBLINKS_HITS', 'Hits', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2533, 'MOD_WEBLINKS_XML_DESCRIPTION', 'This modules displays web links from a category defined in the Web Links component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.ini'),
	(2534, 'MOD_WEBLINKS', 'Web Links', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.sys.ini'),
	(2535, 'MOD_WEBLINKS_XML_DESCRIPTION', 'This modules displays Web Links from a category defined in the Web Links component.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.sys.ini'),
	(2536, 'MOD_WEBLINKS_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_weblinks.sys.ini'),
	(2537, 'MOD_WHOSONLINE', 'Who\'s Online', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2538, 'MOD_WHOSONLINE_FIELD_FILTER_GROUPS_DESC', 'Choose to filter by groups of the connected user', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2539, 'MOD_WHOSONLINE_FIELD_FILTER_GROUPS_LABEL', 'Filter groups', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2540, 'MOD_WHOSONLINE_FIELD_LINKTOWHAT_DESC', 'Choose the type of information to display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2541, 'MOD_WHOSONLINE_FIELD_LINKTOWHAT_LABEL', 'Information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2542, 'MOD_WHOSONLINE_FIELD_VALUE_BOTH', 'Both', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2543, 'MOD_WHOSONLINE_FIELD_VALUE_CONTACT', 'Contact', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2544, 'MOD_WHOSONLINE_FIELD_VALUE_NAMES', 'Usernames', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2545, 'MOD_WHOSONLINE_FIELD_VALUE_NUMBER', '# of Guests / Users', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2546, 'MOD_WHOSONLINE_FIELD_VALUE_PROFILE', 'Profile', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2547, 'MOD_WHOSONLINE_GUESTS', '%s&#160;guests', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2548, 'MOD_WHOSONLINE_GUESTS_1', 'one guest', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2549, 'MOD_WHOSONLINE_GUESTS_0', 'no guests', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2550, 'MOD_WHOSONLINE_MEMBERS', '%s&#160;members', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2551, 'MOD_WHOSONLINE_MEMBERS_1', 'one member', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2552, 'MOD_WHOSONLINE_MEMBERS_0', 'no members', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2553, 'MOD_WHOSONLINE_SAME_GROUP_MESSAGE', 'List of Users who belong to your user groups or your user groups\' child groups', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2554, 'MOD_WHOSONLINE_SHOWMODE_DESC', 'Select what will be shown', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2555, 'MOD_WHOSONLINE_SHOWMODE_LABEL', 'Display', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2556, 'MOD_WHOSONLINE_XML_DESCRIPTION', 'The Who\'s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2557, 'MOD_WHOSONLINE_WE_HAVE', 'We have %1$s and %2$s online', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.ini'),
	(2558, 'MOD_WHOSONLINE', 'Who\'s Online', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.sys.ini'),
	(2559, 'MOD_WHOSONLINE_XML_DESCRIPTION', 'The Who\'s Online Module displays the number of Anonymous Users (Guests) and Registered Users (users logged-in) that are currently accessing the website.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.sys.ini'),
	(2560, 'MOD_WHOSONLINE_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_whosonline.sys.ini'),
	(2561, 'MOD_WRAPPER', 'Wrapper', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2562, 'MOD_WRAPPER_FIELD_ADD_DESC', 'By default, http:// will be added unless it detects http:// or https:// in the URL you provide. This allows you to switch this ability off.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2563, 'MOD_WRAPPER_FIELD_ADD_LABEL', 'Auto Add', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2564, 'MOD_WRAPPER_FIELD_AUTOHEIGHT_DESC', 'The height will automatically be set to the size of the external page. This will only work for pages on your own domain.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2565, 'MOD_WRAPPER_FIELD_AUTOHEIGHT_LABEL', 'Auto Height', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2566, 'MOD_WRAPPER_FIELD_HEIGHT_DESC', 'Height of the iframe window.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2567, 'MOD_WRAPPER_FIELD_HEIGHT_LABEL', 'Height', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2568, 'MOD_WRAPPER_FIELD_SCROLL_DESC', 'Show/Hide horizontal &amp; vertical scroll bars.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2569, 'MOD_WRAPPER_FIELD_SCROLL_LABEL', 'Scroll Bars', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2570, 'MOD_WRAPPER_FIELD_TARGET_DESC', 'Name of the iframe when used as target.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2571, 'MOD_WRAPPER_FIELD_TARGET_LABEL', 'Target Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2572, 'MOD_WRAPPER_FIELD_URL_DESC', 'URL to site/file you wish to display within the iframe.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2573, 'MOD_WRAPPER_FIELD_URL_LABEL', 'URL', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2574, 'MOD_WRAPPER_FIELD_VALUE_AUTO', 'Auto', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2575, 'MOD_WRAPPER_FIELD_WIDTH_DESC', 'Width of the iframe window. You can enter an absolute figure in pixels or a relative figure by adding a %.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2576, 'MOD_WRAPPER_FIELD_WIDTH_LABEL', 'Width', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2577, 'MOD_WRAPPER_NO_IFRAMES', 'No iframes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2578, 'MOD_WRAPPER_XML_DESCRIPTION', 'This module shows an iframe window to specified location.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2579, 'MOD_WRAPPER_FIELD_FRAME_LABEL', 'Frame border', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2580, 'MOD_WRAPPER_FIELD_FRAME_DESC', 'Show frame border which wraps the iframe.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.ini'),
	(2581, 'MOD_WRAPPER', 'Wrapper', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.sys.ini'),
	(2582, 'MOD_WRAPPER_NO_IFRAMES', 'No iframes', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.sys.ini'),
	(2583, 'MOD_WRAPPER_XML_DESCRIPTION', 'This module shows an iframe window to specified location.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.sys.ini'),
	(2584, 'MOD_WRAPPER_LAYOUT_DEFAULT', 'Default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.mod_wrapper.sys.ini'),
	(2585, 'TPL_BEEZ3_ADDITIONAL_INFORMATION', 'Additional information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2586, 'TPL_BEEZ3_ALTCLOSE', 'is closed', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2587, 'TPL_BEEZ3_ALTOPEN', 'is open', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2588, 'TPL_BEEZ3_BIGGER', 'Bigger', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2589, 'TPL_BEEZ3_CLICK', 'click', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2590, 'TPL_BEEZ3_CLOSEMENU', 'Close Menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2591, 'TPL_BEEZ3_DECREASE_SIZE', 'Decrease size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2592, 'TPL_BEEZ3_ERROR_JUMP_TO_NAV', 'Jump to navigation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2593, 'TPL_BEEZ3_FIELD_BOOTSTRAP_DESC', 'Create a comma separated list of any components for which Bootstrap is needed, for example com_name, com_anothername.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2594, 'TPL_BEEZ3_FIELD_BOOTSTRAP_LABEL', 'Components Requiring<br /> Bootstrap', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2595, 'TPL_BEEZ3_FIELD_DESCRIPTION_DESC', 'Please add your site description here.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2596, 'TPL_BEEZ3_FIELD_DESCRIPTION_LABEL', 'Site Description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2597, 'TPL_BEEZ3_FIELD_HEADER_BACKGROUND_COLOR_DESC', 'Choose a colour for the Background if the custom colour option is selected. If left blank the Default (#eeeeee) is used.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2598, 'TPL_BEEZ3_FIELD_HEADER_BACKGROUND_COLOR_LABEL', 'Background Colour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2599, 'TPL_BEEZ3_FIELD_HEADER_IMAGE_DESC', 'Use the selected header image when the custom colour option is selected.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2600, 'TPL_BEEZ3_FIELD_HEADER_IMAGE_LABEL', 'Header Image', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2601, 'TPL_BEEZ3_FIELD_LOGO_DESC', 'Please choose an image. If you do not want to display a logo, click on Clear and leave the field blank.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2602, 'TPL_BEEZ3_FIELD_LOGO_LABEL', 'Logo', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2603, 'TPL_BEEZ3_FIELD_NAVPOSITION_DESC', 'Navigation before or after content.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2604, 'TPL_BEEZ3_FIELD_NAVPOSITION_LABEL', 'Position of Navigation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2605, 'TPL_BEEZ3_FIELD_SITETITLE_DESC', 'Please add your site title here, it\'s only displayed if you don\'t use a logo.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2606, 'TPL_BEEZ3_FIELD_SITETITLE_LABEL', 'Site Title', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2607, 'TPL_BEEZ3_FIELD_TEMPLATECOLOR_DESC', 'Colour of the template.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2608, 'TPL_BEEZ3_FIELD_TEMPLATECOLOR_LABEL', 'Template Colour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2609, 'TPL_BEEZ3_FIELD_WRAPPERLARGE_DESC', 'Wrapper width with closed additional columns in percent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2610, 'TPL_BEEZ3_FIELD_WRAPPERLARGE_LABEL', 'Wrapper Large (%)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2611, 'TPL_BEEZ3_FIELD_WRAPPERSMALL_DESC', 'Wrapper width with opened additional columns in percent.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2612, 'TPL_BEEZ3_FIELD_WRAPPERSMALL_LABEL', 'Wrapper Small (%)', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2613, 'TPL_BEEZ3_FONTSIZE', 'Font Size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2614, 'TPL_BEEZ3_INCREASE_SIZE', 'Increase size', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2615, 'TPL_BEEZ3_JUMP_TO_INFO', 'Jump to additional information', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2616, 'TPL_BEEZ3_JUMP_TO_NAV', 'Jump to main navigation and login', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2617, 'TPL_BEEZ3_NAVIGATION', 'Navigation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2618, 'TPL_BEEZ3_NAV_VIEW_SEARCH', 'Nav view search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2619, 'TPL_BEEZ3_NEXTTAB', 'Next Tab', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2620, 'TPL_BEEZ3_OPENMENU', 'Open Menu', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2621, 'TPL_BEEZ3_OPTION_AFTER_CONTENT', 'after content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2622, 'TPL_BEEZ3_OPTION_BEFORE_CONTENT', 'before content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2623, 'TPL_BEEZ3_OPTION_IMAGE', 'Custom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2624, 'TPL_BEEZ3_OPTION_NATURE', 'Nature', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2625, 'TPL_BEEZ3_OPTION_PERSONAL', 'Personal', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2626, 'TPL_BEEZ3_OPTION_RED', 'Red', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2627, 'TPL_BEEZ3_OPTION_TURQ', 'Turquoise', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2628, 'TPL_BEEZ3_POWERED_BY', 'Powered by', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2629, 'TPL_BEEZ3_RESET', 'Reset', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2630, 'TPL_BEEZ3_REVERT_STYLES_TO_DEFAULT', 'Revert styles to default', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2631, 'TPL_BEEZ3_SEARCH', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2632, 'TPL_BEEZ3_SKIP_TO_CONTENT', 'Skip to content', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2633, 'TPL_BEEZ3_SKIP_TO_ERROR_CONTENT', 'Jump to error message and search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2634, 'TPL_BEEZ3_SMALLER', 'Smaller', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2635, 'TPL_BEEZ3_SYSTEM_MESSAGE', 'Error', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2636, 'TPL_BEEZ3_TEXTRIGHTCLOSE', 'Close info', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2637, 'TPL_BEEZ3_TEXTRIGHTOPEN', 'Open info', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2638, 'TPL_BEEZ3_XML_DESCRIPTION', 'Accessible template for Joomla! Beez, the HTML 4 version.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2639, 'TPL_BEEZ3_YOUR_SITE_DESCRIPTION', 'Your site description', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2640, 'TPL_BEEZ3_POSITION_DEBUG', 'Debug', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2641, 'TPL_BEEZ3_POSITION_POSITION-0', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2642, 'TPL_BEEZ3_POSITION_POSITION-10', 'Footer middle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2643, 'TPL_BEEZ3_POSITION_POSITION-11', 'Footer bottom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2644, 'TPL_BEEZ3_POSITION_POSITION-12', 'Middle top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2645, 'TPL_BEEZ3_POSITION_POSITION-13', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2646, 'TPL_BEEZ3_POSITION_POSITION-14', 'Footer last', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2647, 'TPL_BEEZ3_POSITION_POSITION-15', 'Header', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2648, 'TPL_BEEZ3_POSITION_POSITION-1', 'Top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2649, 'TPL_BEEZ3_POSITION_POSITION-2', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2650, 'TPL_BEEZ3_POSITION_POSITION-3', 'Right bottom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2651, 'TPL_BEEZ3_POSITION_POSITION-4', 'Left middle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2652, 'TPL_BEEZ3_POSITION_POSITION-5', 'Left bottom', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2653, 'TPL_BEEZ3_POSITION_POSITION-6', 'Right top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2654, 'TPL_BEEZ3_POSITION_POSITION-7', 'Left top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2655, 'TPL_BEEZ3_POSITION_POSITION-8', 'Right middle', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2656, 'TPL_BEEZ3_POSITION_POSITION-9', 'Footer top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2657, 'TPL_BEEZ3_XML_DESCRIPTION', 'Accessible template for Joomla! Beez, the HTML 4 version.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2658, 'TPL_PROTOSTAR_XML_DESCRIPTION', 'Continuing the space theme (Solarflare from 1.0 and Milkyway from 1.5), Protostar is the Joomla 3 site template based on Bootstrap from Twitter and the launch of the Joomla User Interface library (JUI).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2659, 'TPL_PROTOSTAR_BACKGROUND_COLOR_DESC', 'Choose a background colour for static layouts. If left blank the Default (#f4f6f7) is used.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2660, 'TPL_PROTOSTAR_BACKGROUND_COLOR_LABEL', 'Background Colour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2661, 'TPL_PROTOSTAR_BACKTOTOP', 'Back to Top', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2662, 'TPL_PROTOSTAR_COLOR_DESC', 'Choose an overall colour for the site template. If left blank the Default (#0088cc) is used.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2663, 'TPL_PROTOSTAR_COLOR_LABEL', 'Template Colour', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2664, 'TPL_PROTOSTAR_FLUID', 'Fluid', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2665, 'TPL_PROTOSTAR_FLUID_LABEL', 'Fluid Layout', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2666, 'TPL_PROTOSTAR_FLUID_DESC', 'Use Bootstrap\'s Fluid or Static Container (both are Responsive).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2667, 'TPL_PROTOSTAR_FONT_LABEL', 'Google Font for Headings', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2668, 'TPL_PROTOSTAR_FONT_DESC', 'Load a Google font for the headings (H1, H2, H3, etc).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2669, 'TPL_PROTOSTAR_FONT_NAME_LABEL', 'Google Font Name', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2670, 'TPL_PROTOSTAR_FONT_NAME_DESC', 'Example: Open+Sans or Source+Sans+Pro.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2671, 'TPL_PROTOSTAR_LOGO_LABEL', 'Logo', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2672, 'TPL_PROTOSTAR_LOGO_DESC', 'Upload a custom logo for the site template.', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2673, 'TPL_PROTOSTAR_STATIC', 'Static', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2674, 'TPL_PROTOSTAR_POSITION_BANNER', 'Banner', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2675, 'TPL_PROTOSTAR_POSITION_DEBUG', 'Debug', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2676, 'TPL_PROTOSTAR_POSITION_POSITION-0', 'Search', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2677, 'TPL_PROTOSTAR_POSITION_POSITION-10', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2678, 'TPL_PROTOSTAR_POSITION_POSITION-11', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2679, 'TPL_PROTOSTAR_POSITION_POSITION-12', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2680, 'TPL_PROTOSTAR_POSITION_POSITION-13', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2681, 'TPL_PROTOSTAR_POSITION_POSITION-14', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2682, 'TPL_PROTOSTAR_POSITION_POSITION-15', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2683, 'TPL_PROTOSTAR_POSITION_POSITION-1', 'Navigation', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2684, 'TPL_PROTOSTAR_POSITION_POSITION-2', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2685, 'TPL_PROTOSTAR_POSITION_POSITION-3', 'Top centre', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2686, 'TPL_PROTOSTAR_POSITION_POSITION-4', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2687, 'TPL_PROTOSTAR_POSITION_POSITION-5', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2688, 'TPL_PROTOSTAR_POSITION_POSITION-6', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2689, 'TPL_PROTOSTAR_POSITION_POSITION-7', 'Right', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2690, 'TPL_PROTOSTAR_POSITION_POSITION-8', 'Left', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2691, 'TPL_PROTOSTAR_POSITION_POSITION-9', 'Unused', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2692, 'TPL_PROTOSTAR_POSITION_FOOTER', 'Footer', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2693, 'TPL_PROTOSTAR_XML_DESCRIPTION', 'Continuing the space theme (Solarflare from 1.0 and Milkyway from 1.5), Protostar is the Joomla 3 site template based on Bootstrap from Twitter and the launch of the Joomla User Interface library (JUI).', 'C:\\wamp\\www\\pharmec\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2694, 'TPL_BEEZ3_ADDITIONAL_INFORMATION', 'Additional information', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2695, 'TPL_BEEZ3_ALTCLOSE', 'is closed', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2696, 'TPL_BEEZ3_ALTOPEN', 'is open', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2697, 'TPL_BEEZ3_BIGGER', 'Bigger', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2698, 'TPL_BEEZ3_CLICK', 'click', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2699, 'TPL_BEEZ3_CLOSEMENU', 'Close Menu', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2700, 'TPL_BEEZ3_DECREASE_SIZE', 'Decrease size', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2701, 'TPL_BEEZ3_ERROR_JUMP_TO_NAV', 'Jump to navigation', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2702, 'TPL_BEEZ3_FIELD_BOOTSTRAP_DESC', 'Create a comma separated list of any components for which Bootstrap is needed, for example com_name, com_anothername.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2703, 'TPL_BEEZ3_FIELD_BOOTSTRAP_LABEL', 'Components Requiring<br /> Bootstrap', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2704, 'TPL_BEEZ3_FIELD_DESCRIPTION_DESC', 'Please add your site description here.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2705, 'TPL_BEEZ3_FIELD_DESCRIPTION_LABEL', 'Site Description', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2706, 'TPL_BEEZ3_FIELD_HEADER_BACKGROUND_COLOR_DESC', 'Choose a colour for the Background if the custom colour option is selected. If left blank the Default (#eeeeee) is used.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2707, 'TPL_BEEZ3_FIELD_HEADER_BACKGROUND_COLOR_LABEL', 'Background Colour', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2708, 'TPL_BEEZ3_FIELD_HEADER_IMAGE_DESC', 'Use the selected header image when the custom colour option is selected.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2709, 'TPL_BEEZ3_FIELD_HEADER_IMAGE_LABEL', 'Header Image', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2710, 'TPL_BEEZ3_FIELD_LOGO_DESC', 'Please choose an image. If you do not want to display a logo, click on Clear and leave the field blank.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2711, 'TPL_BEEZ3_FIELD_LOGO_LABEL', 'Logo', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2712, 'TPL_BEEZ3_FIELD_NAVPOSITION_DESC', 'Navigation before or after content.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2713, 'TPL_BEEZ3_FIELD_NAVPOSITION_LABEL', 'Position of Navigation', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2714, 'TPL_BEEZ3_FIELD_SITETITLE_DESC', 'Please add your site title here, it\'s only displayed if you don\'t use a logo.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2715, 'TPL_BEEZ3_FIELD_SITETITLE_LABEL', 'Site Title', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2716, 'TPL_BEEZ3_FIELD_TEMPLATECOLOR_DESC', 'Colour of the template.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2717, 'TPL_BEEZ3_FIELD_TEMPLATECOLOR_LABEL', 'Template colour', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2718, 'TPL_BEEZ3_FIELD_WRAPPERLARGE_DESC', 'Wrapper width with closed additional columns in percent.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2719, 'TPL_BEEZ3_FIELD_WRAPPERLARGE_LABEL', 'Wrapper Large (%)', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2720, 'TPL_BEEZ3_FIELD_WRAPPERSMALL_DESC', 'Wrapper width with opened additional columns in percent.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2721, 'TPL_BEEZ3_FIELD_WRAPPERSMALL_LABEL', 'Wrapper Small (%)', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2722, 'TPL_BEEZ3_FONTSIZE', 'Font size', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2723, 'TPL_BEEZ3_INCREASE_SIZE', 'Increase size', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2724, 'TPL_BEEZ3_JUMP_TO_INFO', 'Jump to additional information', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2725, 'TPL_BEEZ3_JUMP_TO_NAV', 'Jump to main navigation and login', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2726, 'TPL_BEEZ3_NAVIGATION', 'Navigation', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2727, 'TPL_BEEZ3_NAV_VIEW_SEARCH', 'Nav view search', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2728, 'TPL_BEEZ3_NEXTTAB', 'Next Tab', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2729, 'TPL_BEEZ3_OPENMENU', 'Open Menu', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2730, 'TPL_BEEZ3_OPTION_AFTER_CONTENT', 'after content', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2731, 'TPL_BEEZ3_OPTION_BEFORE_CONTENT', 'before content', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2732, 'TPL_BEEZ3_OPTION_IMAGE', 'Custom', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2733, 'TPL_BEEZ3_OPTION_NATURE', 'Nature', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2734, 'TPL_BEEZ3_OPTION_PERSONAL', 'Personal', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2735, 'TPL_BEEZ3_OPTION_RED', 'Red', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2736, 'TPL_BEEZ3_OPTION_TURQ', 'Turquoise', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2737, 'TPL_BEEZ3_POWERED_BY', 'Powered by', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2738, 'TPL_BEEZ3_RESET', 'Reset', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2739, 'TPL_BEEZ3_REVERT_STYLES_TO_DEFAULT', 'Revert styles to default', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2740, 'TPL_BEEZ3_SEARCH', 'Search', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2741, 'TPL_BEEZ3_SKIP_TO_CONTENT', 'Skip to content', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2742, 'TPL_BEEZ3_SKIP_TO_ERROR_CONTENT', 'Jump to error message and search', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2743, 'TPL_BEEZ3_SMALLER', 'Smaller', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2744, 'TPL_BEEZ3_SYSTEM_MESSAGE', 'Error', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2745, 'TPL_BEEZ3_TEXTRIGHTCLOSE', 'Close info', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2746, 'TPL_BEEZ3_TEXTRIGHTOPEN', 'Open info', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2747, 'TPL_BEEZ3_XML_DESCRIPTION', 'Accessible template for Joomla! Beez, the HTML 4 version.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2748, 'TPL_BEEZ3_YOUR_SITE_DESCRIPTION', 'Your site description', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.ini'),
	(2749, 'TPL_BEEZ3_POSITION_DEBUG', 'Debug', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2750, 'TPL_BEEZ3_POSITION_POSITION-0', 'Search', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2751, 'TPL_BEEZ3_POSITION_POSITION-10', 'Footer middle', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2752, 'TPL_BEEZ3_POSITION_POSITION-11', 'Footer bottom', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2753, 'TPL_BEEZ3_POSITION_POSITION-12', 'Middle top', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2754, 'TPL_BEEZ3_POSITION_POSITION-13', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2755, 'TPL_BEEZ3_POSITION_POSITION-14', 'Footer last', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2756, 'TPL_BEEZ3_POSITION_POSITION-15', 'Header', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2757, 'TPL_BEEZ3_POSITION_POSITION-1', 'Top', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2758, 'TPL_BEEZ3_POSITION_POSITION-2', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2759, 'TPL_BEEZ3_POSITION_POSITION-3', 'Right bottom', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2760, 'TPL_BEEZ3_POSITION_POSITION-4', 'Left middle', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2761, 'TPL_BEEZ3_POSITION_POSITION-5', 'Left bottom', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2762, 'TPL_BEEZ3_POSITION_POSITION-6', 'Right top', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2763, 'TPL_BEEZ3_POSITION_POSITION-7', 'Left top', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2764, 'TPL_BEEZ3_POSITION_POSITION-8', 'Right middle', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2765, 'TPL_BEEZ3_POSITION_POSITION-9', 'Footer top', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2766, 'TPL_BEEZ3_XML_DESCRIPTION', 'Accessible template for Joomla! Beez, the HTML 4 version.', 'C:\\wamp\\www\\pharmec\\templates\\beez3\\language\\en-GB\\en-GB.tpl_beez3.sys.ini'),
	(2767, 'TPL_PROTOSTAR_XML_DESCRIPTION', 'Continuing the space theme (Solarflare from 1.0 and Milkyway from 1.5), Protostar is the Joomla 3 site template based on Bootstrap from Twitter and the launch of the Joomla User Interface library (JUI).', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2768, 'TPL_PROTOSTAR_BACKGROUND_COLOR_DESC', 'Choose a background colour for static layouts. If left blank the Default (#f4f6f7) is used.', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2769, 'TPL_PROTOSTAR_BACKGROUND_COLOR_LABEL', 'Background Colour', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2770, 'TPL_PROTOSTAR_BACKTOTOP', 'Back to Top', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2771, 'TPL_PROTOSTAR_COLOR_DESC', 'Choose an overall colour for the site template. If left blank the Default (#0088cc) is used.', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2772, 'TPL_PROTOSTAR_COLOR_LABEL', 'Template Colour', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2773, 'TPL_PROTOSTAR_FLUID', 'Fluid', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2774, 'TPL_PROTOSTAR_FLUID_LABEL', 'Fluid Layout', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2775, 'TPL_PROTOSTAR_FLUID_DESC', 'Use Bootstrap\'s fluid or static container (both are responsive).', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2776, 'TPL_PROTOSTAR_FONT_LABEL', 'Google Font for Headings', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2777, 'TPL_PROTOSTAR_FONT_DESC', 'Load a Google font for the headings (H1, H2, H3, etc).', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2778, 'TPL_PROTOSTAR_FONT_NAME_LABEL', 'Google Font Name', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2779, 'TPL_PROTOSTAR_FONT_NAME_DESC', 'Example: Open+Sans or Source+Sans+Pro.', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2780, 'TPL_PROTOSTAR_LOGO_LABEL', 'Logo', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2781, 'TPL_PROTOSTAR_LOGO_DESC', 'Upload a custom logo for the site template.', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2782, 'TPL_PROTOSTAR_STATIC', 'Static', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.ini'),
	(2783, 'TPL_PROTOSTAR_POSITION_BANNER', 'Banner', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2784, 'TPL_PROTOSTAR_POSITION_DEBUG', 'Debug', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2785, 'TPL_PROTOSTAR_POSITION_POSITION-0', 'Search', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2786, 'TPL_PROTOSTAR_POSITION_POSITION-10', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2787, 'TPL_PROTOSTAR_POSITION_POSITION-11', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2788, 'TPL_PROTOSTAR_POSITION_POSITION-12', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2789, 'TPL_PROTOSTAR_POSITION_POSITION-13', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2790, 'TPL_PROTOSTAR_POSITION_POSITION-14', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2791, 'TPL_PROTOSTAR_POSITION_POSITION-15', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2792, 'TPL_PROTOSTAR_POSITION_POSITION-1', 'Navigation', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2793, 'TPL_PROTOSTAR_POSITION_POSITION-2', 'Breadcrumbs', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2794, 'TPL_PROTOSTAR_POSITION_POSITION-3', 'Top center', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2795, 'TPL_PROTOSTAR_POSITION_POSITION-4', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2796, 'TPL_PROTOSTAR_POSITION_POSITION-5', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2797, 'TPL_PROTOSTAR_POSITION_POSITION-6', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2798, 'TPL_PROTOSTAR_POSITION_POSITION-7', 'Right', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2799, 'TPL_PROTOSTAR_POSITION_POSITION-8', 'Left', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2800, 'TPL_PROTOSTAR_POSITION_POSITION-9', 'Unused', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2801, 'TPL_PROTOSTAR_POSITION_FOOTER', 'Footer', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini'),
	(2802, 'TPL_PROTOSTAR_XML_DESCRIPTION', 'Continuing the space theme (Solarflare from 1.0 and Milkyway from 1.5), Protostar is the Joomla 3 site template based on Bootstrap from Twitter and the launch of the Joomla User Interface library (JUI).', 'C:\\wamp\\www\\pharmec\\templates\\protostar\\language\\en-GB\\en-GB.tpl_protostar.sys.ini');
/*!40000 ALTER TABLE `ph_overrider` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_partner
DROP TABLE IF EXISTS `ph_partner`;
CREATE TABLE IF NOT EXISTS `ph_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `website` text NOT NULL,
  `image` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_partner: 4 rows
DELETE FROM `ph_partner`;
/*!40000 ALTER TABLE `ph_partner` DISABLE KEYS */;
INSERT INTO `ph_partner` (`id`, `name`, `website`, `image`, `published`) VALUES
	(1, 'Pharmec', 'http://www.pharmec.ro', 'images/parteneri/pharmec_logo.png', 1),
	(2, 'Avast', 'https://www.avast.com', 'images/parteneri/avast_logo.png', 1),
	(3, 'Telekom', 'https://www.telekom.ro', 'images/parteneri/telekom_logo.png', 1),
	(4, 'Test', 'Test', 'images/parteneri/telekom_logo.png', 0);
/*!40000 ALTER TABLE `ph_partner` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery
DROP TABLE IF EXISTS `ph_phocagallery`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `format` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery: ~24 rows (aproximativ)
DELETE FROM `ph_phocagallery`;
/*!40000 ALTER TABLE `ph_phocagallery` DISABLE KEYS */;
INSERT INTO `ph_phocagallery` (`id`, `catid`, `sid`, `title`, `alias`, `filename`, `format`, `description`, `date`, `hits`, `latitude`, `longitude`, `zoom`, `geotitle`, `userid`, `videocode`, `vmproductid`, `imgorigsize`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `params`, `metakey`, `metadesc`, `metadata`, `extlink1`, `extlink2`, `extid`, `exttype`, `extl`, `extm`, `exts`, `exto`, `extw`, `exth`, `language`) VALUES
	(1, 1, 0, 'aircraft-547105_1920', 'aircraft-547105-1920', 'Evenimente/aircraft-547105_1920.jpg', 1, '<p>Testing</p>', '2015-07-11 08:41:25', 21, '', '', 0, '', 0, '', 0, 860349, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', '', NULL, '||_self|1', '||_self|1', '', 0, '', '', '', '', '', '', '*'),
	(2, 1, 0, 'Test 2', 'test-2', 'Evenimente/aircraft-547105_1920.jpg', 1, '<p>Testing</p>', '2015-07-11 09:08:41', 10, '', '', 0, '', 0, '', 0, 860349, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '', '', NULL, '||_self|1', '||_self|1', '', 0, '', '', '', '', '', '', '*'),
	(3, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/1581979.jpg', 1, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 386412, 1, 1, 0, '0000-00-00 00:00:00', 3, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(4, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/aircraft-547105_1920.jpg', 1, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 860349, 1, 1, 0, '0000-00-00 00:00:00', 4, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(5, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/avast_logo.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 18214, 1, 1, 0, '0000-00-00 00:00:00', 5, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(6, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/caa121.jpg', 1, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 87804, 1, 1, 0, '0000-00-00 00:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(7, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/cfi.jpg', 1, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 106339, 1, 1, 0, '0000-00-00 00:00:00', 7, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(8, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/ehp.121-a54.slider.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 713518, 1, 1, 0, '0000-00-00 00:00:00', 8, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(9, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/final.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 272362, 1, 1, 0, '0000-00-00 00:00:00', 9, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(10, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/final1.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 19731, 1, 1, 0, '0000-00-00 00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(11, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/final2.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 236508, 1, 1, 0, '0000-00-00 00:00:00', 11, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(12, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/pharmec-servicii.jpg', 2, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 673369, 1, 1, 0, '0000-00-00 00:00:00', 12, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(13, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/pharmec.jpg', 2, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 644682, 1, 1, 0, '0000-00-00 00:00:00', 13, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(14, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/pharmec_logo.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 14610, 1, 1, 0, '0000-00-00 00:00:00', 14, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(15, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/telekom_logo.png', 1, NULL, '2015-07-11 09:16:43', 0, '0', '0', 0, '', 0, NULL, 0, 5736, 1, 1, 0, '0000-00-00 00:00:00', 15, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(16, 1, 0, 'Pose De La evenimentul meu', 'pose-de-la-evenimentul-meu', 'Evenimente/vgs-cadet-small-sport-aircraft-take-off-at-sunset-orange-sky-150100.jpg', 1, NULL, '2015-07-11 09:16:43', 0, '', '', 0, '', 0, NULL, 0, 85449, 1, 1, 0, '0000-00-00 00:00:00', 16, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(17, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/chrysanthemum.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 879394, 1, 1, 0, '0000-00-00 00:00:00', 17, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(18, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/desert.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 845941, 1, 1, 0, '0000-00-00 00:00:00', 18, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(19, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/hydrangeas.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 595284, 1, 1, 0, '0000-00-00 00:00:00', 19, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(20, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/jellyfish.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 775702, 1, 1, 0, '0000-00-00 00:00:00', 20, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(21, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/koala.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 780831, 1, 1, 0, '0000-00-00 00:00:00', 21, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(22, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/lighthouse.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 561276, 1, 1, 0, '0000-00-00 00:00:00', 22, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(23, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/penguins.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 777835, 1, 1, 0, '0000-00-00 00:00:00', 23, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*'),
	(24, 1, 0, 'Test Pagination', 'test-pagination', 'Evenimente/test_pagination/tulips.jpg', 1, NULL, '2015-07-11 09:20:18', 0, '', '', 0, '', 0, NULL, 0, 620888, 1, 1, 0, '0000-00-00 00:00:00', 24, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', '', '', '', '', '*');
/*!40000 ALTER TABLE `ph_phocagallery` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_categories
DROP TABLE IF EXISTS `ph_phocagallery_categories`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_categories: ~1 rows (aproximativ)
DELETE FROM `ph_phocagallery_categories`;
/*!40000 ALTER TABLE `ph_phocagallery_categories` DISABLE KEYS */;
INSERT INTO `ph_phocagallery_categories` (`id`, `parent_id`, `owner_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `date`, `published`, `approved`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `hits`, `accessuserid`, `uploaduserid`, `deleteuserid`, `userfolder`, `latitude`, `longitude`, `zoom`, `geotitle`, `extid`, `exta`, `extu`, `extauth`, `extfbuid`, `extfbcatid`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
	(1, 0, 0, 'Evenimente', '', 'evenimente', '', '', '', '<p>Acestea sunt evenimentele Pharmec.</p>', '2015-07-11 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, 0, 35, '0', '0', '0', 'Evenimente', '', '', 0, '', '', '', '', '', 0, '', NULL, '', '', NULL, '*');
/*!40000 ALTER TABLE `ph_phocagallery_categories` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_comments
DROP TABLE IF EXISTS `ph_phocagallery_comments`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_comments: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_comments`;
/*!40000 ALTER TABLE `ph_phocagallery_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_comments` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_fb_users
DROP TABLE IF EXISTS `ph_phocagallery_fb_users`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_fb_users: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_fb_users`;
/*!40000 ALTER TABLE `ph_phocagallery_fb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_fb_users` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_img_comments
DROP TABLE IF EXISTS `ph_phocagallery_img_comments`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_img_comments: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_img_comments`;
/*!40000 ALTER TABLE `ph_phocagallery_img_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_img_comments` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_img_votes
DROP TABLE IF EXISTS `ph_phocagallery_img_votes`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_img_votes: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_img_votes`;
/*!40000 ALTER TABLE `ph_phocagallery_img_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_img_votes` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_img_votes_statistics
DROP TABLE IF EXISTS `ph_phocagallery_img_votes_statistics`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_img_votes_statistics: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_img_votes_statistics`;
/*!40000 ALTER TABLE `ph_phocagallery_img_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_img_votes_statistics` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_styles
DROP TABLE IF EXISTS `ph_phocagallery_styles`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_styles: ~4 rows (aproximativ)
DELETE FROM `ph_phocagallery_styles`;
/*!40000 ALTER TABLE `ph_phocagallery_styles` DISABLE KEYS */;
INSERT INTO `ph_phocagallery_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
	(1, 'Phocagallery', 'phocagallery', 'phocagallery.css', '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
	(2, 'Rating', '', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
	(3, 'Default', 'default', 'default.css', '', 2, 1, 502, '2015-07-11 09:47:43', 3, NULL, '*'),
	(4, 'Bootstrap', '', 'bootstrap.min.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*');
/*!40000 ALTER TABLE `ph_phocagallery_styles` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_tags
DROP TABLE IF EXISTS `ph_phocagallery_tags`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_tags: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_tags`;
/*!40000 ALTER TABLE `ph_phocagallery_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_tags` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_tags_ref
DROP TABLE IF EXISTS `ph_phocagallery_tags_ref`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_tags_ref: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_tags_ref`;
/*!40000 ALTER TABLE `ph_phocagallery_tags_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_tags_ref` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_user
DROP TABLE IF EXISTS `ph_phocagallery_user`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_user: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_user`;
/*!40000 ALTER TABLE `ph_phocagallery_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_user` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_votes
DROP TABLE IF EXISTS `ph_phocagallery_votes`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_votes: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_votes`;
/*!40000 ALTER TABLE `ph_phocagallery_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_votes` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_phocagallery_votes_statistics
DROP TABLE IF EXISTS `ph_phocagallery_votes_statistics`;
CREATE TABLE IF NOT EXISTS `ph_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_phocagallery_votes_statistics: ~0 rows (aproximativ)
DELETE FROM `ph_phocagallery_votes_statistics`;
/*!40000 ALTER TABLE `ph_phocagallery_votes_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_phocagallery_votes_statistics` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_postinstall_messages
DROP TABLE IF EXISTS `ph_postinstall_messages`;
CREATE TABLE IF NOT EXISTS `ph_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_postinstall_messages: ~2 rows (aproximativ)
DELETE FROM `ph_postinstall_messages`;
/*!40000 ALTER TABLE `ph_postinstall_messages` DISABLE KEYS */;
INSERT INTO `ph_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
	(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
	(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);
/*!40000 ALTER TABLE `ph_postinstall_messages` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_redirect_links
DROP TABLE IF EXISTS `ph_redirect_links`;
CREATE TABLE IF NOT EXISTS `ph_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_redirect_links: ~0 rows (aproximativ)
DELETE FROM `ph_redirect_links`;
/*!40000 ALTER TABLE `ph_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_redirect_links` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_schemas
DROP TABLE IF EXISTS `ph_schemas`;
CREATE TABLE IF NOT EXISTS `ph_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_schemas: ~5 rows (aproximativ)
DELETE FROM `ph_schemas`;
/*!40000 ALTER TABLE `ph_schemas` DISABLE KEYS */;
INSERT INTO `ph_schemas` (`extension_id`, `version_id`) VALUES
	(700, '3.4.0-2015-02-26'),
	(10004, '0.0.16'),
	(10006, '0.0.16'),
	(10013, ''),
	(10017, ''),
	(10021, '');
/*!40000 ALTER TABLE `ph_schemas` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_service
DROP TABLE IF EXISTS `ph_service`;
CREATE TABLE IF NOT EXISTS `ph_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `summary` text NOT NULL,
  `description` text NOT NULL,
  `title_image` text NOT NULL,
  `catid` int(11) NOT NULL,
  `just_description` int(1) NOT NULL DEFAULT '0',
  `show_in_slider` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_service: 3 rows
DELETE FROM `ph_service`;
/*!40000 ALTER TABLE `ph_service` DISABLE KEYS */;
INSERT INTO `ph_service` (`id`, `title`, `summary`, `description`, `title_image`, `catid`, `just_description`, `show_in_slider`, `published`) VALUES
	(8, 'Servicii Hardware', '<p>Acestea sunt cateva din optiunile pe care le puteti avea pentru serviciile noastre:</p>\r\n<ul>\r\n<li>cititoare carduri</li>\r\n<li>case de marcat</li>\r\n<li>asistenta tehnica</li>\r\n</ul>', '<h3>Pharmec Software pune la dispozitia clientilor lor o gama variata de servicii hardware.</h3>\r\n<h2>Cititoare Carduri</h2>\r\n<p>Conform noilor cereri din cadrul ministerului sanatatii, fiecare institutie publica de sanatate va fi nevoita sa achizitioneze un cititor de carduri. Pharmec Software va face aceasta tranzitie mai usoara si ofera clientilor lor aceste dispozitive, incluzand softwareul necesar instalarii acestui dispozitiv, cat si pregatirea si explicatiile necesare pentru a il folosi.</p>\r\n<p>Stocul pentru acest produs este improspatat zilnic. <strong>Preturile variaza intre 200 - 400 de lei.</strong></p>\r\n<h2>Case de marcat</h2>\r\n<p>Pharmec Software dispune de case de marcat pentru Cabinete, Farmacii, Cabinete Dentare. Pe langa achizitionarea acestui serviciu, veti beneficia gratuit si de instalarea acestuia cat si de instalarea softwareului necesar.</p>\r\n<p><strong>Preturile pentru acest serviciu sunt cuprinse intre 150 - 300 de lei.</strong></p>\r\n<div class="row">\r\n<div class="small-12 columns">\r\n<h2>Descarcati fisa de service</h2>\r\n<form method="post">\r\n<div><label for="field[1]">Nume firma proprietar:</label> <input name="label[1]" type="hidden" value="Nume firma proprietar:" /> <input name="field[1]" type="text" /></div>\r\n<div><label for="field[2]">Tel:</label> <input name="label[2]" type="hidden" value="Tel" /> <input name="field[2]" type="text" /></div>\r\n<div><label for="field[3]">Echipament:</label> <input name="label[3]" type="hidden" value="Echipament:" /> <input name="field[3]" type="text" /></div>\r\n<div><label for="field[]">Defect reclamat la sediul beneficiarului:</label><input name="label[]" type="hidden" value="Defect reclamat la sediul beneficiarului:" /><input name="field[]" type="text" /></div>\r\n<div><hr /><input name="label[]" type="hidden" value="break" /><input name="field[]" type="hidden" value="" /></div>\r\n<div><label for="field[]">Ce anume se va salva din calculator altceva decat baza de date PHARMEC</label><input name="label[]" type="hidden" value="Ce anume se va salva din calculator altceva decat baza de date PHARMEC" /><input name="field[]" type="text" /></div>\r\n<div><hr /><input name="label[]" type="hidden" value="break" /><input name="field[]" type="hidden" value="" /></div>\r\n<div><label for="field[]">Data preluare:</label><input name="label[]" type="hidden" value="Data preluare:" /><input name="field[]" type="text" /></div>\r\n<div><label for="field[]">Ora preluare</label><input name="label[]" type="hidden" value="Ora preluare" /><input name="field[]" type="text" /></div>\r\n<div><label for="field[]">Timp cerut de proprietar (pentru repararea echipamentului): </label><input name="label[]" type="hidden" value="Timp cerut de proprietar (pentru repararea echipamentului): " /><input name="field[]" type="text" /></div>\r\n<div><label for="field[]">Timp estimat de cel ce ia echipamentul in service</label><input name="label[]" type="hidden" value="Timp estimat de cel ce ia echipamentul in service" /><input name="field[]" type="text" /></div>\r\n<div><label for="field[]">Persoana ce l-a preluat:</label><input name="label[]" type="hidden" value="Persoana ce l-a preluat:" /><input name="field[]" type="text" /></div>\r\n<button type="submit" value="Download">Download</button></form></div>\r\n</div>', 'images/servicii/card.jpg', 11, 0, 1, 1),
	(6, 'Servicii Avast', '<p>Test servicii Avast asdas </p>', '<div class="row">\r\n<div class="small-12 columns">\r\n<div class="row">\r\n<div class="small-12 columns"><iframe src="http://www.getavast.net/support/managing-exceptions" width="100%" height="500px"></iframe></div>\r\n&nbsp;</div>\r\n</div>\r\n&nbsp;</div>', 'images/parteneri/avast_logo.png', 0, 1, 0, 1),
	(7, 'Servicii Telekom', 'Pharmec Software este in parteneriat cu Telekom. Serviciile Telekom pot fi achizitionate si din centrul Pharmec ', '<div class="small-12 columns"><iframe src="https://www.telekom.ro/" width="100%" height="500px"></iframe></div>\r\n<h2 class="row">Â </h2>\r\n<h3 style="text-align: center;"><strong>Vrei unul din serviciile Telekom ? Il poti achizitiona chiar de aici, de la Pharmec.</strong></h3>', 'images/servicii/telekom.jpg', 0, 1, 0, 1);
/*!40000 ALTER TABLE `ph_service` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_session
DROP TABLE IF EXISTS `ph_session`;
CREATE TABLE IF NOT EXISTS `ph_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_session: ~2 rows (aproximativ)
DELETE FROM `ph_session`;
/*!40000 ALTER TABLE `ph_session` DISABLE KEYS */;
INSERT INTO `ph_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
	('cbkuc7se75ql4j2qfn32n6k7d5', 0, 1, '1436608077', '__default|a:8:{s:15:"session.counter";i:82;s:19:"session.timer.start";i:1436603920;s:18:"session.timer.last";i:1436608066;s:17:"session.timer.now";i:1436608077;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":1:{s:16:"com_phocagallery";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":2:{s:5:"limit";i:20;s:11:"imgordering";i:14;}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"4480c8cc875563240434636ea0a07013";}', 0, ''),
	('mv0eo9rchm12murj0qpgfapvs6', 1, 0, '1436608064', '__default|a:9:{s:15:"session.counter";i:353;s:19:"session.timer.start";i:1436603095;s:18:"session.timer.last";i:1436608063;s:17:"session.timer.now";i:1436608063;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":7:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"en-GB";}s:11:"com_service";O:8:"stdClass":1:{s:8:"services";O:8:"stdClass":2:{s:8:"ordercol";N;s:4:"list";a:4:{s:9:"direction";N;s:5:"limit";s:2:"20";s:8:"ordering";N;s:5:"start";i:0;}}}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";s:0:"";}s:16:"com_phocagallery";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":3:{s:13:"phocagalleryc";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}s:15:"phocagalleryimg";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}s:14:"phocagalleryef";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:3;}s:4:"data";N;}}}s:10:"com_config";O:8:"stdClass":1:{s:6:"config";O:8:"stdClass":1:{s:6:"global";O:8:"stdClass":1:{s:4:"data";N;}}}s:9:"com_menus";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:4:"type";N;s:4:"link";N;s:4:"data";N;s:2:"id";a:0:{}}}s:5:"items";O:8:"stdClass":3:{s:8:"menutype";s:8:"mainmenu";s:10:"limitstart";i:0;s:4:"list";a:4:{s:9:"direction";s:3:"asc";s:5:"limit";s:2:"20";s:8:"ordering";s:5:"a.lft";s:5:"start";d:0;}}}s:6:"editor";O:8:"stdClass":1:{s:6:"source";O:8:"stdClass":1:{s:6:"syntax";s:3:"css";}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":28:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"502";s:4:"name";s:10:"Super User";s:8:"username";s:11:"zamfir.gaby";s:5:"email";s:21:"zamfir.gaby@gmail.com";s:8:"password";s:60:"$2y$10$CGWBxrHMSBReDPC99wOAQuacGhfmBkwWbumkHPjax2kGB8VCgJd8C";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2015-05-07 18:49:28";s:13:"lastvisitDate";s:19:"2015-07-10 18:12:46";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";}s:13:"session.token";s:32:"83435eb987308ecab79c49e8ad0172eb";s:20:"com_media.return_url";s:118:"index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_description&asset=com_phocagallery&author=";}__wf|a:1:{s:13:"session.token";s:32:"4a518e113ce659a4994f3e02490d1d8b";}', 502, 'zamfir.gaby');
/*!40000 ALTER TABLE `ph_session` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_tags
DROP TABLE IF EXISTS `ph_tags`;
CREATE TABLE IF NOT EXISTS `ph_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_tags: ~0 rows (aproximativ)
DELETE FROM `ph_tags`;
/*!40000 ALTER TABLE `ph_tags` DISABLE KEYS */;
INSERT INTO `ph_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
	(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ph_tags` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_template_styles
DROP TABLE IF EXISTS `ph_template_styles`;
CREATE TABLE IF NOT EXISTS `ph_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_template_styles: ~5 rows (aproximativ)
DELETE FROM `ph_template_styles`;
/*!40000 ALTER TABLE `ph_template_styles` DISABLE KEYS */;
INSERT INTO `ph_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
	(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
	(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
	(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
	(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#13294a","headerColor":"#184a7d","sidebarColor":"#0088cc","linkColor":"#0088cc","logoFile":"","loginLogoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}'),
	(9, 'pharmec', 0, '1', 'Pharmec Template - Default', '{}');
/*!40000 ALTER TABLE `ph_template_styles` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_ucm_base
DROP TABLE IF EXISTS `ph_ucm_base`;
CREATE TABLE IF NOT EXISTS `ph_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_ucm_base: ~0 rows (aproximativ)
DELETE FROM `ph_ucm_base`;
/*!40000 ALTER TABLE `ph_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_ucm_base` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_ucm_content
DROP TABLE IF EXISTS `ph_ucm_content`;
CREATE TABLE IF NOT EXISTS `ph_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- Dumping data for table pharmec.ph_ucm_content: ~0 rows (aproximativ)
DELETE FROM `ph_ucm_content`;
/*!40000 ALTER TABLE `ph_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_ucm_content` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_ucm_history
DROP TABLE IF EXISTS `ph_ucm_history`;
CREATE TABLE IF NOT EXISTS `ph_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_ucm_history: ~14 rows (aproximativ)
DELETE FROM `ph_ucm_history`;
/*!40000 ALTER TABLE `ph_ucm_history` DISABLE KEYS */;
INSERT INTO `ph_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
	(1, 8, 5, '', '2015-05-17 13:33:20', 502, 551, '95ef2974271b3dd2b12d7d7291efd8e300a312a9', '{"id":8,"asset_id":58,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Noutati","alias":"noutati","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"502","created_time":"2015-05-17 13:33:20","modified_user_id":null,"modified_time":"2015-05-17 13:33:20","hits":"0","language":"*","version":null}', 0),
	(2, 1, 1, '', '2015-05-17 13:34:09', 502, 2258, '7e43e9d51d95363958f5ff91deb41b99bfc63852', '{"id":1,"asset_id":59,"title":"Noutate 1","alias":"noutate-1","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-05-17 13:34:09","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:34:09","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-05-17 13:34:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(3, 2, 1, '', '2015-05-17 13:34:21', 502, 2258, 'baaa64a0ddf17aeacf2d22c4d6b1f9539831ab83', '{"id":2,"asset_id":60,"title":"Noutate 2","alias":"noutate-2","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"2","created":"2015-05-17 13:34:21","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:34:21","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-05-17 13:34:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(4, 3, 1, '', '2015-05-17 13:34:33', 502, 2258, 'fe1931a811f1d9324a138bd958a98185e5da0285', '{"id":3,"asset_id":61,"title":"Noutate 3","alias":"noutate-3","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-17 13:34:33","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:34:33","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-05-17 13:34:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(5, 4, 1, '', '2015-05-17 13:34:47', 502, 2258, '9abfb93b5d56f8f9cb7fbc2529a4a046c1fde041', '{"id":4,"asset_id":62,"title":"Noutate 4","alias":"noutate-4","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-17 13:34:47","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:34:47","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-05-17 13:34:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(6, 2, 1, '', '2015-05-17 13:35:13', 502, 2277, '70ae5d7c1ad20c2fe86f4373140a9bf25a9df63c', '{"id":2,"asset_id":"60","title":"Noutate 2","alias":"noutate-2","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-17 13:34:21","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:35:13","modified_by":"502","checked_out":"502","checked_out_time":"2015-05-17 13:34:59","publish_up":"2015-05-17 13:34:21","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(7, 1, 1, '', '2015-05-17 13:35:25', 502, 2277, 'b177460a2970a0ea841d349672ded31fd3e17881', '{"id":1,"asset_id":"59","title":"Noutate 1","alias":"noutate-1","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-17 13:34:09","created_by":"502","created_by_alias":"","modified":"2015-05-17 13:35:25","modified_by":"502","checked_out":"502","checked_out_time":"2015-05-17 13:35:17","publish_up":"2015-05-17 13:34:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(8, 1, 1, '', '2015-06-30 11:39:59', 502, 2728, 'b264e03f3ee2f50af81a98b546c992424bdb7b31', '{"id":1,"asset_id":"59","title":"Noutate 1","alias":"noutate-1","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n<p><strong>Bacon ipsum<\\/strong> dolor amet duis veniam dolore nulla excepteur enim consectetur rump landjaeger qui incididunt pig doner boudin nisi. Spare ribs pig do ut culpa prosciutto. Deserunt bacon shoulder laboris filet mignon laborum, dolore ut mollit ut. Velit esse ball tip, sed spare ribs est fugiat hamburger quis pork chop strip steak meatloaf enim ut aute. Consectetur bresaola ribeye, voluptate pastrami sausage fatback magna.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2015-05-17 13:34:09","created_by":"502","created_by_alias":"","modified":"2015-06-30 11:39:59","modified_by":"502","checked_out":"502","checked_out_time":"2015-06-30 11:39:08","publish_up":"2015-05-17 13:34:09","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"34","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(9, 5, 1, '', '2015-07-01 07:09:33', 502, 1931, '1d36d6fc22c79ee9437e419d71549ab33be6aef4', '{"id":5,"asset_id":75,"title":"404 Aceasta Pagina Nu Exista","alias":"404-aceasta-pagina-nu-exista","introtext":"<h2>Ne pare rau dar pagina pe care ati accesat-o este inexistenta. Va rugam sa reveniti la pagina principala.<\\/h2>\\r\\n<h2><a href=\\"index.php?option=com_content&amp;view=featured&amp;Itemid=101\\">Inapoi La Pagina Principala<\\/a><\\/h2>","fulltext":"","state":1,"catid":"2","created":"2015-07-01 07:09:33","created_by":"502","created_by_alias":"","modified":"2015-07-01 07:09:33","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-07-01 07:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(10, 5, 1, '', '2015-07-01 07:17:41', 502, 1963, 'b4031cda8457c6390d312c0008f6764cba2c81dc', '{"id":5,"asset_id":"75","title":"404 Aceasta Pagina Nu Exista","alias":"404-aceasta-pagina-nu-exista","introtext":"<h2>Ne pare rau dar pagina pe care ati accesat-o este inexistenta. Va rugam sa reveniti la pagina principala.<\\/h2>\\r\\n<h2><a href=\\"index.php?option=com_content&amp;view=featured&amp;Itemid=101\\">Inapoi La Pagina Principala<\\/a><\\/h2>","fulltext":"","state":1,"catid":"2","created":"2015-07-01 07:09:33","created_by":"502","created_by_alias":"","modified":"2015-07-01 07:17:41","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-01 07:17:19","publish_up":"2015-07-01 07:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:error\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(11, 5, 1, '', '2015-07-01 07:20:40', 502, 1963, 'b192afcde2569d15d0eb10c045e923fa1f39f10e', '{"id":5,"asset_id":"75","title":"404 Aceasta Pagina Nu Exista","alias":"404-aceasta-pagina-nu-exista","introtext":"<h3>Ne pare rau dar pagina pe care ati accesat-o este inexistenta. Va rugam sa reveniti la pagina principala.<\\/h3>\\r\\n<h3><a href=\\"index.php?option=com_content&amp;view=featured&amp;Itemid=101\\">Inapoi La Pagina Principala<\\/a><\\/h3>","fulltext":"","state":1,"catid":"2","created":"2015-07-01 07:09:33","created_by":"502","created_by_alias":"","modified":"2015-07-01 07:20:40","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-01 07:17:41","publish_up":"2015-07-01 07:09:33","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:error\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(12, 6, 1, '', '2015-07-02 19:41:41', 502, 3039, '68aa4757c5122fde8a2c8cbe3414284483a7c8ee', '{"id":6,"asset_id":77,"title":"Test","alias":"test","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n<p><img alt=\\"red\\" src=\\"images\\/demo_images\\/1920\\/red.jpg\\" \\/><\\/p>\\r\\n<div class=\\"rc\\">\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-07-02 19:41:41","created_by":"502","created_by_alias":"","modified":"2015-07-02 19:41:41","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-07-02 19:41:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/demo_images\\\\\\/1920\\\\\\/purple.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(13, 6, 1, '', '2015-07-02 19:42:22', 502, 3221, '2e5069890b8b1f51f9bc1988d74612d270270f20', '{"id":6,"asset_id":"77","title":"Test","alias":"test","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n<p><img src=\\"images\\/demo_images\\/1920\\/red.jpg\\" alt=\\"red\\" \\/><\\/p>\\r\\n<div class=\\"rc\\">\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"small-12 columns\\"><iframe src=\\"http:\\/\\/www.protv.ro\\" width=\\"100%\\" height=\\"500px\\"><\\/iframe><\\/div>\\r\\n&nbsp;<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-07-02 19:41:41","created_by":"502","created_by_alias":"","modified":"2015-07-02 19:42:22","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-02 19:41:55","publish_up":"2015-07-02 19:41:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/demo_images\\\\\\/1920\\\\\\/purple.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(14, 6, 1, '', '2015-07-02 22:39:16', 502, 3540, '5de2a24035516708769fd0fda81820eac008d89a', '{"id":6,"asset_id":"77","title":"Test","alias":"test","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n<p><img src=\\"images\\/demo_images\\/1920\\/red.jpg\\" alt=\\"red\\" \\/><\\/p>\\r\\n<div class=\\"rc\\">\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"small-12 columns\\"><iframe src=\\"http:\\/\\/www.protv.ro\\" width=\\"100%\\" height=\\"500px\\"><\\/iframe><\\/div>\\r\\n&nbsp;<\\/div>\\r\\n<div class=\\"row\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"small-12 columns serviciu_single\\">\\r\\n<div class=\\"small-6 medium-6 large-6 columns end heading_text_bubble\\">\\r\\n<h2>Titlu<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"small-12 columns holder_bubble\\">\\r\\n<div class=\\"serviciu_description\\">Sumary<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-07-02 19:41:41","created_by":"502","created_by_alias":"","modified":"2015-07-02 22:39:16","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-02 22:36:51","publish_up":"2015-07-02 19:41:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/demo_images\\\\\\/1920\\\\\\/purple.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(15, 6, 1, '', '2015-07-02 22:55:01', 502, 3573, '723d25088b2837ee9dfcaaf24d063328bf59fdc7', '{"id":6,"asset_id":"77","title":"Test","alias":"test","introtext":"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n<p><img src=\\"images\\/demo_images\\/1920\\/red.jpg\\" alt=\\"red\\" \\/><\\/p>\\r\\n<div class=\\"rc\\">\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"small-12 columns\\"><iframe src=\\"http:\\/\\/www.protv.ro\\" width=\\"100%\\" height=\\"500px\\"><\\/iframe><\\/div>\\r\\n&nbsp;<\\/div>\\r\\n<div class=\\"row\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"small-12 columns serviciu_single\\">\\r\\n<div class=\\"small-6 medium-6 large-6 columns end heading_text_bubble\\">\\r\\n<h2 style=\\"text-align: left;\\">Titlu<\\/h2>\\r\\n<\\/div>\\r\\n<div class=\\"small-12 columns holder_bubble\\">\\r\\n<div class=\\"serviciu_description\\">Ceva Frumos<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2015-07-02 19:41:41","created_by":"502","created_by_alias":"","modified":"2015-07-02 22:55:01","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-02 22:53:58","publish_up":"2015-07-02 19:41:41","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/demo_images\\\\\\/1920\\\\\\/purple.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(16, 7, 1, '', '2015-07-08 06:59:24', 502, 1675, 'b892b4a0873c3e3e8dbb4acacb3ad9722fcebcd8', '{"id":7,"asset_id":79,"title":"Login Page","alias":"login-page","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-07-08 06:59:24","created_by":"502","created_by_alias":"","modified":"2015-07-08 06:59:24","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2015-07-08 06:59:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
	(17, 7, 1, '', '2015-07-08 07:01:04', 502, 1689, '8133ac4e8a97d3d43a854ad805a6641e0b922be6', '{"id":7,"asset_id":"79","title":"Login","alias":"login-page","introtext":"","fulltext":"","state":1,"catid":"2","created":"2015-07-08 06:59:24","created_by":"502","created_by_alias":"","modified":"2015-07-08 07:01:04","modified_by":"502","checked_out":"502","checked_out_time":"2015-07-08 07:00:53","publish_up":"2015-07-08 06:59:24","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"pharmec:newpage\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
/*!40000 ALTER TABLE `ph_ucm_history` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_updates
DROP TABLE IF EXISTS `ph_updates`;
CREATE TABLE IF NOT EXISTS `ph_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- Dumping data for table pharmec.ph_updates: ~1 rows (aproximativ)
DELETE FROM `ph_updates`;
/*!40000 ALTER TABLE `ph_updates` DISABLE KEYS */;
INSERT INTO `ph_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
	(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.4.3', '', 'http://update.joomla.org/core/sts/extension_sts.xml', '', '');
/*!40000 ALTER TABLE `ph_updates` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_update_sites
DROP TABLE IF EXISTS `ph_update_sites`;
CREATE TABLE IF NOT EXISTS `ph_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

-- Dumping data for table pharmec.ph_update_sites: ~5 rows (aproximativ)
DELETE FROM `ph_update_sites`;
/*!40000 ALTER TABLE `ph_update_sites` DISABLE KEYS */;
INSERT INTO `ph_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
	(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1436601784, ''),
	(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1436601784, ''),
	(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
	(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
	(5, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 0, '');
/*!40000 ALTER TABLE `ph_update_sites` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_update_sites_extensions
DROP TABLE IF EXISTS `ph_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `ph_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- Dumping data for table pharmec.ph_update_sites_extensions: ~5 rows (aproximativ)
DELETE FROM `ph_update_sites_extensions`;
/*!40000 ALTER TABLE `ph_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `ph_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
	(1, 700),
	(2, 700),
	(3, 600),
	(4, 28),
	(5, 10010);
/*!40000 ALTER TABLE `ph_update_sites_extensions` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_usergroups
DROP TABLE IF EXISTS `ph_usergroups`;
CREATE TABLE IF NOT EXISTS `ph_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_usergroups: ~9 rows (aproximativ)
DELETE FROM `ph_usergroups`;
/*!40000 ALTER TABLE `ph_usergroups` DISABLE KEYS */;
INSERT INTO `ph_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
	(1, 0, 1, 18, 'Public'),
	(2, 1, 8, 15, 'Registered'),
	(3, 2, 9, 14, 'Author'),
	(4, 3, 10, 13, 'Editor'),
	(5, 4, 11, 12, 'Publisher'),
	(6, 1, 4, 7, 'Manager'),
	(7, 6, 5, 6, 'Administrator'),
	(8, 1, 16, 17, 'Super Users'),
	(9, 1, 2, 3, 'Guest');
/*!40000 ALTER TABLE `ph_usergroups` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_users
DROP TABLE IF EXISTS `ph_users`;
CREATE TABLE IF NOT EXISTS `ph_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_users: ~2 rows (aproximativ)
DELETE FROM `ph_users`;
/*!40000 ALTER TABLE `ph_users` DISABLE KEYS */;
INSERT INTO `ph_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
	(502, 'Super User', 'zamfir.gaby', 'zamfir.gaby@gmail.com', '$2y$10$CGWBxrHMSBReDPC99wOAQuacGhfmBkwWbumkHPjax2kGB8VCgJd8C', 0, 1, '2015-05-07 18:49:28', '2015-07-11 08:25:00', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
	(503, 'Pharmec User', 'pharmec', 'constanta@psw.ro', '$2y$10$xAJkWWwmy47afP3lJi6uGOS1ijZbhztxO.exPQDXiUf7KdPsg3i5a', 0, 1, '2015-07-01 08:11:52', '2015-07-01 08:12:24', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
	(504, 'guest1', 'guest1', 'test@yahoo.com', '$2y$10$yFxtOv7uyADjJTX7Ai/VYuaYXq7CV6X.PHq9bcUfwKh4mfmLkNpke', 0, 0, '2015-07-08 07:33:49', '2015-07-10 12:52:30', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
	(505, 'vote_test', 'vote_test', 'test1@yahoo.com', '$2y$10$zZsWjEgKp0mDZgui03eXRulN9NcNgocZx8XzhrHqmIxX0cRQg6G.a', 0, 0, '2015-07-10 13:27:55', '2015-07-10 13:41:13', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);
/*!40000 ALTER TABLE `ph_users` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_user_keys
DROP TABLE IF EXISTS `ph_user_keys`;
CREATE TABLE IF NOT EXISTS `ph_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_user_keys: ~0 rows (aproximativ)
DELETE FROM `ph_user_keys`;
/*!40000 ALTER TABLE `ph_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_user_keys` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_user_notes
DROP TABLE IF EXISTS `ph_user_notes`;
CREATE TABLE IF NOT EXISTS `ph_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_user_notes: ~0 rows (aproximativ)
DELETE FROM `ph_user_notes`;
/*!40000 ALTER TABLE `ph_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_user_notes` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_user_profiles
DROP TABLE IF EXISTS `ph_user_profiles`;
CREATE TABLE IF NOT EXISTS `ph_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- Dumping data for table pharmec.ph_user_profiles: ~0 rows (aproximativ)
DELETE FROM `ph_user_profiles`;
/*!40000 ALTER TABLE `ph_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ph_user_profiles` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_user_usergroup_map
DROP TABLE IF EXISTS `ph_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `ph_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_user_usergroup_map: ~2 rows (aproximativ)
DELETE FROM `ph_user_usergroup_map`;
/*!40000 ALTER TABLE `ph_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `ph_user_usergroup_map` (`user_id`, `group_id`) VALUES
	(502, 8),
	(503, 8),
	(504, 2),
	(505, 2);
/*!40000 ALTER TABLE `ph_user_usergroup_map` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_viewlevels
DROP TABLE IF EXISTS `ph_viewlevels`;
CREATE TABLE IF NOT EXISTS `ph_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_viewlevels: ~5 rows (aproximativ)
DELETE FROM `ph_viewlevels`;
/*!40000 ALTER TABLE `ph_viewlevels` DISABLE KEYS */;
INSERT INTO `ph_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
	(1, 'Public', 0, '[1]'),
	(2, 'Registered', 2, '[6,2,8]'),
	(3, 'Special', 3, '[6,3,8]'),
	(5, 'Guest', 1, '[9]'),
	(6, 'Super Users', 4, '[8]');
/*!40000 ALTER TABLE `ph_viewlevels` ENABLE KEYS */;


-- Dumping structure for table pharmec.ph_wf_profiles
DROP TABLE IF EXISTS `ph_wf_profiles`;
CREATE TABLE IF NOT EXISTS `ph_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table pharmec.ph_wf_profiles: ~4 rows (aproximativ)
DELETE FROM `ph_wf_profiles`;
/*!40000 ALTER TABLE `ph_wf_profiles` DISABLE KEYS */;
INSERT INTO `ph_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
	(1, 'Default', 'Default Profile for all users', '0', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor', 1, 1, 0, '0000-00-00 00:00:00', '{"media":{"iframes":"1"}}'),
	(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect', 0, 2, 0, '0000-00-00 00:00:00', ''),
	(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,8,7', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
	(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,8,7', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');
/*!40000 ALTER TABLE `ph_wf_profiles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
