-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2012 at 12:15 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database_name`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=448 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 92),
(2, 1, NULL, NULL, 'Groups', 2, 13),
(3, 2, NULL, NULL, 'index', 3, 4),
(4, 2, NULL, NULL, 'view', 5, 6),
(5, 2, NULL, NULL, 'add', 7, 8),
(6, 2, NULL, NULL, 'edit', 9, 10),
(7, 2, NULL, NULL, 'delete', 11, 12),
(8, 1, NULL, NULL, 'Users', 14, 31),
(9, 8, NULL, NULL, 'login', 15, 16),
(10, 8, NULL, NULL, 'logout', 17, 18),
(11, 8, NULL, NULL, 'index', 19, 20),
(12, 8, NULL, NULL, 'view', 21, 22),
(13, 8, NULL, NULL, 'add', 23, 24),
(14, 8, NULL, NULL, 'edit', 25, 26),
(15, 8, NULL, NULL, 'delete', 27, 28),
(17, 8, NULL, NULL, 'initDB', 29, 30),
(359, 344, NULL, NULL, 'admin_get_user_controller_permission', 84, 85),
(358, 344, NULL, NULL, 'admin_deny_role_permission', 82, 83),
(357, 344, NULL, NULL, 'admin_grant_role_permission', 80, 81),
(356, 344, NULL, NULL, 'admin_get_role_controller_permission', 78, 79),
(355, 344, NULL, NULL, 'admin_deny_all_controllers', 76, 77),
(354, 344, NULL, NULL, 'admin_grant_all_controllers', 74, 75),
(353, 344, NULL, NULL, 'admin_clear_user_specific_permissions', 72, 73),
(352, 344, NULL, NULL, 'admin_empty_permissions', 70, 71),
(351, 344, NULL, NULL, 'admin_user_permissions', 68, 69),
(350, 344, NULL, NULL, 'admin_role_permissions', 66, 67),
(349, 344, NULL, NULL, 'admin_ajax_role_permissions', 64, 65),
(348, 344, NULL, NULL, 'admin_update_user_role', 62, 63),
(347, 344, NULL, NULL, 'admin_users', 60, 61),
(346, 344, NULL, NULL, 'admin_check', 58, 59),
(345, 344, NULL, NULL, 'admin_index', 56, 57),
(344, 334, NULL, NULL, 'Aros', 55, 90),
(342, 338, NULL, NULL, 'admin_prune_acos', 50, 51),
(343, 338, NULL, NULL, 'admin_synchronize', 52, 53),
(341, 338, NULL, NULL, 'admin_build_acl', 48, 49),
(336, 335, NULL, NULL, 'index', 38, 39),
(337, 335, NULL, NULL, 'admin_index', 40, 41),
(338, 334, NULL, NULL, 'Acos', 43, 54),
(339, 338, NULL, NULL, 'admin_index', 44, 45),
(340, 338, NULL, NULL, 'admin_empty_acos', 46, 47),
(71, 1, NULL, NULL, 'Pages', 32, 35),
(72, 71, NULL, NULL, 'display', 33, 34),
(335, 334, NULL, NULL, 'Acl', 37, 42),
(334, 1, NULL, NULL, 'Acl', 36, 91),
(360, 344, NULL, NULL, 'admin_grant_user_permission', 86, 87),
(361, 344, NULL, NULL, 'admin_deny_user_permission', 88, 89);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 6),
(2, NULL, 'Group', 2, NULL, 7, 12),
(3, NULL, 'Group', 3, NULL, 13, 14),
(4, NULL, 'Group', 4, NULL, 15, 18),
(5, 1, 'User', 1, NULL, 2, 3),
(6, 2, 'User', 2, NULL, 8, 9),
(7, 4, 'User', 3, 'mazantua', 16, 17),
(8, 2, 'User', 4, 'carizapa', 10, 11),
(9, 1, 'User', 5, NULL, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 1, 11, '1', '1', '1', '1'),
(3, 1, 8, '1', '1', '1', '1'),
(4, 2, 1, '-1', '-1', '-1', '-1'),
(5, 2, 2, '1', '1', '1', '1'),
(6, 2, 8, '1', '1', '1', '1'),
(7, 4, 1, '-1', '-1', '-1', '-1'),
(8, 2, 5, '-1', '-1', '-1', '-1'),
(9, 6, 5, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Superusers', '2012-02-12 20:05:16', '2012-02-12 20:05:16'),
(2, 'Administrators', '2012-02-12 20:05:27', '2012-02-12 20:05:27'),
(3, 'Managers', '2012-02-12 20:05:39', '2012-02-12 20:05:39'),
(4, 'Users', '2012-02-12 20:05:47', '2012-02-12 20:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created`, `modified`, `user_id`, `first_name`, `middle_name`, `last_name`, `username`, `password`, `group_id`, `mobile_no`) VALUES
(1, '2012-06-05 16:39:26', '2012-11-09 03:59:46', 1, 'Sherwin', 'Dulay', 'Robles', 'sherwinrobles', '4b52ec00f109110d1136cacea7bd778d11eae50b', 1, ''),
(2, '2012-06-06 16:11:07', '2012-08-20 16:46:44', 1, 'Sherwin', 'Dulay', 'Robles', 'sherwinrobles', 'fc0e7ceb351c402004842b67227f24b3cc9000c0', 2, ''),
(3, '0000-00-00 00:00:00', '2012-08-20 16:07:56', 1, 'Mary Anne', 'Hernandez', 'Zantua', 'mazantua', 'df573da539975a6cd0615cd125cc4bb92b1c83bf', 4, ''),
(4, '0000-00-00 00:00:00', '2012-08-20 16:47:39', 1, 'Druid', 'Solutions', 'Inc', 'druid', '43c2d87dece4c14f602c45c4ff1b511fc33c1544', 3, ''),
(5, '2012-08-20 23:01:07', '2012-08-20 16:48:48', 1, 'Clark', 'El', 'Kent', 'clarkkent', 'fc0e7ceb351c402004842b67227f24b3cc9000c0', 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
