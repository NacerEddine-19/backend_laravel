-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 17, 2023 at 10:18 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofppt_social_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 19, 40, 'Rerum qui voluptatem accusamus adipisci.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(2, 7, 38, 'Incidunt aut accusantium minus et quisquam sint.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(3, 29, 45, 'Totam magni vel optio aut.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(4, 11, 20, 'Rerum in repellat vitae totam saepe.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(5, 31, 44, 'Esse eaque dicta dignissimos consequuntur qui.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(6, 27, 48, 'Sed qui non sed nesciunt.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(7, 34, 53, 'Dolor eaque eos sint voluptate ut enim ad.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(8, 10, 51, 'Et explicabo in ut provident est omnis et.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(9, 34, 37, 'Excepturi cum totam occaecati dolor sint quasi.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(10, 30, 31, 'Ut repellendus odit ut quia ut.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(11, 12, 46, 'Asperiores sunt aut nam sit sit.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(12, 4, 46, 'Quia voluptates deleniti occaecati quia aliquam.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(13, 33, 34, 'Corporis aspernatur inventore cupiditate totam vel.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(14, 21, 48, 'Quo aut et aut sit fugiat.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(15, 2, 41, 'Rerum eos eaque et neque non.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(16, 30, 27, 'Est quod officia quia facilis est.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(17, 22, 37, 'Aut quis sapiente est labore natus libero dicta explicabo.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(18, 32, 39, 'Hic vero saepe qui nesciunt libero.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(19, 1, 23, 'A adipisci cupiditate ut eos quisquam autem esse.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(20, 23, 25, 'Sed in velit repudiandae voluptas similique ut distinctio.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(21, 22, 38, 'Quis alias mollitia velit dignissimos veniam voluptate.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(22, 21, 47, 'Fugit rem eos quas quod ipsa.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(23, 27, 29, 'Ut voluptatem consequatur enim non.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(24, 27, 38, 'Qui adipisci ut rem rerum labore.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(25, 22, 32, 'Autem vero eos optio ut qui reiciendis eos.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(26, 7, 40, 'Dicta id et quod nihil.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(27, 5, 42, 'Et unde consectetur distinctio tenetur dolor officiis officia.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(28, 33, 50, 'Modi ut ipsam iusto qui voluptate accusamus ratione dicta.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(29, 30, 51, 'Soluta iure hic laudantium dolor eum fugit officia tempora.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(30, 7, 35, 'Magni facere ullam sit ipsa sint omnis expedita.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(31, 33, 50, 'Cum ullam sunt sed mollitia in.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(32, 20, 51, 'Quas deserunt consequatur reprehenderit sunt deleniti commodi facilis expedita.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(33, 2, 34, 'Itaque molestiae fuga eos cupiditate modi ut.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(34, 24, 37, 'Aperiam sequi velit vel id velit nisi perspiciatis.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(35, 10, 45, 'Omnis placeat omnis asperiores et et ea.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(36, 31, 17, 'Provident voluptates qui molestiae.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(37, 23, 28, 'Explicabo ut corporis voluptatem nisi accusamus.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(38, 24, 26, 'Commodi aspernatur iste nam enim.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(39, 9, 26, 'Facilis et et magnam.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(40, 3, 18, 'Dolor harum sunt distinctio enim doloribus impedit.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(41, 10, 18, 'Omnis adipisci perspiciatis dolores voluptatem.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(42, 28, 22, 'Id et expedita maxime qui deserunt dolore culpa molestias.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(43, 9, 41, 'Quidem qui eum voluptatibus dolores aliquam.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(44, 20, 25, 'Praesentium sint nisi ea omnis.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(45, 22, 23, 'Ducimus praesentium assumenda aperiam expedita aut molestiae.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(46, 22, 21, 'Eius delectus totam voluptas assumenda suscipit.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(47, 26, 21, 'Hic quidem doloremque at voluptatibus reiciendis qui beatae.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(48, 19, 30, 'Qui sed adipisci fuga et.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(49, 22, 52, 'Consequatur consequatur culpa qui dolor.', '2023-06-17 15:53:37', '2023-06-17 15:53:37'),
(50, 15, 42, 'Maxime iure sed fugiat velit veniam enim quia facere.', '2023-06-17 15:53:37', '2023-06-17 15:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
CREATE TABLE IF NOT EXISTS `friendships` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `friend_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `friendships_user_id_foreign` (`user_id`),
  KEY `friendships_friend_id_foreign` (`friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friendships`
--

INSERT INTO `friendships` (`id`, `user_id`, `friend_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2023-06-17 18:00:44', '2023-06-17 18:00:44'),
(2, 2, 8, '2023-06-17 18:00:44', '2023-06-17 18:00:44'),
(3, 2, 21, '2023-06-17 18:00:44', '2023-06-17 18:00:44'),
(4, 2, 14, '2023-06-17 18:00:44', '2023-06-17 18:00:44'),
(5, 2, 14, '2023-06-17 18:00:44', '2023-06-17 18:00:44'),
(6, 13, 25, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(7, 23, 33, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(8, 19, 35, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(9, 12, 37, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(10, 8, 1, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(11, 11, 21, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(12, 18, 36, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(13, 11, 29, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(14, 11, 15, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(15, 33, 23, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(16, 2, 39, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(17, 32, 32, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(18, 6, 32, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(19, 31, 17, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(20, 36, 30, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(21, 13, 11, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(22, 36, 25, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(23, 29, 30, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(24, 17, 12, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(25, 16, 26, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(26, 34, 33, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(27, 7, 10, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(28, 17, 35, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(29, 19, 10, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(30, 14, 36, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(31, 25, 7, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(32, 19, 10, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(33, 18, 1, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(34, 25, 5, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(35, 24, 42, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(36, 3, 40, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(37, 35, 7, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(38, 42, 28, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(39, 40, 12, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(40, 17, 14, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(41, 41, 11, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(42, 1, 7, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(43, 34, 25, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(44, 20, 13, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(45, 33, 29, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(46, 41, 31, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(47, 31, 25, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(48, 40, 7, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(49, 13, 42, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(50, 14, 34, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(51, 27, 20, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(52, 1, 2, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(53, 37, 33, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(54, 3, 9, '2023-06-17 18:01:59', '2023-06-17 18:01:59'),
(55, 11, 34, '2023-06-17 18:01:59', '2023-06-17 18:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'DEV 207'),
(2, 'DEV 210'),
(3, 'DEV 208'),
(4, 'DEV 209'),
(5, 'DEV 107'),
(6, 'DEV 101'),
(7, 'DEV 106'),
(8, 'DEV 110');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(1, 'JavaScript'),
(2, 'Python'),
(3, 'Java'),
(4, 'C'),
(5, 'C++'),
(6, 'C#'),
(7, 'Ruby'),
(8, 'PHP'),
(9, 'Swift'),
(10, 'Go'),
(11, 'Rust'),
(12, 'TypeScript'),
(13, 'Kotlin'),
(14, 'Perl'),
(15, 'Scala'),
(16, 'Haskell'),
(17, 'Lua'),
(18, 'R'),
(19, 'Matlab'),
(20, 'Objective-C');

-- --------------------------------------------------------

--
-- Table structure for table `language_project`
--

DROP TABLE IF EXISTS `language_project`;
CREATE TABLE IF NOT EXISTS `language_project` (
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`language_id`,`project_id`),
  KEY `language_project_project_id_foreign` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_project`
--

INSERT INTO `language_project` (`language_id`, `project_id`) VALUES
(1, 18),
(1, 23),
(1, 26),
(2, 6),
(2, 20),
(3, 13),
(3, 15),
(3, 18),
(3, 19),
(3, 21),
(3, 27),
(3, 28),
(3, 30),
(4, 3),
(4, 4),
(4, 7),
(4, 12),
(4, 13),
(4, 20),
(4, 23),
(4, 28),
(5, 5),
(5, 6),
(5, 20),
(6, 2),
(6, 8),
(6, 23),
(6, 27),
(7, 7),
(7, 9),
(7, 14),
(7, 26),
(8, 3),
(8, 5),
(8, 16),
(8, 28),
(9, 3),
(9, 9),
(9, 11),
(9, 17),
(9, 21),
(9, 24),
(9, 30),
(10, 3),
(10, 11),
(10, 18),
(10, 29),
(11, 10),
(11, 13),
(11, 14),
(11, 19),
(11, 20),
(11, 22),
(11, 25),
(11, 28),
(11, 30),
(12, 6),
(12, 7),
(12, 15),
(12, 16),
(12, 19),
(12, 24),
(12, 25),
(13, 12),
(13, 19),
(13, 27),
(13, 28),
(13, 29),
(14, 13),
(14, 15),
(14, 16),
(14, 17),
(14, 26),
(15, 5),
(15, 10),
(15, 14),
(15, 21),
(15, 24),
(16, 1),
(16, 10),
(16, 18),
(16, 20),
(16, 24),
(16, 25),
(16, 27),
(16, 29),
(17, 3),
(17, 9),
(17, 10),
(17, 15),
(17, 22),
(17, 24),
(17, 25),
(18, 10),
(18, 14),
(18, 15),
(18, 17),
(18, 22),
(18, 25),
(19, 14),
(19, 23),
(20, 1),
(20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `likes_user_id_foreign` (`user_id`),
  KEY `likes_post_id_foreign` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_05_26_161522_create_reports_table', 1),
(3, '2018_05_28_010147_create_likes_table', 1),
(4, '2019_05_28_143140_create__projects_table', 1),
(5, '2019_06_17_150908_create_languages_table', 1),
(6, '2019_06_17_162436_add_likes_dislikes_to_projects', 1),
(7, '2019_06_17_164725_create_table_posts', 2),
(8, '2019_06_17_165251_create_table_comments', 3),
(9, '2019_06_17_171038_create_table_groups', 4),
(10, '2019_06_17_173911_add_pdc', 4),
(11, '2019_06_17_184434_create_table_languages', 5),
(12, '2019_06_17_185830_create_table_friendships', 6);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id_post` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_desc` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_reported` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_post`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_post`, `file`, `post_desc`, `user_id`, `is_reported`, `created_at`, `updated_at`, `likes`) VALUES
(1, 'https://via.placeholder.com/640x480.png/0033cc?text=rem', 'Fuga animi voluptas sint quibusdam sit ipsam et.', 1, 1, '2023-06-13 05:28:14', '2023-06-17 15:50:55', 25),
(2, 'https://via.placeholder.com/640x480.png/00aa22?text=et', 'Qui odio dolores optio delectus.', 22, 0, '2023-06-11 05:16:01', '2023-06-17 15:50:55', 12),
(3, 'https://via.placeholder.com/640x480.png/00aa77?text=molestiae', 'Natus eos aspernatur illum debitis debitis vitae.', 23, 0, '2023-06-14 16:59:54', '2023-06-17 15:50:55', 2),
(4, 'https://via.placeholder.com/640x480.png/0033ff?text=nihil', 'Dolorem ullam cum eveniet sit sint placeat.', 9, 0, '2023-06-12 04:29:53', '2023-06-17 15:50:55', 1),
(5, 'https://via.placeholder.com/640x480.png/008811?text=ducimus', 'Qui ut excepturi aut sequi.', 1, 1, '2023-05-19 05:52:10', '2023-06-17 15:50:55', 23),
(6, 'https://via.placeholder.com/640x480.png/007744?text=aut', 'Id recusandae dolore ullam dolorem et qui quia.', 9, 0, '2023-06-15 08:37:50', '2023-06-17 15:50:55', 0),
(7, 'https://via.placeholder.com/640x480.png/003300?text=nobis', 'Aut quae minima nihil.', 7, 0, '2023-06-09 13:02:02', '2023-06-17 15:50:55', 9),
(8, 'https://via.placeholder.com/640x480.png/002200?text=excepturi', 'Illo nobis adipisci ipsam dolor in repellat commodi.', 2, 0, '2023-06-02 20:52:16', '2023-06-17 15:50:55', 15),
(9, 'https://via.placeholder.com/640x480.png/00aabb?text=hic', 'Laudantium id quis eos dicta praesentium ut explicabo.', 9, 1, '2023-06-12 05:33:44', '2023-06-17 15:50:55', 2),
(10, 'https://via.placeholder.com/640x480.png/00bb88?text=repellat', 'Iure omnis occaecati quos.', 26, 0, '2023-06-08 01:04:05', '2023-06-17 15:50:55', 15),
(11, 'https://via.placeholder.com/640x480.png/008888?text=magni', 'Maiores qui voluptatem maxime veniam aliquam.', 7, 1, '2023-05-18 02:41:14', '2023-06-17 15:50:55', 18),
(12, 'https://via.placeholder.com/640x480.png/002233?text=et', 'Repudiandae et a sint suscipit sunt repellendus.', 18, 0, '2023-05-31 21:34:44', '2023-06-17 15:50:55', 13),
(13, 'https://via.placeholder.com/640x480.png/00bbdd?text=maxime', 'Illo magnam beatae sed temporibus deserunt officiis.', 26, 1, '2023-05-31 03:28:52', '2023-06-17 15:50:55', 22),
(14, 'https://via.placeholder.com/640x480.png/007733?text=sed', 'Nisi officiis aut aut aut nostrum.', 18, 0, '2023-05-31 04:25:43', '2023-06-17 15:50:55', 13),
(15, 'https://via.placeholder.com/640x480.png/00aadd?text=et', 'Omnis fugiat qui porro autem et nulla tempore.', 17, 1, '2023-05-29 03:20:46', '2023-06-17 15:50:55', 29),
(16, 'https://via.placeholder.com/640x480.png/00cc77?text=eaque', 'Asperiores dolor quia ut aut hic voluptatem et.', 2, 0, '2023-05-23 09:37:48', '2023-06-17 15:50:55', 6),
(17, 'https://via.placeholder.com/640x480.png/0011dd?text=sed', 'Inventore maiores doloribus vel nihil excepturi facilis et.', 7, 1, '2023-05-22 14:24:10', '2023-06-17 15:50:55', 7),
(18, 'https://via.placeholder.com/640x480.png/00cccc?text=sapiente', 'Perspiciatis enim sit aut inventore et.', 6, 1, '2023-06-08 00:58:23', '2023-06-17 15:50:55', 16),
(19, 'https://via.placeholder.com/640x480.png/002222?text=non', 'Quaerat ea ipsa vel ad nemo.', 20, 0, '2023-05-21 10:20:46', '2023-06-17 15:50:55', 14),
(20, 'https://via.placeholder.com/640x480.png/006666?text=sequi', 'Inventore et earum fugit harum.', 24, 0, '2023-05-27 23:57:56', '2023-06-17 15:50:55', 5),
(21, 'https://via.placeholder.com/640x480.png/00cc77?text=nulla', 'Et ipsa et fugiat.', 1, 0, '2023-06-08 05:35:18', '2023-06-17 15:50:55', 0),
(22, 'https://via.placeholder.com/640x480.png/00ee22?text=consequatur', 'Similique qui consequatur quod rem.', 24, 0, '2023-05-22 13:44:33', '2023-06-17 15:50:55', 28),
(23, 'https://via.placeholder.com/640x480.png/0022cc?text=eum', 'Modi eos in quis eum omnis enim maxime aut.', 23, 0, '2023-05-28 13:20:44', '2023-06-17 15:50:55', 11),
(24, 'https://via.placeholder.com/640x480.png/001111?text=est', 'Corporis quia quis dicta non consequuntur totam dolorum.', 19, 0, '2023-06-11 19:34:27', '2023-06-17 15:50:55', 13),
(25, 'https://via.placeholder.com/640x480.png/0055dd?text=odit', 'Beatae velit corrupti unde.', 25, 1, '2023-06-13 13:47:33', '2023-06-17 15:50:55', 11),
(26, 'https://via.placeholder.com/640x480.png/00cc88?text=sapiente', 'Et dolores ut laboriosam iusto architecto consequatur.', 15, 0, '2023-05-30 19:44:44', '2023-06-17 15:50:55', 26),
(27, 'https://via.placeholder.com/640x480.png/00aabb?text=corporis', 'Ullam quisquam saepe quas culpa autem.', 8, 1, '2023-05-18 06:45:18', '2023-06-17 15:50:55', 22),
(28, 'https://via.placeholder.com/640x480.png/00eedd?text=eaque', 'Provident eos nisi blanditiis maxime.', 7, 0, '2023-05-25 12:58:47', '2023-06-17 15:50:55', 22),
(29, 'https://via.placeholder.com/640x480.png/0055aa?text=rerum', 'Modi architecto sed sequi et quaerat molestiae est.', 29, 1, '2023-05-18 02:19:06', '2023-06-17 15:50:55', 0),
(30, 'https://via.placeholder.com/640x480.png/0088cc?text=ad', 'Optio voluptates voluptates quasi omnis ullam nihil fugiat.', 26, 0, '2023-06-06 19:49:45', '2023-06-17 15:50:55', 18),
(31, 'https://via.placeholder.com/640x480.png/00cc44?text=earum', 'Quasi amet aliquam doloribus fuga.', 2, 1, '2023-06-08 21:52:25', '2023-06-17 15:50:55', 18),
(32, 'https://via.placeholder.com/640x480.png/003344?text=ut', 'Neque odio assumenda et.', 29, 1, '2023-06-13 22:45:23', '2023-06-17 15:50:55', 7),
(33, 'https://via.placeholder.com/640x480.png/0077dd?text=sunt', 'Consectetur officia sequi voluptas similique consequatur deleniti ipsum.', 17, 0, '2023-05-31 23:00:24', '2023-06-17 15:50:55', 3),
(34, 'https://via.placeholder.com/640x480.png/000011?text=nesciunt', 'Delectus quidem iusto ut.', 8, 1, '2023-05-31 09:12:56', '2023-06-17 15:50:55', 27),
(35, 'https://via.placeholder.com/640x480.png/0077dd?text=rerum', 'Voluptatum perferendis explicabo id voluptas est ea et.', 21, 0, '2023-06-11 18:33:56', '2023-06-17 15:50:55', 17),
(36, 'https://via.placeholder.com/640x480.png/009944?text=cum', 'Reiciendis modi ex rerum consequuntur voluptatem voluptatem.', 11, 0, '2023-06-04 11:33:09', '2023-06-17 15:50:55', 4),
(37, 'https://via.placeholder.com/640x480.png/002266?text=dolor', 'Quos pariatur doloribus autem et.', 15, 1, '2023-05-21 07:23:05', '2023-06-17 15:50:55', 14),
(38, 'https://via.placeholder.com/640x480.png/00ee11?text=totam', 'Officiis alias libero sapiente perferendis libero perferendis.', 23, 1, '2023-06-01 03:39:26', '2023-06-17 15:50:55', 18),
(39, 'https://via.placeholder.com/640x480.png/004400?text=praesentium', 'Deserunt et voluptas repellendus alias velit fuga.', 1, 1, '2023-05-24 06:22:12', '2023-06-17 15:50:55', 7),
(40, 'https://via.placeholder.com/640x480.png/0033ee?text=consectetur', 'Voluptas officiis sit dolorem fuga expedita laudantium quis et.', 29, 0, '2023-06-15 04:10:41', '2023-06-17 15:50:55', 17),
(41, NULL, 'testing new post', 41, 0, '2023-06-17 16:24:10', '2023-06-17 16:25:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `file`, `created_at`, `updated_at`, `likes`, `dislikes`) VALUES
(1, 'Ut ut temporibus esse.', 'file0.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(2, 'Eos soluta.', 'file1.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(3, 'Non assumenda sapiente et ut.', 'file2.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(4, 'Error aut quod et aut.', 'file3.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(5, 'Odio totam aut ullam.', 'file4.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(6, 'Numquam suscipit id consectetur.', 'file5.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(7, 'Temporibus quo sapiente iste natus.', 'file6.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(8, 'Molestiae quia eaque et aut.', 'file7.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(9, 'Labore dignissimos laudantium consequatur.', 'file8.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(10, 'Beatae beatae eos nihil natus.', 'file9.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(11, 'Voluptatem sed et.', 'file10.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(12, 'Dolor non odit.', 'file11.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(13, 'Recusandae non voluptatibus eum.', 'file12.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(14, 'A assumenda veniam adipisci.', 'file13.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(15, 'Non atque illum.', 'file14.txt', '2023-06-17 18:05:01', '2023-06-17 18:05:01', 0, 0),
(16, 'Porro laudantium.', 'file0.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(17, 'Voluptatem sed facilis id.', 'file1.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(18, 'Assumenda sint dolorem ut.', 'file2.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(19, 'Placeat illo vel.', 'file3.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(20, 'Impedit pariatur molestiae.', 'file4.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(21, 'Delectus sunt ex quisquam.', 'file5.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(22, 'Molestiae aut amet.', 'file6.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(23, 'Ad soluta est.', 'file7.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(24, 'Molestias corrupti.', 'file8.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(25, 'Ut doloremque pariatur id.', 'file9.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(26, 'Et unde temporibus.', 'file10.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(27, 'Quia assumenda atque.', 'file11.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(28, 'Neque voluptatem.', 'file12.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(29, 'Vel aperiam delectus.', 'file13.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0),
(30, 'Temporibus labore rem consequuntur molestiae.', 'file14.txt', '2023-06-17 20:25:28', '2023-06-17 20:25:28', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
CREATE TABLE IF NOT EXISTS `project_user` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `project_user_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`project_id`, `user_id`) VALUES
(1, 29),
(2, 22),
(2, 32),
(2, 33),
(2, 35),
(3, 1),
(3, 18),
(4, 11),
(5, 5),
(5, 19),
(5, 21),
(5, 34),
(5, 40),
(6, 23),
(6, 25),
(6, 37),
(7, 2),
(7, 4),
(7, 21),
(7, 25),
(8, 12),
(8, 35),
(8, 39),
(9, 24),
(9, 31),
(9, 34),
(10, 9),
(11, 18),
(11, 23),
(11, 32),
(12, 6),
(12, 8),
(12, 15),
(12, 17),
(12, 33),
(13, 22),
(14, 28),
(14, 33),
(14, 36),
(14, 40),
(14, 41),
(15, 6),
(15, 17),
(15, 36),
(16, 3),
(16, 10),
(16, 11),
(17, 2),
(17, 14),
(17, 31),
(18, 6),
(18, 10),
(18, 39),
(18, 42),
(19, 1),
(19, 10),
(19, 17),
(19, 25),
(19, 39),
(20, 9),
(20, 10),
(20, 25),
(20, 36),
(21, 2),
(21, 7),
(21, 21),
(21, 32),
(21, 36),
(22, 4),
(22, 9),
(22, 12),
(22, 21),
(22, 28),
(23, 6),
(23, 11),
(23, 24),
(23, 34),
(24, 1),
(24, 13),
(24, 31),
(24, 33),
(24, 38),
(25, 4),
(25, 9),
(25, 41),
(26, 2),
(26, 25),
(26, 31),
(26, 38),
(27, 6),
(27, 25),
(27, 34),
(27, 39),
(28, 1),
(28, 10),
(28, 13),
(29, 14),
(29, 16),
(29, 33),
(30, 4),
(30, 21),
(30, 28),
(30, 30);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reporter_id` bigint(20) UNSIGNED NOT NULL,
  `reported_id` bigint(20) UNSIGNED NOT NULL,
  `report_type` enum('post','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_reported_id_foreign` (`reported_id`),
  KEY `reports_reporter_id_reported_id_index` (`reporter_id`,`reported_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorites` int(11) DEFAULT NULL,
  `pdp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pdc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `password`, `group`, `role`, `favorites`, `pdp`, `created_at`, `updated_at`, `pdc`) VALUES
(1, 'Zemlak', 'Elmo', 'hettie.jast@example.com', '$2y$10$/S8seTq1Dsr7FkVDZW6leO3D.5FVu5sC0GCMEr5xe.IbBmoTMCIMK', 4, 'admin', 5, 'https://via.placeholder.com/640x480.png/009955?text=a', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(2, 'Kulas', 'Sigrid', 'guillermo.carroll@example.net', '$2y$10$lLJb.Y2MvpyMt8VZ.P5T/eyooxSRs0nBdJaZUrwQTz.FaNzRnBxAi', 3, 'stagier', 8, 'https://via.placeholder.com/640x480.png/000011?text=quis', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(3, 'Rau', 'Kirk', 'xdooley@example.org', '$2y$10$SBmDnt9kgIXQ5SwOY5D.wO69Tc8iHBEsbDnxO3GElYhqEfscaJxt.', 2, 'stagier', 8, 'https://via.placeholder.com/640x480.png/0099aa?text=voluptas', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(4, 'Gorczany', 'Bernardo', 'albertha17@example.com', '$2y$10$dRyyG8TSCXaAcitKdYbZb.g6SYePr54TIU5eQMqqb9KP99rc1uP6S', 5, 'stagier', 14, 'https://via.placeholder.com/640x480.png/001199?text=natus', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(5, 'Bosco', 'Lorine', 'lola55@example.com', '$2y$10$l6dI4IIuyYgOs6USfHfL2elch2ZY0QtZQ4Dn9FRCAQrSupQ0dbkzi', 6, 'stagier', 3, 'https://via.placeholder.com/640x480.png/0077dd?text=vitae', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(6, 'Gusikowski', 'Chaim', 'violette.schulist@example.net', '$2y$10$qFWWcFO41qt7gekVAABdt.zqiQmF0TTXv4bCDyCEmxf8m98WAEpWq', 3, 'admin', 9, 'https://via.placeholder.com/640x480.png/009999?text=ullam', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(7, 'Eichmann', 'Malvina', 'atorphy@example.org', '$2y$10$VCibHWZqjAbbsIHMpbYCCu9jR.wLPp69CBGRqGn1kQWgmCQE4mGa.', 6, 'admin', 7, 'https://via.placeholder.com/640x480.png/00ff99?text=aut', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(8, 'Konopelski', 'Karina', 'celestino50@example.org', '$2y$10$DLbLg8/xDQHuFjdLKpNvz.SGdXJYlux.OTua93Qz/nxkJxKZ97Fo.', 5, 'stagier', 3, 'https://via.placeholder.com/640x480.png/00ff66?text=et', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(9, 'Grant', 'Carlie', 'emilia03@example.net', '$2y$10$lrewGvxPyUJLC13kcvk07uEd4AkBIJC3A2gt0UY7HzmmngkTWFWWO', 4, 'admin', 8, 'https://via.placeholder.com/640x480.png/003355?text=et', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(10, 'Waelchi', 'Lindsay', 'amalia74@example.net', '$2y$10$vuoE46UoEgMowNuWBc7VGuCEE.Al4xZsgoDq1oUpD8YLlWHiuL7ZS', 2, 'stagier', 4, 'https://via.placeholder.com/640x480.png/002255?text=est', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(11, 'West', 'Clare', 'jimmie.hagenes@example.com', '$2y$10$uNKAwkQOwkQuNefcN/lPUO.VesxUcLLlIT.fvdX532pv05I1rtA7W', 6, 'admin', 14, 'https://via.placeholder.com/640x480.png/00dd00?text=a', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(12, 'Kohler', 'Antonetta', 'hoppe.grayson@example.org', '$2y$10$omsrOkrOeMgaBiiXLqjqb.haROEh9e/qnRcrBH4/URHU5XgArO/Aa', 5, 'stagier', 1, 'https://via.placeholder.com/640x480.png/007733?text=aliquid', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(13, 'Nolan', 'Marguerite', 'rswaniawski@example.net', '$2y$10$L911KQcJIli/AA3htkNIt.lZ5IR.qrkisalSTtJ/Vhtukc0GyVc4.', 2, 'admin', 4, 'https://via.placeholder.com/640x480.png/004433?text=a', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(14, 'Howell', 'Eileen', 'mikayla71@example.net', '$2y$10$0PNo4LshnTgVXZ17KRna2emdbwCvlhsPtKgNV8BvVldqR6lGrAxoW', 6, 'stagier', 3, 'https://via.placeholder.com/640x480.png/003333?text=rerum', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(15, 'Bartell', 'Bo', 'delia.reichert@example.com', '$2y$10$qvq3NtnBh2wMP2Q4hJ/Zv.HSV19CcAMQe0zL8wCx3oTbx.MdurWuy', 2, 'stagier', 8, 'https://via.placeholder.com/640x480.png/0066ee?text=ipsam', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(16, 'Reilly', 'Clare', 'carroll.rebeca@example.com', '$2y$10$BWdWu0/NQKJWJq77KQSy4.PcAuQDMmbwlBAwgDqMZ1LCTxcehJxjG', 5, 'stagier', 9, 'https://via.placeholder.com/640x480.png/006611?text=praesentium', '2023-06-17 15:43:44', '2023-06-17 15:43:44', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(17, 'Runolfsdottir', 'Jermaine', 'jeffrey.pfannerstill@example.com', '$2y$10$.NbgQStc3AFk5.dbIcgVLOoVc4A1uwhWL5TmX.VZ2oMc/1XUrIWSK', 1, 'stagier', 9, 'https://via.placeholder.com/640x480.png/003366?text=est', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(18, 'Larson', 'Jalon', 'durgan.louvenia@example.net', '$2y$10$lxa5w1Os31PHxz/Bw1ZI6eI01ciR0EkJsH41UuFEQbCuOIcD0OkS.', 3, 'stagier', 3, 'https://via.placeholder.com/640x480.png/00eeee?text=non', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(19, 'Bechtelar', 'Clay', 'nella.corwin@example.net', '$2y$10$g7L2G7510E5PrLelRGzwgOk8O.EhWu3CcSQj8k1t.nC4TBK.1iJgG', 1, 'admin', 9, 'https://via.placeholder.com/640x480.png/00eecc?text=facilis', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(20, 'Auer', 'Leon', 'amanda.ziemann@example.org', '$2y$10$JCmwvxKGYJPfYVavWhAgeOm8bFyQyeGczKyQshTxUWkSrStRcwOFO', 5, 'stagier', 1, 'https://via.placeholder.com/640x480.png/00ee33?text=quia', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(21, 'Ondricka', 'Loma', 'katarina.casper@example.org', '$2y$10$pu6hCUnjrVCsHNhRspJLB.mdcO9XbavUnzUcxYORL2RGSSVnONuHy', 2, 'admin', 9, 'https://via.placeholder.com/640x480.png/00ffdd?text=occaecati', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(22, 'Wisoky', 'Karlie', 'mary.yundt@example.net', '$2y$10$ij66sKyNRtT4qgcdF.p3gezK7z3h8YV5RSbweBK.PNtpGx7DhS/kG', 4, 'stagier', 11, 'https://via.placeholder.com/640x480.png/000077?text=illo', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(23, 'Lehner', 'Fred', 'eleazar10@example.net', '$2y$10$Bqt2/V6jifbr9ruJlPY3/ev5ssCUj3jXq8Hj51XIE71WhjLaExmGK', 2, 'stagier', 14, 'https://via.placeholder.com/640x480.png/0011bb?text=enim', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(24, 'Powlowski', 'Bernhard', 'emiliano.durgan@example.org', '$2y$10$0PCcaL3Q0N41y7oZqHt97.PjxXxFHhWRQxLgXNMu0iIQ.l12w3r7S', 6, 'admin', 7, 'https://via.placeholder.com/640x480.png/005544?text=praesentium', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(25, 'Jenkins', 'Maria', 'htromp@example.com', '$2y$10$9nUou9Lsy38fdr63fCXopeHG5homhVcofzfkLCYRFYQDAbe3ce/gK', 3, 'stagier', 11, 'https://via.placeholder.com/640x480.png/008833?text=nam', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(26, 'Gusikowski', 'Loma', 'lkoepp@example.com', '$2y$10$eyGatoMQGNX9Hg9XxAE9B.EKsanK9oRUJqTTz2f0QSqQ.eoRDbnVm', 2, 'admin', 1, 'https://via.placeholder.com/640x480.png/006600?text=asperiores', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(27, 'Heaney', 'Rae', 'shane.hamill@example.net', '$2y$10$d7SUecyN//DMUGCZLWMYGOGchwO8kACqj1qFJAjHJxXyXX9ba.yVC', 2, 'admin', 12, 'https://via.placeholder.com/640x480.png/001166?text=ut', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(28, 'Lindgren', 'Destiny', 'ernie90@example.net', '$2y$10$ab4aGERIQ4d4X09EOT1w2u0/aq1RVy4XqmWEOJtKm33XV1mr.t3ey', 5, 'stagier', 7, 'https://via.placeholder.com/640x480.png/005599?text=voluptas', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(29, 'Leannon', 'Robyn', 'schulist.brennon@example.com', '$2y$10$dVRCVGI1xRRodfpUyJ.IBuDBhPzXKSfSvvsZ6djQlKj8TW60EHCRO', 4, 'stagier', 15, 'https://via.placeholder.com/640x480.png/00ee77?text=distinctio', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(30, 'Rowe', 'Jordyn', 'carlee.ebert@example.org', '$2y$10$Fh66wyVz8voQgMHklcm4meOF1Xd/b03BjKpYJS7X/5IzchXvY9Wse', 6, 'admin', 2, 'https://via.placeholder.com/640x480.png/00aa88?text=officiis', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(31, 'Bruen', 'Tobin', 'brandon.rutherford@example.org', '$2y$10$U3OjmTRO2g0HkWpt1sr2Y.rp2e/84iFpX62dbxsoq3hU4MUPJGKNi', 5, 'admin', 11, 'https://via.placeholder.com/640x480.png/00cc88?text=numquam', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(32, 'Cummings', 'Mark', 'norene87@example.org', '$2y$10$hhW1L4vsD4r1NOQjO9Y3AOiowva6BXWN4F36QSghCWOJt5LdHN4Lu', 5, 'admin', 5, 'https://via.placeholder.com/640x480.png/0055ff?text=tempore', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(33, 'Bailey', 'Abdullah', 'agustin09@example.org', '$2y$10$hzNv/SAL6NTtVpIgGlK2beKTTfSZgguIai0SqusHxxg.sfN30c7GS', 4, 'stagier', 3, 'https://via.placeholder.com/640x480.png/0011ff?text=magni', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(34, 'Johnson', 'Magdalen', 'ikulas@example.com', '$2y$10$C7.N0lgUhvp43vQsY1yg5.HqmOtPbB.WtauHHqtCej4asicaOXnxm', 4, 'stagier', 3, 'https://via.placeholder.com/640x480.png/003322?text=qui', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(35, 'Kshlerin', 'Maxime', 'ashtyn69@example.com', '$2y$10$nSBv0l2lq5PFK6K1KA9gX.TyZFMWl.diLiPGdPzrgGR7qmOcuirme', 2, 'admin', 8, 'https://via.placeholder.com/640x480.png/009988?text=quae', '2023-06-17 15:43:45', '2023-06-17 15:43:45', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(36, 'McCullough', 'Bernadette', 'itzel.dach@example.net', '$2y$10$vEeHw8IeDcUeS/Ulbg6Rh.f/BLyq59KA2rlGEinljmq0LfGMArSji', 5, 'admin', 14, 'https://via.placeholder.com/640x480.png/009955?text=hic', '2023-06-17 15:43:46', '2023-06-17 15:43:46', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(37, 'Turner', 'Darrion', 'gabriel.oreilly@example.net', '$2y$10$QJ7Nm3.JVHpFZzS5wpvmNeJKuFPHLjxVN/6yQ.TOHPBqlvwMWFynm', 4, 'stagier', 12, 'https://via.placeholder.com/640x480.png/006633?text=soluta', '2023-06-17 15:43:46', '2023-06-17 15:43:46', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(38, 'Kerluke', 'Xander', 'chanelle70@example.org', '$2y$10$4Fil7.xyFmF4kuyIQYB9yu05MOuLvBpBpw0HbcOMslVkVh9DH81XC', 5, 'admin', 6, 'https://via.placeholder.com/640x480.png/009944?text=consequatur', '2023-06-17 15:43:46', '2023-06-17 15:43:46', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(39, 'O\'Connell', 'Fanny', 'general.thiel@example.com', '$2y$10$MdM7iuGRawz0Mazb4n.tSuf5Uv0RoWgqrWd3MVXIB3ArOMBsDc3/K', 1, 'admin', 7, 'https://via.placeholder.com/640x480.png/0011cc?text=ipsum', '2023-06-17 15:43:46', '2023-06-17 15:43:46', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(40, 'Sporer', 'Webster', 'tframi@example.org', '$2y$10$pLX59r/OiauQ7NDoCThTkOtQhoeXUDchkxUZYOW71w9edRjARVyZi', 5, 'stagier', 3, 'https://via.placeholder.com/640x480.png/0022ff?text=perspiciatis', '2023-06-17 15:43:46', '2023-06-17 15:43:46', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(41, 'Nacer Eddine', 'Majid', 'majid.nacereddine@ofppt-edu.ma', '$2y$10$/S8seTq1Dsr7FkVDZW6leO3D.5FVu5sC0GCMEr5xe.IbBmoTMCIMK', 1, 'stagier', 1, 'https://via.placeholder.com/640x480.png/008833?text=nam', '2023-06-17 16:53:59', '2023-06-17 16:53:59', 'https://via.placeholder.com/640x480.png/000011?text=quis'),
(42, 'SUPER', 'ADMIN', 'admin@admin.com', '$2y$10$/S8seTq1Dsr7FkVDZW6leO3D.5FVu5sC0GCMEr5xe.IbBmoTMCIMK', NULL, 'super_admin', NULL, 'assets/person/nacer.png', '2023-06-17 18:02:54', '2023-06-17 18:02:54', 'assets/post/1.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
