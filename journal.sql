-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 09:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `journal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add relate', 7, 'add_relate'),
(26, 'Can change relate', 7, 'change_relate'),
(27, 'Can delete relate', 7, 'delete_relate'),
(28, 'Can view relate', 7, 'view_relate'),
(29, 'Can add editor', 8, 'add_editor'),
(30, 'Can change editor', 8, 'change_editor'),
(31, 'Can delete editor', 8, 'delete_editor'),
(32, 'Can view editor', 8, 'view_editor'),
(33, 'Can add reviewer', 9, 'add_reviewer'),
(34, 'Can change reviewer', 9, 'change_reviewer'),
(35, 'Can delete reviewer', 9, 'delete_reviewer'),
(36, 'Can view reviewer', 9, 'view_reviewer'),
(37, 'Can add author', 10, 'add_author'),
(38, 'Can change author', 10, 'change_author'),
(39, 'Can delete author', 10, 'delete_author'),
(40, 'Can view author', 10, 'view_author'),
(41, 'Can add paper_ reviewers', 11, 'add_paper_reviewers'),
(42, 'Can change paper_ reviewers', 11, 'change_paper_reviewers'),
(43, 'Can delete paper_ reviewers', 11, 'delete_paper_reviewers'),
(44, 'Can view paper_ reviewers', 11, 'view_paper_reviewers'),
(45, 'Can add paper_ comments', 12, 'add_paper_comments'),
(46, 'Can change paper_ comments', 12, 'change_paper_comments'),
(47, 'Can delete paper_ comments', 12, 'delete_paper_comments'),
(48, 'Can view paper_ comments', 12, 'view_paper_comments'),
(49, 'Can add articles_ papers_ info', 13, 'add_articles_papers_info'),
(50, 'Can change articles_ papers_ info', 13, 'change_articles_papers_info'),
(51, 'Can delete articles_ papers_ info', 13, 'delete_articles_papers_info'),
(52, 'Can view articles_ papers_ info', 13, 'view_articles_papers_info'),
(53, 'Can add paper_ editors', 14, 'add_paper_editors'),
(54, 'Can change paper_ editors', 14, 'change_paper_editors'),
(55, 'Can delete paper_ editors', 14, 'delete_paper_editors'),
(56, 'Can view paper_ editors', 14, 'view_paper_editors'),
(57, 'Can add submit_ papers_ info', 15, 'add_submit_papers_info'),
(58, 'Can change submit_ papers_ info', 15, 'change_submit_papers_info'),
(59, 'Can delete submit_ papers_ info', 15, 'delete_submit_papers_info'),
(60, 'Can view submit_ papers_ info', 15, 'view_submit_papers_info'),
(61, 'Can add publish_ papers_ info', 16, 'add_publish_papers_info'),
(62, 'Can change publish_ papers_ info', 16, 'change_publish_papers_info'),
(63, 'Can delete publish_ papers_ info', 16, 'delete_publish_papers_info'),
(64, 'Can view publish_ papers_ info', 16, 'view_publish_papers_info'),
(65, 'Can add paper_ update_ history', 17, 'add_paper_update_history'),
(66, 'Can change paper_ update_ history', 17, 'change_paper_update_history'),
(67, 'Can delete paper_ update_ history', 17, 'delete_paper_update_history'),
(68, 'Can view paper_ update_ history', 17, 'view_paper_update_history'),
(69, 'Can add link counter', 18, 'add_linkcounter'),
(70, 'Can change link counter', 18, 'change_linkcounter'),
(71, 'Can delete link counter', 18, 'delete_linkcounter'),
(72, 'Can view link counter', 18, 'view_linkcounter');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(13, 'journals', 'articles_papers_info'),
(12, 'journals', 'paper_comments'),
(14, 'journals', 'paper_editors'),
(11, 'journals', 'paper_reviewers'),
(17, 'journals', 'paper_update_history'),
(16, 'journals', 'publish_papers_info'),
(15, 'journals', 'submit_papers_info'),
(10, 'main', 'author'),
(8, 'main', 'editor'),
(7, 'main', 'relate'),
(9, 'main', 'reviewer'),
(6, 'main', 'user'),
(5, 'sessions', 'session'),
(18, 'verify_email', 'linkcounter');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-30 18:20:37.124554'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-05-30 18:20:38.544122'),
(3, 'auth', '0001_initial', '2023-05-30 18:20:48.027518'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-05-30 18:20:51.445504'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-05-30 18:20:51.581720'),
(6, 'auth', '0004_alter_user_username_opts', '2023-05-30 18:20:51.794801'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-05-30 18:20:51.915725'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-05-30 18:20:51.978689'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-05-30 18:20:52.102611'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-05-30 18:20:52.169568'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-05-30 18:20:52.223535'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-05-30 18:20:52.455392'),
(13, 'auth', '0011_update_proxy_permissions', '2023-05-30 18:20:52.528090'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-05-30 18:20:52.687989'),
(15, 'auth', '0013_auto_20230220_0210', '2023-05-30 18:20:52.767940'),
(16, 'main', '0001_initial', '2023-05-30 18:21:06.274628'),
(17, 'admin', '0001_initial', '2023-05-30 18:21:10.350298'),
(18, 'sessions', '0001_initial', '2023-05-30 18:21:11.266766'),
(19, 'main', '0002_user_verified_user_created_user_gender_and_more', '2023-05-30 18:22:05.661099'),
(20, 'journals', '0001_initial', '2023-05-30 18:26:16.888512'),
(21, 'main', '0003_relate_author_editor_reviewer', '2023-05-30 18:26:27.856722'),
(22, 'verify_email', '0001_initial', '2023-05-30 18:26:31.841372');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3zsjksrakg3sewsx6pavu2adxs15alrg', '.eJxVjMsOwiAQRf-FtSEwvIpL934DGWCQqoGktCvjv2uTLnR7zzn3xQJuaw3boCXMmZ3ZxE6_W8T0oLaDfMd26zz1ti5z5LvCDzr4tWd6Xg7376DiqN_aFkkuSaE1iaKsi-DRAFkqBr3X2TjnIWpjywSASqpkkyTMUJxGAZ69P9ltN34:1p93mf:7bWgANdmNkDDJ9Q2C1ZPayLHL-xSt9XjuN4hi5onc9I', '2023-01-07 12:37:49.537337'),
('9ninu88pfozevofms8n1r22ckmifffbc', '.eJxVjEEOwiAQRe_C2hBaOwO4dN8zkKHDSNVAUtqV8e7apAvd_vfef6lA25rD1tISZlYX5dTpd4s0PVLZAd-p3KqealmXOepd0QdteqycntfD_TvI1PK3FidgIpIHPzCLcXhmseCYwQEgJUMC0XYe02DQUvSdkEWG2PfJCKn3B_LmOFA:1pU2zy:pLIB37hFRAfIcRgqX0LM_brcnkUaow2xcq1Ry862tFg', '2023-03-06 10:02:18.724702'),
('9w3hvon20s2aflpwwmpapb0bbo1i1v5r', '.eJxVjEEOwiAQRe_C2hBaOwO4dN8zkKHDSNVAUtqV8e7apAvd_vfef6lA25rD1tISZlYX5dTpd4s0PVLZAd-p3KqealmXOepd0QdteqycntfD_TvI1PK3FidgIpIHPzCLcXhmseCYwQEgJUMC0XYe02DQUvSdkEWG2PfJCKn3B_LmOFA:1pZJg6:bM0Wj8d1im9BJfDixS8rVPZiG02me9-jt-mCdE21Gus', '2023-03-20 22:51:34.644053'),
('iwqzd40forrnim5rc1ipqlrk93yxlioa', '.eJxVjEEOwiAQRe_C2hBaOwO4dN8zkKHDSNVAUtqV8e7apAvd_vfef6lA25rD1tISZlYX5dTpd4s0PVLZAd-p3KqealmXOepd0QdteqycntfD_TvI1PK3FidgIpIHPzCLcXhmseCYwQEgJUMC0XYe02DQUvSdkEWG2PfJCKn3B_LmOFA:1pLVgT:jnJNeu8tdMjU1PUV4FzsCPlM2j2vsrBXam3rCKkgYtc', '2023-02-10 20:50:53.235988'),
('o2avw57redm2rkq2vi2wnobhpaqzbc26', '.eJxVjEEOwiAQRe_C2hBaOwO4dN8zkKHDSNVAUtqV8e7apAvd_vfef6lA25rD1tISZlYX5dTpd4s0PVLZAd-p3KqealmXOepd0QdteqycntfD_TvI1PK3FidgIpIHPzCLcXhmseCYwQEgJUMC0XYe02DQUvSdkEWG2PfJCKn3B_LmOFA:1pBMmJ:ffUls38omzt_wEfdFHiPNThODAciXfywRwROY60vLWY', '2023-01-13 21:18:59.776022'),
('qarod7fmjzta1txrpqvemz82hzc080ew', '.eJxVjEsOAiEQBe_C2hCYZhBcup8zkIZuZNRAMp-V8e5KMgvdvqp6LxFw30rYV17CTOIiNIjT7xgxPbh2QnestyZTq9syR9kVedBVTo34eT3cv4OCa-k1oY80KJsxJacs-yErUNmN2ukvSdFYdwYFaAYm8JzAIqAHiiMrk8X7AyCHOIw:1q2zdB:UXlrqepPE96Lx6w-AuP5gwtoZKoaaV8rZiSGaAjPx_M', '2023-06-10 19:31:13.020819');

-- --------------------------------------------------------

--
-- Table structure for table `journals_articles_papers_info`
--

CREATE TABLE `journals_articles_papers_info` (
  `uid` decimal(7,3) NOT NULL,
  `submitter` varchar(34) DEFAULT NULL,
  `authors` varchar(600) NOT NULL,
  `title` varchar(400) NOT NULL,
  `comments` varchar(600) DEFAULT NULL,
  `journal` varchar(250) NOT NULL,
  `doi` varchar(150) DEFAULT NULL,
  `categories` varchar(100) NOT NULL,
  `abstract` varchar(4500) NOT NULL,
  `versions` varchar(1000) DEFAULT NULL,
  `publish_time` date NOT NULL,
  `authors_parsed` varchar(2000) DEFAULT NULL,
  `pdf` varchar(100) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_paper_comments`
--

CREATE TABLE `journals_paper_comments` (
  `created` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `version` int(11) NOT NULL,
  `supplimentary_file` varchar(100) DEFAULT NULL,
  `paper_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_paper_editors`
--

CREATE TABLE `journals_paper_editors` (
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `paper_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_paper_reviewers`
--

CREATE TABLE `journals_paper_reviewers` (
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `review_status` varchar(100) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `paper_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_paper_update_history`
--

CREATE TABLE `journals_paper_update_history` (
  `created` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `title` varchar(600) NOT NULL,
  `abstract` varchar(4200) NOT NULL,
  `keywords` varchar(4200) NOT NULL,
  `authors_name` varchar(3105) NOT NULL,
  `corres_emails` varchar(300) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `paper_type` int(11) NOT NULL,
  `manuscript_pdf` varchar(100) DEFAULT NULL,
  `cover_letter_pdf` varchar(100) DEFAULT NULL,
  `supplimentary_file` varchar(100) DEFAULT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `paper_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_publish_papers_info`
--

CREATE TABLE `journals_publish_papers_info` (
  `uid` varchar(8) NOT NULL,
  `title` varchar(337) NOT NULL,
  `doi` varchar(59) DEFAULT NULL,
  `pmcid` varchar(10) DEFAULT NULL,
  `pubmed_id` int(11) DEFAULT NULL,
  `licensee` varchar(11) DEFAULT NULL,
  `abstract` varchar(4127) NOT NULL,
  `publish_time` date NOT NULL,
  `authors` varchar(3105) NOT NULL,
  `journal` varchar(55) NOT NULL,
  `pdf_json_files` varchar(430) DEFAULT NULL,
  `pmc_json_files` varchar(44) DEFAULT NULL,
  `url` varchar(87) NOT NULL,
  `pdf` varchar(100) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_submit_papers_info`
--

CREATE TABLE `journals_submit_papers_info` (
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `id` bigint(20) NOT NULL,
  `title` varchar(600) NOT NULL,
  `abstract` varchar(4200) NOT NULL,
  `keywords` varchar(4200) NOT NULL,
  `authors_name` varchar(3105) NOT NULL,
  `corres_emails` varchar(300) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `reference_number` varchar(30) NOT NULL,
  `reference_url` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `is_submitted` tinyint(1) NOT NULL,
  `paper_type` int(11) NOT NULL,
  `manuscript_pdf` varchar(100) DEFAULT NULL,
  `cover_letter_pdf` varchar(100) DEFAULT NULL,
  `supplimentary_file` varchar(100) DEFAULT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journals_submit_papers_info`
--

INSERT INTO `journals_submit_papers_info` (`created`, `updated`, `id`, `title`, `abstract`, `keywords`, `authors_name`, `corres_emails`, `version`, `status`, `payment`, `reference_number`, `reference_url`, `views`, `download`, `is_submitted`, `paper_type`, `manuscript_pdf`, `cover_letter_pdf`, `supplimentary_file`, `domain`, `subdomain`, `user_id`) VALUES
('2022-12-24 06:35:23.395370', '2023-05-27 19:24:59.247245', 4, 'An Electronic Journal Management System', 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture has been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Journal management, PHP, web applications, web content management', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić and Vedran Mornar', 'sanisbature17@gmail.com', 7, 'Submitted', 'Unpaid', '68phx96dr2', 'https://checkout.paystack.com/slzegdwix2kr9d1', 0, 0, 0, 1, 'papers_file/An_electronic_journal_management_system_1.pdf', '', 'papers_file/An_electronic_journal_management_system_1_ieOcLoS.pdf', 'Physical sciences and engineering', 'Computer Science', 8),
('2022-12-24 20:51:21.980413', '2023-05-27 19:24:59.132340', 5, 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'client relationships, marketing, development of competencies, education', 'Joanna Rzempała, Rafał Szymańskib', 'ameersbature17@gmail.com', 11, 'Submitted', 'Unpaid', 'dzwnxeipsb', 'https://checkout.paystack.com/341ajjsg23t6mxd', 0, 0, 0, 1, 'papers_file/COVID.DATA.LIC.AGMT_2iXSL3N.pdf', '', 'papers_file/1-s2.0-S1877050921020172-main_R9kRzKw.pdf', 'Physical sciences and engineering', 'Computer Science', 8),
('2022-12-30 13:41:07.685588', '2022-12-30 13:41:07.685588', 7, 'A paper', 'abstract here', 'Journal management, PHP, web applications, web content management', 'Joanna Rzempała, Rafał Szymańskib', 'ameersbature17@gmail.com', 1, 'Submitted', 'Unpaid', '', '', 0, 0, 0, 1, 'papers_file/04Nfm04de12.pdf_sequence4.pdf', '', 'papers_file/04Nfm04de12.pdf_sequence4_FITjgRu.pdf', 'Life sciences', 'Biologyy', 11);

-- --------------------------------------------------------

--
-- Table structure for table `main_author`
--

CREATE TABLE `main_author` (
  `relate_ptr_id` bigint(20) NOT NULL,
  `is_author_accepted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_author`
--

INSERT INTO `main_author` (`relate_ptr_id`, `is_author_accepted`) VALUES
(8, 1),
(11, 1),
(14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_editor`
--

CREATE TABLE `main_editor` (
  `relate_ptr_id` bigint(20) NOT NULL,
  `is_associate_editor_accepted` tinyint(1) NOT NULL,
  `is_main_editor_accepted` tinyint(1) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) NOT NULL,
  `area` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_editor`
--

INSERT INTO `main_editor` (`relate_ptr_id`, `is_associate_editor_accepted`, `is_main_editor_accepted`, `domain`, `subdomain`, `area`) VALUES
(8, 1, 0, 'Physical sciences and engineering', 'computer science', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_relate`
--

CREATE TABLE `main_relate` (
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `institution` varchar(300) NOT NULL,
  `country` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_relate`
--

INSERT INTO `main_relate` (`created`, `user_id`, `designation`, `institution`, `country`, `address`, `state`, `city`, `mobile`) VALUES
('0000-00-00 00:00:00.000000', 8, 'Professor', 'Yusuf Maitama Sule University, Kano', 'Nigeria', 'No. 356 Yamadawa Dorayi Babba, Gwale LG, Kano State', 'KANO', 'KANO', '+234-7088890573'),
('2022-12-30 13:27:53.389125', 11, 'Student', 'Yusuf Maitama Sule University, Kano', 'Nigeria', 'No. 356 Yamadawa Dorayi Babba, Gwale LG, Kano State', 'KANO', 'KANO', '+234-7088890573'),
('0000-00-00 00:00:00.000000', 14, 'Select', 'Yusuf Maitama Sule University, Kano', 'Nigeria', '356 Yamadawa Dorayi', 'Kano', 'Gwale', '+234-7065697733');

-- --------------------------------------------------------

--
-- Table structure for table `main_reviewer`
--

CREATE TABLE `main_reviewer` (
  `relate_ptr_id` bigint(20) NOT NULL,
  `is_reviewer_accepted` tinyint(1) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) NOT NULL,
  `area` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_reviewer`
--

INSERT INTO `main_reviewer` (`relate_ptr_id`, `is_reviewer_accepted`, `domain`, `subdomain`, `area`) VALUES
(8, 1, 'Physical sciences and engineering', 'computer science', ''),
(14, 0, 'Physical sciences and engineering', 'mathematics', 'Calculus, Algebra');

-- --------------------------------------------------------

--
-- Table structure for table `main_user`
--

CREATE TABLE `main_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_user`
--

INSERT INTO `main_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `is_staff`, `is_active`, `date_joined`, `first_name`, `last_name`, `email`, `Verified`, `created`, `gender`, `is_email_verified`, `updated`) VALUES
(8, 'pbkdf2_sha256$390000$WJxljFzJagwIRMu6sOkRQT$Hdj1uFFst9jVObV0eXGUc/XAn3nTAg2IV4861PJ96xk=', '2023-05-27 19:27:39.538187', 0, '', 0, 1, '2022-12-20 15:44:49.104948', 'Sani', 'Bature', 'sanisbature17@gmail.com', 1, '2022-12-20 15:44:49.775068', 'Select', 1, '2022-12-27 17:05:10.740525'),
(11, 'pbkdf2_sha256$390000$PMES1rGKX9RTZrZEv5ZyDK$g9SjiYdKIotViRmBPuNt+h3BKYFPhDqx9lrTR3qaUeA=', '2022-12-30 20:48:27.295096', 0, '', 0, 1, '2022-12-30 12:54:17.563292', 'Ameer', 'Bature', 'ameersbature17@gmail.com', 1, '2022-12-30 12:54:18.078332', 'Select', 1, '2022-12-30 12:54:18.078332'),
(13, 'pbkdf2_sha256$390000$yj6QpRGbmvYZOQy14hsuCm$GZz+cXMegCXxs6e4ETufiNJUKwRi8xVbzJrYflNDiXM=', '2023-05-27 19:31:12.924412', 1, 'admin1', 1, 1, '2023-05-27 19:30:55.566017', 'admin', 'admin', 'admin@journal.edu.ng', 1, '2023-05-27 19:30:55.956136', 'Select', 0, '2023-05-27 19:30:55.956136'),
(14, 'pbkdf2_sha256$390000$qOeVDO6nJxq28dU0EzKsJk$Z389FAffO2c4zy0U44hBskwANYN1QWo1AKqZcxtdvkY=', '2023-05-30 13:46:49.855750', 0, '', 0, 1, '2023-05-27 19:42:14.000000', 'Asmau', 'bature', 'asmeessb@gmail.com', 0, '2023-05-27 19:42:15.289844', 'MALE', 1, '2023-05-30 13:41:03.587949');

-- --------------------------------------------------------

--
-- Table structure for table `main_user_groups`
--

CREATE TABLE `main_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_user_user_permissions`
--

CREATE TABLE `main_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verify_email_linkcounter`
--

CREATE TABLE `verify_email_linkcounter` (
  `id` bigint(20) NOT NULL,
  `sent_count` int(11) NOT NULL,
  `requester_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_email_linkcounter`
--

INSERT INTO `verify_email_linkcounter` (`id`, `sent_count`, `requester_id`) VALUES
(15, 1, 8),
(18, 1, 11),
(20, 1, 13),
(21, 1, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_main_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `journals_articles_papers_info`
--
ALTER TABLE `journals_articles_papers_info`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `journals_articles_papers_info_user_id_004359da_fk_main_user_id` (`user_id`);

--
-- Indexes for table `journals_paper_comments`
--
ALTER TABLE `journals_paper_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_paper_comme_paper_id_be52bc91_fk_journals_` (`paper_id`),
  ADD KEY `journals_paper_comments_reviewer_id_48362dba_fk_main_user_id` (`reviewer_id`);

--
-- Indexes for table `journals_paper_editors`
--
ALTER TABLE `journals_paper_editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_paper_editors_editor_id_932450a0_fk_main_user_id` (`editor_id`),
  ADD KEY `journals_paper_edito_paper_id_86bef7b0_fk_journals_` (`paper_id`);

--
-- Indexes for table `journals_paper_reviewers`
--
ALTER TABLE `journals_paper_reviewers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_paper_reviewers_editor_id_14c0efb1_fk_main_user_id` (`editor_id`),
  ADD KEY `journals_paper_revie_paper_id_589071d3_fk_journals_` (`paper_id`),
  ADD KEY `journals_paper_reviewers_reviewer_id_fab37c22_fk_main_user_id` (`reviewer_id`);

--
-- Indexes for table `journals_paper_update_history`
--
ALTER TABLE `journals_paper_update_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_paper_updat_paper_id_52518b64_fk_journals_` (`paper_id`);

--
-- Indexes for table `journals_publish_papers_info`
--
ALTER TABLE `journals_publish_papers_info`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `journals_publish_papers_info_user_id_92e0028f_fk_main_user_id` (`user_id`);

--
-- Indexes for table `journals_submit_papers_info`
--
ALTER TABLE `journals_submit_papers_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_submit_papers_info_user_id_42e2508d_fk_main_user_id` (`user_id`);

--
-- Indexes for table `main_author`
--
ALTER TABLE `main_author`
  ADD PRIMARY KEY (`relate_ptr_id`);

--
-- Indexes for table `main_editor`
--
ALTER TABLE `main_editor`
  ADD PRIMARY KEY (`relate_ptr_id`);

--
-- Indexes for table `main_relate`
--
ALTER TABLE `main_relate`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `main_reviewer`
--
ALTER TABLE `main_reviewer`
  ADD PRIMARY KEY (`relate_ptr_id`);

--
-- Indexes for table `main_user`
--
ALTER TABLE `main_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_user_groups_user_id_group_id_ae195797_uniq` (`user_id`,`group_id`),
  ADD KEY `main_user_groups_group_id_a337ba62_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_user_user_permissions_user_id_permission_id_96b9fadf_uniq` (`user_id`,`permission_id`),
  ADD KEY `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `requester_id` (`requester_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `journals_paper_comments`
--
ALTER TABLE `journals_paper_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `journals_paper_editors`
--
ALTER TABLE `journals_paper_editors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `journals_paper_reviewers`
--
ALTER TABLE `journals_paper_reviewers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `journals_paper_update_history`
--
ALTER TABLE `journals_paper_update_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `journals_submit_papers_info`
--
ALTER TABLE `journals_submit_papers_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_user`
--
ALTER TABLE `main_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_articles_papers_info`
--
ALTER TABLE `journals_articles_papers_info`
  ADD CONSTRAINT `journals_articles_papers_info_user_id_004359da_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_comments`
--
ALTER TABLE `journals_paper_comments`
  ADD CONSTRAINT `journals_paper_comme_paper_id_be52bc91_fk_journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `journals_paper_comments_reviewer_id_48362dba_fk_main_user_id` FOREIGN KEY (`reviewer_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_editors`
--
ALTER TABLE `journals_paper_editors`
  ADD CONSTRAINT `journals_paper_edito_paper_id_86bef7b0_fk_journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `journals_paper_editors_editor_id_932450a0_fk_main_user_id` FOREIGN KEY (`editor_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_reviewers`
--
ALTER TABLE `journals_paper_reviewers`
  ADD CONSTRAINT `journals_paper_revie_paper_id_589071d3_fk_journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `journals_paper_reviewers_editor_id_14c0efb1_fk_main_user_id` FOREIGN KEY (`editor_id`) REFERENCES `main_user` (`id`),
  ADD CONSTRAINT `journals_paper_reviewers_reviewer_id_fab37c22_fk_main_user_id` FOREIGN KEY (`reviewer_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_update_history`
--
ALTER TABLE `journals_paper_update_history`
  ADD CONSTRAINT `journals_paper_updat_paper_id_52518b64_fk_journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`);

--
-- Constraints for table `journals_publish_papers_info`
--
ALTER TABLE `journals_publish_papers_info`
  ADD CONSTRAINT `journals_publish_papers_info_user_id_92e0028f_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_submit_papers_info`
--
ALTER TABLE `journals_submit_papers_info`
  ADD CONSTRAINT `journals_submit_papers_info_user_id_42e2508d_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_author`
--
ALTER TABLE `main_author`
  ADD CONSTRAINT `main_author_relate_ptr_id_d81b3ef4_fk_main_relate_user_id` FOREIGN KEY (`relate_ptr_id`) REFERENCES `main_relate` (`user_id`);

--
-- Constraints for table `main_editor`
--
ALTER TABLE `main_editor`
  ADD CONSTRAINT `main_editor_relate_ptr_id_4c3fe94d_fk_main_relate_user_id` FOREIGN KEY (`relate_ptr_id`) REFERENCES `main_relate` (`user_id`);

--
-- Constraints for table `main_relate`
--
ALTER TABLE `main_relate`
  ADD CONSTRAINT `main_relate_user_id_4bae14e4_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_reviewer`
--
ALTER TABLE `main_reviewer`
  ADD CONSTRAINT `main_reviewer_relate_ptr_id_fb25d80b_fk_main_relate_user_id` FOREIGN KEY (`relate_ptr_id`) REFERENCES `main_relate` (`user_id`);

--
-- Constraints for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  ADD CONSTRAINT `main_user_groups_group_id_a337ba62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `main_user_groups_user_id_df502602_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD CONSTRAINT `main_user_user_permi_permission_id_cd2b56a3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `main_user_user_permissions_user_id_451ce57f_fk_main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  ADD CONSTRAINT `verify_email_linkcounter_requester_id_b6bf2934_fk_main_user_id` FOREIGN KEY (`requester_id`) REFERENCES `main_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
