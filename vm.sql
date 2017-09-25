-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 25, 2017 at 11:09 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Voomsway`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-09-19 22:03:11', '2017-09-19 22:03:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/Voomsway', 'yes'),
(2, 'home', 'http://localhost:8888/Voomsway', 'yes'),
(3, 'blogname', 'Voomsway', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'icparklins@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:232:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:13:\"/portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:43:\"/portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:38:\"/portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:30:\"/portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:13:\"/galleries/?$\";s:29:\"index.php?post_type=galleries\";s:43:\"/galleries/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=galleries&feed=$matches[1]\";s:38:\"/galleries/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=galleries&feed=$matches[1]\";s:30:\"/galleries/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=galleries&paged=$matches[1]\";s:8:\"/team/?$\";s:24:\"index.php?post_type=team\";s:38:\"/team/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:33:\"/team/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=team&feed=$matches[1]\";s:25:\"/team/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=team&paged=$matches[1]\";s:8:\"/faqs/?$\";s:24:\"index.php?post_type=faqs\";s:38:\"/faqs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=faqs&feed=$matches[1]\";s:33:\"/faqs/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=faqs&feed=$matches[1]\";s:25:\"/faqs/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=faqs&paged=$matches[1]\";s:13:\"/directory/?$\";s:29:\"index.php?post_type=directory\";s:43:\"/directory/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=directory&feed=$matches[1]\";s:38:\"/directory/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=directory&feed=$matches[1]\";s:30:\"/directory/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=directory&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:59:\"portfolio-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio-category=$matches[1]&feed=$matches[2]\";s:54:\"portfolio-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?portfolio-category=$matches[1]&feed=$matches[2]\";s:35:\"portfolio-category/([^/]+)/embed/?$\";s:51:\"index.php?portfolio-category=$matches[1]&embed=true\";s:47:\"portfolio-category/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?portfolio-category=$matches[1]&paged=$matches[2]\";s:29:\"portfolio-category/([^/]+)/?$\";s:40:\"index.php?portfolio-category=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:50:\"portfolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:45:\"portfolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"gallery-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gallery-category=$matches[1]&feed=$matches[2]\";s:52:\"gallery-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?gallery-category=$matches[1]&feed=$matches[2]\";s:33:\"gallery-category/([^/]+)/embed/?$\";s:49:\"index.php?gallery-category=$matches[1]&embed=true\";s:45:\"gallery-category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?gallery-category=$matches[1]&paged=$matches[2]\";s:27:\"gallery-category/([^/]+)/?$\";s:38:\"index.php?gallery-category=$matches[1]\";s:37:\"galleries/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"galleries/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"galleries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"galleries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"galleries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"galleries/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"galleries/([^/]+)/embed/?$\";s:42:\"index.php?galleries=$matches[1]&embed=true\";s:30:\"galleries/([^/]+)/trackback/?$\";s:36:\"index.php?galleries=$matches[1]&tb=1\";s:50:\"galleries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?galleries=$matches[1]&feed=$matches[2]\";s:45:\"galleries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?galleries=$matches[1]&feed=$matches[2]\";s:38:\"galleries/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?galleries=$matches[1]&paged=$matches[2]\";s:45:\"galleries/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?galleries=$matches[1]&cpage=$matches[2]\";s:34:\"galleries/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?galleries=$matches[1]&page=$matches[2]\";s:26:\"galleries/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"galleries/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"galleries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"galleries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"galleries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"galleries/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"team-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?team-category=$matches[1]&feed=$matches[2]\";s:49:\"team-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?team-category=$matches[1]&feed=$matches[2]\";s:30:\"team-category/([^/]+)/embed/?$\";s:46:\"index.php?team-category=$matches[1]&embed=true\";s:42:\"team-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?team-category=$matches[1]&paged=$matches[2]\";s:24:\"team-category/([^/]+)/?$\";s:35:\"index.php?team-category=$matches[1]\";s:32:\"team/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"team/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"team/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"team/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"team/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"team/([^/]+)/embed/?$\";s:37:\"index.php?team=$matches[1]&embed=true\";s:25:\"team/([^/]+)/trackback/?$\";s:31:\"index.php?team=$matches[1]&tb=1\";s:45:\"team/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:40:\"team/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?team=$matches[1]&feed=$matches[2]\";s:33:\"team/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&paged=$matches[2]\";s:40:\"team/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?team=$matches[1]&cpage=$matches[2]\";s:29:\"team/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?team=$matches[1]&page=$matches[2]\";s:21:\"team/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"team/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"team/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"team/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"team/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"faqs-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?faqs-category=$matches[1]&feed=$matches[2]\";s:49:\"faqs-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?faqs-category=$matches[1]&feed=$matches[2]\";s:30:\"faqs-category/([^/]+)/embed/?$\";s:46:\"index.php?faqs-category=$matches[1]&embed=true\";s:42:\"faqs-category/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?faqs-category=$matches[1]&paged=$matches[2]\";s:24:\"faqs-category/([^/]+)/?$\";s:35:\"index.php?faqs-category=$matches[1]\";s:32:\"faqs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"faqs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"faqs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"faqs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"faqs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"faqs/([^/]+)/embed/?$\";s:37:\"index.php?faqs=$matches[1]&embed=true\";s:25:\"faqs/([^/]+)/trackback/?$\";s:31:\"index.php?faqs=$matches[1]&tb=1\";s:45:\"faqs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?faqs=$matches[1]&feed=$matches[2]\";s:40:\"faqs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?faqs=$matches[1]&feed=$matches[2]\";s:33:\"faqs/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&paged=$matches[2]\";s:40:\"faqs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?faqs=$matches[1]&cpage=$matches[2]\";s:29:\"faqs/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?faqs=$matches[1]&page=$matches[2]\";s:21:\"faqs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"faqs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"faqs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"faqs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"faqs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"directory-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?directory-category=$matches[1]&feed=$matches[2]\";s:54:\"directory-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?directory-category=$matches[1]&feed=$matches[2]\";s:35:\"directory-category/([^/]+)/embed/?$\";s:51:\"index.php?directory-category=$matches[1]&embed=true\";s:47:\"directory-category/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?directory-category=$matches[1]&paged=$matches[2]\";s:29:\"directory-category/([^/]+)/?$\";s:40:\"index.php?directory-category=$matches[1]\";s:37:\"directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"directory/([^/]+)/embed/?$\";s:42:\"index.php?directory=$matches[1]&embed=true\";s:30:\"directory/([^/]+)/trackback/?$\";s:36:\"index.php?directory=$matches[1]&tb=1\";s:50:\"directory/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?directory=$matches[1]&feed=$matches[2]\";s:45:\"directory/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?directory=$matches[1]&feed=$matches[2]\";s:38:\"directory/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?directory=$matches[1]&paged=$matches[2]\";s:45:\"directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?directory=$matches[1]&cpage=$matches[2]\";s:34:\"directory/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?directory=$matches[1]&page=$matches[2]\";s:26:\"directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"spb-section-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?spb-section-category=$matches[1]&feed=$matches[2]\";s:54:\"spb-section-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?spb-section-category=$matches[1]&feed=$matches[2]\";s:35:\"spb-section-category/(.+?)/embed/?$\";s:53:\"index.php?spb-section-category=$matches[1]&embed=true\";s:47:\"spb-section-category/(.+?)/page/?([0-9]{1,})/?$\";s:60:\"index.php?spb-section-category=$matches[1]&paged=$matches[2]\";s:29:\"spb-section-category/(.+?)/?$\";s:42:\"index.php?spb-section-category=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"swift-framework/swift-framework.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cardinal', 'yes'),
(41, 'stylesheet', 'cardinal', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:13:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";N;s:9:\"sidebar-5\";N;s:9:\"sidebar-6\";N;s:9:\"sidebar-7\";N;s:9:\"sidebar-8\";N;s:15:\"footer-column-1\";N;s:15:\"footer-column-2\";N;s:15:\"footer-column-3\";N;s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1506024297;a:1:{s:36:\"check_plugin_updates-swift-framework\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1506031421;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1506031479;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1506031580;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1506020908;s:7:\"checked\";a:4:{s:8:\"cardinal\";s:6:\"2.6.22\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_timeout_browser_831e59c0d68c84d1b020b2cb06febdbb', '1506463434', 'no'),
(117, '_site_transient_browser_831e59c0d68c84d1b020b2cb06febdbb', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"60.0.3112.90\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(120, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1505858691;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'current_theme', 'Cardinal', 'yes'),
(126, 'theme_mods_cardinal', 'a:3:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:15:\"main_navigation\";i:3;}}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(128, 'sf_theme', 'cardinal', 'yes'),
(129, 'widget_twitter-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(130, 'widget_flickr-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(131, 'widget_instagram-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(132, 'widget_video-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(133, 'widget_sf_recent_custom_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'widget_sf_recent_custom_portfolio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(135, 'widget_sf_custom_portfolio_grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(136, 'widget_advert-grid-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(137, 'widget_sf_infocus_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(138, 'widget_sf_recent_custom_comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(139, 'widget_lip_most_loved_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(140, 'sf_customizer', 'a:100:{s:17:\"design_style_type\";s:7:\"minimal\";s:12:\"accent_color\";s:7:\"#fe504f\";s:16:\"accent_alt_color\";s:7:\"#ffffff\";s:22:\"secondary_accent_color\";s:7:\"#222222\";s:26:\"secondary_accent_alt_color\";s:7:\"#ffffff\";s:13:\"page_bg_color\";s:7:\"#222222\";s:25:\"inner_page_bg_transparent\";s:5:\"color\";s:19:\"inner_page_bg_color\";s:7:\"#FFFFFF\";s:20:\"section_divide_color\";s:7:\"#e4e4e4\";s:12:\"alt_bg_color\";s:7:\"#f7f7f7\";s:15:\"topbar_bg_color\";s:7:\"#ffffff\";s:17:\"topbar_text_color\";s:7:\"#222222\";s:17:\"topbar_link_color\";s:7:\"#666666\";s:23:\"topbar_link_hover_color\";s:7:\"#fe504f\";s:20:\"topbar_divider_color\";s:7:\"#e3e3e3\";s:15:\"header_bg_color\";s:7:\"#ffffff\";s:21:\"header_bg_transparent\";s:5:\"color\";s:19:\"header_border_color\";s:7:\"#e4e4e4\";s:17:\"header_text_color\";s:4:\"#222\";s:17:\"header_link_color\";s:4:\"#222\";s:23:\"header_link_hover_color\";s:7:\"#fe504f\";s:20:\"header_divider_style\";s:7:\"divider\";s:20:\"mobile_menu_bg_color\";s:4:\"#222\";s:25:\"mobile_menu_divider_color\";s:4:\"#444\";s:22:\"mobile_menu_text_color\";s:7:\"#e4e4e4\";s:22:\"mobile_menu_link_color\";s:4:\"#fff\";s:28:\"mobile_menu_link_hover_color\";s:7:\"#fe504f\";s:15:\"nav_hover_style\";s:8:\"standard\";s:12:\"nav_bg_color\";s:4:\"#fff\";s:14:\"nav_text_color\";s:7:\"#252525\";s:18:\"nav_bg_hover_color\";s:7:\"#f7f7f7\";s:20:\"nav_text_hover_color\";s:7:\"#fe504f\";s:21:\"nav_selected_bg_color\";s:7:\"#e3e3e3\";s:23:\"nav_selected_text_color\";s:7:\"#fe504f\";s:17:\"nav_pointer_color\";s:7:\"#07c1b6\";s:15:\"nav_sm_bg_color\";s:7:\"#FFFFFF\";s:17:\"nav_sm_text_color\";s:7:\"#666666\";s:21:\"nav_sm_bg_hover_color\";s:7:\"#f7f7f7\";s:23:\"nav_sm_text_hover_color\";s:7:\"#000000\";s:26:\"nav_sm_selected_text_color\";s:7:\"#000000\";s:11:\"nav_divider\";s:5:\"solid\";s:17:\"nav_divider_color\";s:7:\"#f0f0f0\";s:21:\"overlay_menu_bg_color\";s:7:\"#fe504f\";s:23:\"overlay_menu_link_color\";s:7:\"#ffffff\";s:29:\"overlay_menu_link_hover_color\";s:7:\"#fe504f\";s:32:\"overlay_menu_link_hover_bg_color\";s:7:\"#ffffff\";s:18:\"promo_bar_bg_color\";s:7:\"#e4e4e4\";s:20:\"promo_bar_text_color\";s:4:\"#222\";s:19:\"breadcrumb_bg_color\";s:7:\"#e4e4e4\";s:21:\"breadcrumb_text_color\";s:7:\"#666666\";s:21:\"breadcrumb_link_color\";s:7:\"#999999\";s:21:\"page_heading_bg_color\";s:7:\"#f7f7f7\";s:23:\"page_heading_text_color\";s:7:\"#222222\";s:23:\"page_heading_text_align\";s:4:\"left\";s:10:\"body_color\";s:7:\"#222222\";s:14:\"body_alt_color\";s:7:\"#222222\";s:10:\"link_color\";s:7:\"#444444\";s:16:\"link_hover_color\";s:7:\"#999999\";s:8:\"h1_color\";s:7:\"#222222\";s:8:\"h2_color\";s:7:\"#222222\";s:8:\"h3_color\";s:7:\"#222222\";s:8:\"h4_color\";s:7:\"#222222\";s:8:\"h5_color\";s:7:\"#222222\";s:8:\"h6_color\";s:7:\"#222222\";s:16:\"overlay_bg_color\";s:7:\"#fe504f\";s:18:\"overlay_text_color\";s:7:\"#ffffff\";s:28:\"article_review_bar_alt_color\";s:7:\"#f7f7f7\";s:24:\"article_review_bar_color\";s:7:\"#2e2e36\";s:29:\"article_review_bar_text_color\";s:4:\"#fff\";s:23:\"article_extras_bg_color\";s:7:\"#f7f7f7\";s:19:\"article_np_bg_color\";s:4:\"#444\";s:21:\"article_np_text_color\";s:4:\"#fff\";s:14:\"input_bg_color\";s:7:\"#f7f7f7\";s:16:\"input_text_color\";s:7:\"#222222\";s:23:\"icon_container_bg_color\";s:7:\"#1dc6df\";s:13:\"sf_icon_color\";s:7:\"#1dc6df\";s:29:\"icon_container_hover_bg_color\";s:4:\"#222\";s:17:\"sf_icon_alt_color\";s:7:\"#ffffff\";s:19:\"boxed_content_color\";s:7:\"#07c1b6\";s:15:\"share_button_bg\";s:7:\"#fe504f\";s:17:\"share_button_text\";s:7:\"#ffffff\";s:10:\"bold_rp_bg\";s:7:\"#e3e3e3\";s:12:\"bold_rp_text\";s:4:\"#222\";s:16:\"bold_rp_hover_bg\";s:7:\"#fe504f\";s:18:\"bold_rp_hover_text\";s:7:\"#ffffff\";s:15:\"tweet_slider_bg\";s:7:\"#1dc6df\";s:17:\"tweet_slider_text\";s:7:\"#ffffff\";s:17:\"tweet_slider_link\";s:7:\"#339933\";s:23:\"tweet_slider_link_hover\";s:7:\"#ffffff\";s:21:\"testimonial_slider_bg\";s:7:\"#1dc6df\";s:23:\"testimonial_slider_text\";s:7:\"#ffffff\";s:15:\"footer_bg_color\";s:7:\"#222222\";s:17:\"footer_text_color\";s:7:\"#cccccc\";s:17:\"footer_link_color\";s:7:\"#ffffff\";s:23:\"footer_link_hover_color\";s:7:\"#cccccc\";s:19:\"footer_border_color\";s:7:\"#333333\";s:18:\"copyright_bg_color\";s:7:\"#222222\";s:20:\"copyright_text_color\";s:7:\"#999999\";s:20:\"copyright_link_color\";s:7:\"#ffffff\";s:26:\"copyright_link_hover_color\";s:7:\"#cccccc\";}', 'yes'),
(141, 'redux_version_upgraded_from', '3.6.3.5', 'yes'),
(142, '_transient_timeout__redux_activation_redirect', '1506021438', 'no'),
(143, '_transient__redux_activation_redirect', '1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(146, 'sf_cardinal_options', 'a:249:{s:8:\"last_tab\";s:2:\"15\";s:17:\"enable_responsive\";s:1:\"1\";s:13:\"site_maxwidth\";s:4:\"1170\";s:10:\"enable_rtl\";s:1:\"0\";s:11:\"page_layout\";s:9:\"fullwidth\";s:18:\"enable_page_shadow\";s:1:\"1\";s:23:\"enable_page_transitions\";s:1:\"0\";s:15:\"page_transition\";s:4:\"wave\";s:19:\"enable_articleswipe\";s:1:\"0\";s:16:\"enable_backtotop\";s:1:\"1\";s:13:\"sidebar_width\";s:8:\"standard\";s:21:\"enable_stickysidebars\";s:1:\"0\";s:15:\"onepagenav_type\";s:6:\"arrows\";s:20:\"disable_pagecomments\";s:1:\"1\";s:18:\"enable_twitter_rts\";s:1:\"0\";s:21:\"breadcrumb_in_heading\";s:1:\"0\";s:22:\"post_links_match_thumb\";s:1:\"0\";s:14:\"custom_favicon\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:16:\"custom_ios_title\";s:0:\"\";s:17:\"custom_ios_icon57\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:17:\"custom_ios_icon72\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:18:\"custom_ios_icon114\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:18:\"custom_ios_icon144\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:12:\"rss_feed_url\";s:10:\"?feed=rss2\";s:16:\"google_analytics\";s:0:\"\";s:23:\"custom_admin_login_logo\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:15:\"overlay_opacity\";s:2:\"90\";s:25:\"disable_mobile_animations\";s:1:\"1\";s:20:\"enable_styleswitcher\";s:1:\"0\";s:18:\"enable_maintenance\";s:1:\"0\";s:21:\"maintenance_mode_page\";s:0:\"\";s:18:\"enable_min_scripts\";s:1:\"0\";s:16:\"404_page_content\";s:172:\"Sorry but we couldn\'t find the page you are looking for. Please check to make sure you\'ve typed the URL correctly. You may also want to search for what you are looking for.\";s:18:\"404_sidebar_config\";s:13:\"right-sidebar\";s:16:\"404_left_sidebar\";s:9:\"sidebar-1\";s:17:\"404_right_sidebar\";s:9:\"sidebar-1\";s:19:\"disable_social_meta\";s:1:\"0\";s:23:\"twitter_author_username\";s:0:\"\";s:17:\"googleplus_author\";s:0:\"\";s:14:\"disable_loveit\";s:1:\"0\";s:11:\"loveit_icon\";s:8:\"ss-heart\";s:11:\"loveit_text\";s:5:\"Likes\";s:17:\"disable_sfgallery\";s:1:\"0\";s:12:\"lightbox_nav\";s:7:\"default\";s:15:\"lightbox_thumbs\";s:1:\"1\";s:13:\"lightbox_skin\";s:5:\"light\";s:16:\"lightbox_sharing\";s:1:\"1\";s:24:\"carousel_paginationSpeed\";s:3:\"800\";s:19:\"carousel_slideSpeed\";s:3:\"200\";s:17:\"carousel_autoplay\";s:1:\"0\";s:19:\"carousel_pagination\";s:1:\"1\";s:21:\"slider_slideshowSpeed\";s:4:\"7000\";s:21:\"slider_animationSpeed\";s:3:\"600\";s:15:\"slider_autoplay\";s:1:\"0\";s:11:\"slider_loop\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:27:\"colour_scheme_select_scheme\";s:7:\"default\";s:12:\"use_bg_image\";s:1:\"0\";s:15:\"custom_bg_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:7:\"bg_size\";s:4:\"auto\";s:9:\"enable_tb\";s:1:\"0\";s:14:\"tb_left_config\";s:4:\"text\";s:12:\"tb_left_text\";s:48:\"Contact us on 0800 123 4567 or info@cardinal.com\";s:15:\"tb_right_config\";s:4:\"text\";s:13:\"tb_right_text\";s:48:\"Contact us on 0800 123 4567 or info@cardinal.com\";s:20:\"enable_sticky_topbar\";s:1:\"0\";s:13:\"header_layout\";s:8:\"header-7\";s:16:\"fullwidth_header\";s:1:\"1\";s:18:\"header_left_config\";s:6:\"social\";s:16:\"header_left_text\";s:48:\"Contact us on 0800 123 4567 or info@cardinal.com\";s:19:\"header_right_config\";s:6:\"social\";s:17:\"header_right_text\";s:48:\"Contact us on 0800 123 4567 or info@cardinal.com\";s:21:\"contact_slideout_page\";s:0:\"\";s:8:\"show_sub\";s:1:\"0\";s:16:\"show_translation\";s:1:\"0\";s:12:\"show_account\";s:1:\"1\";s:9:\"show_cart\";s:1:\"0\";s:15:\"show_cart_count\";s:1:\"0\";s:13:\"show_wishlist\";s:1:\"0\";s:8:\"sub_code\";s:0:\"\";s:18:\"enable_mini_header\";s:1:\"0\";s:25:\"enable_mini_header_resize\";s:1:\"0\";s:25:\"enable_sticky_header_hide\";s:1:\"0\";s:18:\"header_search_type\";s:9:\"search-on\";s:16:\"header_search_pt\";s:3:\"any\";s:20:\"vertical_header_text\";s:112:\"©[the-year] Cardinal · Built with love by <a href=\"http://www.swiftideas.net\">Swift Ideas</a> using [wp-link].\";s:11:\"logo_upload\";a:5:{s:3:\"url\";s:75:\"http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo.png\";s:2:\"id\";s:2:\"15\";s:6:\"height\";s:2:\"53\";s:5:\"width\";s:3:\"252\";s:9:\"thumbnail\";s:82:\"http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo-150x53.png\";}s:18:\"retina_logo_upload\";a:5:{s:3:\"url\";s:79:\"http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo_@x2.png\";s:2:\"id\";s:2:\"16\";s:6:\"height\";s:3:\"106\";s:5:\"width\";s:3:\"505\";s:9:\"thumbnail\";s:87:\"http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo_@x2-150x106.png\";}s:15:\"alt_logo_upload\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:14:\"logo_maxheight\";s:2:\"40\";s:12:\"logo_padding\";s:0:\"\";s:19:\"enable_logo_tagline\";s:1:\"0\";s:9:\"logo_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"24px\";s:5:\"color\";s:4:\"#222\";}s:19:\"mobile_header_shown\";s:11:\"tablet-land\";s:20:\"mobile_header_sticky\";s:1:\"0\";s:20:\"mobile_header_layout\";s:9:\"left-logo\";s:16:\"mobile_menu_type\";s:8:\"slideout\";s:15:\"mobile_top_text\";s:0:\"\";s:18:\"mobile_show_search\";s:1:\"0\";s:23:\"mobile_show_translation\";s:1:\"0\";s:16:\"mobile_show_cart\";s:1:\"0\";s:19:\"mobile_show_account\";s:1:\"1\";s:13:\"enable_footer\";s:1:\"1\";s:21:\"enable_footer_divider\";s:1:\"1\";s:13:\"footer_layout\";s:8:\"footer-1\";s:16:\"enable_copyright\";s:1:\"1\";s:24:\"enable_copyright_divider\";s:1:\"1\";s:21:\"footer_copyright_text\";s:112:\"©[the-year] Cardinal · Built with love by <a href=\"http://www.swiftideas.net\">Swift Ideas</a> using [wp-link].\";s:15:\"copyright_right\";s:4:\"menu\";s:27:\"footer_copyright_text_right\";s:112:\"©[the-year] Cardinal · Built with love by <a href=\"http://www.swiftideas.net\">Swift Ideas</a> using [wp-link].\";s:13:\"show_backlink\";s:1:\"1\";s:9:\"ss_enable\";s:1:\"1\";s:9:\"ss_mobile\";s:1:\"1\";s:11:\"field1_text\";s:15:\"I\'m looking for\";s:20:\"field1_filter_parent\";s:0:\"\";s:19:\"field1_default_text\";s:7:\"product\";s:11:\"field2_text\";s:9:\"in a size\";s:20:\"field2_filter_parent\";s:0:\"\";s:19:\"field2_default_text\";s:4:\"size\";s:11:\"field3_text\";s:13:\". Show me the\";s:20:\"field3_filter_parent\";s:0:\"\";s:19:\"field3_default_text\";s:6:\"colour\";s:11:\"field4_text\";s:0:\"\";s:20:\"field4_filter_parent\";s:0:\"\";s:19:\"field4_default_text\";s:0:\"\";s:11:\"field5_text\";s:0:\"\";s:20:\"field5_filter_parent\";s:0:\"\";s:19:\"field5_default_text\";s:0:\"\";s:11:\"field6_text\";s:0:\"\";s:20:\"field6_filter_parent\";s:0:\"\";s:19:\"field6_default_text\";s:0:\"\";s:13:\"ss_final_text\";s:6:\"items.\";s:14:\"ss_button_text\";s:12:\"Super Search\";s:23:\"enable_footer_promo_bar\";s:1:\"0\";s:21:\"footer_promo_bar_type\";s:6:\"button\";s:21:\"footer_promo_bar_text\";s:31:\"Enter your promo bar text here.\";s:29:\"footer_promo_bar_button_color\";s:6:\"accent\";s:28:\"footer_promo_bar_button_text\";s:12:\"Button Text.\";s:28:\"footer_promo_bar_button_link\";s:7:\"http://\";s:30:\"footer_promo_bar_button_target\";s:5:\"_self\";s:13:\"review_format\";s:0:\"\";s:12:\"review_cat_1\";s:0:\"\";s:12:\"review_cat_2\";s:0:\"\";s:12:\"review_cat_3\";s:0:\"\";s:12:\"review_cat_4\";s:0:\"\";s:9:\"body_font\";a:10:{s:11:\"font-family\";s:15:\"Source Sans Pro\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"14px\";s:11:\"line-height\";s:4:\"20px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h1_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"24px\";s:11:\"line-height\";s:4:\"34px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h2_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"20px\";s:11:\"line-height\";s:4:\"30px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h3_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"18px\";s:11:\"line-height\";s:4:\"24px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h4_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"16px\";s:11:\"line-height\";s:4:\"20px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h5_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"14px\";s:11:\"line-height\";s:4:\"18px\";s:14:\"letter-spacing\";s:0:\"\";}s:7:\"h6_font\";a:10:{s:11:\"font-family\";s:4:\"Lato\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:9:\"font-size\";s:4:\"12px\";s:11:\"line-height\";s:4:\"16px\";s:14:\"letter-spacing\";s:0:\"\";}s:9:\"menu_font\";a:10:{s:11:\"font-family\";s:15:\"Source Sans Pro\";s:12:\"font-options\";s:0:\"\";s:6:\"google\";s:1:\"1\";s:11:\"font-backup\";s:0:\"\";s:11:\"font-weight\";s:3:\"400\";s:10:\"font-style\";s:0:\"\";s:7:\"subsets\";s:0:\"\";s:10:\"text-align\";s:0:\"\";s:9:\"font-size\";s:4:\"18px\";s:14:\"letter-spacing\";s:0:\"\";}s:25:\"default_show_page_heading\";s:1:\"1\";s:22:\"default_sidebar_config\";s:11:\"no-sidebars\";s:20:\"default_left_sidebar\";s:9:\"sidebar-1\";s:21:\"default_right_sidebar\";s:9:\"sidebar-1\";s:27:\"default_post_sidebar_config\";s:11:\"no-sidebars\";s:25:\"default_post_left_sidebar\";s:9:\"sidebar-1\";s:26:\"default_post_right_sidebar\";s:9:\"sidebar-1\";s:22:\"default_include_author\";s:1:\"1\";s:22:\"default_include_social\";s:1:\"1\";s:23:\"default_include_related\";s:1:\"1\";s:19:\"default_thumb_media\";s:5:\"image\";s:20:\"default_detail_media\";s:5:\"image\";s:21:\"default_media_display\";s:8:\"standard\";s:22:\"archive_sidebar_config\";s:13:\"right-sidebar\";s:20:\"archive_sidebar_left\";s:9:\"sidebar-1\";s:21:\"archive_sidebar_right\";s:9:\"sidebar-1\";s:20:\"archive_display_type\";s:7:\"masonry\";s:23:\"archive_display_columns\";s:1:\"2\";s:22:\"archive_content_output\";s:7:\"excerpt\";s:30:\"portfolio_archive_display_type\";s:8:\"standard\";s:25:\"portfolio_archive_columns\";s:1:\"4\";s:17:\"bp_sidebar_config\";s:13:\"right-sidebar\";s:15:\"bp_sidebar_left\";s:9:\"sidebar-1\";s:16:\"bp_sidebar_right\";s:9:\"sidebar-1\";s:17:\"bb_sidebar_config\";s:13:\"right-sidebar\";s:15:\"bb_sidebar_left\";s:9:\"sidebar-1\";s:16:\"bb_sidebar_right\";s:9:\"sidebar-1\";s:9:\"blog_page\";s:0:\"\";s:31:\"enable_post_category_navigation\";s:1:\"0\";s:13:\"single_author\";s:1:\"0\";s:12:\"remove_dates\";s:1:\"0\";s:14:\"portfolio_page\";s:0:\"\";s:26:\"enable_category_navigation\";s:1:\"0\";s:26:\"related_projects_fullwidth\";s:1:\"1\";s:24:\"related_projects_columns\";s:1:\"3\";s:16:\"testimonial_page\";s:0:\"\";s:19:\"enable_catalog_mode\";s:1:\"0\";s:17:\"products_per_page\";s:2:\"24\";s:9:\"new_badge\";s:1:\"7\";s:25:\"checkout_new_account_text\";s:207:\"Creating an account with Cardinal is quick and easy, and will allow you to move through our checkout quicker. You can also store multiple shipping addresses, gain access to your order history, and much more.\";s:13:\"help_bar_text\";s:51:\"Need help? Call customer services on 0800 123 4567.\";s:11:\"email_modal\";s:89:\"Enter your contact details or email form shortcode here. (Text/HTML/Shortcodes accepted).\";s:14:\"shipping_modal\";s:70:\"Enter your shipping information here. (Text/HTML/Shortcodes accepted).\";s:13:\"returns_modal\";s:82:\"Enter your returns and exchange information here. (Text/HTML/Shortcodes accepted).\";s:10:\"faqs_modal\";s:54:\"Enter your faqs here. (Text/HTML/Shortcodes accepted).\";s:14:\"feedback_modal\";s:72:\"Enter your feedback modal content here. (Text/HTML/Shortcodes accepted).\";s:20:\"product_display_type\";s:8:\"standard\";s:23:\"product_display_columns\";s:1:\"4\";s:23:\"product_display_gutters\";s:1:\"1\";s:25:\"product_display_fullwidth\";s:1:\"0\";s:16:\"product_qv_hover\";s:1:\"1\";s:14:\"product_rating\";s:1:\"1\";s:14:\"product_buybtn\";s:1:\"1\";s:18:\"woo_sidebar_config\";s:11:\"no-sidebars\";s:16:\"woo_left_sidebar\";s:0:\"\";s:17:\"woo_right_sidebar\";s:0:\"\";s:21:\"woo_show_page_heading\";s:1:\"1\";s:22:\"woo_page_heading_style\";s:8:\"standard\";s:22:\"woo_page_heading_image\";a:5:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:27:\"woo_page_heading_text_style\";s:5:\"light\";s:19:\"enable_default_tabs\";s:1:\"0\";s:19:\"enable_product_zoom\";s:1:\"0\";s:17:\"product_zoom_type\";s:5:\"inner\";s:30:\"default_product_sidebar_config\";s:11:\"no-sidebars\";s:28:\"default_product_left_sidebar\";s:0:\"\";s:29:\"default_product_right_sidebar\";s:0:\"\";s:16:\"twitter_username\";s:1:\"@\";s:17:\"facebook_page_url\";s:1:\"#\";s:17:\"dribbble_username\";s:0:\"\";s:14:\"vimeo_username\";s:0:\"\";s:15:\"tumblr_username\";s:0:\"\";s:14:\"skype_username\";s:0:\"\";s:17:\"linkedin_page_url\";s:1:\"#\";s:19:\"googleplus_page_url\";s:0:\"\";s:15:\"flickr_page_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:18:\"pinterest_username\";s:0:\"\";s:14:\"foursquare_url\";s:0:\"\";s:18:\"instagram_username\";s:1:\"#\";s:10:\"github_url\";s:0:\"\";s:8:\"xing_url\";s:0:\"\";s:11:\"behance_url\";s:0:\"\";s:14:\"deviantart_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";s:8:\"yelp_url\";s:0:\"\";s:7:\"rss_url\";s:0:\"\";s:6:\"vk_url\";s:0:\"\";s:10:\"twitch_url\";s:0:\"\";s:15:\"preset_bg_image\";s:0:\"\";s:13:\"field1_filter\";s:11:\"product_cat\";s:13:\"field2_filter\";s:11:\"product_cat\";s:13:\"field3_filter\";s:11:\"product_cat\";s:13:\"field4_filter\";s:11:\"product_cat\";s:13:\"field5_filter\";s:11:\"product_cat\";s:13:\"field6_filter\";s:11:\"product_cat\";}', 'yes'),
(147, 'sf_cardinal_options-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:14:\"logo_maxheight\";s:2:\"53\";}s:9:\"last_save\";i:1505923795;}', 'yes'),
(149, 'external_updates-swift-framework', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1506020907;s:14:\"checkedVersion\";s:6:\"2.5.50\";s:6:\"update\";N;}', 'no'),
(150, 'swift_framework_opts', 'a:10:{s:11:\"disable_spb\";s:1:\"0\";s:19:\"disable_spb_history\";s:1:\"1\";s:16:\"spb_color_scheme\";s:8:\"spb-blue\";s:14:\"spb-post-types\";a:5:{i:0;s:4:\"page\";i:1;s:4:\"post\";i:2;s:9:\"portfolio\";i:3;s:4:\"team\";i:4;s:11:\"spb-section\";}s:19:\"show_textblock_text\";s:1:\"1\";s:20:\"spb_edit_modal_width\";s:3:\"620\";s:10:\"disable_ss\";s:1:\"0\";s:11:\"cpt-disable\";a:7:{s:9:\"portfolio\";s:1:\"0\";s:9:\"galleries\";s:1:\"0\";s:4:\"team\";s:1:\"0\";s:7:\"clients\";s:1:\"0\";s:12:\"testimonials\";s:1:\"0\";s:9:\"directory\";s:1:\"0\";s:12:\"swift-slider\";s:1:\"0\";}s:17:\"enable_min_styles\";s:1:\"1\";s:18:\"enable_min_scripts\";s:1:\"1\";}', 'yes'),
(151, 'swift_framework_opts-transients', 'a:2:{s:14:\"changed_values\";a:0:{}s:9:\"last_save\";i:1505858724;}', 'yes'),
(156, '_transient_timeout_plugin_slugs', '1505945170', 'no'),
(157, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"swift-framework/swift-framework.php\";}', 'no'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"4.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1505858770;s:7:\"version\";s:3:\"4.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(160, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'sf_portfolio_permalinks', 'a:2:{s:13:\"category_base\";s:0:\"\";s:14:\"portfolio_base\";s:10:\"/portfolio\";}', 'yes'),
(163, 'sf_galleries_permalinks', 'a:2:{s:13:\"category_base\";s:0:\"\";s:14:\"galleries_base\";s:10:\"/galleries\";}', 'yes'),
(164, 'sf_team_permalinks', 'a:2:{s:13:\"category_base\";s:0:\"\";s:9:\"team_base\";s:5:\"/team\";}', 'yes'),
(165, 'sf_directory_permalinks', 'a:3:{s:13:\"category_base\";s:0:\"\";s:13:\"location_base\";s:0:\"\";s:14:\"directory_base\";s:10:\"/directory\";}', 'yes'),
(166, 'sf_faqs_permalinks', 'a:2:{s:13:\"category_base\";s:0:\"\";s:9:\"faqs_base\";s:5:\"/faqs\";}', 'yes'),
(171, 'spb_most_used_elements', 'a:3:{s:7:\"spb_row\";i:1;s:16:\"spb_swift_slider\";i:1;s:9:\"spb_image\";i:1;}', 'yes'),
(177, 'external_theme_updates-cardinal', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1506020908;s:14:\"checkedVersion\";s:6:\"2.6.22\";s:6:\"update\";N;}', 'yes'),
(179, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1506020908;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.0.zip\";s:6:\"tested\";s:5:\"4.8.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.zip\";}}}', 'no'),
(180, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.2\";s:7:\"version\";s:5:\"4.8.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1506020908;s:15:\"version_checked\";s:5:\"4.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(181, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"icparklins@gmail.com\";s:7:\"version\";s:5:\"4.8.2\";s:9:\"timestamp\";i:1505907558;}', 'no'),
(185, '_site_transient_timeout_browser_7d3f9da7d4a2b9ba6cfa5ed36edd01e3', '1506519762', 'no'),
(186, '_site_transient_browser_7d3f9da7d4a2b9ba6cfa5ed36edd01e3', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"55.0\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(189, '_transient_timeout_select2-css_style_cdn_is_up', '1506001554', 'no'),
(190, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(191, '_transient_timeout_select2-js_script_cdn_is_up', '1506001555', 'no'),
(192, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, '_transient_timeout_sf_remote_plugin_update_check', '1506042961', 'no'),
(202, '_transient_sf_remote_plugin_update_check', 'a:0:{}', 'no'),
(203, '_site_transient_timeout_theme_roots', '1506022708', 'no'),
(204, '_site_transient_theme_roots', 'a:4:{s:8:\"cardinal\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(205, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1506064190', 'no'),
(206, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Couldn\'t resolve host \'wordpress.org\'</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Couldn\'t resolve host \'planet.wordpress.org\'</p></div>', 'no'),
(207, 'swift-slider-category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(3, 4, '_mail', 'a:8:{s:7:\"subject\";s:25:\"Voomsway \"[your-subject]\"\";s:6:\"sender\";s:34:\"[your-name] <icparklins@gmail.com>\";s:4:\"body\";s:177:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voomsway (http://localhost:8888/Voomsway)\";s:9:\"recipient\";s:20:\"icparklins@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Voomsway \"[your-subject]\"\";s:6:\"sender\";s:31:\"Voomsway <icparklins@gmail.com>\";s:4:\"body\";s:119:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voomsway (http://localhost:8888/Voomsway)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: icparklins@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'en_US'),
(8, 5, '_edit_last', '1'),
(10, 5, '_spb_status', 'true'),
(12, 5, 'sf_page_title', '0'),
(13, 5, 'sf_page_title_style', 'standard'),
(14, 5, 'sf_bg_opacity_title', '0'),
(15, 5, 'sf_page_title_text_style', 'light'),
(16, 5, 'sf_page_title_text_align', 'left'),
(17, 5, 'sf_page_title_height', '400'),
(18, 5, 'sf_no_breadcrumbs', '0'),
(19, 5, 'sf_background_image_size', 'cover'),
(20, 5, 'sf_inner_background_image_size', 'auto'),
(21, 5, 'sf_page_header_type', 'naked-light'),
(22, 5, 'sf_page_header_alt_logo', '1'),
(23, 5, 'sf_page_slider', 'none'),
(24, 5, 'sf_ss_type', 'slider'),
(25, 5, 'sf_ss_category', 'all'),
(26, 5, 'sf_ss_random', '0'),
(27, 5, 'sf_ss_slides', '5'),
(28, 5, 'sf_ss_fs', '0'),
(29, 5, 'sf_ss_maxheight', '600'),
(30, 5, 'sf_ss_transition', 'slide'),
(31, 5, 'sf_ss_loop', '1'),
(32, 5, 'sf_ss_nav', '1'),
(33, 5, 'sf_ss_pagination', '1'),
(34, 5, 'sf_ss_continue', '1'),
(35, 5, 'sf_enable_one_page_nav', '0'),
(36, 5, 'sf_remove_promo_bar', '1'),
(37, 5, 'sf_no_top_spacing', '1'),
(38, 5, 'sf_no_bottom_spacing', '1'),
(39, 5, 'sf_sidebar_config', 'no-sidebars'),
(40, 5, 'sf_left_sidebar', 'Sidebar-1'),
(41, 5, 'sf_right_sidebar', 'Sidebar-1'),
(42, 5, '_edit_lock', '1506021361:1'),
(43, 6, '_edit_last', '1'),
(45, 6, '_spb_status', 'false'),
(46, 6, '_spb_js_status', 'false'),
(47, 6, 'sf_page_title', '1'),
(48, 6, 'sf_page_title_style', 'standard'),
(49, 6, 'sf_bg_opacity_title', '0'),
(50, 6, 'sf_page_title_text_style', 'light'),
(51, 6, 'sf_page_title_text_align', 'left'),
(52, 6, 'sf_page_title_height', '400'),
(53, 6, 'sf_no_breadcrumbs', '0'),
(54, 6, 'sf_background_image_size', 'cover'),
(55, 6, 'sf_inner_background_image_size', 'auto'),
(56, 6, 'sf_page_header_type', 'standard'),
(57, 6, 'sf_page_header_alt_logo', '0'),
(58, 6, 'sf_page_slider', 'none'),
(59, 6, 'sf_ss_type', 'slider'),
(60, 6, 'sf_ss_category', 'all'),
(61, 6, 'sf_ss_random', '0'),
(62, 6, 'sf_ss_slides', '5'),
(63, 6, 'sf_ss_fs', '0'),
(64, 6, 'sf_ss_maxheight', '600'),
(65, 6, 'sf_ss_transition', 'slide'),
(66, 6, 'sf_ss_loop', '1'),
(67, 6, 'sf_ss_nav', '1'),
(68, 6, 'sf_ss_pagination', '1'),
(69, 6, 'sf_ss_continue', '1'),
(70, 6, 'sf_enable_one_page_nav', '0'),
(71, 6, 'sf_remove_promo_bar', '0'),
(72, 6, 'sf_no_top_spacing', '0'),
(73, 6, 'sf_no_bottom_spacing', '0'),
(74, 6, 'sf_sidebar_config', 'no-sidebars'),
(75, 6, 'sf_left_sidebar', 'Sidebar-1'),
(76, 6, 'sf_right_sidebar', 'Sidebar-1'),
(77, 6, '_edit_lock', '1505858782:1'),
(78, 9, '_wp_trash_meta_status', 'publish'),
(79, 9, '_wp_trash_meta_time', '1505858882'),
(80, 11, '_edit_last', '1'),
(81, 11, '_edit_lock', '1505926569:1'),
(84, 11, 'ss_bg_type', 'image'),
(85, 11, 'ss_bg_opacity', '0'),
(87, 11, 'ss_background_size', 'cover'),
(88, 11, 'ss_background_valign', 'center'),
(89, 11, 'ss_background_halign', 'center'),
(90, 11, 'ss_mobile_background_halign', 'center'),
(91, 11, 'ss_slide_style', 'light'),
(92, 11, 'ss_slide_link', 'no-link'),
(93, 11, 'ss_video_loop', 'loop'),
(94, 11, 'ss_video_mute', 'muted'),
(95, 11, 'ss_video_overlay', 'none'),
(96, 11, 'ss_caption_x', 'center'),
(97, 11, 'ss_caption_y', 'middle'),
(98, 11, 'ss_caption_size', 'standard'),
(99, 5, '_wp_page_template', 'template-blank3fw_1.php'),
(100, 5, '_spb_js_status', 'true'),
(101, 5, 'sf_page_has_swiftslider', '1'),
(102, 15, '_wp_attached_file', '2017/09/voomsway_logo.png'),
(103, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:53;s:4:\"file\";s:25:\"2017/09/voomsway_logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"voomsway_logo-150x53.png\";s:5:\"width\";i:150;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"voomsway_logo-220x53.png\";s:5:\"width\";i:220;s:6:\"height\";i:53;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 16, '_wp_attached_file', '2017/09/voomsway_logo_@x2.png'),
(105, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:505;s:6:\"height\";i:106;s:4:\"file\";s:29:\"2017/09/voomsway_logo_@x2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"voomsway_logo_@x2-150x106.png\";s:5:\"width\";i:150;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"voomsway_logo_@x2-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:29:\"voomsway_logo_@x2-220x106.png\";s:5:\"width\";i:220;s:6:\"height\";i:106;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 21, '_edit_last', '1'),
(111, 21, '_edit_lock', '1505920994:1'),
(113, 21, '_spb_status', 'false'),
(114, 21, '_spb_js_status', 'false'),
(115, 21, 'sf_page_title', '1'),
(116, 21, 'sf_page_title_style', 'standard'),
(117, 21, 'sf_bg_opacity_title', '0'),
(118, 21, 'sf_page_title_text_style', 'light'),
(119, 21, 'sf_page_title_text_align', 'left'),
(120, 21, 'sf_page_title_height', '400'),
(121, 21, 'sf_no_breadcrumbs', '0'),
(122, 21, 'sf_background_image_size', 'cover'),
(123, 21, 'sf_inner_background_image_size', 'auto'),
(124, 21, 'sf_page_header_type', 'standard'),
(125, 21, 'sf_page_header_alt_logo', '0'),
(126, 21, 'sf_page_slider', 'none'),
(127, 21, 'sf_ss_type', 'slider'),
(128, 21, 'sf_ss_category', 'all'),
(129, 21, 'sf_ss_random', '0'),
(130, 21, 'sf_ss_slides', '5'),
(131, 21, 'sf_ss_fs', '0'),
(132, 21, 'sf_ss_maxheight', '600'),
(133, 21, 'sf_ss_transition', 'slide'),
(134, 21, 'sf_ss_loop', '1'),
(135, 21, 'sf_ss_nav', '1'),
(136, 21, 'sf_ss_pagination', '1'),
(137, 21, 'sf_ss_continue', '1'),
(138, 21, 'sf_enable_one_page_nav', '0'),
(139, 21, 'sf_remove_promo_bar', '0'),
(140, 21, 'sf_no_top_spacing', '0'),
(141, 21, 'sf_no_bottom_spacing', '0'),
(142, 21, 'sf_sidebar_config', 'no-sidebars'),
(143, 21, 'sf_left_sidebar', 'Sidebar-1'),
(144, 21, 'sf_right_sidebar', 'Sidebar-1'),
(145, 22, '_edit_last', '1'),
(146, 22, '_edit_lock', '1505921007:1'),
(148, 22, '_spb_status', 'false'),
(149, 22, '_spb_js_status', 'false'),
(150, 22, 'sf_page_title', '1'),
(151, 22, 'sf_page_title_style', 'standard'),
(152, 22, 'sf_bg_opacity_title', '0'),
(153, 22, 'sf_page_title_text_style', 'light'),
(154, 22, 'sf_page_title_text_align', 'left'),
(155, 22, 'sf_page_title_height', '400'),
(156, 22, 'sf_no_breadcrumbs', '0'),
(157, 22, 'sf_background_image_size', 'cover'),
(158, 22, 'sf_inner_background_image_size', 'auto'),
(159, 22, 'sf_page_header_type', 'standard'),
(160, 22, 'sf_page_header_alt_logo', '0'),
(161, 22, 'sf_page_slider', 'none'),
(162, 22, 'sf_ss_type', 'slider'),
(163, 22, 'sf_ss_category', 'all'),
(164, 22, 'sf_ss_random', '0'),
(165, 22, 'sf_ss_slides', '5'),
(166, 22, 'sf_ss_fs', '0'),
(167, 22, 'sf_ss_maxheight', '600'),
(168, 22, 'sf_ss_transition', 'slide'),
(169, 22, 'sf_ss_loop', '1'),
(170, 22, 'sf_ss_nav', '1'),
(171, 22, 'sf_ss_pagination', '1'),
(172, 22, 'sf_ss_continue', '1'),
(173, 22, 'sf_enable_one_page_nav', '0'),
(174, 22, 'sf_remove_promo_bar', '0'),
(175, 22, 'sf_no_top_spacing', '0'),
(176, 22, 'sf_no_bottom_spacing', '0'),
(177, 22, 'sf_sidebar_config', 'no-sidebars'),
(178, 22, 'sf_left_sidebar', 'Sidebar-1'),
(179, 22, 'sf_right_sidebar', 'Sidebar-1'),
(180, 26, '_edit_last', '1'),
(181, 26, '_edit_lock', '1505921062:1'),
(183, 26, '_spb_status', 'false'),
(184, 26, '_spb_js_status', 'false'),
(185, 26, 'sf_page_title', '1'),
(186, 26, 'sf_page_title_style', 'standard'),
(187, 26, 'sf_bg_opacity_title', '0'),
(188, 26, 'sf_page_title_text_style', 'light'),
(189, 26, 'sf_page_title_text_align', 'left'),
(190, 26, 'sf_page_title_height', '400'),
(191, 26, 'sf_no_breadcrumbs', '0'),
(192, 26, 'sf_background_image_size', 'cover'),
(193, 26, 'sf_inner_background_image_size', 'auto'),
(194, 26, 'sf_page_header_type', 'standard'),
(195, 26, 'sf_page_header_alt_logo', '0'),
(196, 26, 'sf_page_slider', 'none'),
(197, 26, 'sf_ss_type', 'slider'),
(198, 26, 'sf_ss_category', 'all'),
(199, 26, 'sf_ss_random', '0'),
(200, 26, 'sf_ss_slides', '5'),
(201, 26, 'sf_ss_fs', '0'),
(202, 26, 'sf_ss_maxheight', '600'),
(203, 26, 'sf_ss_transition', 'slide'),
(204, 26, 'sf_ss_loop', '1'),
(205, 26, 'sf_ss_nav', '1'),
(206, 26, 'sf_ss_pagination', '1'),
(207, 26, 'sf_ss_continue', '1'),
(208, 26, 'sf_enable_one_page_nav', '0'),
(209, 26, 'sf_remove_promo_bar', '0'),
(210, 26, 'sf_no_top_spacing', '0'),
(211, 26, 'sf_no_bottom_spacing', '0'),
(212, 26, 'sf_sidebar_config', 'no-sidebars'),
(213, 26, 'sf_left_sidebar', 'Sidebar-1'),
(214, 26, 'sf_right_sidebar', 'Sidebar-1'),
(215, 27, '_edit_last', '1'),
(217, 27, '_spb_status', 'false'),
(218, 27, '_spb_js_status', 'false'),
(219, 27, 'sf_page_title', '1'),
(220, 27, 'sf_page_title_style', 'standard'),
(221, 27, 'sf_bg_opacity_title', '0'),
(222, 27, 'sf_page_title_text_style', 'light'),
(223, 27, 'sf_page_title_text_align', 'left'),
(224, 27, 'sf_page_title_height', '400'),
(225, 27, 'sf_no_breadcrumbs', '0'),
(226, 27, 'sf_background_image_size', 'cover'),
(227, 27, 'sf_inner_background_image_size', 'auto'),
(228, 27, 'sf_page_header_type', 'standard'),
(229, 27, 'sf_page_header_alt_logo', '0'),
(230, 27, 'sf_page_slider', 'none'),
(231, 27, 'sf_ss_type', 'slider'),
(232, 27, 'sf_ss_category', 'all'),
(233, 27, 'sf_ss_random', '0'),
(234, 27, 'sf_ss_slides', '5'),
(235, 27, 'sf_ss_fs', '0'),
(236, 27, 'sf_ss_maxheight', '600'),
(237, 27, 'sf_ss_transition', 'slide'),
(238, 27, 'sf_ss_loop', '1'),
(239, 27, 'sf_ss_nav', '1'),
(240, 27, 'sf_ss_pagination', '1'),
(241, 27, 'sf_ss_continue', '1'),
(242, 27, 'sf_enable_one_page_nav', '0'),
(243, 27, 'sf_remove_promo_bar', '0'),
(244, 27, 'sf_no_top_spacing', '0'),
(245, 27, 'sf_no_bottom_spacing', '0'),
(246, 27, 'sf_sidebar_config', 'no-sidebars'),
(247, 27, 'sf_left_sidebar', 'Sidebar-1'),
(248, 27, 'sf_right_sidebar', 'Sidebar-1'),
(249, 27, '_edit_lock', '1505921068:1'),
(250, 30, '_menu_item_type', 'post_type'),
(251, 30, '_menu_item_menu_item_parent', '0'),
(252, 30, '_menu_item_object_id', '27'),
(253, 30, '_menu_item_object', 'page'),
(254, 30, '_menu_item_target', ''),
(255, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 30, '_menu_item_xfn', ''),
(257, 30, '_menu_item_url', ''),
(259, 30, '_menu_megamenu', '0'),
(260, 30, '_menu_is_naturalwidth', '0'),
(261, 30, '_menu_menuitembtn', '0'),
(262, 30, '_menu_loggedinvis', '0'),
(263, 30, '_menu_loggedoutvis', '0'),
(264, 30, '_menu_newbadge', '0'),
(265, 30, '_menu_is_altstyle', '0'),
(266, 30, '_menu_hideheadings', '0'),
(267, 30, '_menu_megatitle', '0'),
(268, 30, '_menu_nocolumnspacing', '0'),
(269, 31, '_menu_item_type', 'post_type'),
(270, 31, '_menu_item_menu_item_parent', '0'),
(271, 31, '_menu_item_object_id', '26'),
(272, 31, '_menu_item_object', 'page'),
(273, 31, '_menu_item_target', ''),
(274, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(275, 31, '_menu_item_xfn', ''),
(276, 31, '_menu_item_url', ''),
(278, 31, '_menu_megamenu', '0'),
(279, 31, '_menu_is_naturalwidth', '0'),
(280, 31, '_menu_menuitembtn', '0'),
(281, 31, '_menu_loggedinvis', '0'),
(282, 31, '_menu_loggedoutvis', '0'),
(283, 31, '_menu_newbadge', '0'),
(284, 31, '_menu_is_altstyle', '0'),
(285, 31, '_menu_hideheadings', '0'),
(286, 31, '_menu_megatitle', '0'),
(287, 31, '_menu_nocolumnspacing', '0'),
(288, 32, '_menu_item_type', 'post_type'),
(289, 32, '_menu_item_menu_item_parent', '0'),
(290, 32, '_menu_item_object_id', '22'),
(291, 32, '_menu_item_object', 'page'),
(292, 32, '_menu_item_target', ''),
(293, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(294, 32, '_menu_item_xfn', ''),
(295, 32, '_menu_item_url', ''),
(297, 32, '_menu_megamenu', '0'),
(298, 32, '_menu_is_naturalwidth', '0'),
(299, 32, '_menu_menuitembtn', '0'),
(300, 32, '_menu_loggedinvis', '0'),
(301, 32, '_menu_loggedoutvis', '0'),
(302, 32, '_menu_newbadge', '0'),
(303, 32, '_menu_is_altstyle', '0'),
(304, 32, '_menu_hideheadings', '0'),
(305, 32, '_menu_megatitle', '0'),
(306, 32, '_menu_nocolumnspacing', '0'),
(307, 33, '_menu_item_type', 'post_type'),
(308, 33, '_menu_item_menu_item_parent', '0'),
(309, 33, '_menu_item_object_id', '21'),
(310, 33, '_menu_item_object', 'page'),
(311, 33, '_menu_item_target', ''),
(312, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 33, '_menu_item_xfn', ''),
(314, 33, '_menu_item_url', ''),
(316, 33, '_menu_megamenu', '0'),
(317, 33, '_menu_is_naturalwidth', '0'),
(318, 33, '_menu_menuitembtn', '0'),
(319, 33, '_menu_loggedinvis', '0'),
(320, 33, '_menu_loggedoutvis', '0'),
(321, 33, '_menu_newbadge', '0'),
(322, 33, '_menu_is_altstyle', '0'),
(323, 33, '_menu_hideheadings', '0'),
(324, 33, '_menu_megatitle', '0'),
(325, 33, '_menu_nocolumnspacing', '0'),
(326, 34, '_menu_item_type', 'post_type'),
(327, 34, '_menu_item_menu_item_parent', '0'),
(328, 34, '_menu_item_object_id', '6'),
(329, 34, '_menu_item_object', 'page'),
(330, 34, '_menu_item_target', ''),
(331, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(332, 34, '_menu_item_xfn', ''),
(333, 34, '_menu_item_url', ''),
(335, 34, '_menu_megamenu', '0'),
(336, 34, '_menu_is_naturalwidth', '0'),
(337, 34, '_menu_menuitembtn', '0'),
(338, 34, '_menu_loggedinvis', '0'),
(339, 34, '_menu_loggedoutvis', '0'),
(340, 34, '_menu_newbadge', '0'),
(341, 34, '_menu_is_altstyle', '0'),
(342, 34, '_menu_hideheadings', '0'),
(343, 34, '_menu_megatitle', '0'),
(344, 34, '_menu_nocolumnspacing', '0'),
(345, 35, '_menu_item_type', 'post_type'),
(346, 35, '_menu_item_menu_item_parent', '0'),
(347, 35, '_menu_item_object_id', '5'),
(348, 35, '_menu_item_object', 'page'),
(349, 35, '_menu_item_target', ''),
(350, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(351, 35, '_menu_item_xfn', ''),
(352, 35, '_menu_item_url', ''),
(354, 35, '_menu_megamenu', '0'),
(355, 35, '_menu_is_naturalwidth', '0'),
(356, 35, '_menu_menuitembtn', '0'),
(357, 35, '_menu_loggedinvis', '0'),
(358, 35, '_menu_loggedoutvis', '0'),
(359, 35, '_menu_newbadge', '0'),
(360, 35, '_menu_is_altstyle', '0'),
(361, 35, '_menu_hideheadings', '0'),
(362, 35, '_menu_megatitle', '0'),
(363, 35, '_menu_nocolumnspacing', '0'),
(364, 35, '_menu_item_icon', ''),
(365, 35, '_menu_megamenucols', '1'),
(366, 31, '_menu_item_icon', ''),
(367, 31, '_menu_megamenucols', '1'),
(368, 32, '_menu_item_icon', ''),
(369, 32, '_menu_megamenucols', '1'),
(370, 33, '_menu_item_icon', ''),
(371, 33, '_menu_megamenucols', '1'),
(372, 34, '_menu_item_icon', ''),
(373, 34, '_menu_megamenucols', '1'),
(374, 30, '_menu_item_icon', ''),
(375, 30, '_menu_megamenucols', '1'),
(376, 36, '_wp_attached_file', '2017/09/hero-1.jpg'),
(377, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2017/09/hero-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hero-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"hero-1-220x150.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-image\";a:4:{s:4:\"file\";s:18:\"hero-1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"thumb-image-twocol\";a:4:{s:4:\"file\";s:18:\"hero-1-900x675.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"large-square\";a:4:{s:4:\"file\";s:20:\"hero-1-1200x1080.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"full-width-image-gallery\";a:4:{s:4:\"file\";s:19:\"hero-1-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 37, '_wp_attached_file', '2017/09/hero.jpg'),
(380, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2017/09/hero.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-220x150.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-image\";a:4:{s:4:\"file\";s:16:\"hero-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"thumb-image-twocol\";a:4:{s:4:\"file\";s:16:\"hero-900x675.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"large-square\";a:4:{s:4:\"file\";s:18:\"hero-1200x1080.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1080;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"full-width-image-gallery\";a:4:{s:4:\"file\";s:17:\"hero-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 11, 'ss_background_image', '37'),
(384, 38, '_edit_last', '1'),
(385, 38, '_edit_lock', '1505928072:1'),
(386, 39, '_wp_attached_file', '2017/09/hero_m.jpg'),
(387, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1920;s:4:\"file\";s:18:\"2017/09/hero_m.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hero_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hero_m-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hero_m-768x1365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"hero_m-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"hero_m-220x150.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-image\";a:4:{s:4:\"file\";s:18:\"hero_m-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"thumb-image-twocol\";a:4:{s:4:\"file\";s:18:\"hero_m-900x675.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"large-square\";a:4:{s:4:\"file\";s:20:\"hero_m-1080x1200.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"full-width-image-gallery\";a:4:{s:4:\"file\";s:19:\"hero_m-1080x720.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(388, 38, 'ss_bg_type', 'image'),
(389, 38, 'ss_bg_opacity', '0'),
(390, 38, 'ss_background_image', '39'),
(391, 38, 'ss_background_size', 'cover'),
(392, 38, 'ss_background_valign', 'top'),
(393, 38, 'ss_background_halign', 'center'),
(394, 38, 'ss_mobile_background_halign', 'center'),
(395, 38, 'ss_slide_style', 'light'),
(396, 38, 'ss_slide_link', 'link-nw'),
(397, 38, 'ss_slide_link_url', 'http://www.google.com'),
(398, 38, 'ss_video_loop', 'loop'),
(399, 38, 'ss_video_mute', 'muted'),
(400, 38, 'ss_video_overlay', 'none'),
(401, 38, 'ss_caption_x', 'center'),
(402, 38, 'ss_caption_y', 'middle'),
(403, 38, 'ss_caption_size', 'standard'),
(406, 42, '_edit_last', '1'),
(407, 42, 'ss_bg_type', 'image'),
(408, 42, 'ss_bg_opacity', '0'),
(409, 42, 'ss_background_image', '43'),
(410, 42, 'ss_background_size', 'cover'),
(411, 42, 'ss_background_valign', 'top'),
(412, 42, 'ss_background_halign', 'center'),
(413, 42, 'ss_mobile_background_halign', 'center'),
(414, 42, 'ss_slide_style', 'light'),
(415, 42, 'ss_slide_link', 'no-link'),
(416, 42, 'ss_video_loop', 'loop'),
(417, 42, 'ss_video_mute', 'muted'),
(418, 42, 'ss_video_overlay', 'none'),
(419, 42, 'ss_caption_x', 'center'),
(420, 42, 'ss_caption_y', 'middle'),
(421, 42, 'ss_caption_size', 'standard'),
(422, 42, '_edit_lock', '1506020933:1'),
(423, 47, '_wp_attached_file', '2017/09/hero_tab-1.jpg'),
(424, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2730;s:4:\"file\";s:22:\"2017/09/hero_tab-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"hero_tab-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"hero_tab-1-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"hero_tab-1-768x1365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"hero_tab-1-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"hero_tab-1-220x150.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"thumb-image\";a:4:{s:4:\"file\";s:22:\"hero_tab-1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"thumb-image-twocol\";a:4:{s:4:\"file\";s:22:\"hero_tab-1-900x675.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"large-square\";a:4:{s:4:\"file\";s:24:\"hero_tab-1-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"full-width-image-gallery\";a:4:{s:4:\"file\";s:23:\"hero_tab-1-1280x720.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-09-19 22:03:11', '2017-09-19 22:03:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-09-19 22:03:11', '2017-09-19 22:03:11', '', 0, 'http://localhost:8888/Voomsway/?p=1', 0, 'post', '', 1),
(2, 1, '2017-09-19 22:03:11', '2017-09-19 22:03:11', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/Voomsway/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-09-19 22:03:11', '2017-09-19 22:03:11', '', 0, 'http://localhost:8888/Voomsway/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-09-19 22:03:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-09-19 22:03:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/Voomsway/?p=3', 0, 'post', '', 0),
(4, 1, '2017-09-19 22:06:09', '2017-09-19 22:06:09', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nVoomsway \"[your-subject]\"\n[your-name] <icparklins@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voomsway (http://localhost:8888/Voomsway)\nicparklins@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nVoomsway \"[your-subject]\"\nVoomsway <icparklins@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voomsway (http://localhost:8888/Voomsway)\n[your-email]\nReply-To: icparklins@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-09-19 22:06:09', '2017-09-19 22:06:09', '', 0, 'http://localhost:8888/Voomsway/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-09-19 22:06:35', '2017-09-19 22:06:35', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_image image=\"47\" image_size=\"full\" frame=\"noframe\" caption_pos=\"hover\" remove_rounded=\"yes\" fullwidth=\"yes\" overflow_mode=\"none\" link_target=\"_self\" lightbox=\"no\" intro_animation=\"none\" animation_delay=\"200\" width=\"1/1\" el_position=\"first last\"][/spb_image] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-09-21 19:16:00', '2017-09-21 19:16:00', '', 0, 'http://localhost:8888/Voomsway/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-09-19 22:06:40', '2017-09-19 22:06:40', '', 'Journal', '', 'publish', 'closed', 'closed', '', 'journal', '', '', '2017-09-19 22:06:40', '2017-09-19 22:06:40', '', 0, 'http://localhost:8888/Voomsway/?page_id=6', 0, 'page', '', 0),
(7, 1, '2017-09-19 22:06:35', '2017-09-19 22:06:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-19 22:06:35', '2017-09-19 22:06:35', '', 5, 'http://localhost:8888/Voomsway/?p=7', 0, 'revision', '', 0),
(8, 1, '2017-09-19 22:06:40', '2017-09-19 22:06:40', '', 'Journal', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-09-19 22:06:40', '2017-09-19 22:06:40', '', 6, 'http://localhost:8888/Voomsway/?p=8', 0, 'revision', '', 0),
(9, 1, '2017-09-19 22:08:02', '2017-09-19 22:08:02', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7821af42-3e64-44e5-be40-42f49a8d28cc', '', '', '2017-09-19 22:08:02', '2017-09-19 22:08:02', '', 0, 'http://localhost:8888/Voomsway/7821af42-3e64-44e5-be40-42f49a8d28cc/', 0, 'customize_changeset', '', 0),
(10, 1, '2017-09-21 19:16:04', '2017-09-21 19:16:04', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_image image=\"47\" image_size=\"full\" frame=\"noframe\" caption_pos=\"hover\" remove_rounded=\"yes\" fullwidth=\"yes\" overflow_mode=\"none\" link_target=\"_self\" lightbox=\"no\" intro_animation=\"none\" animation_delay=\"200\" width=\"1/1\" el_position=\"first last\"][/spb_image] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2017-09-21 19:16:04', '2017-09-21 19:16:04', '', 5, 'http://localhost:8888/Voomsway/5-autosave-v1/', 0, 'revision', '', 0),
(11, 1, '2017-09-19 22:09:43', '2017-09-19 22:09:43', '', 'Hero web', '', 'publish', 'closed', 'closed', '', 'hero-web', '', '', '2017-09-20 16:56:00', '2017-09-20 16:56:00', '', 0, 'http://localhost:8888/Voomsway/?post_type=swift-slider&#038;p=11', 0, 'swift-slider', '', 0),
(13, 1, '2017-09-19 22:10:37', '2017-09-19 22:10:37', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"yes\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"All\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"yes\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"All\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-19 22:10:37', '2017-09-19 22:10:37', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-09-19 22:10:58', '2017-09-19 22:10:58', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"yes\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"All\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-19 22:10:58', '2017-09-19 22:10:58', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-09-20 13:46:48', '2017-09-20 13:46:48', '', 'voomsway_logo', '', 'inherit', 'open', 'closed', '', 'voomsway_logo', '', '', '2017-09-20 13:46:48', '2017-09-20 13:46:48', '', 0, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2017-09-20 13:47:01', '2017-09-20 13:47:01', '', 'voomsway_logo_@x2', '', 'inherit', 'open', 'closed', '', 'voomsway_logo_x2', '', '', '2017-09-20 13:47:01', '2017-09-20 13:47:01', '', 0, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/voomsway_logo_@x2.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2017-09-20 14:50:30', '2017-09-20 14:50:30', '', 'Hero web', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2017-09-20 14:50:30', '2017-09-20 14:50:30', '', 11, 'http://localhost:8888/Voomsway/11-autosave-v1/', 0, 'revision', '', 0),
(19, 1, '2017-09-20 15:22:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-09-20 15:22:42', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/Voomsway/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-09-20 15:22:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-09-20 15:22:43', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/Voomsway/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-09-20 15:23:14', '2017-09-20 15:23:14', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2017-09-20 15:23:14', '2017-09-20 15:23:14', '', 0, 'http://localhost:8888/Voomsway/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-09-20 15:23:27', '2017-09-20 15:23:27', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2017-09-20 15:23:27', '2017-09-20 15:23:27', '', 0, 'http://localhost:8888/Voomsway/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-09-20 15:23:14', '2017-09-20 15:23:14', '', 'Pricing', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-09-20 15:23:14', '2017-09-20 15:23:14', '', 21, 'http://localhost:8888/Voomsway/21-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-09-20 15:23:27', '2017-09-20 15:23:27', '', 'Features', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-09-20 15:23:27', '2017-09-20 15:23:27', '', 22, 'http://localhost:8888/Voomsway/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-09-20 15:23:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-09-20 15:23:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/Voomsway/?page_id=25', 0, 'page', '', 0),
(26, 1, '2017-09-20 15:24:21', '2017-09-20 15:24:21', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-09-20 15:24:21', '2017-09-20 15:24:21', '', 0, 'http://localhost:8888/Voomsway/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-09-20 15:24:28', '2017-09-20 15:24:28', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-09-20 15:24:28', '2017-09-20 15:24:28', '', 0, 'http://localhost:8888/Voomsway/?page_id=27', 0, 'page', '', 0),
(28, 1, '2017-09-20 15:24:21', '2017-09-20 15:24:21', '', 'About', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-09-20 15:24:21', '2017-09-20 15:24:21', '', 26, 'http://localhost:8888/Voomsway/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-09-20 15:24:28', '2017-09-20 15:24:28', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-09-20 15:24:28', '2017-09-20 15:24:28', '', 27, 'http://localhost:8888/Voomsway/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=34', 5, 'nav_menu_item', '', 0),
(35, 1, '2017-09-20 15:26:32', '2017-09-20 15:26:32', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-09-20 15:26:32', '2017-09-20 15:26:32', '', 0, 'http://localhost:8888/Voomsway/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-09-20 16:10:16', '2017-09-20 16:10:16', '', 'hero-1', '', 'inherit', 'open', 'closed', '', 'hero-1', '', '', '2017-09-20 16:10:16', '2017-09-20 16:10:16', '', 11, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/hero-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2017-09-20 16:50:45', '2017-09-20 16:50:45', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2017-09-20 16:50:45', '2017-09-20 16:50:45', '', 11, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2017-09-20 17:15:48', '2017-09-20 17:15:48', '', 'mobile hero', '', 'publish', 'closed', 'closed', '', 'mobile-hero', '', '', '2017-09-20 17:15:48', '2017-09-20 17:15:48', '', 0, 'http://localhost:8888/Voomsway/?post_type=swift-slider&#038;p=38', 0, 'swift-slider', '', 0),
(39, 1, '2017-09-20 17:14:35', '2017-09-20 17:14:35', '', 'hero_m', '', 'inherit', 'open', 'closed', '', 'hero_m', '', '', '2017-09-20 17:14:35', '2017-09-20 17:14:35', '', 38, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/hero_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2017-09-20 17:17:56', '2017-09-20 17:17:56', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-20 17:17:56', '2017-09-20 17:17:56', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-09-20 19:34:00', '2017-09-20 19:34:00', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-20 19:34:00', '2017-09-20 19:34:00', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-09-21 19:11:12', '2017-09-21 19:11:12', '', 'Hero tab', '', 'publish', 'closed', 'closed', '', 'hero-tab', '', '', '2017-09-21 19:11:12', '2017-09-21 19:11:12', '', 0, 'http://localhost:8888/Voomsway/?post_type=swift-slider&#038;p=42', 0, 'swift-slider', '', 0),
(44, 1, '2017-09-21 19:12:39', '2017-09-21 19:12:39', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"false\" maxheight=\"600\" slidecount=\"5\" category=\"home-tab\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" padding_vertical=\"0\" padding_horizontal=\"0\" margin_vertical=\"0\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_size=\"0\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-21 19:12:39', '2017-09-21 19:12:39', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-09-21 19:13:11', '2017-09-21 19:13:11', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-tab\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-21 19:13:11', '2017-09-21 19:13:11', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-09-21 19:14:15', '2017-09-21 19:14:15', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_image image=\"43\" image_size=\"full\" frame=\"noframe\" caption_pos=\"hover\" remove_rounded=\"yes\" fullwidth=\"yes\" overflow_mode=\"none\" link_target=\"_self\" lightbox=\"no\" intro_animation=\"none\" animation_delay=\"200\" width=\"1/1\" el_position=\"first last\"][/spb_image] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-21 19:14:15', '2017-09-21 19:14:15', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-09-21 19:15:51', '2017-09-21 19:15:51', '', 'hero_tab-1', '', 'inherit', 'open', 'closed', '', 'hero_tab-1', '', '', '2017-09-21 19:15:51', '2017-09-21 19:15:51', '', 5, 'http://localhost:8888/Voomsway/wp-content/uploads/2017/09/hero_tab-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2017-09-21 19:16:00', '2017-09-21 19:16:00', '[spb_row element_name=\"Hero web\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-xs_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-web\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-xs\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_image image=\"47\" image_size=\"full\" frame=\"noframe\" caption_pos=\"hover\" remove_rounded=\"yes\" fullwidth=\"yes\" overflow_mode=\"none\" link_target=\"_self\" lightbox=\"no\" intro_animation=\"none\" animation_delay=\"200\" width=\"1/1\" el_position=\"first last\"][/spb_image] [/spb_row] [spb_row element_name=\"Hero mobile\" wrap_type=\"full-width-contained\" row_bg_type=\"color\" color_row_height=\"content-height\" bg_type=\"cover\" parallax_image_height=\"content-height\" parallax_image_movement=\"fixed\" parallax_image_speed=\"standard\" bg_video_loop=\"yes\" parallax_video_height=\"window-height\" row_responsive_vis=\"hidden-lg_hidden-md_hidden-sm\" row_top_style=\"none\" row_bottom_style=\"none\" parallax_video_overlay=\"none\" row_overlay_opacity=\"0\" remove_element_spacing=\"no\" row_col_spacing=\"0\" row_col_pos=\"default\" row_col_equal_heights=\"no\" row_expanding=\"no\" row_animation=\"none\" row_animation_delay=\"0\" minimize_row=\"no\" simplified_controls=\"yes\" custom_css_percentage=\"no\" custom_css=\"margin-top: 0px;margin-bottom: 0px;\" border_styling_global=\"default\" width=\"1/1\" el_position=\"first last\"] [spb_swift_slider fullscreen=\"true\" maxheight=\"600\" slidecount=\"5\" category=\"home-mobile\" random=\"no\" transition=\"fade\" loop=\"false\" nav=\"false\" pagination=\"false\" continue=\"false\" fullwidth=\"yes\" width=\"1/1\" el_position=\"first last\"] [/spb_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-21 19:16:00', '2017-09-21 19:16:00', '', 5, 'http://localhost:8888/Voomsway/5-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Home web', 'home-web', 0),
(3, 'Main', 'main', 0),
(4, 'Home mobile', 'home-mobile', 0),
(5, 'Home tab', 'home-tab', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(38, 4, 0),
(42, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'swift-slider-category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'swift-slider-category', '', 0, 1),
(5, 5, 'swift-slider-category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'icparklins'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:11:{s:64:\"6fb769291bce6b6848e4ad68d960d4baf3bd1dbe17323410caf4afb58a2801eb\";a:4:{s:10:\"expiration\";i:1506031424;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36 OPR/47.0.2631.80\";s:5:\"login\";i:1505858624;}s:64:\"bf2a183f4daaeb492cf70ba670fd29c4f355d21e96cac7e882f65a8856497d94\";a:4:{s:10:\"expiration\";i:1507124561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505914961;}s:64:\"6a02e5658b6faeb0574588a64324b70f5ccd09f4c78f6980f327005dbabedb0f\";a:4:{s:10:\"expiration\";i:1507145528;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935928;}s:64:\"766161fe5f38df8cb9b74802cb7053cd8503d4bdd808af896d7a0e73ac99c9a3\";a:4:{s:10:\"expiration\";i:1506108738;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935938;}s:64:\"afe8c7133ed63c63e03c6463fd7114144402d994b094a5583c1355dd244af662\";a:4:{s:10:\"expiration\";i:1506108750;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935950;}s:64:\"b69edfe18067b2e63ddcf4746b0a923ce660964b799f5b0e8322469c66aca513\";a:4:{s:10:\"expiration\";i:1507145562;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935962;}s:64:\"64de7edb703a0c661567613e754d0e89e2de7563eef0349c6bf14be5b7193ceb\";a:4:{s:10:\"expiration\";i:1506108781;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:55.0) Gecko/20100101 Firefox/55.0\";s:5:\"login\";i:1505935981;}s:64:\"9e60fe1e36747411d167f0c0c933427e4aaec9ae6b7dda6b4efb42dcb4cecbae\";a:4:{s:10:\"expiration\";i:1506193730;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36 OPR/47.0.2631.80\";s:5:\"login\";i:1506020930;}s:64:\"598c740efd86745edbf9b1b20aa7dfa6ef4d5a4fd62048f81cd93eb23dcf6444\";a:4:{s:10:\"expiration\";i:1507230540;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36 OPR/47.0.2631.80\";s:5:\"login\";i:1506020940;}s:64:\"e025dbf9f57e5ac0b14abfe250c348d6b16e6c3d1eea3704f9e0db41fe956504\";a:4:{s:10:\"expiration\";i:1507230552;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36 OPR/47.0.2631.80\";s:5:\"login\";i:1506020952;}s:64:\"20bdd4b2cf707a9c412194b21b26b816dcc8ebf05aba8334da80432f4b8e4f54\";a:4:{s:10:\"expiration\";i:1507230568;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36 OPR/47.0.2631.80\";s:5:\"login\";i:1506020968;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(18, 1, 'tgmpa_dismissed_notice_tgmpa', '1'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1506021251'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:10:{i:0;s:21:\"page_heading_meta_box\";i:1;s:20:\"page_header_meta_box\";i:2;s:13:\"page_meta_box\";i:3;s:21:\"sidebar_meta_box_page\";i:4;s:12:\"revisionsdiv\";i:5;s:10:\"postcustom\";i:6;s:16:\"commentstatusdiv\";i:7;s:11:\"commentsdiv\";i:8;s:7:\"slugdiv\";i:9;s:9:\"authordiv\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:23:\"add-post-type-portfolio\";i:1;s:23:\"add-post-type-galleries\";i:2;s:18:\"add-post-type-team\";i:3;s:18:\"add-post-type-faqs\";i:4;s:12:\"add-post_tag\";i:5;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'icparklins', '$P$BXZKoW3x/.UYzt2847xtrKeJEHwqmY1', 'icparklins', 'icparklins@gmail.com', '', '2017-09-19 22:03:11', '', 0, 'icparklins');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
