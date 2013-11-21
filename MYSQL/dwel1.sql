-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2013 at 07:18 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dwel1`
--
CREATE DATABASE IF NOT EXISTS `dwel1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dwel1`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `created`, `updated`) VALUES
(1, 1, 'Uncategorized', 'uncategorized', '2013-11-19 11:54:03', '2013-11-19 11:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories_metadata`
--

CREATE TABLE IF NOT EXISTS `categories_metadata` (
  `category_id` int(11) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  UNIQUE KEY `category_id_2` (`category_id`,`key`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `content_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `parent_id` int(15) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` int(15) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `parent_id`, `comment`, `approved`, `created`, `updated`) VALUES
(1, 1, 1, 0, 'test comments', -1, '2013-11-19 12:14:34', '2013-11-19 12:22:11'),
(2, 1, 1, 1, 'test', 1, '2013-11-19 12:24:12', '2013-11-19 12:24:12'),
(3, 1, 2, 1, 'good one', 1, '2013-11-19 12:50:33', '2013-11-19 12:50:33'),
(4, 1, 2, 1, 'Wow amazing', 1, '2013-11-19 12:50:50', '2013-11-19 12:50:50'),
(5, 1, 2, 2, 'testing 1234', 1, '2013-11-19 12:54:49', '2013-11-19 12:54:49'),
(6, 1, 2, 0, 'What is this all about?', 1, '2013-11-19 12:55:27', '2013-11-19 12:55:27'),
(7, 2, 1, 0, 'I don''t have any idea. Sorry!!!', 1, '2013-11-19 15:38:12', '2013-11-19 15:38:12'),
(8, 1, 1, 5, 'iam replying for testing1234', 1, '2013-11-19 16:04:38', '2013-11-19 16:04:38'),
(9, 1, 1, 8, 'adsadasd', 1, '2013-11-19 16:35:21', '2013-11-19 16:35:21'),
(10, 2, 1, 0, 'testing', 1, '2013-11-19 16:58:59', '2013-11-19 16:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `comment_metadata`
--

CREATE TABLE IF NOT EXISTS `comment_metadata` (
  `comment_id` int(15) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  UNIQUE KEY `comment_id_2` (`comment_id`,`key`),
  KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`key`, `value`, `created`, `updated`) VALUES
('preferMarkdown', '1', '2013-11-19 11:54:03', '2013-11-19 11:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `vid` int(15) NOT NULL,
  `author_id` int(15) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `extract` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `commentable` int(15) NOT NULL,
  `parent_id` int(15) NOT NULL,
  `category_id` int(15) NOT NULL,
  `type_id` int(15) NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `comment_count` int(15) NOT NULL DEFAULT '0',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`,`vid`),
  KEY `author_id` (`author_id`),
  KEY `parent_id` (`parent_id`),
  KEY `category_id` (`category_id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `vid`, `author_id`, `title`, `content`, `extract`, `status`, `commentable`, `parent_id`, `category_id`, `type_id`, `password`, `comment_count`, `like_count`, `slug`, `created`, `updated`) VALUES
(1, 1, 1, 'iphone', 'I want to buy iphone, could you please suggest?', 'iphone', 1, 1, 1, 1, 2, '', 5, 1, 'iphone', '2013-11-19 11:55:50', '2013-11-19 12:24:12'),
(1, 2, 1, 'iphone', 'I want to buy iphone, could you please suggest?', 'I want to buy iphone, could you please suggest?', 1, 1, 1, 1, 2, '', 12, 1, 'iphone', '2013-11-19 11:55:50', '2013-11-19 16:35:21'),
(2, 1, 1, 'Need Details', 'I need to know some details about shopping in Bangalore. Can anyone help me out?', 'I need to know some details about shopping in Bangalore. Can anyone help me out?', 1, 1, 1, 1, 2, '', 4, 0, 'need-details', '2013-11-19 15:37:20', '2013-11-19 16:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `content_metadata`
--

CREATE TABLE IF NOT EXISTS `content_metadata` (
  `content_id` int(15) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  UNIQUE KEY `content_id_2` (`content_id`,`key`),
  KEY `content_id` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `tag` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `approved` int(15) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1384842242),
('m120101_000000_base', 1384842243),
('m121017_233353_cascade_user', 1384842243),
('m130207_175450_keywords', 1384842243),
('m130207_232511_prefermarkdown', 1384842243),
('m130219_183531_content_like', 1384842243),
('m130421_192044_add_about_user', 1384842243),
('m130516_183717_migrate_uploads', 1384842243),
('m130701_225047_userdetails', 1384842243);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` int(15) NOT NULL,
  `status` int(15) NOT NULL,
  `activation_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_role` (`user_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstName`, `lastName`, `displayName`, `about`, `user_role`, `status`, `activation_key`, `created`, `updated`) VALUES
(1, 'eby.jane@gmail.com', '$2y$13$XnEvDHfFoZpCDCbB0EmioOEmgYyXcGOTttKFlvGN2VnQF9CB4FbHG', 'eby', 'jane', 'ebyjane', NULL, 5, 1, NULL, '2013-11-19 11:54:29', '2013-11-19 16:57:01'),
(2, 'eby.jane@yahoo.com', '$2y$13$O96bmLls2Tbtfld/74wyV.whXgC/shEz6loAtcYM4QJSfV0dSooG.', NULL, NULL, 'ebyjane', NULL, 1, 1, NULL, '2013-11-19 12:48:55', '2013-11-19 12:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `group_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_metadata`
--

CREATE TABLE IF NOT EXISTS `user_metadata` (
  `user_id` int(15) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  UNIQUE KEY `user_id_2` (`user_id`,`key`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_metadata`
--

INSERT INTO `user_metadata` (`user_id`, `key`, `value`, `created`, `updated`) VALUES
(1, 'likes', '["1"]', '2013-11-19 11:56:25', '2013-11-19 11:56:25'),
(2, 'activationKey', '26d89d237e10474d', '2013-11-19 12:48:55', '2013-11-19 12:48:55'),
(2, 'likes', '["1"]', '2013-11-19 12:50:19', '2013-11-19 12:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `created`, `updated`) VALUES
(1, 'User', '2013-11-19 11:54:03', '2013-11-19 11:54:03'),
(2, 'Pending', '2013-11-19 11:54:03', '2013-11-19 11:54:03'),
(3, 'Suspended', '2013-11-19 11:54:03', '2013-11-19 11:54:03'),
(4, 'Moderator', '2013-11-19 11:54:03', '2013-11-19 11:54:03'),
(5, 'Administrator', '2013-11-19 11:54:03', '2013-11-19 11:54:03');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categories_metadata`
--
ALTER TABLE `categories_metadata`
  ADD CONSTRAINT `categories_metadata_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `comment_metadata`
--
ALTER TABLE `comment_metadata`
  ADD CONSTRAINT `comment_metadata_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `content_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `content_metadata`
--
ALTER TABLE `content_metadata`
  ADD CONSTRAINT `content_metadata_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `user_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_metadata`
--
ALTER TABLE `user_metadata`
  ADD CONSTRAINT `user_metadata_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_metadata_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
