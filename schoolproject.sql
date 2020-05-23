-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 09:34 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `key`, `value`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'total_student', '500', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(2, 'male_student', '230', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(3, 'female_student', '270', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(4, 'dalit_student', '56', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09'),
(5, 'disable_student', '24', 1, '2020-04-01 09:15:09', '2020-04-01 09:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'deleted', 1, 'App\\Model\\Student', 3, 'App\\User', '{\"attributes\":{\"name\":\"Josiah Roberts\",\"slug\":\"josiah-roberts\",\"image\":null,\"grade_id\":1,\"ethnicity_id\":1,\"address\":\"Ratione autem in ver\",\"gender\":\"Male\",\"disability\":\"No\",\"religion\":\"Hindu\",\"DOB\":\"2007-02-06\",\"guardian_name\":\"Elvis Rocha\",\"guardian_phone\":\"+1 (984) 915-8492\",\"guardian_email\":null,\"occupation_id\":1,\"school_id\":1}}', '2020-04-10 06:48:26', '2020-04-10 06:48:26'),
(2, 'default', 'deleted', 2, 'App\\Model\\Student', 3, 'App\\User', '{\"attributes\":{\"name\":\"Aileen Beck\",\"slug\":\"aileen-beck\",\"image\":null,\"grade_id\":2,\"ethnicity_id\":1,\"address\":\"Veniam voluptas des\",\"gender\":\"Male\",\"disability\":\"No\",\"religion\":\"Hindu\",\"DOB\":\"2002-09-10\",\"guardian_name\":\"Flynn Lawson\",\"guardian_phone\":\"+1 (661) 473-9012\",\"guardian_email\":null,\"occupation_id\":1,\"school_id\":1}}', '2020-04-10 06:50:30', '2020-04-10 06:50:30'),
(3, 'default', 'created', 1, 'App\\Model\\Album', 3, 'App\\User', '{\"attributes\":{\"title\":\"Program\",\"slug\":\"program\",\"school_id\":1}}', '2020-05-21 21:49:05', '2020-05-21 21:49:05'),
(4, 'default', 'created', 1, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/159011846495244966_319222415714481_190659405065224192_n (1).jpg\",\"school_id\":1}}', '2020-05-21 21:49:24', '2020-05-21 21:49:24'),
(5, 'default', 'created', 2, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/1590118467default.png\",\"school_id\":1}}', '2020-05-21 21:49:27', '2020-05-21 21:49:27'),
(6, 'default', 'created', 3, 'App\\Model\\Gallery', 3, 'App\\User', '{\"attributes\":{\"album_id\":1,\"title\":null,\"image\":\"images\\/album\\/program\\/1590118471logo.png\",\"school_id\":1}}', '2020-05-21 21:49:31', '2020-05-21 21:49:31'),
(7, 'default', 'created', 2, 'App\\Model\\AssetCategory', 3, 'App\\User', '{\"attributes\":{\"title\":\"Computer Lab\",\"school_id\":1}}', '2020-05-21 21:50:33', '2020-05-21 21:50:33'),
(8, 'default', 'created', 2, 'App\\Model\\Asset', 3, 'App\\User', '{\"attributes\":{\"title\":\"Computer\",\"slug\":\"computer\",\"quantity\":12,\"asset_category_id\":2,\"remarks\":null,\"school_id\":1}}', '2020-05-21 21:51:01', '2020-05-21 21:51:01'),
(9, 'default', 'created', 1, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118572wi-fi-wireless-network-icon-clip-art-wifi-icon-png.jpg\",\"school_id\":1}}', '2020-05-21 21:51:12', '2020-05-21 21:51:12'),
(10, 'default', 'created', 2, 'App\\Model\\AssetImage', 3, 'App\\User', '{\"attributes\":{\"asset_id\":2,\"image\":\"images\\/asset\\/computer\\/1590118576default.png\",\"school_id\":1}}', '2020-05-21 21:51:16', '2020-05-21 21:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `slug`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Program', 'program', 1, NULL, '2020-05-21 21:49:05', '2020-05-21 21:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_category_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `title`, `slug`, `quantity`, `remarks`, `asset_category_id`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdfds', 'dsfsdfds', NULL, 'dsfsdf', 1, 1, NULL, '2020-04-03 08:57:43', '2020-04-03 08:57:43'),
(2, 'Computer', 'computer', 12, NULL, 2, 1, NULL, '2020-05-21 21:51:01', '2020-05-21 21:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `title`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dsfsdfsd', 'fsdfsdf', 1, NULL, '2020-04-03 08:57:14', '2020-04-03 08:57:14'),
(2, 'Computer Lab', NULL, 1, NULL, '2020-05-21 21:50:33', '2020-05-21 21:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `asset_images`
--

CREATE TABLE `asset_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_images`
--

INSERT INTO `asset_images` (`id`, `asset_id`, `image`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'images/asset/computer/1590118572wi-fi-wireless-network-icon-clip-art-wifi-icon-png.jpg', 1, '2020-05-21 21:51:12', '2020-05-21 21:51:12'),
(2, 2, 'images/asset/computer/1590118576default.png', 1, '2020-05-21 21:51:16', '2020-05-21 21:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `degination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_front` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ethnicities`
--

CREATE TABLE `ethnicities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ethnicities`
--

INSERT INTO `ethnicities` (`id`, `title`, `slug`, `remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bahun', 'bahun', NULL, NULL, '2020-04-01 09:47:57', '2020-04-01 09:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `title`, `slug`, `start_date`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'dfssdf', 'dfssdf', '2020-04-07', 'dsfsdf', 1, NULL, '2020-04-03 08:58:39', '2020-04-03 08:58:39'),
(2, 'fdgfdgg', 'fdgfdgg', '2020-04-06', 'fgd', 1, NULL, '2020-04-03 08:59:03', '2020-04-03 08:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `exam_grade`
--

CREATE TABLE `exam_grade` (
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_grade`
--

INSERT INTO `exam_grade` (`exam_id`, `grade_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `album_id`, `title`, `image`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'images/album/program/159011846495244966_319222415714481_190659405065224192_n (1).jpg', 1, '2020-05-21 21:49:24', '2020-05-21 21:49:24'),
(2, 1, NULL, 'images/album/program/1590118467default.png', 1, '2020-05-21 21:49:27', '2020-05-21 21:49:27'),
(3, 1, NULL, 'images/album/program/1590118471logo.png', 1, '2020-05-21 21:49:31', '2020-05-21 21:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `slug`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1', '1', NULL, 1, NULL, '2020-04-01 09:47:11', '2020-04-01 09:47:11'),
(2, '2', '2', NULL, 1, NULL, '2020-04-01 09:47:18', '2020-04-01 09:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Backend','Frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `english_name`, `nepali_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'दाशबोर्ड', 'Backend', '2020-04-03 09:45:58', '2020-04-03 10:01:34'),
(2, 'students', 'Students', 'विद्यार्थी', 'Backend', '2020-04-03 09:46:16', '2020-04-03 10:01:08'),
(3, 'occupation', 'Occupation', 'पेशा', 'Backend', '2020-04-03 09:46:33', '2020-04-03 10:00:24'),
(4, 'ethnicity', 'Ethnicity', 'जात', 'Backend', '2020-04-03 09:47:27', '2020-04-03 09:59:47'),
(5, 'asset', 'Asset', '#', 'Backend', '2020-04-11 21:38:36', '2020-04-11 21:38:36'),
(7, 'album', 'Album', '#', 'Backend', '2020-04-11 21:44:44', '2020-04-11 21:44:44'),
(8, 'grade', 'Grade', '#', 'Backend', '2020-04-11 21:45:15', '2020-04-11 21:45:15'),
(9, 'exam', 'Exam', '#', 'Backend', '2020-04-11 21:46:22', '2020-04-11 21:46:22'),
(10, 'subject', 'Subject', '#', 'Backend', '2020-04-11 21:47:37', '2020-04-11 21:47:37'),
(11, 'staff', 'Staff', '#', 'Backend', '2020-04-11 21:48:51', '2020-04-11 21:48:51'),
(12, 'stafftype', 'Stafftype', '#', 'Backend', '2020-04-11 21:49:08', '2020-04-11 21:49:08'),
(13, 'staffclasssubject', 'StaffClassSubject', '#', 'Backend', '2020-04-11 21:49:43', '2020-04-11 21:49:43'),
(14, 'committee', 'Committee', '#', 'Backend', '2020-04-11 21:49:52', '2020-04-11 21:49:52'),
(15, 'cms', 'Cms', '#', 'Backend', '2020-04-11 21:49:56', '2020-04-11 21:49:56'),
(16, 'about', 'About', '#', 'Backend', '2020-04-11 21:49:59', '2020-04-11 21:49:59'),
(17, 'user', 'User', '#', 'Backend', '2020-04-11 21:50:01', '2020-04-11 21:50:01'),
(18, 'basic-info', 'Basic Info', '#', 'Backend', '2020-04-11 21:50:07', '2020-04-11 21:50:07'),
(19, 'history', 'History', '#', 'Backend', '2020-04-11 21:50:14', '2020-04-11 21:50:14'),
(20, 'message', 'Message', '#', 'Backend', '2020-04-11 21:50:17', '2020-04-11 21:50:17'),
(21, 'student', 'Student', '#', 'Backend', '2020-04-11 21:50:20', '2020-04-11 21:50:20'),
(22, 'user-1', 'User', '#', 'Backend', '2020-04-11 21:50:23', '2020-04-11 21:50:23'),
(23, 'search', 'Search', '#', 'Backend', '2020-04-11 21:50:27', '2020-04-11 21:50:27'),
(24, 'profile', 'Profile', '#', 'Backend', '2020-04-11 21:50:33', '2020-04-11 21:50:33'),
(25, 'password', 'Password', '#', 'Backend', '2020-04-11 21:50:38', '2020-04-11 21:50:38'),
(26, 'confirm-password', 'Confirm Password', '#', 'Backend', '2020-04-11 21:50:53', '2020-04-11 21:50:53'),
(27, 'email', 'Email', '#', 'Backend', '2020-04-11 21:50:56', '2020-04-11 21:50:56'),
(28, 'name', 'Name', '#', 'Backend', '2020-04-11 21:50:58', '2020-04-11 21:50:58'),
(29, 'full-name', 'Full Name', '#', 'Backend', '2020-04-11 21:51:03', '2020-04-11 21:51:03'),
(30, 'total', 'Total', '#', 'Backend', '2020-04-11 21:51:09', '2020-04-11 21:51:09'),
(31, 'logout', 'Logout', '#', 'Backend', '2020-04-11 21:51:12', '2020-04-11 21:51:12'),
(32, 'notification', 'Notification', '#', 'Backend', '2020-04-11 21:51:25', '2020-04-11 21:51:25'),
(33, 'select-grade', 'Select Grade', '#', 'Backend', '2020-04-11 21:51:30', '2020-04-11 21:51:30'),
(34, 'class', 'Class', '#', 'Backend', '2020-04-11 21:51:35', '2020-04-11 21:51:35'),
(35, 'add-new', 'Add New', '#', 'Backend', '2020-04-11 21:51:40', '2020-04-11 21:51:40'),
(36, 'index', 'Index', '#', 'Backend', '2020-04-11 21:51:44', '2020-04-11 21:51:44'),
(37, 'select', 'Select', '#', 'Backend', '2020-04-11 21:51:51', '2020-04-11 21:51:51'),
(38, 'guardian', 'Guardian', '#', 'Backend', '2020-04-11 21:52:31', '2020-04-11 21:52:31'),
(39, 'phone', 'Phone', '#', 'Backend', '2020-04-11 21:53:01', '2020-04-11 21:53:01'),
(40, 'image', 'Image', '#', 'Backend', '2020-04-11 21:53:10', '2020-04-11 21:53:10'),
(41, 'address', 'Address', '#', 'Backend', '2020-04-11 21:53:13', '2020-04-11 21:53:13'),
(42, 'gender', 'Gender', '#', 'Backend', '2020-04-11 21:53:19', '2020-04-11 21:53:19'),
(43, 'disablity', 'Disablity', '#', 'Backend', '2020-04-11 21:53:32', '2020-04-11 21:53:32'),
(44, 'religion', 'Religion', '#', 'Backend', '2020-04-11 21:53:40', '2020-04-11 21:53:40'),
(45, 'birth-date', 'Birth Date', '#', 'Backend', '2020-04-11 21:53:47', '2020-04-11 21:53:47'),
(46, 'age', 'Age', '#', 'Backend', '2020-04-11 21:53:50', '2020-04-11 21:53:50'),
(47, 'action', 'Action', '#', 'Backend', '2020-04-11 21:53:54', '2020-04-11 21:53:54'),
(48, 'delete', 'Delete', '#', 'Backend', '2020-04-11 21:53:58', '2020-04-11 21:53:58'),
(49, 'edit', 'Edit', '#', 'Backend', '2020-04-11 21:54:02', '2020-04-11 21:54:02'),
(50, 'link', 'Link', '#', 'Backend', '2020-04-11 21:54:04', '2020-04-11 21:54:04'),
(51, 'title', 'Title', '#', 'Backend', '2020-04-11 21:54:08', '2020-04-11 21:54:08'),
(52, 'list', 'List', '#', 'Backend', '2020-04-11 21:54:26', '2020-04-11 21:54:26'),
(53, 'remarks', 'Remarks', '#', 'Backend', '2020-04-11 21:54:30', '2020-04-11 21:54:30'),
(54, 'save', 'Save', '#', 'Backend', '2020-04-11 21:54:33', '2020-04-11 21:54:33'),
(55, 'quantity', 'Quantity', '#', 'Backend', '2020-04-11 21:54:50', '2020-04-11 21:54:50'),
(56, 'file', 'File', '#', 'Backend', '2020-04-11 21:54:52', '2020-04-11 21:54:52'),
(57, 'exam-start-date', 'Exam Start Date', '#', 'Backend', '2020-04-11 21:55:17', '2020-04-11 21:55:17'),
(58, 'result', 'Result', '#', 'Backend', '2020-04-11 21:55:22', '2020-04-11 21:55:22'),
(59, 'job-title', 'Job Title', '#', 'Backend', '2020-04-11 21:55:28', '2020-04-11 21:55:28'),
(60, 'join-date', 'Join Date', '#', 'Backend', '2020-04-11 21:55:39', '2020-04-11 21:55:39'),
(61, 'teacher-name', 'Teacher Name', '#', 'Backend', '2020-04-11 21:56:08', '2020-04-11 21:56:08'),
(62, 'degination', 'Degination', '#', 'Backend', '2020-04-11 21:56:17', '2020-04-11 21:56:17'),
(63, 'status', 'Status', '#', 'Backend', '2020-04-11 21:56:21', '2020-04-11 21:56:21'),
(64, 'show-in-front', 'Show in Front', '#', 'Backend', '2020-04-11 21:56:27', '2020-04-11 21:56:27'),
(65, 'welcome-message', 'Welcome Message', '#', 'Backend', '2020-04-11 21:56:33', '2020-04-11 21:56:33'),
(66, 'vdc-municipality-adhyaksh-message', 'VDC/Municipality Adhyaksh Message', '#', 'Backend', '2020-04-11 21:57:40', '2020-04-11 21:57:40'),
(67, 'princiapal-message', 'Princiapal Message', '#', 'Backend', '2020-04-11 21:57:48', '2020-04-11 21:57:48'),
(68, 'dalit-student', 'Dalit Student', '#', 'Backend', '2020-04-11 21:57:58', '2020-04-11 21:57:58'),
(69, 'male-student', 'Male Student', '#', 'Backend', '2020-04-11 21:58:05', '2020-04-11 21:58:05'),
(70, 'femalestudent', 'FemaleStudent', '#', 'Backend', '2020-04-11 21:58:15', '2020-04-11 21:58:15'),
(71, 'total-disable-student', 'Total Disable Student', '#', 'Backend', '2020-04-11 21:58:32', '2020-04-11 21:58:32'),
(72, 'school', 'School', '#', 'Backend', '2020-04-11 21:58:39', '2020-04-11 21:58:39'),
(73, 'logo', 'Logo', '#', 'Backend', '2020-04-11 21:58:42', '2020-04-11 21:58:42'),
(74, 'favicon', 'Favicon', '#', 'Backend', '2020-04-11 21:58:47', '2020-04-11 21:58:47'),
(75, 'description', 'Description', '#', 'Backend', '2020-04-11 21:59:00', '2020-04-11 21:59:00'),
(76, 'vdc-municipality-name', 'VDC/Municipality Name', '#', 'Backend', '2020-04-11 21:59:36', '2020-04-11 21:59:36'),
(77, 'vdc-municipality-logo', 'VDC/Municipality Logo', '#', 'Backend', '2020-04-11 21:59:42', '2020-04-11 21:59:42'),
(78, 'facebook', 'Facebook', '#', 'Backend', '2020-04-11 21:59:47', '2020-04-11 21:59:47'),
(79, 'twitter', 'Twitter', '#', 'Backend', '2020-04-11 21:59:50', '2020-04-11 21:59:50'),
(80, 'youtube', 'Youtube', '#', 'Backend', '2020-04-11 22:00:04', '2020-04-11 22:00:04'),
(85, 'update', 'Update', '#', 'Backend', '2020-04-11 22:00:30', '2020-04-11 22:00:30'),
(86, '1', '1', '#', 'Backend', '2020-04-11 22:01:08', '2020-04-11 22:01:08'),
(87, '2', '2', '#', 'Backend', '2020-04-11 22:01:09', '2020-04-11 22:01:09'),
(88, '3', '3', '#', 'Backend', '2020-04-11 22:01:10', '2020-04-11 22:01:10'),
(89, '4', '4', '#', 'Backend', '2020-04-11 22:01:11', '2020-04-11 22:01:11'),
(90, '5', '5', '#', 'Backend', '2020-04-11 22:01:12', '2020-04-11 22:01:12'),
(91, '6', '6', '#', 'Backend', '2020-04-11 22:01:14', '2020-04-11 22:01:14'),
(92, '7', '7', '#', 'Backend', '2020-04-11 22:01:15', '2020-04-11 22:01:15'),
(93, '8', '8', '#', 'Backend', '2020-04-11 22:01:16', '2020-04-11 22:01:16'),
(94, '9', '9', '#', 'Backend', '2020-04-11 22:01:18', '2020-04-11 22:01:18'),
(95, '0', '0', '#', 'Backend', '2020-04-11 22:01:19', '2020-04-11 22:01:19'),
(96, 'view-all', 'View All', '#', 'Backend', '2020-04-11 22:01:32', '2020-04-11 22:01:32'),
(97, 'read-more', 'Read More', '#', 'Backend', '2020-04-11 22:01:37', '2020-04-11 22:01:37'),
(98, 'setup', 'Setup', '#', 'Backend', '2020-04-11 22:01:42', '2020-04-11 22:01:42'),
(99, 'slider', 'Slider', '#', 'Backend', '2020-04-11 22:27:12', '2020-04-11 22:27:12'),
(100, 'staff-setup', 'Staff Setup', '#', 'Backend', '2020-04-11 22:27:22', '2020-04-11 22:27:22'),
(101, 'events', 'Events', '#', 'Backend', '2020-04-11 22:30:09', '2020-04-11 22:30:09'),
(102, 'news', 'News', '#', 'Backend', '2020-04-11 22:30:12', '2020-04-11 22:30:12'),
(103, 'notice', 'Notice', '#', 'Backend', '2020-04-11 22:30:24', '2020-04-11 22:30:24'),
(104, 'tender', 'Tender', '#', 'Backend', '2020-04-11 22:30:32', '2020-04-11 22:30:32'),
(105, 'language', 'Language', '#', 'Backend', '2020-04-11 22:33:40', '2020-04-11 22:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 9),
(47, '2014_10_12_100000_create_password_resets_table', 10),
(48, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(49, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(50, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(51, '2016_06_01_000004_create_oauth_clients_table', 10),
(52, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(53, '2020_03_25_074200_create_students_table', 10),
(54, '2020_03_25_074315_create_ethnicities_table', 10),
(55, '2020_03_25_074334_create_occupations_table', 10),
(56, '2020_03_25_074352_create_subjects_table', 10),
(57, '2020_03_25_074428_create_staff_table', 10),
(58, '2020_03_25_074508_create_staff_documents_table', 10),
(59, '2020_03_25_074532_create_staff_types_table', 10),
(60, '2020_03_25_074605_create_staff_expriences_table', 10),
(61, '2020_03_25_074623_create_staff_class_subjects_table', 10),
(62, '2020_03_25_074701_create_albums_table', 10),
(63, '2020_03_25_074713_create_galleries_table', 10),
(64, '2020_03_25_074729_create_exams_table', 10),
(65, '2020_03_25_074758_create_results_table', 10),
(66, '2020_03_25_075024_create_grades_table', 10),
(67, '2020_03_25_081721_create_schools_table', 10),
(68, '2020_03_25_085412_create_exam_grade_table', 10),
(69, '2020_03_25_131033_create_assets_table', 10),
(70, '2020_03_25_131821_create_asset_categories_table', 10),
(71, '2020_03_25_170124_create_asset_images_table', 10),
(72, '2020_03_29_160247_create_news_table', 10),
(73, '2020_03_29_160358_create_notices_table', 10),
(74, '2020_03_29_160412_create_tenders_table', 10),
(75, '2020_03_29_160423_create_events_table', 10),
(76, '2020_03_29_174656_create_committees_table', 10),
(77, '2020_03_30_075947_create_abouts_table', 10),
(78, '2020_03_30_085428_create_sliders_table', 10),
(79, '2020_04_03_150642_create_languages_table', 11),
(80, '2020_04_02_165605_create_activity_log_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `title`, `slug`, `remarks`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Farmer', 'farmer', NULL, NULL, '2020-04-01 09:47:40', '2020-04-01 09:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_type_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_class_subjects`
--

CREATE TABLE `staff_class_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_documents`
--

CREATE TABLE `staff_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_expriences`
--

CREATE TABLE `staff_expriences` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_types`
--

CREATE TABLE `staff_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_types`
--

INSERT INTO `staff_types` (`id`, `title`, `remarks`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tret', 'retert', 1, NULL, '2020-04-03 09:00:06', '2020-04-03 09:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `ethnicity_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `disability` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` enum('Hindu','Christian','Buddhism','Islam','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `slug`, `image`, `grade_id`, `ethnicity_id`, `address`, `gender`, `disability`, `religion`, `DOB`, `guardian_name`, `guardian_phone`, `guardian_email`, `occupation_id`, `school_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Josiah Roberts', 'josiah-roberts', NULL, 1, 1, 'Ratione autem in ver', 'Male', 'No', 'Hindu', '2007-02-06', 'Elvis Rocha', '+1 (984) 915-8492', NULL, 1, 1, '2020-04-10 06:48:26', '2020-04-01 09:48:38', '2020-04-10 06:48:26'),
(2, 'Aileen Beck', 'aileen-beck', NULL, 2, 1, 'Veniam voluptas des', 'Male', 'No', 'Hindu', '2002-09-10', 'Flynn Lawson', '+1 (661) 473-9012', NULL, 1, 1, '2020-04-10 06:50:30', '2020-04-01 09:48:52', '2020-04-10 06:50:30'),
(3, 'Ahmed Dickson', 'ahmed-dickson', NULL, 2, 1, 'Aliquam sit reprehe', 'Female', 'No', 'Hindu', '1978-01-16', 'April Joyce', '+1 (552) 874-7564', NULL, 1, 1, NULL, '2020-04-01 09:49:26', '2020-04-01 09:49:26'),
(4, 'Germane Luna', 'germane-luna', NULL, 1, 1, 'Non quia qui officia', 'Female', 'No', 'Hindu', '1989-12-15', 'Rhona Randall', '+1 (447) 813-3205', NULL, 1, 1, NULL, '2020-04-01 09:49:42', '2020-04-01 09:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenders`
--

CREATE TABLE `tenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('Super Admin','Admin','Editor') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `role`, `email_verified_at`, `password`, `school_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jack Roberson1111', 'jisogylydi@mailinator.net', '+1 (991) 312-8257', 'images/users/158565435391286242_268430174185581_5591572675181936640_n.jpg', 'Super Admin', NULL, '$2y$10$tw0v4ljhkCrortf3u6i60e2hzGrGfyF8FZkZMSiNQc6gMOu6wliSC', 1, NULL, '2020-03-31 05:47:33', '2020-03-31 06:01:05'),
(3, 'test test', 'test@gmail.com', '123456789', 'images/users/1585657327amber gurung.jpg', 'Super Admin', NULL, '$2y$10$uYTv4lrY/ONYWyKJHkLs4.aac8cU6.s7N1FchHr6RsgJFdjPqD2U2', 1, NULL, '2020-03-31 06:37:08', '2020-03-31 06:37:08'),
(4, 'Quinlan Knowles', 'valesybef@mailinator.net', '+1 (392) 857-4355', 'images/users/1585659208amber gurung.jpg', 'Admin', NULL, '$2y$10$A0DdQ31/JHrDYAUtL4DpreKcwgo5ryfjo5DC0DulMP9PO6fUPexRG', 1, NULL, '2020-03-31 07:08:28', '2020-03-31 07:08:28'),
(5, 'Tanisha Kline', 'sodirih@mailinator.net', '+1 (733) 264-5669', 'images/users/1585659443mana bahadur mukhiya & bhim birag.JPG', 'Admin', NULL, '$2y$10$md33K6i4U0bbZ04w/8rxNuGqt/MIqfqaJpBbrwmPBzrKfCqf7PYt6', 1, NULL, '2020-03-31 07:12:23', '2020-03-31 07:12:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_images`
--
ALTER TABLE `asset_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ethnicities`
--
ALTER TABLE `ethnicities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_class_subjects`
--
ALTER TABLE `staff_class_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_documents`
--
ALTER TABLE `staff_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_expriences`
--
ALTER TABLE `staff_expriences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_types`
--
ALTER TABLE `staff_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenders`
--
ALTER TABLE `tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asset_images`
--
ALTER TABLE `asset_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ethnicities`
--
ALTER TABLE `ethnicities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_class_subjects`
--
ALTER TABLE `staff_class_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_documents`
--
ALTER TABLE `staff_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_expriences`
--
ALTER TABLE `staff_expriences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_types`
--
ALTER TABLE `staff_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenders`
--
ALTER TABLE `tenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
