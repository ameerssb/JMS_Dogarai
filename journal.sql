-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 03:58 PM
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
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add articles_papers_info', 8, 'add_articles_papers_info'),
(30, 'Can change articles_papers_info', 8, 'change_articles_papers_info'),
(31, 'Can delete articles_papers_info', 8, 'delete_articles_papers_info'),
(32, 'Can view articles_papers_info', 8, 'view_articles_papers_info'),
(33, 'Can add papers_info', 9, 'add_papers_info'),
(34, 'Can change papers_info', 9, 'change_papers_info'),
(35, 'Can delete papers_info', 9, 'delete_papers_info'),
(36, 'Can view papers_info', 9, 'view_papers_info'),
(37, 'Can add relate', 10, 'add_relate'),
(38, 'Can change relate', 10, 'change_relate'),
(39, 'Can delete relate', 10, 'delete_relate'),
(40, 'Can view relate', 10, 'view_relate'),
(41, 'Can add associate editor', 11, 'add_associateeditor'),
(42, 'Can change associate editor', 11, 'change_associateeditor'),
(43, 'Can delete associate editor', 11, 'delete_associateeditor'),
(44, 'Can view associate editor', 11, 'view_associateeditor'),
(45, 'Can add author', 12, 'add_author'),
(46, 'Can change author', 12, 'change_author'),
(47, 'Can delete author', 12, 'delete_author'),
(48, 'Can view author', 12, 'view_author'),
(49, 'Can add main editor', 13, 'add_maineditor'),
(50, 'Can change main editor', 13, 'change_maineditor'),
(51, 'Can delete main editor', 13, 'delete_maineditor'),
(52, 'Can view main editor', 13, 'view_maineditor'),
(53, 'Can add reviewer', 14, 'add_reviewer'),
(54, 'Can change reviewer', 14, 'change_reviewer'),
(55, 'Can delete reviewer', 14, 'delete_reviewer'),
(56, 'Can view reviewer', 14, 'view_reviewer'),
(57, 'Can add publish_ papers_ info', 15, 'add_publish_papers_info'),
(58, 'Can change publish_ papers_ info', 15, 'change_publish_papers_info'),
(59, 'Can delete publish_ papers_ info', 15, 'delete_publish_papers_info'),
(60, 'Can view publish_ papers_ info', 15, 'view_publish_papers_info'),
(61, 'Can add submit_ papers_ info', 16, 'add_submit_papers_info'),
(62, 'Can change submit_ papers_ info', 16, 'change_submit_papers_info'),
(63, 'Can delete submit_ papers_ info', 16, 'delete_submit_papers_info'),
(64, 'Can view submit_ papers_ info', 16, 'view_submit_papers_info'),
(65, 'Can add update_ history', 17, 'add_update_history'),
(66, 'Can change update_ history', 17, 'change_update_history'),
(67, 'Can delete update_ history', 17, 'delete_update_history'),
(68, 'Can view update_ history', 17, 'view_update_history'),
(69, 'Can add paper_ update_ history', 17, 'add_paper_update_history'),
(70, 'Can change paper_ update_ history', 17, 'change_paper_update_history'),
(71, 'Can delete paper_ update_ history', 17, 'delete_paper_update_history'),
(72, 'Can view paper_ update_ history', 17, 'view_paper_update_history'),
(73, 'Can add paper_uploads', 18, 'add_paper_uploads'),
(74, 'Can change paper_uploads', 18, 'change_paper_uploads'),
(75, 'Can delete paper_uploads', 18, 'delete_paper_uploads'),
(76, 'Can view paper_uploads', 18, 'view_paper_uploads'),
(77, 'Can add paper_ reviewers', 19, 'add_paper_reviewers'),
(78, 'Can change paper_ reviewers', 19, 'change_paper_reviewers'),
(79, 'Can delete paper_ reviewers', 19, 'delete_paper_reviewers'),
(80, 'Can view paper_ reviewers', 19, 'view_paper_reviewers'),
(81, 'Can add paper_ editors', 20, 'add_paper_editors'),
(82, 'Can change paper_ editors', 20, 'change_paper_editors'),
(83, 'Can delete paper_ editors', 20, 'delete_paper_editors'),
(84, 'Can view paper_ editors', 20, 'view_paper_editors'),
(85, 'Can add link counter', 21, 'add_linkcounter'),
(86, 'Can change link counter', 21, 'change_linkcounter'),
(87, 'Can delete link counter', 21, 'delete_linkcounter'),
(88, 'Can view link counter', 21, 'view_linkcounter'),
(89, 'Can add paper_ comments', 22, 'add_paper_comments'),
(90, 'Can change paper_ comments', 22, 'change_paper_comments'),
(91, 'Can delete paper_ comments', 22, 'delete_paper_comments'),
(92, 'Can view paper_ comments', 22, 'view_paper_comments'),
(93, 'Can add d main editor', 23, 'add_dmaineditor'),
(94, 'Can change d main editor', 23, 'change_dmaineditor'),
(95, 'Can delete d main editor', 23, 'delete_dmaineditor'),
(96, 'Can view d main editor', 23, 'view_dmaineditor'),
(97, 'Can add d associate editor', 24, 'add_dassociateeditor'),
(98, 'Can change d associate editor', 24, 'change_dassociateeditor'),
(99, 'Can delete d associate editor', 24, 'delete_dassociateeditor'),
(100, 'Can view d associate editor', 24, 'view_dassociateeditor'),
(101, 'Can add editor', 25, 'add_editor'),
(102, 'Can change editor', 25, 'change_editor'),
(103, 'Can delete editor', 25, 'delete_editor'),
(104, 'Can view editor', 25, 'view_editor');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-27 19:38:34.027949', '12', 'asmeessb@gmail.com', 3, '', 7, 13),
(2, '2023-05-30 13:33:27.099048', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Last login\", \"Verified\", \"Gender\"]}}]', 7, 13),
(3, '2023-05-30 13:33:39.305235', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 13),
(4, '2023-05-30 13:36:46.186526', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 13),
(5, '2023-05-30 13:37:32.879739', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 13),
(6, '2023-05-30 13:40:04.944513', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 7, 13),
(7, '2023-05-30 13:41:03.643946', '14', 'asmeessb@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is email verified\", \"Gender\"]}}]', 7, 13);

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
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'contenttypes', 'contenttype'),
(8, 'Journals', 'articles_papers_info'),
(9, 'Journals', 'papers_info'),
(22, 'Journals', 'paper_comments'),
(20, 'Journals', 'paper_editors'),
(19, 'Journals', 'paper_reviewers'),
(17, 'Journals', 'paper_update_history'),
(18, 'Journals', 'paper_uploads'),
(15, 'Journals', 'publish_papers_info'),
(16, 'Journals', 'submit_papers_info'),
(11, 'Main', 'associateeditor'),
(12, 'Main', 'author'),
(24, 'Main', 'dassociateeditor'),
(23, 'Main', 'dmaineditor'),
(25, 'Main', 'editor'),
(13, 'Main', 'maineditor'),
(10, 'Main', 'relate'),
(14, 'Main', 'reviewer'),
(7, 'Main', 'user'),
(6, 'sessions', 'session'),
(21, 'verify_email', 'linkcounter');

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
(1, 'Journals', '0001_initial', '2022-12-12 14:22:27.461032'),
(2, 'contenttypes', '0001_initial', '2022-12-12 14:22:28.169806'),
(3, 'contenttypes', '0002_remove_content_type_name', '2022-12-12 14:22:30.169054'),
(4, 'auth', '0001_initial', '2022-12-12 14:22:35.903677'),
(5, 'auth', '0002_alter_permission_name_max_length', '2022-12-12 14:22:38.090982'),
(6, 'auth', '0003_alter_user_email_max_length', '2022-12-12 14:22:38.146752'),
(7, 'auth', '0004_alter_user_username_opts', '2022-12-12 14:22:38.250738'),
(8, 'auth', '0005_alter_user_last_login_null', '2022-12-12 14:22:38.288691'),
(9, 'auth', '0006_require_contenttypes_0002', '2022-12-12 14:22:38.336684'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2022-12-12 14:22:38.381030'),
(11, 'auth', '0008_alter_user_username_max_length', '2022-12-12 14:22:38.429031'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2022-12-12 14:22:38.493028'),
(13, 'auth', '0010_alter_group_name_max_length', '2022-12-12 14:22:38.779425'),
(14, 'auth', '0011_update_proxy_permissions', '2022-12-12 14:22:38.938759'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2022-12-12 14:22:39.282766'),
(16, 'Main', '0001_initial', '2022-12-12 14:22:45.927479'),
(17, 'admin', '0001_initial', '2022-12-12 14:22:48.863623'),
(18, 'admin', '0002_logentry_remove_auto_add', '2022-12-12 14:22:48.945614'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-12 14:22:49.038847'),
(20, 'admin_interface', '0001_initial', '2022-12-12 14:22:49.843459'),
(21, 'admin_interface', '0002_add_related_modal', '2022-12-12 14:22:50.901528'),
(22, 'admin_interface', '0003_add_logo_color', '2022-12-12 14:22:51.212431'),
(23, 'admin_interface', '0004_rename_title_color', '2022-12-12 14:22:51.476145'),
(24, 'admin_interface', '0005_add_recent_actions_visible', '2022-12-12 14:22:51.791505'),
(25, 'admin_interface', '0006_bytes_to_str', '2022-12-12 14:22:52.084586'),
(26, 'admin_interface', '0007_add_favicon', '2022-12-12 14:22:52.348596'),
(27, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-12-12 14:22:52.826654'),
(28, 'admin_interface', '0009_add_enviroment', '2022-12-12 14:22:53.569645'),
(29, 'admin_interface', '0010_add_localization', '2022-12-12 14:22:53.740470'),
(30, 'admin_interface', '0011_add_environment_options', '2022-12-12 14:22:54.422696'),
(31, 'admin_interface', '0012_update_verbose_names', '2022-12-12 14:22:54.494325'),
(32, 'admin_interface', '0013_add_related_modal_close_button', '2022-12-12 14:22:54.666141'),
(33, 'admin_interface', '0014_name_unique', '2022-12-12 14:22:55.028908'),
(34, 'admin_interface', '0015_add_language_chooser_active', '2022-12-12 14:22:55.307805'),
(35, 'admin_interface', '0016_add_language_chooser_display', '2022-12-12 14:22:55.491832'),
(36, 'admin_interface', '0017_change_list_filter_dropdown', '2022-12-12 14:22:55.543873'),
(37, 'admin_interface', '0018_theme_list_filter_sticky', '2022-12-12 14:22:55.728345'),
(38, 'admin_interface', '0019_add_form_sticky', '2022-12-12 14:22:56.076108'),
(39, 'admin_interface', '0020_module_selected_colors', '2022-12-12 14:22:57.404617'),
(40, 'admin_interface', '0021_file_extension_validator', '2022-12-12 14:22:57.540654'),
(41, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-12-12 14:22:58.120206'),
(42, 'admin_interface', '0023_theme_foldable_apps', '2022-12-12 14:22:58.857298'),
(43, 'admin_interface', '0024_remove_theme_css', '2022-12-12 14:22:59.150664'),
(44, 'admin_interface', '0025_theme_language_chooser_control', '2022-12-12 14:22:59.521651'),
(45, 'admin_interface', '0026_theme_list_filter_highlight', '2022-12-12 14:22:59.848881'),
(46, 'admin_interface', '0027_theme_list_filter_removal_links', '2022-12-12 14:23:00.083389'),
(47, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2022-12-12 14:23:00.580633'),
(48, 'sessions', '0001_initial', '2022-12-12 14:23:01.340685'),
(49, 'Journals', '0002_articles_papers_info_user_papers_info_user', '2022-12-12 14:25:16.250790'),
(50, 'Main', '0002_relate_rename_gender_user_gender_user_created_and_more', '2022-12-12 15:21:14.681759'),
(51, 'Main', '0003_rename_university_relate_institution_and_more', '2022-12-12 15:26:26.427051'),
(52, 'Journals', '0003_publish_papers_info_submit_papers_info_and_more', '2022-12-12 16:56:24.364313'),
(53, 'Journals', '0004_rename_update_history_paper_update_history_and_more', '2022-12-15 23:47:25.113669'),
(54, 'Journals', '0005_alter_submit_papers_info_paper_type', '2022-12-15 23:49:26.406775'),
(55, 'Main', '0004_remove_user_date_of_birth_remove_user_other_name_and_more', '2022-12-20 14:05:11.625294'),
(56, 'verify_email', '0001_initial', '2022-12-20 14:26:35.553882'),
(57, 'Main', '0005_alter_user_username', '2022-12-20 14:57:00.178022'),
(58, 'Main', '0006_alter_user_verified', '2022-12-20 15:47:08.155762'),
(59, 'Journals', '0006_submit_papers_info_cover_letter_pdf_and_more', '2022-12-23 22:41:54.841051'),
(60, 'Journals', '0007_alter_submit_papers_info_manuscript_pdf_and_more', '2022-12-23 22:57:44.202363'),
(61, 'Journals', '0008_alter_submit_papers_info_user', '2022-12-23 23:01:30.106900'),
(62, 'Journals', '0009_alter_submit_papers_info_status', '2022-12-24 05:27:31.627895'),
(63, 'Journals', '0010_alter_submit_papers_info_manuscript_pdf_and_more', '2022-12-24 06:34:09.301975'),
(64, 'Journals', '0011_alter_submit_papers_info_manuscript_pdf_and_more', '2022-12-24 14:20:05.103386'),
(65, 'Journals', '0012_alter_submit_papers_info_status', '2022-12-25 16:11:09.404928'),
(66, 'Journals', '0013_remove_paper_update_history_created', '2022-12-25 16:18:19.644851'),
(67, 'Journals', '0014_paper_update_history_abstract_and_more', '2022-12-25 16:28:14.460602'),
(68, 'Journals', '0015_remove_paper_update_history_comment', '2022-12-25 16:30:30.742296'),
(69, 'Journals', '0016_paper_comments_paper_update_history_version_and_more', '2022-12-25 16:37:45.435646'),
(70, 'Journals', '0017_submit_papers_info_version', '2022-12-25 18:50:26.899044'),
(71, 'Journals', '0018_paper_reviewers_review_status', '2022-12-26 22:18:16.939176'),
(72, 'Main', '0007_remove_relate_is_ass_editor_remove_relate_is_author_and_more', '2022-12-26 22:18:25.086339'),
(73, 'Main', '0008_relate_address_relate_city_relate_mobile_and_more', '2022-12-26 22:25:02.388351'),
(74, 'Main', '0009_alter_relate_mobile', '2022-12-26 22:26:24.845619'),
(75, 'Main', '0010_remove_associateeditor_is_ass_editor_and_more', '2022-12-26 22:43:49.015265'),
(76, 'Main', '0011_alter_relate_designation', '2022-12-26 23:03:06.142164'),
(77, 'Main', '0012_alter_relate_designation', '2022-12-26 23:24:23.086481'),
(78, 'Main', '0013_alter_relate_designation', '2022-12-26 23:25:17.833365'),
(79, 'Journals', '0019_alter_submit_papers_info_user', '2022-12-27 00:05:14.556473'),
(80, 'Journals', '0020_alter_publish_papers_info_pubmed_id_and_more', '2022-12-27 23:52:58.029906'),
(81, 'Main', '0014_remove_relate_accepted_and_more', '2022-12-27 23:53:01.497463'),
(82, 'Journals', '0021_delete_paper_editors', '2022-12-28 11:32:04.540553'),
(83, 'Main', '0015_editor_remove_associateeditor_relate_ptr_and_more', '2022-12-28 11:40:02.650828'),
(84, 'Main', '0015_dassociateeditor_dmaineditor', '2022-12-28 11:45:31.930891'),
(85, 'Main', '0016_remove_dassociateeditor_relate_ptr_and_more', '2022-12-28 11:52:40.753043'),
(86, 'Main', '0015_associateeditor_maineditor', '2022-12-28 11:56:02.836790'),
(87, 'Main', '0016_remove_associateeditor_relate_ptr_and_more', '2022-12-28 11:56:06.744855'),
(88, 'Main', '0017_editor', '2022-12-28 11:56:27.229749'),
(89, 'Journals', '0022_paper_editors', '2022-12-28 11:57:49.973302'),
(90, 'Journals', '0023_alter_submit_papers_info_domain', '2022-12-28 13:11:16.893540'),
(91, 'Journals', '0024_alter_articles_papers_info_domain_and_more', '2022-12-28 13:44:49.219568'),
(92, 'Journals', '0025_alter_articles_papers_info_subdomain_and_more', '2022-12-28 13:53:08.686528'),
(93, 'Journals', '0026_paper_update_history_domain', '2022-12-28 14:10:49.208029'),
(94, 'Journals', '0027_paper_reviewers_accepted_and_more', '2022-12-29 09:05:21.884902'),
(95, 'Journals', '0028_paper_reviewers_user_and_more', '2022-12-29 09:35:42.949454'),
(96, 'Journals', '0029_alter_paper_reviewers_user', '2022-12-29 09:45:03.618939'),
(97, 'Journals', '0030_remove_paper_reviewers_user_paper_reviewers_editor', '2022-12-30 14:18:41.525047'),
(98, 'Journals', '0031_alter_paper_editors_editor_and_more', '2022-12-30 14:27:39.401831'),
(99, 'Journals', '0032_remove_paper_reviewers_editor_paper_reviewers_user_and_more', '2022-12-30 14:29:37.602717'),
(100, 'Journals', '0033_remove_paper_reviewers_user_paper_reviewers_editor', '2022-12-30 14:30:32.960088'),
(101, 'Main', '0018_editor_domain_editor_subdomain_reviewer_domain_and_more', '2022-12-30 20:49:05.348514'),
(102, 'Main', '0019_editor_area_reviewer_area_alter_editor_subdomain_and_more', '2022-12-30 21:07:09.989664'),
(103, 'Journals', '0034_alter_paper_reviewers_editor_and_more', '2022-12-31 00:06:33.048491'),
(104, 'Journals', '0035_alter_paper_editors_editor_alter_paper_editors_paper_and_more', '2022-12-31 00:13:02.494407'),
(105, 'Journals', '0036_alter_paper_reviewers_editor_and_more', '2022-12-31 00:57:51.193763'),
(106, 'Journals', '0037_alter_paper_reviewers_reviewer', '2022-12-31 00:59:10.847444'),
(107, 'Journals', '0038_remove_paper_reviewers_accepted', '2022-12-31 05:52:45.275236'),
(108, 'Journals', '0039_paper_comments_reviewer_and_more', '2022-12-31 06:18:12.120251'),
(109, 'Journals', '0040_alter_paper_comments_comment', '2022-12-31 06:36:15.717991'),
(110, 'Journals', '0041_submit_papers_info_payment_and_more', '2023-01-27 21:22:24.785175'),
(111, 'Journals', '0042_alter_submit_papers_info_payment', '2023-01-27 21:28:46.177384'),
(112, 'Journals', '0043_submit_papers_info_reference_url', '2023-01-27 21:43:06.799055');

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
  `paper_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `review_status` varchar(100) NOT NULL,
  `editor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `journals_paper_update_history`
--

CREATE TABLE `journals_paper_update_history` (
  `id` bigint(20) NOT NULL,
  `paper_id` bigint(20) NOT NULL,
  `abstract` varchar(4200) NOT NULL,
  `authors_name` varchar(3105) NOT NULL,
  `corres_emails` varchar(300) DEFAULT NULL,
  `cover_letter_pdf` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `keywords` varchar(4200) NOT NULL,
  `manuscript_pdf` varchar(100) DEFAULT NULL,
  `paper_type` int(11) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `supplimentary_file` varchar(100) DEFAULT NULL,
  `title` varchar(600) NOT NULL,
  `version` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journals_paper_update_history`
--

INSERT INTO `journals_paper_update_history` (`id`, `paper_id`, `abstract`, `authors_name`, `corres_emails`, `cover_letter_pdf`, `created`, `keywords`, `manuscript_pdf`, `paper_type`, `subdomain`, `supplimentary_file`, `title`, `version`, `domain`) VALUES
(1, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 17:04:28.316556', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 1, 'Select'),
(2, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 18:18:31.655680', 'client relationships, marketing, development of competencies, education', 'papers_file/COVID.DATA.LIC.AGMT_ql8Cd4I.pdf', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 2, 'Select'),
(3, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 18:22:17.613181', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 3, 'Select'),
(4, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 18:23:30.725539', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 4, 'Select'),
(5, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 18:28:50.155269', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 5, 'Select'),
(6, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 20:59:29.439388', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 6, 'Select'),
(7, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-25 21:09:18.164692', 'client relationships, marketing, development of competencies, education', '', 1, 'UNKNOWN', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 7, 'Select'),
(8, 4, 'ss', 'a', 'ameersbature17@gmail.com', '', '2022-12-25 21:41:12.920158', 'a', '', 2, 'UNKNOWN', '', 'a', 1, 'Select'),
(9, 4, 'ss', 'a', 'ameersbature17@gmail.com', '', '2022-12-25 21:47:11.421694', 'a', '', 2, 'UNKNOWN', '', 'a', 2, 'Select'),
(10, 4, 'ss', 'a', 'ameersbature17@gmail.com', '', '2022-12-25 21:48:07.790176', 'a', '', 2, 'UNKNOWN', '', 'a', 3, 'Select'),
(11, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-25 21:54:27.449320', 'Journal management, PHP, web applications, web content management', 'papers_file/An_electronic_journal_management_system_Mz1mHZN.pdf', 1, 'UNKNOWN', 'papers_file/An_electronic_journal_management_system_l3ATZaL.pdf', 'An Electronic Journal Management System', 1, 'Select'),
(12, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-25 21:58:02.227830', 'Journal management, PHP, web applications, web content management', '', 1, 'UNKNOWN', '', 'An Electronic Journal Management System', 2, 'Select'),
(13, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-25 22:07:25.881783', 'Journal management, PHP, web applications, web content management', '', 2, 'UNKNOWN', '', 'An Electronic Journal Management System', 3, 'Select'),
(14, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-28 14:42:49.853345', 'client relationships, marketing, development of competencies, education', '', 1, 'Computer Science', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 8, 'Physical sciences and engineering'),
(15, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2022-12-28 14:43:32.847311', 'client relationships, marketing, development of competencies, education', '', 1, 'Computer Science', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 9, 'Physical sciences and engineering'),
(16, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-28 14:52:13.030513', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 4, 'Physical sciences and engineering'),
(17, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-28 14:53:24.072593', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 5, 'Physical sciences and engineering'),
(18, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-28 14:54:40.826475', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 6, 'Physical sciences and engineering'),
(19, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-28 14:56:39.702913', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 7, 'Physical sciences and engineering'),
(20, 6, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture\r\nhas been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić, Vedran Mornar', 'hrvoje.bogunovic@fer.hr', '', '2022-12-28 14:57:42.901415', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 8, 'Physical sciences and engineering'),
(21, 4, 'ss', 'a', 'ameersbature17@gmail.com', '', '2022-12-29 07:43:26.368862', 'a', '', 0, 'Unknown', '', 'a', 4, 'Unknown'),
(22, 7, 'abstract here', 'Joanna Rzempała, Rafał Szymańskib', 'ameersbature17@gmail.com', '', '2022-12-30 13:41:08.383747', 'Journal management, PHP, web applications, web content management', 'papers_file/04Nfm04de12.pdf_sequence4_8G0mFBc.pdf', 1, 'Biologyy', 'papers_file/04Nfm04de12.pdf_sequence4_L3ef4lP.pdf', 'A paper', 1, 'Life sciences'),
(23, 4, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture has been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić and Vedran Mornar', 'ameersbature17@gmail.com', '', '2022-12-31 00:40:03.312282', 'Journal management, PHP, web applications, web content management', 'papers_file/An_electronic_journal_management_system_1_HNPDIXF.pdf', 1, 'Computer Science', 'papers_file/An_electronic_journal_management_system_1_y2EnLlF.pdf', 'An Electronic Journal Management System', 5, 'Physical sciences and engineering'),
(24, 4, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture has been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić and Vedran Mornar', 'ameersbature17@gmail.com', '', '2023-01-28 06:18:08.012089', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 6, 'Physical sciences and engineering'),
(25, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'joannarzem@uos.edu.po', '', '2023-01-28 06:29:56.407955', 'client relationships, marketing, development of competencies, education', '', 1, 'Computer Science', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 10, 'Physical sciences and engineering'),
(26, 5, 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 'ameersbature17@gmail.com', '', '2023-01-28 06:43:27.552239', 'client relationships, marketing, development of competencies, education', '', 1, 'Computer Science', '', 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 11, 'Physical sciences and engineering'),
(27, 4, 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture has been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić and Vedran Mornar', 'sanisbature17@gmail.com', '', '2023-01-28 06:44:11.307004', 'Journal management, PHP, web applications, web content management', '', 1, 'Computer Science', '', 'An Electronic Journal Management System', 7, 'Physical sciences and engineering');

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
  `id` bigint(20) NOT NULL,
  `title` varchar(600) NOT NULL,
  `abstract` varchar(4200) NOT NULL,
  `authors_name` varchar(3105) NOT NULL,
  `views` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `subdomain` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `corres_emails` varchar(300) DEFAULT NULL,
  `is_submitted` tinyint(1) NOT NULL,
  `keywords` varchar(4200) NOT NULL,
  `paper_type` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `cover_letter_pdf` varchar(100) DEFAULT NULL,
  `manuscript_pdf` varchar(100) DEFAULT NULL,
  `supplimentary_file` varchar(100) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `reference_number` varchar(30) NOT NULL,
  `reference_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journals_submit_papers_info`
--

INSERT INTO `journals_submit_papers_info` (`created`, `id`, `title`, `abstract`, `authors_name`, `views`, `download`, `domain`, `subdomain`, `user_id`, `corres_emails`, `is_submitted`, `keywords`, `paper_type`, `status`, `updated`, `cover_letter_pdf`, `manuscript_pdf`, `supplimentary_file`, `version`, `payment`, `reference_number`, `reference_url`) VALUES
('2022-12-24 06:35:23.395370', 4, 'An Electronic Journal Management System', 'A web-based information system for management of scientific electronic journals is presented in the paper. Journal management requires exchange of information between many participants in the publishing process, including authors, reviewers, editors, and lectors. Each participant in the process plays a different role, and cooperates with other participants. The web system is implemented using open source solutions on the Linux platform. Three-tiered information system architecture has been used. Object oriented PHP (PHP hypertext preprocessor) is used as a server side scripting language to implement the business logic. Database management system is provided by PostgreSQL, although database connection abstraction is utilized. Apache web server is used together with SSL encryption mechanism to provide HTML content to end-user. The system is currently in use for editorial support of an international scientific journal and the initial results have been encouraging.', 'Hrvoje Bogunović, Edgar Pek, Sven Lončarić and Vedran Mornar', 0, 0, 'Physical sciences and engineering', 'Computer Science', 8, 'sanisbature17@gmail.com', 0, 'Journal management, PHP, web applications, web content management', 1, 'Submitted', '2023-05-27 19:24:59.247245', '', 'papers_file/An_electronic_journal_management_system_1.pdf', 'papers_file/An_electronic_journal_management_system_1_ieOcLoS.pdf', 7, 'Unpaid', '68phx96dr2', 'https://checkout.paystack.com/slzegdwix2kr9d1'),
('2022-12-24 20:51:21.980413', 5, 'Using CRM Tools for Learning Development – The IPMA-Student Portal Example', 'The aim of the paper is to analyse the possibilities of using IT tools supporting education for customer relationship management on the example of IPMA-Student Portal. The tool was created to support partner universities and their students in the development of competencies and certification in project management; however, by way of putting it to use, collecting information about users, and communicating with them, the tool can be treated as a means of strengthening and improving relationships with universities and students. The IPMA-Student Portal is a basic communication tool, adapted to the needs of lecturers and students, bringing benefits both to the IPMA Poland Association and the academic community.', 'Joanna Rzempała, Rafał Szymańskib', 0, 0, 'Physical sciences and engineering', 'Computer Science', 8, 'ameersbature17@gmail.com', 0, 'client relationships, marketing, development of competencies, education', 1, 'Submitted', '2023-05-27 19:24:59.132340', '', 'papers_file/COVID.DATA.LIC.AGMT_2iXSL3N.pdf', 'papers_file/1-s2.0-S1877050921020172-main_R9kRzKw.pdf', 11, 'Unpaid', 'dzwnxeipsb', 'https://checkout.paystack.com/341ajjsg23t6mxd'),
('2022-12-30 13:41:07.685588', 7, 'A paper', 'abstract here', 'Joanna Rzempała, Rafał Szymańskib', 0, 0, 'Life sciences', 'Biologyy', 11, 'ameersbature17@gmail.com', 0, 'Journal management, PHP, web applications, web content management', 1, 'Submitted', '2022-12-30 13:41:07.685588', '', 'papers_file/04Nfm04de12.pdf_sequence4.pdf', 'papers_file/04Nfm04de12.pdf_sequence4_FITjgRu.pdf', 1, 'Unpaid', '', '');

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
  `user_id` bigint(20) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `institution` varchar(300) NOT NULL,
  `country` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_relate`
--

INSERT INTO `main_relate` (`user_id`, `designation`, `institution`, `country`, `created`, `address`, `city`, `mobile`, `state`) VALUES
(8, 'Professor', 'Yusuf Maitama Sule University, Kano', 'Nigeria', '0000-00-00 00:00:00.000000', 'No. 356 Yamadawa Dorayi Babba, Gwale LG, Kano State', 'KANO', '+234-7088890573', 'KANO'),
(11, 'Student', 'Yusuf Maitama Sule University, Kano', 'Nigeria', '2022-12-30 13:27:53.389125', 'No. 356 Yamadawa Dorayi Babba, Gwale LG, Kano State', 'KANO', '+234-7088890573', 'KANO'),
(14, 'Select', 'Yusuf Maitama Sule University, Kano', 'Nigeria', '0000-00-00 00:00:00.000000', '356 Yamadawa Dorayi', 'Gwale', '+234-7065697733', 'Kano');

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
  `date_joined` datetime(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `is_email_verified` tinyint(1) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_user`
--

INSERT INTO `main_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `is_staff`, `date_joined`, `first_name`, `last_name`, `email`, `is_active`, `Verified`, `is_email_verified`, `gender`, `created`, `updated`) VALUES
(8, 'pbkdf2_sha256$390000$WJxljFzJagwIRMu6sOkRQT$Hdj1uFFst9jVObV0eXGUc/XAn3nTAg2IV4861PJ96xk=', '2023-05-27 19:27:39.538187', 0, '', 0, '2022-12-20 15:44:49.104948', 'Sani', 'Bature', 'sanisbature17@gmail.com', 1, 1, 1, 'Select', '2022-12-20 15:44:49.775068', '2022-12-27 17:05:10.740525'),
(11, 'pbkdf2_sha256$390000$PMES1rGKX9RTZrZEv5ZyDK$g9SjiYdKIotViRmBPuNt+h3BKYFPhDqx9lrTR3qaUeA=', '2022-12-30 20:48:27.295096', 0, '', 0, '2022-12-30 12:54:17.563292', 'Ameer', 'Bature', 'ameersbature17@gmail.com', 1, 1, 1, 'Select', '2022-12-30 12:54:18.078332', '2022-12-30 12:54:18.078332'),
(13, 'pbkdf2_sha256$390000$yj6QpRGbmvYZOQy14hsuCm$GZz+cXMegCXxs6e4ETufiNJUKwRi8xVbzJrYflNDiXM=', '2023-05-27 19:31:12.924412', 1, 'admin1', 1, '2023-05-27 19:30:55.566017', 'admin', 'admin', 'admin@journal.edu.ng', 1, 1, 0, 'Select', '2023-05-27 19:30:55.956136', '2023-05-27 19:30:55.956136'),
(14, 'pbkdf2_sha256$390000$qOeVDO6nJxq28dU0EzKsJk$Z389FAffO2c4zy0U44hBskwANYN1QWo1AKqZcxtdvkY=', '2023-05-30 13:46:49.855750', 0, '', 0, '2023-05-27 19:42:14.000000', 'Asmau', 'bature', 'asmeessb@gmail.com', 1, 0, 1, 'MALE', '2023-05-27 19:42:15.289844', '2023-05-30 13:41:03.587949');

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_Main_user_id` (`user_id`);

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
  ADD KEY `Journals_articles_papers_info_user_id_7e0e0013_fk_Main_user_id` (`user_id`);

--
-- Indexes for table `journals_paper_comments`
--
ALTER TABLE `journals_paper_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Journals_paper_comme_paper_id_0e869824_fk_Journals_` (`paper_id`),
  ADD KEY `Journals_paper_comments_reviewer_id_0ec97e83_fk_Main_user_id` (`reviewer_id`);

--
-- Indexes for table `journals_paper_editors`
--
ALTER TABLE `journals_paper_editors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Journals_paper_edito_paper_id_6db0ea6c_fk_Journals_` (`paper_id`),
  ADD KEY `Journals_paper_editors_editor_id_4b46273c_fk_Main_user_id` (`editor_id`);

--
-- Indexes for table `journals_paper_reviewers`
--
ALTER TABLE `journals_paper_reviewers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Journals_paper_revie_paper_id_736eaa2a_fk_Journals_` (`paper_id`),
  ADD KEY `Journals_paper_reviewers_editor_id_e71919bb_fk_Main_user_id` (`editor_id`),
  ADD KEY `Journals_paper_reviewers_reviewer_id_7a45fff6_fk_Main_user_id` (`reviewer_id`);

--
-- Indexes for table `journals_paper_update_history`
--
ALTER TABLE `journals_paper_update_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Journals_update_hist_paper_id_39dca0ce_fk_Journals_` (`paper_id`);

--
-- Indexes for table `journals_publish_papers_info`
--
ALTER TABLE `journals_publish_papers_info`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `Journals_publish_papers_info_user_id_fceb3782_fk_Main_user_id` (`user_id`);

--
-- Indexes for table `journals_submit_papers_info`
--
ALTER TABLE `journals_submit_papers_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Journals_submit_papers_info_user_id_a3cd151c_fk_Main_user_id` (`user_id`);

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
  ADD UNIQUE KEY `Main_user_groups_user_id_group_id_024af15f_uniq` (`user_id`,`group_id`),
  ADD KEY `Main_user_groups_group_id_24467e8d_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Main_user_user_permissions_user_id_permission_id_c8fbd33f_uniq` (`user_id`,`permission_id`),
  ADD KEY `Main_user_user_permi_permission_id_c8036713_fk_auth_perm` (`permission_id`);

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_articles_papers_info`
--
ALTER TABLE `journals_articles_papers_info`
  ADD CONSTRAINT `Journals_articles_papers_info_user_id_7e0e0013_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_comments`
--
ALTER TABLE `journals_paper_comments`
  ADD CONSTRAINT `Journals_paper_comme_paper_id_0e869824_fk_Journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `Journals_paper_comments_reviewer_id_0ec97e83_fk_Main_user_id` FOREIGN KEY (`reviewer_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_editors`
--
ALTER TABLE `journals_paper_editors`
  ADD CONSTRAINT `Journals_paper_edito_paper_id_6db0ea6c_fk_Journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `Journals_paper_editors_editor_id_4b46273c_fk_Main_user_id` FOREIGN KEY (`editor_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_reviewers`
--
ALTER TABLE `journals_paper_reviewers`
  ADD CONSTRAINT `Journals_paper_revie_paper_id_736eaa2a_fk_Journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`),
  ADD CONSTRAINT `Journals_paper_reviewers_editor_id_e71919bb_fk_Main_user_id` FOREIGN KEY (`editor_id`) REFERENCES `main_user` (`id`),
  ADD CONSTRAINT `Journals_paper_reviewers_reviewer_id_7a45fff6_fk_Main_user_id` FOREIGN KEY (`reviewer_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `journals_paper_update_history`
--
ALTER TABLE `journals_paper_update_history`
  ADD CONSTRAINT `Journals_update_hist_paper_id_39dca0ce_fk_Journals_` FOREIGN KEY (`paper_id`) REFERENCES `journals_submit_papers_info` (`id`);

--
-- Constraints for table `journals_publish_papers_info`
--
ALTER TABLE `journals_publish_papers_info`
  ADD CONSTRAINT `Journals_publish_papers_info_user_id_fceb3782_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_editor`
--
ALTER TABLE `main_editor`
  ADD CONSTRAINT `Main_editor_relate_ptr_id_4c9da506_fk_Main_relate_user_id` FOREIGN KEY (`relate_ptr_id`) REFERENCES `main_relate` (`user_id`);

--
-- Constraints for table `main_relate`
--
ALTER TABLE `main_relate`
  ADD CONSTRAINT `Main_relate_user_id_330c3935_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_reviewer`
--
ALTER TABLE `main_reviewer`
  ADD CONSTRAINT `Main_reviewer_relate_ptr_id_1ec84d7f_fk_Main_relate_user_id` FOREIGN KEY (`relate_ptr_id`) REFERENCES `main_relate` (`user_id`);

--
-- Constraints for table `main_user_groups`
--
ALTER TABLE `main_user_groups`
  ADD CONSTRAINT `Main_user_groups_group_id_24467e8d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `Main_user_groups_user_id_06b98f59_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `main_user_user_permissions`
--
ALTER TABLE `main_user_user_permissions`
  ADD CONSTRAINT `Main_user_user_permi_permission_id_c8036713_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `Main_user_user_permissions_user_id_cb7a0d50_fk_Main_user_id` FOREIGN KEY (`user_id`) REFERENCES `main_user` (`id`);

--
-- Constraints for table `verify_email_linkcounter`
--
ALTER TABLE `verify_email_linkcounter`
  ADD CONSTRAINT `verify_email_linkcounter_requester_id_b6bf2934_fk_Main_user_id` FOREIGN KEY (`requester_id`) REFERENCES `main_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
