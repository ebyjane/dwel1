-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2013 at 05:16 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `created`, `updated`) VALUES
(1, 1, 'Dweling', 'dweling', '2013-11-19 11:54:03', '2013-12-01 21:42:41'),
(2, 2, 'Education & Development', 'education---development', '2013-12-01 21:43:11', '2013-12-01 21:51:38'),
(3, 3, 'Product & Services', 'product---services', '2013-12-01 21:43:27', '2013-12-01 21:51:27'),
(4, 4, 'Sports', 'sports', '2013-12-01 21:43:40', '2013-12-01 21:51:14'),
(5, 5, 'Health & Beauty', 'health---beauty', '2013-12-01 21:43:52', '2013-12-01 21:51:02'),
(6, 6, 'Travel & Tourism', 'travel---tourism', '2013-12-01 21:44:02', '2013-12-01 21:50:39'),
(7, 7, 'Fitness & Style', 'fitness---style', '2013-12-01 21:44:14', '2013-12-01 21:50:47'),
(8, 8, 'Society & Culture', 'society---culture', '2013-12-01 21:44:26', '2013-12-01 21:49:05'),
(9, 9, 'Pets', 'pets', '2013-12-01 21:44:40', '2013-12-01 21:48:53'),
(10, 10, 'News & Events', 'news---events', '2013-12-01 21:44:51', '2013-12-01 21:48:40'),
(11, 11, 'Finance & Economy', 'finance---economy', '2013-12-01 21:45:08', '2013-12-01 21:48:31'),
(12, 12, 'Food & Beverage', 'food---beverage', '2013-12-01 21:45:21', '2013-12-01 21:48:22'),
(13, 13, 'Technology & Gadgets', 'technology---gadgets', '2013-12-01 21:45:32', '2013-12-01 21:48:08'),
(14, 14, 'Entertainment', 'entertainment', '2013-12-01 21:45:44', '2013-12-01 21:48:01'),
(15, 15, 'Law & Rules', 'law---rules', '2013-12-01 21:45:54', '2013-12-01 21:47:53'),
(16, 16, 'Politics & Government', 'politics---government', '2013-12-01 21:46:03', '2013-12-01 21:47:42'),
(17, 17, 'Relationship and Psychology', 'relationship-and-psychology', '2013-12-01 21:46:13', '2013-12-01 21:47:34'),
(18, 18, 'Discovery & Entrepreneurship', 'discovery---entrepreneurship', '2013-12-01 21:46:25', '2013-12-01 21:47:27'),
(19, 19, 'Others', 'others', '2013-12-01 21:46:37', '2013-12-01 21:47:18');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `parent_id`, `comment`, `approved`, `created`, `updated`) VALUES
(30, 42, 1, 0, 'First Comment', 1, '2013-12-02 20:08:18', '2013-12-02 20:08:18'),
(31, 41, 1, 0, 'test comment', 1, '2013-12-02 20:12:25', '2013-12-02 20:12:25'),
(32, 43, 1, 0, 'test comment', 1, '2013-12-02 20:13:53', '2013-12-02 20:13:53'),
(33, 44, 1, 0, 'test', 1, '2013-12-02 20:15:41', '2013-12-02 20:15:41'),
(34, 45, 1, 0, 'First Comment', 1, '2013-12-02 20:20:08', '2013-12-02 20:20:08'),
(35, 45, 1, 0, 'comment 2', 1, '2013-12-02 20:20:19', '2013-12-02 20:20:19'),
(37, 47, 1, 0, 'Though they were once the dominant means of communicating world events, \nnewspapers have declined in readership since the rise of TV and the \nInternet. ', 1, '2013-12-02 21:34:51', '2013-12-02 21:34:51'),
(38, 47, 1, 0, 'There are some benefits to newspapers—newspapers are markedly less \nexpensive than a television (which also often requires a cable service \nsubscription) or the computer and Internet service necessary to access \nthe Web. In contrast to some Internet resources, most newspaper articles\n have been well-researched, written with reliable sources and edited for\n accuracy. ', 1, '2013-12-02 21:35:06', '2013-12-02 21:35:06'),
(39, 47, 1, 0, 'In general, newspapers are also more widely available—most convenience \nstores carry several papers, and local papers are easily found in \nvending machines on any city block. Some larger metropolitan areas even \nhave free regional weekly publications, with more opinion-based articles\n and lists of local events. ', 1, '2013-12-02 21:35:22', '2013-12-02 21:35:22'),
(40, 48, 1, 0, 'According to historical records, the first \nOlympic Games were held in Olympia, Greece in 776 BC. They were usually \nheld every four years until 394 AD, when they were suppressed by \nTheodosius I.', 1, '2013-12-02 21:43:20', '2013-12-02 21:43:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `vid`, `author_id`, `title`, `content`, `extract`, `status`, `commentable`, `parent_id`, `category_id`, `type_id`, `password`, `comment_count`, `like_count`, `slug`, `created`, `updated`) VALUES
(41, 1, 1, 'Pets', 'What Age Can a Male Dog Breed?', 'What Age Can a Male Dog Breed?', 1, 1, 1, 9, 2, '', 2, 0, 'pets1', '2013-12-02 20:05:39', '2013-12-02 20:12:25'),
(42, 1, 1, 'Pets', 'What Is the Average Life Span of a Cat?', 'What Is the Average Life Span of a Cat?', 1, 1, 1, 9, 2, '', 2, 0, 'pets2', '2013-12-02 20:06:11', '2013-12-02 20:08:18'),
(43, 1, 1, 'Pets', 'Which Dogs Don''t Molt ?', 'Which Dogs Don''t Molt ?', 1, 1, 1, 9, 2, '', 2, 0, 'pets3', '2013-12-02 20:13:45', '2013-12-02 20:13:53'),
(44, 1, 1, 'Pets', 'What Do Water Rats Eat ?', 'What Do Water Rats Eat ?', 1, 1, 1, 9, 2, '', 2, 0, 'pets4', '2013-12-02 20:15:27', '2013-12-02 20:15:41'),
(45, 1, 1, 'Health & Beauty', 'What are home remedies to make hair grow faster?', 'What are home remedies to make hair grow faster?', 1, 1, 1, 5, 2, '', 4, 0, 'health---beauty1', '2013-12-02 20:19:41', '2013-12-02 20:20:19'),
(47, 1, 1, 'News & Events', 'Advantages and Disadvantages of Newspaper?', 'Advantages and Disadvantages of Newspaper?', 1, 1, 1, 10, 2, '', 6, 0, 'news---events1', '2013-12-02 21:34:32', '2013-12-02 21:35:22'),
(48, 1, 1, 'Sports', 'What Games Were Played in the Ancient Olympics?', 'What Games Were Played in the Ancient Olympics?', 1, 1, 1, 4, 2, '', 2, 0, 'sports1', '2013-12-02 21:42:27', '2013-12-02 21:43:20');

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
(1, 'eby.jane@gmail.com', '$2y$13$4ynFAyLbPDxaKQHY0P1Ig.yzbfAAqtw6i6IGy20fTIHsGjoP2FtQK', 'eby', 'jane', 'ebyjane', 'Details about myself', 5, 1, NULL, '2013-11-19 11:54:29', '2013-12-02 21:06:42'),
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
(1, 'likes', '["1","11"]', '2013-11-19 11:56:25', '2013-12-02 00:55:40'),
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
