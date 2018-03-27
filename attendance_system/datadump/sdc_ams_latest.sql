-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2018 at 02:11 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 5.6.32-1+ubuntu16.04.1+deb.sury.org+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdc_ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add usict attendance', 7, 'add_usictattendance'),
(20, 'Can change usict attendance', 7, 'change_usictattendance'),
(21, 'Can delete usict attendance', 7, 'delete_usictattendance'),
(22, 'Can add sessions', 8, 'add_sessions'),
(23, 'Can change sessions', 8, 'change_sessions'),
(24, 'Can delete sessions', 8, 'delete_sessions'),
(25, 'Can add usict batch allocation', 9, 'add_usictbatchallocation'),
(26, 'Can change usict batch allocation', 9, 'change_usictbatchallocation'),
(27, 'Can delete usict batch allocation', 9, 'delete_usictbatchallocation'),
(28, 'Can add usict teacher', 10, 'add_usictteacher'),
(29, 'Can change usict teacher', 10, 'change_usictteacher'),
(30, 'Can delete usict teacher', 10, 'delete_usictteacher'),
(31, 'Can add usict students', 11, 'add_usictstudents'),
(32, 'Can change usict students', 11, 'change_usictstudents'),
(33, 'Can delete usict students', 11, 'delete_usictstudents'),
(34, 'Can add usict subject allocation', 12, 'add_usictsubjectallocation'),
(35, 'Can change usict subject allocation', 12, 'change_usictsubjectallocation'),
(36, 'Can delete usict subject allocation', 12, 'delete_usictsubjectallocation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$4yVVy4nnjNnQ$iGvuLc46VC2/yndAKByMrFl8zvRkHXtpydveSh7G47o=', '2017-10-25 14:33:44.922209', 1, 'admin', '', '', 'neelansh5@gmail.com', 1, 1, '2017-10-25 14:32:45.927113'),
(2, 'pbkdf2_sha256$36000$0W3lel8LQ5aY$d3yFP/BE1n1dfmShFZrXO+aWZBPmTenx5KVKg11iI7I=', '2018-01-12 17:21:43.956130', 1, 'prabhanshu', '', '', '', 1, 1, '2018-01-12 17:21:26.336813');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'deandashboard', 'sessions'),
(7, 'deandashboard', 'usictattendance'),
(9, 'deandashboard', 'usictbatchallocation'),
(11, 'deandashboard', 'usictstudents'),
(12, 'deandashboard', 'usictsubjectallocation'),
(10, 'deandashboard', 'usictteacher'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-10-25 14:17:02.794269'),
(2, 'auth', '0001_initial', '2017-10-25 14:17:03.523166'),
(3, 'admin', '0001_initial', '2017-10-25 14:17:03.716460'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-10-25 14:17:03.741145'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-10-25 14:17:03.868209'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-10-25 14:17:03.884845'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-10-25 14:17:03.914089'),
(8, 'auth', '0004_alter_user_username_opts', '2017-10-25 14:17:03.932445'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-10-25 14:17:03.996678'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-10-25 14:17:04.006754'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-10-25 14:17:04.024438'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-10-25 14:17:04.058792'),
(13, 'deandashboard', '0001_initial', '2017-10-25 14:17:04.712449'),
(14, 'sessions', '0001_initial', '2017-10-25 14:17:04.778617'),
(15, 'deandashboard', '0002_usictteacher_isdean', '2017-11-04 11:17:59.138062'),
(16, 'deandashboard', '0003_auto_20180120_2026', '2018-01-29 22:17:38.711509'),
(17, 'deandashboard', '0004_auto_20180130_0347', '2018-01-29 22:17:38.840228'),
(18, 'deandashboard', '0005_auto_20180130_0350', '2018-01-29 22:25:25.359232'),
(19, 'deandashboard', '0006_auto_20180130_0350', '2018-01-29 22:25:25.442726'),
(20, 'deandashboard', '0007_auto_20180130_0350', '2018-01-29 22:25:25.920124'),
(21, 'deandashboard', '0008_auto_20180130_0354', '2018-01-29 22:25:25.936096'),
(22, 'deandashboard', '0009_auto_20180130_0355', '2018-01-29 22:25:53.240723'),
(23, 'deandashboard', '0010_auto_20180130_0356', '2018-01-29 22:26:30.822524'),
(24, 'deandashboard', '0011_auto_20180130_0356', '2018-01-29 22:26:55.612388');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('7kdems2hycisl0t4zi8qm9tjnajrbkpy', 'ZjU3NDYyMzZmZWUwYzZmYzMzYmZlYWE4ZjdiZTk1MmVhODE0Njg3YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImE4OTc1OTE1ZDk2NGQ2YWJlYTNlOWQ3YjI2MTA2Yzg4YWQ2YTFlNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-01-26 17:21:43.962898');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `expires` int(11) NOT NULL,
  `data` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('WOtwOEUyn_n6SDJR49mhCPqjGtwio1Rg', 1522269309, '{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"flash":{},"passport":{}}');

-- --------------------------------------------------------

--
-- Table structure for table `usict_attendance`
--

CREATE TABLE `usict_attendance` (
  `id` int(11) NOT NULL,
  `lecture_timestamp` datetime(6) NOT NULL,
  `duration_of_class` int(11) NOT NULL,
  `attendance` varchar(2) NOT NULL,
  `student` bigint(20) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usict_attendance`
--

INSERT INTO `usict_attendance` (`id`, `lecture_timestamp`, `duration_of_class`, `attendance`, `student`, `subject_id`) VALUES
(26, '2018-02-01 12:53:00.000000', 2, 'P', 216403215, 11),
(27, '2018-02-01 12:53:00.000000', 2, 'P', 816403215, 11),
(28, '2018-02-01 12:53:00.000000', 2, 'P', 40816403215, 11),
(29, '2018-02-01 12:53:00.000000', 2, 'A', 316403215, 11),
(30, '2018-02-01 12:53:00.000000', 2, 'A', 1016403215, 11),
(31, '2018-02-02 14:20:00.000000', 1, 'P', 216403215, 11),
(32, '2018-02-02 14:20:00.000000', 1, 'P', 316403215, 11),
(33, '2018-02-02 14:20:00.000000', 1, 'P', 816403215, 11),
(34, '2018-02-02 14:20:00.000000', 1, 'P', 1016403215, 11),
(35, '2018-02-02 14:20:00.000000', 1, 'P', 40816403215, 11),
(36, '2018-02-03 16:20:00.000000', 1, 'P', 316403215, 11),
(37, '2018-02-03 16:20:00.000000', 1, 'A', 40816403215, 11),
(38, '2018-02-03 16:20:00.000000', 1, 'P', 1016403215, 11),
(39, '2018-02-03 16:20:00.000000', 1, 'A', 816403215, 11),
(40, '2018-02-03 16:20:00.000000', 1, 'P', 216403215, 11),
(41, '2018-02-01 15:20:00.000000', 1, 'P', 216403215, 11),
(42, '2018-02-01 15:20:00.000000', 1, 'P', 816403215, 11),
(43, '2018-02-01 15:20:00.000000', 1, 'P', 40816403215, 11),
(44, '2018-02-01 15:20:00.000000', 1, 'A', 316403215, 11),
(45, '2018-02-01 15:20:00.000000', 1, 'A', 1016403215, 11),
(46, '2018-02-02 14:15:00.000000', 1, 'P', 216403215, 11),
(47, '2018-02-02 14:15:00.000000', 1, 'P', 316403215, 11),
(48, '2018-02-02 14:15:00.000000', 1, 'P', 816403215, 11),
(49, '2018-02-02 14:15:00.000000', 1, 'P', 1016403215, 11),
(50, '2018-02-02 14:15:00.000000', 1, 'P', 40816403215, 11),
(51, '2018-02-02 22:20:00.000000', 1, 'P', 216403215, 11),
(52, '2018-02-02 22:20:00.000000', 1, 'P', 316403215, 11),
(53, '2018-02-02 22:20:00.000000', 1, 'P', 816403215, 11),
(54, '2018-02-02 22:20:00.000000', 1, 'P', 1016403215, 11),
(55, '2018-02-02 22:20:00.000000', 1, 'P', 40816403215, 11),
(56, '2018-02-01 23:55:00.000000', 1, 'P', 216403215, 11),
(57, '2018-02-01 23:55:00.000000', 1, 'P', 316403215, 11),
(58, '2018-02-01 23:55:00.000000', 1, 'P', 1016403215, 11),
(59, '2018-02-01 23:55:00.000000', 1, 'P', 40816403215, 11),
(60, '2018-02-01 23:55:00.000000', 1, 'A', 816403215, 11),
(61, '2018-02-02 12:00:00.000000', 1, 'P', 316403215, 11),
(62, '2018-02-02 12:00:00.000000', 1, 'P', 40816403215, 11),
(63, '2018-02-02 12:00:00.000000', 1, 'P', 216403215, 11),
(64, '2018-02-02 12:00:00.000000', 1, 'P', 816403215, 11),
(65, '2018-02-02 12:00:00.000000', 1, 'P', 1016403215, 11),
(66, '2018-02-02 17:25:00.000000', 1, 'P', 216403215, 11),
(67, '2018-02-02 17:25:00.000000', 1, 'P', 816403215, 11),
(68, '2018-02-02 17:25:00.000000', 1, 'P', 40816403215, 11),
(69, '2018-02-02 17:25:00.000000', 1, 'A', 316403215, 11),
(70, '2018-02-02 17:25:00.000000', 1, 'A', 1016403215, 11),
(71, '2018-01-17 16:20:00.000000', 1, 'P', 216403215, 11),
(72, '2018-01-17 16:20:00.000000', 1, 'A', 316403215, 11),
(73, '2018-01-17 16:20:00.000000', 1, 'A', 816403215, 11),
(74, '2018-01-17 16:20:00.000000', 1, 'A', 1016403215, 11),
(75, '2018-01-17 16:20:00.000000', 1, 'A', 40816403215, 11),
(76, '2018-01-08 15:20:00.000000', 1, 'A', 1016403215, 11),
(77, '2018-01-08 15:20:00.000000', 1, 'P', 40816403215, 11),
(78, '2018-01-08 15:20:00.000000', 1, 'A', 316403215, 11),
(79, '2018-01-08 15:20:00.000000', 1, 'P', 816403215, 11),
(80, '2018-01-08 15:20:00.000000', 1, 'P', 216403215, 11),
(81, '2018-02-03 15:15:00.000000', 1, 'A', 216403215, 11),
(82, '2018-02-03 15:15:00.000000', 1, 'A', 316403215, 11),
(83, '2018-02-03 15:15:00.000000', 1, 'A', 816403215, 11),
(84, '2018-02-03 15:15:00.000000', 1, 'A', 1016403215, 11),
(85, '2018-02-03 15:15:00.000000', 1, 'A', 40816403215, 11);

-- --------------------------------------------------------

--
-- Table structure for table `usict_batch_allocation`
--

CREATE TABLE `usict_batch_allocation` (
  `batch_id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usict_batch_allocation`
--

INSERT INTO `usict_batch_allocation` (`batch_id`, `course`, `stream`, `semester`) VALUES
(1, 'MTECH', 'IT', 1),
(2, 'MTECH', 'CSE', 1),
(3, 'MTECH', 'IT', 3),
(4, 'MTECH', 'CSE', 3),
(5, 'BTECH', 'CSE', 5),
(6, 'MTECH', 'ECE', 3),
(7, 'BTECH', 'IT', 3),
(8, 'BTECH', 'IT', 5),
(9, 'BTECH', 'IT', 7),
(10, 'MCA', 'SE', 5),
(11, 'MTECH', 'ECE', 1),
(12, 'MTECH', 'RA', 1),
(13, 'MCA', 'SE', 3),
(14, 'BTECH', 'ECE', 5),
(15, 'BTECH', 'IT', 1),
(16, 'BTECH', 'ECE', 7),
(17, 'MTECH', 'RA', 3),
(18, 'BTECH', 'CSE', 3),
(19, 'BTECH', 'CSE', 7),
(20, 'BTECH', 'CSE', 1),
(21, 'BTECH', 'ECE', 3),
(22, 'MCA', 'SE', 1),
(23, 'BTECH', 'ECE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usict_students`
--

CREATE TABLE `usict_students` (
  `enrollment_no` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `year_of_admission` int(11) NOT NULL,
  `password` varchar(600) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `isUpdated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usict_students`
--

INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(112, 'Zakir', NULL, NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1812, 'Rohit', NULL, NULL, 2012, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(5810, 'Ajay', NULL, NULL, 2010, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(11618715, 'BAKUL CHAWLA', 'BAKUL CHAWLA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(21618715, 'ANKUR BHARGAVA', 'ANKUR BHARGAVA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(31618715, 'KOMAL GEHANI', 'KOMAL GEHANI', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(41618715, 'ASHIS YADAV', 'ASHIS YADAV', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(51618715, 'MEGHA ', 'MEGHA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(61618715, 'AISHWARYA SHARMA', 'AISHWARYA SHARMA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(71618715, 'BRIJENDRA KUMAR SHARMA', 'BRIJENDRA KUMAR SHARMA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(81618715, 'ANJANI KUMAR ', 'ANJANI KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(91618715, 'RIMJHIM KUMARI', 'RIMJHIM KUMARI', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(101618715, 'RAHUL SARASWAT', 'RAHUL SARASWAT', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(111618715, 'MADHU YADAV', 'MADHU YADAV', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(116401513, 'Sarthak Agrawal', 'asarthak06@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(116401516, 'AASHISH JAIN', 'aashishjain.98@gmail.com', '9953004438', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(116403215, 'AAKASH MADAN', 'madan.aakash2@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(116403216, 'Aakash Gupta', 'guptaaakash272@gmail.com', '9810977340', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(116404514, 'PRAJJWAL SINGH ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(116404515, 'AAKASH GILL', 'aakashgill210@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(116404516, 'AADESH KUMAR', 'AADESH KUMAR', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(116404815, 'GOPAL SINGH TAWAT', 'GOPAL SINGH TAWAT', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(116404816, 'NEHA SRIVASTAVA', 'srivastava.neha46@yahoo.in', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(116405315, 'AKANKSHA BHARDWAJ', 'AKANKSHA BHARDWAJ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(116405316, 'SHUBHAM  GUPTA', 'shubhamgupta091193@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(116412811, 'ANURAG', 'ANURAG', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(116412813, 'MAYANK BANSAL', 'mastermind0368@gmail.com', '8826306428', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(116412816, 'AMAN BHARDWAJ', 'amanbhardwaj1997@gmail.com', '9654047023', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(116414215, 'PRIYA PANWAR ', 'PRIYA PANWAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(116418715, 'BAKUL CHAWLA', 'bakul.chwala50@gmail.com', '9999130160', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(116418716, 'Tushar Sharma ', 'tusharma1510@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(121618715, 'AKHILESH KUMAR SHARMA', 'AKHILESH KUMAR SHARMA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(216401513, 'ANURAG GUPTA', 'anuraggupta.0607@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(216401516, 'ABHISHEK', 'abhishek23021999@gmail.com', '7042956079', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(216403213, 'VARUN SINGH SAHU', 'singhvarun404@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(216403214, 'Karthik R Prakash', 'gestureg@gmail.com', '9811560657', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(216403215, 'AKAH PRAJAPAT', 'akashprajapat6891@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(216403216, 'Aaskane B. C. Dogra', 'aaskanedogra@gmail.com', '9971720898', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(216404514, 'BHARAT SHARMA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(216404515, 'AAKASH SHRESHTA', 'aakashreshta@gmail.com', '8527057694', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(216404516, 'AANCHAL MALHOTRA', 'aanchal_0702@yahoo.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(216404815, 'HARSH VARDHAN ', 'HARSH VARDHAN ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(216404816, 'ASHWANI  KUMAR', 'ASHWANI  KUMAR', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(216410514, 'Ujjwal Talluri', 'ujjwal1talluri@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(216410515, 'AKSHAY SHARMA', 'akkiakki28@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(216412813, 'PRIYADARSHAN', 'pd4184@gmail.com', '9015274330', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(216412814, 'VIKRAM GOSAIN', 'vikramgosain2@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(216412816, 'ANIMESH SHARMA', 'animesh11197@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(216414215, 'RAHUL KUMAR ', 'RAHUL KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(216414216, 'MANJU  RANA', 'manjurana.leo@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(216418715, 'ANKUR BHARGAVA', 'iamankurbhargava@gmail.com', '8510002671', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(216418716, 'Gaurav Suryan ', 'suryangaurav@gmail.com', '9013738029', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(316401513, 'Sahil Madan', 'sahilmadan94@gmail.com', '9654296410', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(316401516, 'ABHISHEK ARORA', 'abhishekarora057@gmail.com', '8527729779', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(316403213, 'ROHIT   GARG', 'RG.ROHIT@HOTMAIL.COM', '9999814499', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(316403214, 'Anmol Kohli', 'anmolkohli.07@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(316403215, 'AKASH AGRAWAL ', 'akashagrawalbest@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(316403216, 'Abhishek Kumar', 'abhikumarbaghela@gmail.com', '9871981908', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(316404514, 'RAVI KUMAR SINGH ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(316404516, 'ABHISHEK', 'abhishekmorwal59@gmail.com', '9971936044', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(316404815, 'SANDEEP KUMAR ', 'SANDEEP KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(316405315, 'TRAPTI SINGH', 'TRAPTI SINGH', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(316410515, 'ANMOL JAIN ', 'anmol97j@gmail.com', '8743099301', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(316412813, 'ROHIT', 'rrohitcchaudhary@gmail.com', '9990480554', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(316412814, 'SHIVI JINDAL', 'shivijindal27@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(316412815, 'AKSHAT JAIN ', 'akshat.jain957@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(316412816, 'ANKIT MEENA', 'am4190634@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(316414216, 'NEHA', 'neha9312chaudhary@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(316418715, 'KOMAL GEHANI', 'komal.0110@yahoo.com', '9821736616', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(316418716, 'Amita Kumari ', 'AMITAKUMARI102@GMAIL.COM', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(416401513, 'SAJAL JINDAL', 'sajalsjddn@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(416401516, 'ABHISHEK KHANDELWAL', 'abhishekkhandelwal71297@gmail.com', '9555461689', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(416403213, 'SIDDHARTH   GUPTA', 'siddharthgupta234@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(416403215, 'ARUN MALIK', 'n00bkillinganon@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(416403216, 'Akshit Beck', 'akbeck.beck7@gmail.com', '8447076710', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(416404514, 'JEEKA KRISHNA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(416404515, 'ABHISHEK CHOUDHARY', 'abhishek1311choudhary@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(416404516, 'ABHISHEK KUMAR SHARMA', '1994.abhishekvats@gmail.com', '9958004924', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(416404815, 'ROHIT VASHIST', 'ROHIT VASHIST', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(416405315, 'KANIKA GUPTA', 'KANIKA GUPTA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(416405316, 'ANNANYA BANSAL', 'annanyabansal55@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(416410514, 'Rohit Chugh', 'rohitchugh.95@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(416412814, 'BANDANA PRASAD', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(416412815, 'ATUL SINGH ', 'atulsingh.rmcf@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(416412816, 'ANKUSH CHOUDHARY', 'ankush.choudhary81@gmail.com', '9015366988', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(416414215, 'AMIT DAS', 'AMIT DAS', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(416414216, 'CHAVI SRIVASTAVA', 'chavi.srivastava.19@gmail.com', '9911188440', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(416418715, 'ASHEESH YADAV', 'aasheeshmae@gmail.com', '9013310269', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(416418716, 'Manish Kumar ', 'manishkumareeedelhi@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(516401513, 'Yatharth Thakur', 'Yatharth Thakur', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(516401516, 'ADITYA PUSHKAR', 'adityapushkar100@gmail.com', '7827755911', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(516403213, 'SHREY  ANAND', 'shrey.anand@ymail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(516403214, 'Anurag', 'anuragsidana22@gmail.com', '9990481479', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(516403215, 'AVINASH ANAND ', 'avimeaurmain@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(516403216, 'Anuj Kumar Mishra ', 'anujkmishra61098@gmail.com', '9899860226', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(516404514, 'PRASHAN RAWAT ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(516404515, 'AKSHAY KUMAR', 'akshaykumar00769@gmail.com', '8092719010', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(516404516, 'ADITYA KUMAR', 'adityasharma2630@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(516404815, 'SAANCHI SARDANA', 'SAANCHI SARDANA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(516404816, 'SAIJAL  GUPTA', 'offs.ipu2017@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(516405315, 'PUSHKAR PUSHAP', 'PUSHKAR PUSHAP', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(516405316, 'SAMAN  AHMED', 'saman.ahmed17@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(516410514, 'Dhruv Mehanditratta', '186dkm@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(516410515, 'DEVANG GUPTA ', 'devang2497@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(516412816, 'CHANDRA SHEKHAR', 'shekharshukla932@gkail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(516414215, 'BHAVIKA ', 'BHAVIKA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(516414216, 'MRINALINI  SHARMA', 'mileesharma911@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(516418715, 'MEGHA SHARMA', 'megha.sh2231@gmail.com', '9990461975', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(516418716, 'Vishal Gautam ', 'vishalgautambhoot104@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(616401513, 'Vatsal Bajpai', 'science.vats@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(616401516, 'AKASH RAZDAN', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(616403214, 'Chaitanya', 'Chaitanya19795@gmail.com', '8447671314', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(616403215, 'AYUSH GIRI', 'ayushgiri23@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(616403216, 'Ayush Thakur', 'ayushthakur554@gmail.com', '9582677175', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(616404515, 'AMAR KUNAL', 'kunalanand239@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(616404516, 'ALANKIT BAWEJA', 'alankitb@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(616404815, 'SHREYA KHURANA', 'SHREYA KHURANA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(616404816, 'ABHISHEK  SHARMA', 'abhishek.4496@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(616405315, 'ANIRUDRA DIWAKAR ', 'ANIRUDRA DIWAKAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(616405316, 'CHIRAG  MITTAL', 'CHIRAG  MITTAL', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(616410515, 'DHEER GULATI', 'dheergulati12@gmail.com', '8901310005', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(616412813, 'RAJAT NAGPAL', 'rajatblckd@gmail.com', '9990428760', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(616412814, 'SUMAKAR K V S ', 'sumakarkvs@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(616412816, 'DEEPAK KUMAR SHARMA', 'ds191910@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(616414216, 'ANKIT CHAND', 'ankitchand10@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(616418715, 'AISHWARYA SHARMA', 'aishwarya.sharma157@gmail.com', '9717219665', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(616418716, 'Vandita Rana ', 'Vandita Rana ', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(716401516, 'AKSHAY SHARMA', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(716403213, 'AMAN KUMAR JHA', 'mail.amanjha@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(716403214, 'Satyam', 'satyamrai2606@gmail.com', '8285711479', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(716403216, 'Chandril Bhardwaj ', 'Chandril Bhardwaj ', '9911700695', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(716404514, 'RAHUL TYAGI ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(716404515, 'AMIT KUMAR SINGH ', 'amittomar991@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(716404516, 'ALOK JHA', 'jhaalok51@yahoo.in', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(716404815, 'ANIKA ', 'ANIKA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(716404816, 'AKANKSHA  KOCHHAR', 'akankshakochhar14@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(716405316, 'SWATI', 'tanwarswati05@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(716412813, 'ROHAN BANGA', 'bangarohan@gmail.com', '7838746648', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(716412814, 'PRANAV NAGPAL', 'pranavnagpal97@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(716412815, 'BHUPESH KUMAR ', 'bhupesh.kalher1997@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(716412816, 'DHEERAJ TAILOR', 'dheerajtailor07@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(716414215, 'AKHIL KUMAR ', 'AKHIL KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(716414216, 'MEENAKSHI', 'meenakshim0023@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(716418715, 'BRIJENDRA KUMAR SHARMA', 'brijendrathelegend@gmail.com', '7503839080', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(716418716, 'Krittika', 'Krittika', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(816401516, 'AMAN KALRA', 'amankalra835@gmail.com', '8506895051', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(816403214, 'KARAN SOOD', 'ksood122333@gmail.com', '9971194873', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(816403215, 'DEEKSHA NAYAR', 'nayar.deeksha25@gmail.com', '9810397413', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(816403216, 'Chirag Gupta ', 'chiraggupta7991@gmail.com', '9953592254', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(816404514, 'ASHISH GUPTA ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(816404515, 'ANSHIKA', 'dabas.anshika@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(816404516, 'ANJALI JUNEJA', 'ajuneja93@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(816404815, 'NEHA GARG', 'NEHA GARG', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(816404816, 'GARIMA', 'garimamogha1008@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(816405316, 'SWATI REHAL', 'SWATI REHAL', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(816410514, 'Shubham Juneja', 'shubhamjuneja11@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(816412813, 'NIRLESH SINGH', 'nirleshsinghchandel@gmail.com', '9555899705', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(816412814, 'AMANPREET SINGH', 'aman06singh@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(816412815, 'DEEPAK KUMAR ', 'dK180398@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(816412816, 'DHRUV PRATAP SINGH', 'karldot1997@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(816414215, 'NEHA ', 'NEHA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(816414216, 'ADITYA SURYAN', 'ADITYA SURYAN', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(816418715, 'ANJANI KUMAR', 'kumaranjani902@gmail.com', '7557695716', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(816418716, 'Annu Verma ', 'annuverma.21@gmail.com', '9911385381', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(916401513, 'SATYAM SEHGAL', 'satyams407@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(916401516, 'AMIT MOHAN', 'amitmohan98@gmail.com', '8130230868', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(916403216, 'Divij Handa', 'divij.handa.2010@gmail.com', '9811669647', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(916404514, 'ASHISH AGGARWAL ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(916404515, 'ANUBHA SASANK', 'anubha.sasank@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(916404516, 'ANKUR SINGH', 'ankursajwan10@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(916404815, 'UMME AIMAN ', 'UMME AIMAN ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(916404816, 'KHUSHBOO  KUMARI', 'khushi.mishra.in@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(916405315, 'ABHISHEK GUPTA', 'ABHISHEK GUPTA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(916405316, 'MANISHA SINGH', 'manisep28@gmail.com', '8826573306', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(916410514, 'Mugdha Garg', 'mugdha.dec@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(916412813, 'AMIT RANJAN', 'ranjanamit179@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(916412815, 'DEEPAK PRAKASH ', 'deepakprakash2811@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(916412816, 'GAURAV SEHRA', 'GAURAV SEHRA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(916414215, 'PARCHI GUPTA ', 'PARCHI GUPTA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(916414216, 'DEEPANSHU KATHURIA', 'deepanshu_kathuria93@yahoo.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(916418715, 'RIMJHIM KUMARI', 'rimjhim.kumari957@gmail.com', '880217782', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(916418716, 'Rohit Kumar Das', 'mailrohitwalia@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1016401513, 'Abhijeet Chaudhary', 'Chaudhary.raj.ab1994@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1016401516, 'ANANT KUMAR JAIN', NULL, '9650097542', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1016403215, 'HANU GAUTAM ', 'gautamhanugautam@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1016403216, 'Gaurav ', 'gauravlochab487@gmail.com', '8222022505', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1016404516, 'ANUJ DUGGAL', 'anujduggal16@gmail.com', '9211029373', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1016404815, 'JATIN GEMINI', 'JATIN GEMINI', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1016404816, 'VISHAL', 'vish.gupta18@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1016405315, 'SHOBHIT RAWAT', 'SHOBHIT RAWAT', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1016405316, 'PRERNA AWASTHI', 'prernaawasthi5@gmail.com', '8130508797', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1016410514, 'Aseem Chopra', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1016412813, 'ADITYA SETHI', 'adityasethi956@gmail.com', '8588019177', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1016412815, 'GAURAV DAGAR ', 'gauravd169@gmail.com', '9958446195', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1016412816, 'HIMANSHU', 'singhhimanshu730@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1016414215, 'ABHISHEK TIWARI ', 'ABHISHEK TIWARI ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1016414216, 'ANTRIKSH SHARMA', 'antrikshsharma05@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1016418715, 'RAHUL SARASWAT', 'rahul.saraswat26@gmail.com', '9015518911', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1016418716, 'Kunal Sharma ', 'Kunal Sharma ', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1116401513, 'Piyush Bhandula', 'pbhandula25@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1116401516, 'BHAWANA', 'bhavi.otti1704@gmail.com', '7042873647', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1116403214, 'Vihang Sharma', 'vihang.sharma95@gmail.com', '8826661597', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1116403216, 'Gautam Martolia', 'ghostgr07@gmail.com', '7838590968', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1116404514, 'PRATIK BHARDWAJ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1116404516, 'ARSALA SALEEM', 'arslawar31@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1116404815, 'ANURADHA SHARMA ', 'ANURADHA SHARMA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1116404816, 'BHAVYA  AGRAWAL', 'bhavs.agr@gmail.com', '9911912298', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1116405315, 'SHIVANI GUPTA', 'SHIVANI GUPTA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1116405316, 'ARUSHI GUPTA', 'arushigupta071@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1116410514, 'Prafful Gupta', 'praffulgpt8@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1116412813, 'AMAN GUPTA', 'todayis20092016@gmail.com', '9968833085', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1116412814, 'ADARSH KUMAR SINGH', 'adarshdevil225@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1116412815, 'GURPREET SING MARWAH ', 'gurpreet.201996@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1116412816, 'HIMANSHU BHORIA', 'HIMANSHU BHORIA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1116414215, 'KRISHNA MEENA ', 'KRISHNA MEENA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1116414216, 'NIHARIKA VASUDEVA', 'vasudeva.niharika@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1116418715, 'MADHU YADAV', 'madhuyadav900@gmail.com', '9971212726', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1116418716, 'Harshit Varshney ', 'harshney29@gmail.com', '9458584400', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1216401513, 'Kushagra Bhandari', 'kb.lowenhart@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1216401516, 'DALIMA GARG', 'gargdalima30@gmail.com', '8130892779', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1216403213, 'PULKIT   BHATIA', 'pulkit4tech@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1216403214, 'Bazil ahmed', 'bazilahmedia@gmail.com', '8285988305', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1216403215, 'HIMANSHU BHANDARI ', 'hbhandari098@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1216403216, 'Gokul josi', 'gokuljoshi15121998rs@gmail.com', '8377056583', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1216404514, 'SURENDER SINGH ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1216404516, 'AYUSHI JAIN', 'itsme.ayushijain25@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1216404815, 'GEETANSHI PAL', 'GEETANSHI PAL', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1216404816, 'VIPIN KUMAR', 'rd.vipin@gmail.com', '9911598738', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1216405315, 'AMIT KUAMR ', 'AMIT KUAMR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1216410514, 'Shivangi Chauhan', 'shivangichauhan06@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1216410515, 'MOHIT KUMAR', 'mksujanian2683@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1216412813, 'NITANT KHULLAR', 'nitant.khullar@gmail.com', '8586927645', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1216412815, 'HARSH KUMAR ', 'harshkumar9995@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1216412816, 'HIMANSHU TYAGI', 'himanshu.ty45@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1216414215, 'ANJALI BALIYAN', 'ANJALI BALIYAN', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1216414216, 'TAMISH VERMA', 'tamish60@gmail.com', '9810472019', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1216418715, 'AKHILESH KUMAR SHARMA', 'akhileshkumarsharma15@gmail.com', '9871649691', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1216418716, 'Surabhi Daeeyya ', 'surbhi9323@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1316401513, 'Karan Chaudhary', 'kc5463363@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1316401516, 'DEEPANSHU AHLAWAT', 'deepahlawat465@gmail.com', '7551122005', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1316403214, 'Sourav Aggarwal', 'aggarwalsourav0210@gmail.com', '7838701947', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1316403216, 'Hemant Aggrawal ', 'hemantaggarwal915@gmail.com', '7292099310', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1316404514, 'SURBHI JAIN ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1316404515, 'BALRAJ SINGH BRAR', 'balraajbrar@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1316404516, 'DEEPAK SINGH BISHT', 'deepsluminia800@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1316404815, 'HARDIK KASHYAP', 'HARDIK KASHYAP', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1316404816, 'SHELJA', 'GSHELJA16@GMAIL.COM', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1316405315, 'ANKITA JAIN ', 'ANKITA JAIN ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1316405316, 'INDU SIBAL', 'sibal.indu@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1316410515, 'NITISH KUMAR', '420knitish@gmail.com', '9810473819', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1316412813, 'NEERAJ KR. JHA', 'neeraj14.nj@gmail.com', '8010879484', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1316412815, 'HARSHIT SINGH ', 'Hrsht2412@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1316412816, 'KUMAR KARTIKEYA', 'kkartikeya123@gmail.com', '8527402934', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1316414216, 'NISHA KUMARI', 'nis.bhargav@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1316418716, 'Vaishali Lohchab ', 'vaishalilohchab27@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(1416401513, 'Kapil Chopra', 'kapilchopra963@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1416401516, 'DHRUV SAXENA', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1416403214, 'Gagandeep Nagpal', 'gagannagpal68@gmail.com', '8800489129', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1416403215, 'MANTHAN', 'MANTHAN', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1416403216, 'Kapil Lamba', 'kapillamba4@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1416404514, 'SAKSHAM SEGRA ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1416404515, 'BHARTI KUMARI', 'Bhartik2705@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1416404516, 'DEEPIKA TIWARI', 'deepikatiwari92@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1416404815, 'MONIKA GUPTA', 'MONIKA GUPTA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1416404816, 'PRERNA', 'prernakhobar@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1416405315, 'PARMEET KAUR ', 'PARMEET KAUR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1416405316, 'RHYTHM BHASIN', 'rhythm.bhasin@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1416410514, 'Deepak', 'privacyismyth@gmail.com', '<br>', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1416412813, 'HARSH SHARMA', 'harshshrm94@gmail.com', '9013079448', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1416412814, 'HEMANT BANSAL', 'hemant.bansal2345@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1416412815, 'HIMANSHU RAJPUT ', 'rahul9013360913@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1416412816, 'LAKSHYA SINGH', 'LAKSHYA SINGH', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1416414215, 'ARVIND KUMAR ', 'ARVIND KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1416414216, 'SHUBHRA ARYA', 'sarya.eceipu@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1516401513, 'Prateek Jain', 'jainprateek811@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1516401516, 'EKANSH GUPTA', 'Ekanshgupta.eku@gmail.com', '8826212377', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1516403214, 'Surbhi pathak', 'Surbhipathak427@gmail.com', '9654828000', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1516403215, 'MAYANK', 'mayankchawla220@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1516403216, 'Keshav Mishra ', 'keshav.m882@gmail.com', '7011457245', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1516404514, 'DEEPIKA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1516404515, 'DEVASHISH', 'devashishnaagar@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1516404516, 'DHRUV OBEROI', 'dhruvoberoi94@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1516404815, 'SURBHI GUPTA', 'SURBHI GUPTA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1516404816, 'SANGEETA IYER', 'SANGEETA IYER', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1516405315, 'JASMEET KAUR ', 'JASMEET KAUR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1516405316, 'POOJA TYAGI', 'pooja.tyagi94@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1516410514, 'Akash Garg', 'akash.garg.5@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1516410515, 'PRAKSHAL JAIN', 'prakshaljain7@gmail.com', '7053449799', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1516412815, 'HIMANSHU RAJPUT ', 'himanshurajput96@gmail.com', '8700052585', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1516412816, 'LALLAN KUMAR', 'lallankumarrocks@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1516414215, 'TEENA GAKHAR ', 'TEENA GAKHAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1516414216, 'MARIYAM ZUNAIRAH', 'zunairahmariam@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1616401513, 'Devashish Kumar', 'devashish2308@gmail.com', '7503043053', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1616401516, 'GOVIND', 'g.kgautam97@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1616403214, 'Anmol Khanna', 'anmolkhanna1996@yahoo.in', '9891104002 ', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1616403216, 'Kumar Neelabh', 'neelabh.plus@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1616404514, 'RICHA KHANNA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1616404515, 'DINESH ANAND', 'dineshanand5@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1616404516, 'DIKSHA DAYAL', 'diksha.dayal002@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1616404815, 'PUSHPENDRA KUMAR ', 'PUSHPENDRA KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1616404816, 'NIPUL GOYAL', 'goyal.nipul@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1616405315, 'ASHWANI PAYAL ', 'ASHWANI PAYAL ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1616405316, 'ANJALI KUMARI', 'ANJALI KUMARI', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1616410514, 'Akshat Vats', 'akshatvats101@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1616410515, 'PRANJAL AGARWAL ', 'pranjal9agarwal@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1616412814, 'VARUN PANTHRI', 'varunpanthri38@gmail.com', '9891795403', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1616412815, 'HINDUJA PUDI ', 'hindujaiiit@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1616412816, 'NAMAN RAJPUT', 'naman17121998@gmail.com', '8826746941', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1616414215, 'PRATEEK SINGH ', 'PRATEEK SINGH ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1616414216, 'TEJASWINI DHALL', 'tejaswini.dhall1994@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1716401513, 'Bhavesh Pant', 'notoriouskratos@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1716401516, 'HARSHIT NARULA', 'harshitnarula22@gmail.com', '8198941403', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1716403214, 'Salil Khandelwal', 'salilkhandelwal@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1716403215, 'PANKAJ KUMAR GAUTAM', 'pnkjgautam05@gmail.com', '9560247095', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1716403216, 'Lalit Jain', 'jain.lalit90@yahoo.com', '9999306397', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1716404514, 'VARDHMAN JAIN ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1716404515, 'DIPANNITA SHIL', 'dipannitashil24@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1716404516, 'DIKSHA MEHRA', 'dikshamehra891@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1716404815, 'TUSHARIKA SINGH ', 'TUSHARIKA SINGH ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(1716405315, 'SUNAKSHI MEHRA', 'SUNAKSHI MEHRA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1716405316, 'SUPREET KAUR', 'supreetkaur7891@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1716410514, 'Shubham Jindal', 'shubhamj1996@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1716410515, 'PUNEET KUMAR MAURYA', 'punim187@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1716412814, 'PRANAV GUPTA', 'pranavgupta8@hotmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1716412816, 'NITISH PAL', 'nitishpal464@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1716414215, 'MOHIT VERMA ', 'MOHIT VERMA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1716414216, 'PRITTY', 'malik65456@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1816401513, 'Prateek Bajaj', 'rockprateek95@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0);
INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(1816401516, 'HIMANSHU', '1301himanshu@gmail.com', '9911200781', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1816403213, 'KULBIR  SINGH', 'kulbirsingh445@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1816403214, 'Pranav Khurana', 'pranavkhurana96@gmail.com', '9654768080', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1816403215, 'PARAS ', 'khandelwalparas8@gmail.com', '7042772660', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1816403216, 'Lalit kumar', 'lalit5542@gmail.com', '9013316879', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1816404514, 'MEGHAN GAUR', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1816404515, 'GARIMA JAITLY', 'garimajaitly8@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1816404516, 'DIVESH', 'ra.divesh1994@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1816405315, 'AYUSHI AGGARWAL ', 'AYUSHI AGGARWAL ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1816405316, 'PRITI SHARMA', 'priti.sharma35@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1816412811, 'VAIBHAV', 'VAIBHAV', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1816412813, 'SHIVAM SINGH', 'shivamb1606@gmail.com', '9650129933', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1816412815, 'KESHAV ', 'keshavchaudhary401@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1816412816, 'PARV VERMA', 'parvverma.del@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1816414215, 'DHIRAJ KUMAR ', 'kr.dhiraj@outlook.com', '9899489911', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(1916401513, 'Mohan Gupta', 'mohangupta994@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1916401516, 'HIMANSHU MEENA', 'himanshu57boss@gmail.com', '9899795998', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1916403213, 'DEEPAK  SAHU', NULL, NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1916403215, 'PIYUSH MEHENDIRATTA', 'mehndiratta142@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1916403216, 'Luv Attri', 'Luv Attri', '9958941467', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(1916404514, 'PARIDHI JAIN', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1916404515, 'GAURAV', 'gaurav20515060@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1916404516, 'DIVYA ARORA', 'divyarora1995@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(1916405315, 'PRIYA GARG', 'PRIYA GARG', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1916405316, 'AASHNA GUPTA', 'AASHNA GUPTA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(1916410514, 'Deepanshu Gupta', 'deepanshu.ggupta@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(1916412813, 'ANSHUL GARG', 'anshul80.ag@gmail.com', '7827489202', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1916412814, 'SIDHANT DALMIYA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1916412815, 'MAYANK BHATT ', 'mnkbhtt224@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(1916412816, 'PRADEEP CHAUDHARY', 'pradeepchaudhary647@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2016401513, 'Sahil Gupta', 'sgsgupta37@yahoo.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2016401516, 'JASMINE RAI', NULL, '9991278720', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2016403214, 'Varun Sharma', 'varun199539@gmail.com', '9953056043', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2016403215, 'PRABBUDH SINGH ', 'prabuddhksingh@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2016403216, 'Maninder Singh Bhatia ', 'gsbhatia67@gmail.com', '8802828911', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2016404514, 'SHIVAM NARANG ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2016404515, 'GEETANJALI', 'geet.anjali672@gmail.com', '8882251562', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2016404516, 'DIVYANSHU SIKKA', 'DIVYANSHU SIKKA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2016405315, 'ANUJ KUMAR DAGAR ', 'ANUJ KUMAR DAGAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(2016405316, 'AARTI', 'AARTI', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(2016410514, 'Prayansh Srivastava', 'prayansh1996@gmail.com', '9810661992', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2016412815, 'MAYANK SHARMA ', 'ms22021997@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2016412816, 'PRADYUMN MATTU', 'PRADYUMN MATTU', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2116401513, 'Pranjal Aggarwal', 'agrawal.pranjal7@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2116401516, 'JYOTI', 'thejyotikaushik13@gmail.com', '8398982382', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2116403213, 'ANIMESH  GOYAL', 'animesh.goyal43@gmail.com', '7838044399', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2116403215, 'PRANSHU MITTAL', 'pranshu2009@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2116403216, 'Manisha Guddolian', 'Manisha Guddolian', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2116404514, 'NEERAJ PANDY', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2116404515, 'ISHITA BHATI', 'ishiitabhatt@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2116404516, 'DUSHYANT TANWAR', 'dushyanttanwar5@gmail.com', '8053046232', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2116405316, 'MAMTA', 'MAMTA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(2116410515, 'SACHIN KUMAR', 'sk1526962@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2116412813, 'BRAHAM PRAKASH', 'brahm80900@gmail.com', '9953125272', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2116412815, 'NIKHIL GUPTA ', 'nikhil.gupta120897@gmail.com', '9871160963', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2116412816, 'PRERAK MANN', 'mannprerak1@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2216401513, 'Ashish Kaushik', 'ashishflyingstar@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2216401516, 'KAPIL CHOUDHARY', NULL, '8510053054', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2216403213, 'Abhishek Ranjan Das', 'abhishekrdas@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2216403215, 'PRATHAM JOSHI', 'pratham.1997@gmail.com', ' 919810456022', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2216403216, 'Mehul Kanotra', 'mehulkanotra98@gmail.com', '8587055510', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2216404514, 'ANURABH MITRA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2216404515, 'JIYASA MEENA', 'messing.with.chacecrawford@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2216404516, 'GOKUL KRISHNA', 'GOKUL KRISHNA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2216405316, 'ASHU  SHARMA', 'ashi.sharma.578@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(2216412813, 'KASHIF FURKAN', 'kashif.batman@gmail.com', '7531993304', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2216412815, 'PRANAY MISHRA ', 'mishra.pranay.01@gmail.com', '9899830153', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2216412816, 'RAHUL KUMAR MEENA', 'RAHUL KUMAR MEENA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2316401513, 'Himank Bhalla', 'hbhalla95@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2316401516, 'KUSHAGRA GUPTA', 'Kg8555869@gmail.com', '8376021120', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2316403213, 'SAHIL  AGGARWAL', 'aggarwalsahil100@gmail.com', '9871319069', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2316403214, 'keshav aggarwal', 'aggarwalkeshav38@gmail.com', '8527569689', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2316403215, 'RAHUL DEV', 'rahuldev20011997@gmail.com', '9810478320', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2316403216, 'Mohd. Ashraf', 'abdhoom@gmail.com', '9971369679', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2316404514, 'ASHNA SIKRI', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2316404515, 'JOBAN SINGH', 'jobansingh8@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2316404516, 'HIMANSHU', 'himanshugautam251994@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2316405316, 'SIELVIE SHARMA', 'sielvie@outlook.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(2316410514, 'Chirag Arora', 'chirag.rooney@gmail.com', '9990015270', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2316410515, 'SANJEET KUMAR', 'sanjeet07.kumar07@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2316412813, 'UTKARSH PANDEY', 'uttu27@gmail.com', '7531993304', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2316412814, 'SHUBHAM AGARWAL', 'shubham641@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2316412815, 'RAVI SHARMA ', 'ravish1907@gmail.com', '8802587860', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2316412816, 'RISHI RAJ', 'rishi.delhi1979@gmail.com', '9650083754', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2416401516, 'MANISH KUMAR MISHRA', 'manishmishra039@gmail.com', '8745873385', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2416403213, 'RAVISH  GARG', 'ravishgarg95@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2416403215, 'RATN ROHAN', 'ratnrohan007@gmail.com', '9991731414', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2416403216, 'Nitesh Kumar Tyagi ', 'Nitesh Kumar Tyagi ', '8587040507', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2416404514, 'ANMOL ARORA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2416404515, 'KANCHI MITTAL ', 'kanchi@live.in', '7011503995', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2416404516, 'JATIN GOYAL', 'JATIN GOYAL', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2416410514, 'Amit Sharma', 'amit.usict@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2416412813, 'SHUBHAM GUPTA', 'sg041994@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2416412815, 'RISHABH SINGH ', 'rishabh.singh1214@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2416412816, 'RITVIK SINGH RAUTELA', 'Ritviksinghrautela@gmail.com', '9871041521', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2516401513, 'Nidhish Kumar', 'nidhish9054@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2516401516, 'MUKUL VASHISHTHA', 'mukulvashishtha97@gmail.com', '7531857125', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2516403213, 'RAJAT  CHAUHAN', 'rajatchauhann95@gmail.com', '9210501637', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2516403216, 'Prafful Kumar', 'kumarprafful54@gmail.com', '8750442030', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2516404515, 'KAPIL VALLABH', 'kpl.vallabh@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2516404516, 'KANCHAN SINHA', 'kanchansinha5614@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2516410515, 'SHUBHAM SHARMA', 'shubhamsharma5922@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2516412811, 'AKSHAY', 'AKSHAY', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(2516412813, 'SIDDHARTH SINGH', 'siddharthsingh1173@gmail.com', '9718885134', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2516412815, 'RITIK NEGI ', 'himanshurajpoot96@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2516412816, 'ROHIT', 'rohitgns123@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2616401513, 'KARTIK DUA', 'duakartik2015@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2616401516, 'NAMAN', 'namangupta19041998@gmail.com', '9599114618', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2616403213, 'SHASHANK  MAKKAR', 'shashankmakkar@yahoo.in', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2616403215, 'RITVIK ARORA', 'mukesharora878@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2616403216, 'Prashant ', 'ghumariya007@gmail.com', '9958214844', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2616404514, 'AMANPRET SINGH ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2616404516, 'KUNGA JIGMEY', 'kjarya159@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2616410515, 'Swapnil ', 'swpnltiwari361@gmail.com', '9560029697', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2616412813, 'SHUBHAM JAIN', 'shubhamjain1602@gmail.com', '9560796951', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2616412814, 'ABHISHEK SINGH', 'SINGHABHISHEK7777777@GMAIL.COM', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2616412815, 'RITWIK RUDRA ', 'RITWIKRUDRA1997@GMAIL.COM', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2616412816, 'SANCHIT SETHI', 'sanchitsethi97@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2716401513, 'VIKAS JAKHAR', 'vikz2708@gmail.com', '9810665209', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2716401516, 'NIHIT BANSAL', 'nihitbansal06@gmail.com', '8860408118', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2716403213, 'PREM KUMAR  TIWARI ', 'caesarrocks3@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2716403214, 'Amit Singh Negi', 'amitnegi0195@gmail.com', '9958762163', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2716403216, 'Prashant kumar', 'Prashantkumar4ever@gmail.com', '88024 42875', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2716404514, 'CHIRNJEEV THOMAS', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2716404516, 'MANDEEP BALIYAN', 'mandeepbaliyan@outlook.com', '9971937697', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2716410514, 'Vibhor Verma', 'djdj@fmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2716410515, 'TUSHAR PURANG ', 'tpurang@yahoo.in', '9871026277', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2716412814, 'ANKIT KAUSHIK', 'ankitkaushik155@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2716412815, 'SACHIN BHATI ', 'sachinbhati031@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2716412816, 'SAURABH MAHATO', 'saurabhmahato3@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2816401516, 'NIMISH BANSAL', 'nimish4july1998@gmail.com', '9654422849', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2816403213, 'SIDDHARTH  LALWANI', 'siddharth.lalwani@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2816403215, 'SAJEEV MAHAJAN ', 'sjv97mhjn@gmail.com', '9711755874', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2816403216, 'Pratishtha singh', 'pratisingh15@gmail.com', '99534 92254', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2816404514, 'ANCHITYA BHALOTIA ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2816404515, 'KIRAN LATA', 'kiranlata12@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2816404516, 'MANINDER SINGH', 'maniinthe@yahoo.co.in', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2816410514, 'Guneet Singh', 'gsgsdhillon@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2816410515, 'UJJWAL JAIN ', 'ujjwal451@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2816412813, 'AMIT UPRETI', 'kumarshaurya32@gmail.com', '9910381864', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2816412815, 'SANCHIT PANWAR ', 'sanchitpanwar196@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2816412816, 'SHASHWAT DIXIT', 'SHASHWAT DIXIT', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2916401513, 'Prateek Jain', 'shubhgrwlll@gmail.com', '', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2916401516, 'PANKAJ PRATAP SINGH', 'pankajpratap990@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(2916403213, 'VISHAL  SHARMA', 'vshlsharma869@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2916403214, 'Mayank Bhandari', 'mbmbmayank19@gmail.com', '8882445141', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2916403215, 'SANDESH ', 'sandeshsharma0003@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2916403216, 'Pratyush pathak', 'lovingpratyush.pathak2@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(2916404514, 'AAGMAN PUROHIT', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2916404515, 'KIRAN SHORI', 'shori.kiran@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2916404516, 'MANISH KUMAR PARASHAR', 'parashar.manish229@yahoo.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(2916412815, 'SANJAY KUMAR MEENA ', 'sanjaykumarmeena911@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(2916412816, 'SUMIT KUMAR PHOGAT', 'SUMIT KUMAR PHOGAT', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3016401513, 'Shubham Agarwal', 'shubhgrwlgeniee@gmail.com', '8802164686', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3016401516, 'PRANAV BANSAL', 'pranavbansal2809@gmail.com', '9582041039', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3016403213, 'NITIN  SHARMA', 'ns201295@gmail.com', '9717565800', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3016403214, 'Mayank Singh', 'mayanksingh.461996@gmail.com', '7042044700', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3016403215, 'SAQUIB SIDDIQUE', 'm.s.siddique131@gmail.com', '9650482286', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3016403216, 'Prince ', 'Prince ', '8375984236', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3016404514, 'PINKI CHOUDHARY', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3016404515, 'KOMAL GAUTAM', 'komalgautam1994@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3016404516, 'MOHIT YADAV', 'MOHIT YADAV', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3016410514, 'Pratulya Bubna', 'pratulyabubna@outlook.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3016412813, 'SURYA PRATAP SINGH', 'spssurya24@gmail.com', '9015895970', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3016412815, 'SARTHAK KUMAR ', 'srthk.2597@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3016412816, 'SURAJ JHA', 'ersurajjha1997@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3116401513, 'Ajay Goyal', 'ajaygoyal429@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3116401516, 'PRASHANT KUMAR', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3116403214, 'aakash bhardwaj', 'top.aakash123@gmail.com', '9582688373', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3116403216, 'Rahul Kanojia', 'rlrahulkanojia@gmail.com', '9458164930', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3116404514, 'DALINDER SINGH', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3116404515, 'KUNAL SONI', 'kunal.sohni94@gmail.com', '8587864231', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3116404516, 'NABEEL HASAN ANSARI', 'nabeelhasan0@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3116410515, 'VIKAS VERMA', 'vikasbhatia1995@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3116412814, 'PARTH TREHAN', 'trehanparth11@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3116412815, 'SATYARTH VIMAL ', 'satyarthvimal12@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3116412816, 'SWAPNIL TIWARI', 'tiwariswapnil133@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3216401513, 'ANISHA GOPALIA', 'anishag.3010@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3216401516, 'PRINCE KHERA', 'khera96@gmail.com', '7042421848', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3216403213, 'ANUSHREE  KESAN', 'anushree.kesan@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3216403214, 'suraj kumar', 'surajkumar246@gmail.com', '9013155212', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3216403216, 'Rishabh Bhardwaj', 'rishabhbhardwaj64@gmail.com', '8377838313', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3216404514, 'MANISH KUMAR SINGH ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3216404515, 'MAYANK NAGAR', 'mayank.171193@gmail.com', '9958766232', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3216404516, 'NAUFIL SIDDIQUI', 'NAUFIL SIDDIQUI', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3216410514, 'Rajneesh Sharma', 'rajneeshsharma.cooldude@gmail.com', '9716493916', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3216410515, 'VIKAS VERMA', 'vikas097verma@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3216412814, 'SANNA NAZIR', 'nazirsanna99@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3216412815, 'SHIVAM AGGARWAL ', 'shivam.aggarwal1597@gmail.com', '9654772898', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3216412816, 'TAVESH', 'taveshcool97@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3316401513, 'Prakhar Dua', 'prakhz@gmail.com', '8700878089', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3316401516, 'RAGINI KUMARI', 'ragini10316@gmail.com', '9540949926', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3316403214, 'Mansee aggarwal', 'aggarwalmanseee777@gmail.com', '9717456048', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3316403216, 'Rohan Dev Verma', 'rohandevverma1998@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3316404514, 'PARBHAT SAINI', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3316404515, 'MEGHNA', 'anhgem30@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3316404516, 'NIDHI', 'nidhichopra1993@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3316410514, 'Shivam Sharma', 'mailtoshivam13@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3316412816, 'VARUN KUMAR SINGH', 'varuns.india@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3416401513, 'SIDDHARTH GOEL', 'sgoel24212@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3416401516, 'RIJUL SINGH MALIK', 'rijulsingh9@gmail.com', '9582688225', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3416403216, 'Rohit Gambhir', 'rohitgambhir96@gmail.com', '9215331533', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3416404514, 'INDU GUMBER', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3416404516, 'NISHA KANYAL', 'kanyalnisha26@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3416410514, 'Man Mohan Singh', 'manmohansingh201995@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3416412813, 'PRANJAL MISHRA', 'mi.pranjal@gmail.com', '9711096796', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3416412814, 'VISHAL KUMAR', 'vishalkumar.kumar1234@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3416412815, 'SHUBHAM GUPTA ', 'shubhamg.745@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3416412816, 'VEDANG CHAUHAN', 'vedang.cheenu@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3516401513, 'Shivesh pandey', 'shivesh18@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3516401516, 'RIPIN KUMAR', 'ripinkumar267@gmail.com', '9968873730', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3516403213, 'AKSHAY  KHUSHU', 'akshaykhushu.ak@gmail.com', '8800571992', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3516403214, 'Aakash yadav', 'aakash141997@gmail.com', '8130610491', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3516403216, 'Rohit Whachal', 'rohitwac@gmail.com', '7503889355', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3516404514, 'SONALI SAREEN ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3516404516, 'ONKAR BANSAL', 'onkar.bansal93@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3516410514, 'Sarthak Manchanda', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3516410515, 'VIVEK SHARMA ', 'vsviveksharma999@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3516412811, 'NITISH SAINI', 'nitz.445@gmail.com', '9999030302', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(3516412813, 'RAGHAV CHHABRA', 'stratocasternblues@gmail.com', '9716047134', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3516412814, 'KUMAR UTKARSH', 'utkarsh1367@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3516412815, 'SHUBHAM SINGH KHATI ', 'kaikhati114@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3516412816, 'VIBHOR AGGARWAL', 'vibhuagg@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3616401513, 'ISHWAR THAPA', 'ishwarmanithapa@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3616401516, 'RISHABH JOSHI', 'joshir838@gmail.com', '886-0844418', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3616403214, 'Hrithik Dhawan ', 'hrithikdhawan@gmail.com', '8800511944', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3616403215, 'SURAJ KUMAR ', 'surajkumar7091@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3616403216, 'Sarthak Agarwal ', 'akkisfavourite@gmail.com', '7455858664', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3616404514, 'PARDEEP PATHAK', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3616404515, 'NIKHIL RAHEJA ', 'nikhilraheja17@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3616404516, 'PIYUSH GUPTA', 'PIYUSH GUPTA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3616410515, 'VYOM SHARMA', 'vyom.incite@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3616412813, 'RAJAT ARORA', 'rajatarora216@gmail.com', '9582483969', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3616412814, 'ANKIT GUPTA', 'ankit25091996@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3616412815, 'SUKANT VATS ', 'vatssukant74@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3616412816, 'VIKASH KUMAR', 'vikaskumarsingh8662@gmail', '7982809517', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3716401513, 'Navdeep Sandhu', 'navdeep2611@gmail.com', '9810354223', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3716401516, 'ROHAN GOYAL', 'rohan.me2014@gmail.com', '9654827013', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3716403213, 'ANKIT  YADAV', 'ANKITUSIT2012@GMAIL.COM', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3716403216, 'Saurabh Kumar', 'kumarsaurabh1997@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3716404514, 'MEENAKSHI', 'meenakshi.singh729@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3716404515, 'NIKUNJ JAIN', 'NIKUNJ JAIN', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3716404516, 'POOJA SINGH', 'POOJA SINGH', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3716412813, 'RAHUL GULIA', 'rahultopped007@gmail.com', '9971712865', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3716412816, 'VINAY KUSHWAHA', 'vinaykmw@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3816401513, 'Ashish Kadyan', 'ashishrated007@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3816401516, 'SACHIN KUMAR', 'sk87579@gmail.com', '9958601136', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3816403213, 'HENU  KUMAR', 'hkkalher@gmail.com', '8130681131', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3816403214, 'Pushkar Mittal', 'mittal.pushkar@gmail.com', '9555289635', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3816403215, 'VANSHAJ GIROTRA', 'vanshajgirotraa@gmail.com', '8377872112', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3816403216, 'Shivam garg', 'shivamgarg1998@gmail.com', '9971056113', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3816404515, 'NITISH VERMA ', 'nitishverma2011@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3816404516, 'PRITESH KUMAR', 'pritxkmr@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3816410514, 'Shubham Jain', 's1996jain@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3816412813, 'SAKSHAM SHARMA', 'saksham2895sharma@gmail.com', '8826112833', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3816412815, 'UJJWAL GUPTA ', 'guptaujjwal83@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(3916401513, 'ANKUR RAJPUT', 'rajputankur023@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3916401516, 'SARANSH GUPTA', 'guptasaransh95@gmail.com', '9650009473', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3916403215, 'VASU MAAN', 'vasu.maan14@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3916403216, 'Shobit Gupta', 'Shobit Gupta', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(3916404514, 'KARTIK PANDEY', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3916404515, 'PAYAL KEDIA', 'payal.kedia01@gmail.com', '8447066654', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3916404516, 'RAGHAV SHADIJA', 'mr.raghav238@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(3916410514, 'Abhijeet Singh Chauhan', 'abhiusict@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(3916412811, 'TRISHALA DAYAL ', 'TRISHALA DAYAL ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(3916412815, 'VIJAY GARG ', 'vijaygarg04@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4016401516, 'SATYAM', 'satyam.mehto750@gmail.com', '7503368459', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4016403213, 'MOHAMMED  SHAHID  ', 'shahid2195@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4016403214, 'Devesh Tewari', 'xx.devesh.xx@gmail.com', '9717104667', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4016403216, 'Smiriti Verma', 'Smiriti Verma', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4016404514, 'AASHIT SHARMA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4016404515, 'PRIYANKA LAMBA ', 'lambapriyanka12@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4016404516, 'RAHUL KUMAR SAH', 'rahul.kumar2856@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4016412813, 'TUSHAR KHURANA', 'tusharkhurana841@gmail.com', '9716239843', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4116401513, 'AAKASH SINGH', 'aakashggsipu@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4116401516, 'SAURABH KUMAR', 'saurabhkr1888@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4116403213, 'AVINASH  CAMMA', 'avinashcamma@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4116403214, 'Bhanu walia', 'bhanu10496@gmail.com', '9873170736', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4116403216, 'Sumit Kumar', 'sumitkr.kapar@gmail.com', '8744805801', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4116404516, 'RAJESH KUMAR SAH', 'rajeshkumaar9@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4116410514, 'Vasu Jain', 'vasu.j550@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4116412813, 'NIMESH JAIN', 'nimishjain1000@gmail.com', '9999574213', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4116412814, 'ANSHUL RANA', 'anshul.rana95@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4116412815, 'MOHIT KAUSHIK', 'mohitkaushik777@gmail.com', '8373972840', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4216401513, 'Mohd Fahad', 'khanmf826@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4216401516, 'SHUBHAM GUPTA', 'sg270798@gmail.com', '8470869254', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4216403213, 'ANKIT  PRATAP', 'ankitprothebro@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4216403216, 'Umang Jain', 'jainumang12@gmail.com', '7838139676', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4216404514, 'MOHIT KUMAR', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4216404515, 'SANDEEP NEMI', 'sandeepnemi@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4216404516, 'RAKESH PATEL', 'patelrakeshkumar10@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4216410514, 'Ravi Ranjan', 'raviranjan19961703@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4216412811, 'VARUN SAHANI ', 'VARUN SAHANI ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(4216412813, 'HARSHIT DIWEDI', 'manasbagula@gmail.com', '9968195588', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4216412814, 'ARUNAV DUTTA', 'arunavdutta.ad@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4316401513, 'Navjot singh', 'nvjot94@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4316401516, 'SHUBHAM SHARMA', 'kajubadaam1@gmail.com', '9716547943', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4316403214, 'Gaurav Kumar', 'gauravtanwar03@gmail.com', '9990487763', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4316403216, 'Vidit Jain', 'viditapps@gmail.com', '9013290400', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4316404514, 'ISHA GUPTA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4316404515, 'SAWAN KALRA ', 'sa1kalra@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4316404516, 'RISHABH DUTT', 'duttrishabh95@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4316410514, 'Rajiv Kumar Jha', 'rajiv@codestreet.io', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4316412813, 'AYUSHMAN BAJPAI', 'bajpaiayushman7@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4316412814, 'JATIN KUMAR', 'jk031997@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4416401513, 'Ankur Chaudhary', 'xs2ankur94@gmail.com', '7838682189', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4416401516, 'UTSAV KRISHNATRA', NULL, '9582751590', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4416403216, 'Vikas', 'vikasrrana9@gmail.com', '8700964442', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4416404514, 'VISHWAJEET PANWAR', 'vp00692@gmail.com', '8802353933', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4416404516, 'ROHIT KUMAR', 'kashyaprohit99@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4416410514, 'Sebin Duke Stephan', 'sebindukestephan@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4416412813, 'VIPIN KUMAR', 'vipinphalswal12345@gmail.com', '8826633878', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4416412814, 'HARINDER SINGH CHOUHAN', 'harry21395@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4516401513, 'Dharam Lohia', 'dharamlohia11@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4516401516, 'VAIBHAV', 'vaibhavnandwani@gmail.com', '8950808939', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4516403213, 'VIKRAM  ', 'thevikrampanwar@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4516403216, 'Vinay Kumar ', 'ccxben@gmail.com', '8802259380', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4516404514, 'PRIYA KATOCH', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4516404515, 'SHRISTHI MATHUR ', 'srishtimathur2@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4516404516, 'ROHIT SEHAJPAL', 'r.sehajpal@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4516412813, 'SIDDHARTH', '007sid700@gmail.com', '9911688172', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4616401513, 'Shyam Hundiwal', 'Shyam Hundiwal', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4616401516, 'VINEET', NULL, '8527030704', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4616403213, 'CHETAN  YADAV', 'chetanx.yadav29@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0);
INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(4616403214, 'Akhil Prasannan', 'akhilprasannan.misc@gmail.com', '8447729290', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4616403216, 'Vishal', 'singvishal7@gmail.com', '9013949680', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4616404514, 'SIDHARTH SHEKHAR ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4616404515, 'SUBODH KANT TIWARI', 'subodh.tiwari.65@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4616404516, 'SHATAKSHI MITTAL', 'shatakshimittal@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4616410514, 'Divesh Bisht', 'doubledeep007@gmail.com', '9013383538', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4616412813, 'RAJEEV KUMAR', 'yadav.rajeev0123@gmail.com', '9650856722', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4616412814, 'AVILASH MOHANTY', 'avilashmohanty1920@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4716401513, 'Vishal Shokeen', 'vishalshokeen01@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4716401516, 'VIVEK KUMAR', 'vivek.ku1997@gmail.com', '8826776971', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4716403213, 'AMIR  HASAN', 'amirhsn896@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4716403214, 'Jatin Aswal', 'jatin.aswal@rediffmail.com', '8586072887', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4716403216, 'Vishal Pal ', 'pal.vishal41@gmail.com', '9873033645', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4716404514, 'PARGYA KASHYAP', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4716404515, 'SUMIT TEOTIA', 'teotiasumit13@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4716404516, 'SHIKHARDEEP BHATNAGAR', 'shikharbhatnagar68@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4716410514, 'Gaurav Mann', 'gauravmann@ymail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4716412813, 'JITENDER', 'sehgal12harmohit@gmail.com', '9871137390', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4716412814, 'MANISH KUMAR YADAV', 'manishkumryadav@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4816401513, 'Mohd Gulfam', 'gulfamansari1515@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4816403213, 'VIKAS  GIRI', NULL, NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4816403214, 'Vikas Soni', 'vikassonibest22@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4816403216, 'Yash Anand', 'yashanand155@gmail.com', '8800221080', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4816404514, 'PARCHI', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4816404515, 'VAIBHAV RAI ', 'vaibhav.restless@gmail.com', '7065146268', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4816404516, 'SOUVIK CHAKRABORTY', 'souvikc40@gmail.com', '9716330981', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4816410514, 'Mahesh Gahlot', 'gahlotmahesh8@gmail.com', '7042464686', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4816412813, 'GAUTAM RAWAT', 'Gautamrawat3333@gmail.com', '', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4816412814, 'SAURABHA SIDDHARTH WANKHEDE', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4916401513, 'Pankaj Shokeen', 'pankajshokeen751@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4916403213, 'SACHIN  KUMAR', 'sachin8447@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4916403214, 'Mohd Shadab ', 'shadab.saifi007@gmail.com', '8744969633', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4916403216, 'Yogesh Sharma ', 'yogesh02011998@gmail.com', '9910255044', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(4916404514, 'ASHISH ARPAN KULLU', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4916404515, 'VISHAL ARORA ', 'VISHAL ARORA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4916404516, 'UDIT SINGH PATWAL', 'patwaludy1995@gmail.com', '8377026242', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(4916410514, 'Prashant Jaiswal', 'prashantj95@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(4916412813, 'HARMOHIT SINGH', 'sehgal12harmohit@hotmail.com', '9999905987', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(4916412814, 'UDIT RANA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5016401513, 'Vishal Kardam', 'vishalat1994@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5016403214, 'himanshu kumar', 'kumarhimanshu901@gmail.com', '7827285662', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5016404514, 'JASKARNA SINGH', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5016404515, 'YANKIT CHAUHAN', 'yankitch@gmail.com', '9958511153', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5016404516, 'VARUN KUMAR', 'varunkumar.2805@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5016410514, 'Md. Naiyar Alam', 'naiyar3309@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5016412814, 'SAURAV MANN', 'souravmaan1@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5116401513, 'Sanyam Kumar', 'sanyamkumar007@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5116403214, 'Prince Dhiman', 'princed000@gmail.com', '9911484907', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5116404514, 'WILSON XAVIER MINZ ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5116404516, 'VASUNDHARA', 'mvasu2406@gmail.com', '9711549681', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5116410514, 'Ekta Sharma', 'sharma17ekta@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5116412813, 'HARSHIT PAL', 'harshitgoku@gmail.com', '9716629098', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5116412814, 'RAGHAV KUMAR', 'WWW.RAGHAV.KUMAR1994@GMAIL.COM', '9999225054', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5216401513, 'Kislay Raj', 'Kislay Raj', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5216403213, 'TUSHAR  KUMAR', 'tusharkumar886@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5216403214, 'sujit kumar', 'sujeet.sharma2395@gmail.com', '9971879231', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5216404514, 'ABHISKEK', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5216410514, 'Sarthak Rohilla', 'sarthakrohilla03@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5216412813, 'ZAKIR', 'zak.saifi7@gmail.com', '9560458425', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5216412814, 'ABHISHEK KUMAR SINGH', 'abhisheksingh0496@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5316401513, 'Rishabh Narwara', 'Rishabhnarwara95@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5316403213, 'ISHAN  SAIN', 'ishansain27@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5316403214, 'Suhail Riyaz', 'suh24ailriyaz@gmail.com', '9654061081', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5316404514, 'LALIT KUMAR NAGAR', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5316410514, 'Akash Verma', 'smart.akashvermaa@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5316412813, 'PIYUSH VERMA', 'piyushverma955@gmail.com', '8826210542', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5316412814, 'KAVINDER YADAV', 'kavinderyadav16@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5416401513, 'Himanshu Kumar', 'Himanshu Kumar', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5416403214, 'AMIT YADAV', 'amitiscool4u@gmail.com', '9871891337', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5416404514, 'LOVENISH RAJ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5416410514, 'Rishab Sharma', 'rickirishabh4895@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5516401513, 'Naman Jain', 'nj9412869269@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5516403213, 'ANUDIT  VERMA', 'verma.anudit@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5516403214, 'Aman Solanki', 'amysolanki08@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5516404514, 'JENIYA JEPH', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5516404810, 'ANKIT KUMAR', 'ANKIT KUMAR', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(5516410514, 'Anu Sharma', 'anusharma377a@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5516412814, 'ABHIMANYU KUMAR', 'abhimanyuk92@gmail.comy', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5616401513, 'lalit kumar', 'lucky251293@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5616403213, 'ANSHUL  WALIA', 'anshulwalia128@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5616403214, 'Bhunesh Singh ', 'bhunesh34@gmail.com', '9971796246', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5616404514, 'DHARA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5616412813, 'AAYUSH SAINI', 'aayush8895@gmail.com', '9654349730', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5616412814, 'MOHAMMAD RAIYAN', 'yahoo1732@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5716401513, 'ANURAG ', 'anuragb12g@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5716403213, 'Yogesh', 'yogeshmehra68@gmail.com', '8588842818', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5716403214, 'Rakshit solanki', 'rac1909@gmail.com', '+918826512355', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5716404514, 'PRIYANKA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5716410514, 'Gaurav Baisoya', 'gauravbaisoya96@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5716412811, 'VIKASH ', 'VIKASH ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(5716412814, 'KAPIL KUMAR', '0704kapilkumar@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5816401513, 'Ashish Kumar', 'Ashish Kumar', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5816403213, 'ABHISHEK  ', 'abhishekka3193@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5816404514, 'ADITI MEHRA ', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5816410514, 'Jatin Verma', 'jatin95oct@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5816412813, 'PRATEEK DUTT', 'duttprateek1996@gmail.com', '9910411297', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5816412814, 'BHARAT DAGAR', 'bharatdagar10@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5916401513, 'Rahul Sah', 'rahulworkingtim@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5916403214, 'Mohit Yadav', 'yadavmohit0001@gmail.com', '8285721438', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(5916404514, 'CHESHTA PUNJABI', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(5916410514, 'Sawan Jangra', 'sawansavlodhia@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(5916412813, 'TARUN KUMAR', 'tarunk771@gmail.com', '9818314329', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(5916412814, 'ROSHAN KUMAR ', 'ROSHAN KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6016401513, 'Santosh Pant', 'santos.xwolverine@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6016403213, 'RAHUL  MEENA', 'www.rahulmeena100@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6016403214, 'Anurag Kumar', 'anuragk240@gmail.com', '9910770607', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6016404514, 'JYOTI MEENA', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(6016410514, 'Sagar Rooprai', 'sagarrooprai2013@gmail.com', '9999994993', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6016412813, 'LOKESH SHERAWAT', 'lokesharawat@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6016412814, 'ASHWANI', 'ashwani28197@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6116403213, 'KARAN RAJIV PUNDIR', 'lupine.libran@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6116410514, 'Prashant Kumar Singh', 'prashant.kr.singh2@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6116412813, 'NITESH BAJAJ', 'niteshbajaj164@hotmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6116412814, 'KARAMVEER', 'vickynirwal16@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6216403214, 'Parul kumar', 'prlkumar96@gmail.com', '8527978358', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6216410514, 'Rajat Kumar', 'rajat771995@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6216412813, 'KARAN', 'karankashyap111@gmail.com', '8586006768', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6216412814, 'PRASHANT SINGH', 'godisbenevolent@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6316403213, 'ANKIT  KUMAR', 'KUMAR7ANI@GMAIL.COM', '', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6316403214, 'Annie Marandi', 'annie.13anki@gmail.com', '8860058205', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6316410514, 'Prashant ', 'prashantk751@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6316412813, 'UJJWAL BHARGAVA', 'ujjwal71194@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6416403214, 'Ashish', 'ashishraj615@gmail.com', '8285587254', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6416412814, 'MAYANK SINGH', 'mayanksingh98765@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6516403213, 'AKANKSHA  BHALLA', 'akanksha.bhalla@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6516403214, 'Surender Kumar', 'surender7790@gmail.com', '9718305549', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6516410514, 'Sanjay Singh', 'thebboyersam@gmail.com', '7042724201', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6516412813, 'AMOL ISSAC', 'amol.xalxo@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6516412814, 'JAI PRAKASH', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6616403210, 'RAHUL KUMAR', 'RAHUL KUMAR', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(6616412814, 'SAURAV SINGH RANA', 'ranasaurav92@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6716403213, 'KARMA YESHI PHUNTSOK', 'kyp68forever@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6716403214, 'VARUN KUMAR', 'varun96505@gmail.com', '9650580338', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6716410514, 'Vasudha Rajora', 'vasudharajora@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6716412814, 'ANSHUL', 'anshul7471@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6816403213, 'TENZIN   CHONYI', 'tchonyi69@gmail.com', '9953144710', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6816403214, 'Nitish panwar', 'nitishrock26@gmail.com', '9718162077', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6816412813, 'PIYUSH GUPTA', 'HANCY.piyushgupta@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6816412814, 'MAHESH', 'diwakar.mahesh99@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(6916401511, 'Sudeep Chahlia', 'Sudeep Chahlia', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(6916403213, 'TSERING  DHONDUP', 'tdhondup01@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6916403214, 'Bhagyashree', 'shreebhagya3110@gmail.com', '8800650639', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(6916410514, 'Deepanshu Chambok', 'deepanshu20296@gmail.com', '9818206925', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7016403213, 'SIDHARTH  DEWAN', 'sidharthdewan1@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7016403214, 'Sunedh Hedaoo', 'hdemus.hedaoo@gmail.com', '9868462059', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7016410514, 'Mohit Sandhu', 'mohitsandhu98@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7016412811, 'Abhishek ', NULL, NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7016412813, 'KOMAL CHAUDHARY', 'krzzzkomal@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7116403213, 'RISHI  SOOD', 'rishisood16@gmail.com', NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7116403214, 'Kirtika', 'kirtika.chahar@gmail.com', '9953050175', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7116410514, 'Sandeep Tanwar', 'sandeepmtanwar@gmail.com', '9015941977', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7116412814, 'NITIN', 'nitingautam2701@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7216401512, 'SHASHIKANT', 'SHASHIKANT', NULL, 2012, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(7216403213, 'MANEBAYE MARK', 'jamesrobert340@gmail.com', '9711450997', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7216403214, 'Sanidhya Wakdikar', 'sanidhya12@gmail.com', '9555057048', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7216410514, 'Sumit Singwal', 'sumit13singwal@gmail.com', '7838293188', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7216412814, 'DASARI SINDHU', 'dsu.ipu1995@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7316403214, 'Sumit Kumar', 'realsumitkumar@gmail.com', '9650739442', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7316410514, 'Sulabh Jain', 'sulabhjain1604@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7316412814, 'VIVEK KUMAR', 'vivek.sr007@gmail.com', '8377918810', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7416403214, 'Arshad Nasir', 'nasirarshad0208@gmail.com', '7503809974', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7416410514, 'Abhishek Kumar Meena', 'abhishekmeena969@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7416412814, 'Sohil Solanki', 'sahilsolanki32@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7516410514, 'Kushagra Bansal', 'kushagrabansal95@gmail.com', '7836951989', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7516412814, 'SHUBHAM Bansal', 'sbbansal93@gmail.com', '9873194509', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7616412814, 'Shubham Srivastava', 'persistentshubham@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7716403214, 'JATIN RAJANI', 'jatinraj15@gmail.com', '9871748867', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7716410514, 'Aishwarya Gambhir', 'aishwarya.gambhir13@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7816403214, 'Mayank Tyagi', 'mayaanktyagi@gmail.com', ' 91-9718287727', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7816410514, 'Mohit Nagpal', 'nagpalmohit3@gmail.com', '9711122310', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7816412814, 'Shubham', 'shubhamkheraliya111@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(7916403214, 'Madhur Bansal', 'bansal.madhur17@gmail.com', '9811556687', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(7916410514, 'Sudhir Prasad', 'sudhirprasad29@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(7916412814, 'Tanya Jayant', 'tanyajayant27@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8016403214, 'Sukirti Arora ', 'sukirtiarora1996@gmail.com', '7053427752 ', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8016410514, 'Bhavya Gard', 'bhavyagarg199@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(8016412814, 'Mohit Sehgal', 'sehgalrkss@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8116403212, 'Gaurav Jaglan', 'jaglan.gaurav@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(8116403214, 'Sarthak goel', 'Sarthakgoel1995@gmail.com ', '8527108534', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8116412814, 'Sabitra Rudra', 'toshy2say@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8216403214, 'Sameer kumar', 'sameer27995@gmail.com', '9015408972', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8216412814, 'Mridul Gupta', 'gupta.mridul36@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8316403212, 'Yash Jain', 'yashjain1394@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(8316403214, 'Rahul sharma', 'rahulrock0082@gmail.com', '7840816145', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8316410514, 'Simran Sarin', 'simran.sarin.03.ss@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(8316412814, 'Varun Malhotra', 'vrn.malhotra@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8416403214, 'Hemang S Kumar', 'hemansk@gmail.com', '9718368484', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8416412814, 'Somya Chauhan', 'saumya190396@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8516403214, 'arpan kushwaha', 'knightwatchmayday@gmail.com', '9968828315', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8516410514, 'Rishabh Narang', 'rnradon17@gmail.com', '9999688904', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(8516412814, 'Tanya Mmenhani', 'tanay.menghani@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8616403214, 'Akarsh Choudhary', NULL, '8586895856', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(8616410514, 'Shivani Bhutani', 'shivanibhutani9@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(8616412814, 'Sudhir Sharma', 'SHARMASUDHIR233@GMAIL.COM', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(8716410514, 'Hemant Kumar', 'hemant.gt.kumar@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(9116403212, 'NIPUN  GARG', 'nipunfl@gmail.com', '9953809876', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(9516410514, 'Pranav Handoo', 'pranav.handoo@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(9916412811, 'AKASH', 'AKASH', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'ECE', 0, 0),
(10016403212, 'Mayank Pant', NULL, NULL, 2012, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(10116403212, 'TSEWANG  DORJEE', 'tsewangjee@gmail.com', '9910745488', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(10116403215, 'Rajat Maheshwari', 'rajat.usict.101164@ipu.ac.in', '8447828766', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(10216403212, 'BISHWARAJ  CHOURASIA', NULL, NULL, 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(10216403215, 'Abhishek Malik ', 'malikabhishek273@gmail.com', '9818742437', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(10316403215, 'Divyansh', 'divyansh1802@gmail.com', '9650825415', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40016401513, 'Paras Chugh', 'paraschugh6@gmail.com', '1111111111', 2013, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40016403214, 'Sachin Chaudhury', 'sachinchaudhury@gmail.com', '7042422162', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40016404514, 'REGAN TIMSINA (Foreign Student)', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40116401515, 'AMAN MITTAL ', 'sharadmittal52@gmail.com', '8130659989', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40116401516, 'ANUBHAV BANSAL', 'availapanti@gmail.com', '7027379480', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40116403214, 'Tashi Paljor', 'tashi.paljor@ymail.com ', '8447853488', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40116403215, 'PARAS', 'paraswadhwa13@gmail.com', '9215297777', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40116403216, 'Harish kumar', 'Harish kumar', '9468380165', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40116404516, 'SHASHANK SHEKHAR YADAV', 'twinshashank@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40116410514, 'Manish Kumar Gupta ', 'kumarmanish1995130@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40116412815, 'PRANJAL RAJAN ', 'pranjalrajan007@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40116412816, 'HARSH', 'harshj1298@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40216401516, 'TARUN SINGH', 'riosingh@gmail.com', '8745065530', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40216403215, 'DHAWAL BABAR ', 'dhawalbabbar97@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40216403216, 'Kunal Goyal ', 'kunalgoyal.goyal9@gmail.com', '8587836880', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40216404516, 'SHUBHAM SINGH', 'SHUBHAM SINGH', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40216412815, 'ABHISHEK MALIK', 'ABHISHEK MALIK', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40216412816, 'YASH MAHERWAL', 'noni12yash@gmail.com', '9205954730', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40316401515, 'DEEPANSHU MALHOTRA', 'DEEPANSHU MALHOTRA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40316401516, 'HITESH POPLY', 'poply.hitesh@gmail.com', '8059517188', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40316403214, 'Ankit', 'ankitrajpal@hotmail.com', '8373961209', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40316403215, 'SUNNY PARIHAR ', 'sunnyparihar35@gmail.com', '7836079960', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40316403216, 'Rashi Jain', 'jainrashi2804@gmail.com', '9034340676', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40316404515, 'ANADI SAHA', 'anadishah23@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40316404516, 'NITESH KAUSHIK', 'linktonitesh@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40316412815, 'VISHAL GAUD', 'gaudsmack07@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40316412816, 'ASHUTOSH SINGH', 'ashutoshsinghe@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40416401515, 'SATYAM KUMAR ', 'satyamkmr326@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40416401516, 'VISHU TYAGI', 'tyagi.sparky@gmail.com', '8607287966', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40416403214, 'Karishma', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40416403216, 'Gaurav Kumar', 'icon.gaurav806@gmail.com', '9654455897', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40416404515, 'SHUBHAM SINGH ', 'shuvi1235@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40416404516, 'VIVEK DAGAR', 'vivekdagar26@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40416412815, 'SHUBHAM KUMAR ', 'SK9331657@GMAIL.COM', '8447033951', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40416412816, 'AIMAN FATIMA', 'AIMAN FATIMA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40516401515, 'PRERNA SRIVASTAV ', 'prernasrivastav03@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40516401516, 'ABHISHEK UPADHYAY', 'aupadhyay.upadhyay786@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40516403214, 'sneha ghimire', 'snehaghimire12@yahoo.com', '9717432406', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40516403215, 'UTKARSH GARG ', 'utkarsh19031997@gmail.com', '8901069099', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40516403216, 'Chanda', 'chandajyoti1@gmail.com', '9992929477', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40516404515, 'MOHIT ', 'mohitkathuria123@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40516404516, 'PRASHANT SHARMA', 'PRASHANT SHARMA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40516412815, 'SHUBHAM BHARDWAJ', 'shubhambh2311@gmail.com', '7503068752', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40516412816, 'TARUN KUMAR TIWARI', 'tarunkumar20511@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40616401515, 'DIVYANSHU SINGHAL', 'DIVYANSHU SINGHAL', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40616401516, 'JITENDER SINGH PUNIA', 'ddeepu.kumar11@gmail.com', '7503755884', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40616403214, 'Sherap Gyaltsen', 'sheraprabgyal@yahoo.com', '9958865893', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40616403216, 'Sunny Goel', 'goyalsunny888@gmail.com', '8882097631', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40616404515, 'SMRITI AGGARWAL', 'aggarwalsmriti14@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40616412815, 'KRITARTH SHARMA', 'atulyadav.rm@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40616412816, 'POOJA KANDOI', 'pujakandoi06@gmail.com', '9711057170', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40716401515, 'SHUBHAM SHARMA ', 'sharmashubham9800@gmail.com', '9045663544', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40716401516, 'MANVI VARSHNEY', NULL, '8585990669', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40716403214, 'Shourya', 'rajshourya0722@gmail.com', '9582187696', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40716403215, 'KUMAR ANKIT ', 'ankit221505@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40716403216, 'Tarun Goel', 'goeltarun26@gmail.com', '8586001319', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40716404515, 'HIMANSHU', 'raheja944@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40716404516, 'SHUBHAM', 'shbhm96@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40716412815, 'ARJUN SINGLA', 'arjunsinglaunique@gmail.com', '8860466727', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40716412816, 'YASH AGARWAL', 'yashag1804@gmail.com', '9654949636', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40816401516, 'PULKIT PRADEEP GUPTA', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40816403214, 'Akash Kumar', 'akashkumar4503@gmail.com', '9717865383', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40816403215, 'PRABHANSHU GUPTA', 'prabhanshu98@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40816403216, 'Sourabh karnani', 'SOURABH.KARNANI@GMAIL.COM', '9555106654', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40816404515, 'EKAPARNA JHA', 'Jhaekparna@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40816404516, 'ANISHA GOYAL', 'anishagoyal14@gmail.com', '7838282509', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40816412815, 'ADITYA GUPTA ', 'adityagupta803ag@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40816412816, 'RAJAT DENGRA', 'rajatdengra@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40916401516, 'AJEET TRIPATHI', 'ajeetrock1999@gmail.comm', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(40916403215, 'NEIL TYAGI', 'tyagi.neil@hotmail.com', '8126732711', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40916403216, 'Dikshant Rawat', 'dikshantrawat6@gmail.com', '8285991858', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(40916404515, 'SHREYA SHARMA ', 'shreyasharma93.9.11@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40916404516, 'TARUN GARG', 'TARUN GARG', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(40916412815, 'PRAKASH KUMAR ', 'parkash007420@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(40916412816, 'ROHAN TALWAR', 'talwarrohan@yahoo.in', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41016401515, 'AMAN KUMAR ', 'amansharma00a@gmail.com', '9717135501', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41016401516, 'AAYUSHI CHOUDHARY', 'aayushichoudhary.02@gmail.com', '9950141333', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41016403215, 'VIKRAM SINGH PANWAR ', 'vikramsinghpanwar4@gmail.com', '9717544135', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41016403216, 'Akshat Papnoi', 'akshatpapnoi1110@gmail.com', '8439500407', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41016404516, 'DEEPSHIKHA', 'deep0101kaushik@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(41016412815, 'ARJUN KALIA ', 'best.buddy145@gmail.com', '9810533090', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41016412816, 'RITVIK AGRAWAL', 'ritvikagrawal1@gmail.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41116401515, 'PRAGATI LOHIA ', 'PRAGATI LOHIA ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41116401516, 'UJJWAL', 'ujjwal.lohchab7@gmail.com', '7206982874', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41116403215, 'Ritik Kamra', 'ritikkamra2@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41116403216, 'Abhishek Vats', 'yoabhishekvats@gmail.com', '9899515327', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41116412816, 'SHILAJEET BANERJEE', 'sjeetbanerjee907@gmail.com', '9868176407', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41216401515, 'SIDDHARTH SINGH ', 'siddharth.titan@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41216401516, 'DAMANPREET SINGH', 'damanpreetsingh97@gmail.com', '9871531581', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41216403215, 'RITKA KADIAN', 'ritikakadian09@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41216412815, 'SOUMAY GUTPA ', 'soumya.gupta31@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41216412816, 'NAMAN MITTAL', 'naman_nm@yahoo.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41316401515, 'RIYA BHATIA', 'riyabhatia26@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41316401516, 'PRAKHAR KUMAR SRIVASTAVA', 'prakharkumarsrivastav@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41316403215, 'SUBHHAM PRAKASH ', 'chimps.shubham2373@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41316412815, 'SUBHAM', 'upadhyaysachin92@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41316412816, 'PRANAV GAUTAM', 'PRANAV GAUTAM', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41416401515, 'GARGI GOYAL', 'GARGI GOYAL', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41416401516, 'SOURABH MITTAL', 'sourabhm465@gmail.com', '9899980623', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41416403215, 'VAIBHAV GUPTA', 'vaibhavgupta2233@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41416412815, 'UDIT GERA', 'udit.gera98@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41416412816, 'SHIKHAR CHADHA', 'shikharchadha17@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41516401515, 'REYA MAHAJAN ', 'reyamahajan27@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41516403215, 'NAVEEN YADAV', 'yadavnaveen826@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41516412815, 'SAHIL KHAN ', 'sahilkhan480@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41516412816, 'DEEPAK BANSAL', 'DEEPAK BANSAL', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41616401515, 'SHUBHAM MITTAL ', 'shubham2796@gmail.com', '9868880164', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41616403215, 'RAVI KUMAR RANJAN ', 'qwertyravi86@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41616412815, 'BHAVESH PAL', 'palbhavesh2121@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41616412816, 'VANSH GOEL', 'VANSH GOEL', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41716401515, 'BANSI', 'bansibhardwaj97@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41716403215, 'AKASH KUMAR ', 'AKASH KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41716412815, 'MAMTA LUTHRA ', 'mamtaluthra98@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41716412816, 'ROHAN KUMAR DAS', 'ROHAN KUMAR DAS', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41816401515, 'ADITI ANAND ', 'aanandb57@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41816403215, 'SUBHAM VERMA ', 'shubham_boss@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41816412815, 'JATIN CHOUDHARY ', 'choudharyjatin.rathi@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41816412816, 'SAMEER KUMAR', 'sameerjha1997@gmail.com', '9717119124', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0);
INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(41916401515, 'KAMAL ', 'kyzx11@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(41916403215, 'DINESH KUMAR ', 'dineshyadav681@gmail.com', '9136298794', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(41916412815, 'RISHABH KUMAR ', 'rishabh.kumar7@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(41916412816, 'SRISHTEE JAIN', 'srishteejain09@yahoo.in', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42016401515, 'VISHAL CHAUDHARY ', 'vishalch181@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(42016403215, 'PRASHANT SINGH ', 'prashantsingh_13@yahoo.com', '8800102347', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(42016412815, 'AADITYA ARYA ', 'aadityaarya001@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42016412816, 'DEVANSH CHAWLA', 'devanshchawla7@gmail.com', '9643158060', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42116401515, 'ZABBY TAPPA', 'zabby0597@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(42116403215, 'MANJEET KUMAR ', 'MANJEET KUMAR ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(42116412815, 'AAKASH TIKOO', 'akashtikoo@yahoo.co.in', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42116412816, 'AAKASH PARIHAR', 'pariharaakash09@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42216401515, 'HARSH YADAV', 'theharshji9@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(42216412816, 'KARANDEEP SINGH', 'karantaurus15@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42316401515, 'HIMANI MALIK', 'malikhimani20@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(42316412816, 'PRAVEEN SANGWA', 'PRAVEEN SANGWA', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(42416401515, 'HIMANSHU', 'himanshumathur.0000@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(50116404816, 'AKANKSHA TRIVEDI', 'akankshatrivedi.3feb@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(60016403214, 'Saurabh Pahwa', 'saurabhphw@gmail.com', '9711820714', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60016403215, 'Aayush Chaudhary', 'aayushhd10@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60016404815, 'NEHA', NULL, NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(60016410514, 'Harsh Pathak ', 'vatsharsh1@gmail.com', '', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60016412814, 'Anusha Goel ', 'amushagoel1997@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60016412815, 'Apaar Parashar', 'apaarparashar@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60116403214, 'Garima', 'garima007rajput@gmail.com', '7042830672', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60116403215, 'Pranav Malik', 'pranav.sheep@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60116410514, 'Prachi Garg', 'prachi3331@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60116410515, 'SANCHIT', NULL, NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60116412814, 'Soumya Pandey ', 'soumyasoumya.0601@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60216403214, 'neelansh garg', 'neelansh5@gmail.com', '8860430933', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60216403215, 'Manish Yadav', 'manishyadav.nd@gmail.com', '9868453905', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60216410514, 'Manan Narula ', 'mananipu@gmail.com', '9560481916', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60216410515, 'DEVANK', NULL, NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60216412814, 'Priyanka Mittal ', 'mittalpriyanka96@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60316403214, 'Arjun Upmanyu', 'arjun.upmanyu@gmail.com', '8860224623', 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60316403215, 'Deepanshu Malhotra', 'deepanshumalhotra@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60316410514, 'Bhawna', 'bhawnak14@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60316412814, 'Anupriya Dangi', NULL, NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60416401515, 'Vineet Kumar', 'mail', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60416403215, 'Naman Chhabra', 'namanchhabra1311@yahoo.co.in', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(60416410514, 'VINEET', NULL, NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60416412814, 'Suraj Jain ', 'jainsuraj234@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(60516410514, 'SIDDHARTH', NULL, NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(60516412814, 'Shweta Sharma ', 's.shweta.s0004@gmail.com', NULL, 2014, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70116401515, 'AMAH JHA ', 'aman95jha@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70116401516, 'PRAMOD SHAH', 'pramodshah1444@gmail.com', '8802556791', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70116403215, 'RAJEEV RANJAN', 'raj123.sah@gmail.com', '8373990650', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70116403216, 'Anuj bhalla', 'Anuj bhalla', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70116404516, 'Jeevan Prakash Pant', 'jeevanppant@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MCA', 'SE', 0, 0),
(70116404816, 'TENZIN', 'tgaphel2016@gmail.com', NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'CSE', 0, 0),
(70116405315, 'TSERING DHARGYAL', 'TSERING DHARGYAL', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'IT', 0, 0),
(70116412815, 'NIRAJAN JHA', 'n4nirajan@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70116412816, 'Nitesh Kumar Gaurav', 'niteshkumargaurav6@yahoo.com', '', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70216401515, 'TENZIN RINCHEN ', 'TENZIN RINCHEN ', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70216401516, 'SANA', 'khetarpalsana@gmail.com', '9643601772', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70216403215, 'VIKAS ', 'getmevikasgupta@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70216403216, 'Geetanjali Khanna ', 'geetanjalikhanna98@gmail.com', '9650458887', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70216412816, 'Saloni', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70316401515, 'GYANDEEP', 'GYANDEEP', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70316401516, 'RAHUL YADAV', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70316403215, 'TENZIN DAKAR ', 'tenzindakar19@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70316403216, 'Sujata Adhikari', 'speak2sujataadhikari@gmail.com', '8587919866', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70316412816, 'SAMUEL', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70416401515, 'NGAWANG PALJOR', 'paljorngawang@gmail.com', '9810533260', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70416401516, 'DIMPLE', NULL, '9811038358', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70416403215, 'NAGWAY DAPKA', 'keepvidme21@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70416403216, 'Nikit Bhandari ', 'nikit.bhandari@gmail.com', '7838868724', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70416412816, 'MD ISLAM', NULL, NULL, 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'ECE', 0, 0),
(70516401515, 'TENZIN KUNGANG', 'tenkus47@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70516401516, 'ANISH', 'anishsingh2k16@gmail.com', '9205101905', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70516403216, 'Amit Kumar Jha', 'amit.jha120994@gmail.com', '9582630254', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70616401515, 'ENZIN LUNGSANG', 'tiboyz9825@gmail.com', '9643245565', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70616401516, 'SUDIP KUNWAR', 'sudipkunwar1996@gmail.com', '7836956526', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70616403215, 'THUPTEN LAKSHAY', 'keepvidme@yahoo.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70616403216, 'Shiv Raj Bhagat', 'rajshiv169@gmail.com', ' 918744897125', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70716401515, 'ANURAG GUPTA ', 'gupta.anuragkly@gmail.com', '', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70716401516, 'TENZIN', 'kunselaugust@gmail.com', '7210065427', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70716403215, 'LYKA KINRA', 'rythm.kinra@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70716403216, 'Rahul Chaudhry ', 'rahulchaudhry14@gmail.com', '9871044396 ', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70816401515, 'AMAN SOOD ', 'amansood2117@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70816401516, 'ADITYA PANDIT', 'adityaprajapati0099@gmail.com', '9971017650', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70816403215, 'SWETA', 'shwetakarna61@gmail.com', '9810473626', 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70816403216, 'Chetna Agarwal ', 'chetnaagarwal_97@yahoo.com', '9873831329', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70916401515, 'TENZIN ZOMKEY', 'zomkey96@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'IT', 0, 0),
(70916403215, 'TASHI TSERANG', 'ta3tsering@gmail.com', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0),
(70916403216, 'Samba Colley', 'sambacolley455@gmail.com', '9953006738', 2016, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'BTECH', 'CSE', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usict_student_subjects`
--

CREATE TABLE `usict_student_subjects` (
  `enrollment_no` bigint(10) NOT NULL,
  `subject_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usict_student_subjects`
--

INSERT INTO `usict_student_subjects` (`enrollment_no`, `subject_id`) VALUES
(316403215, 11),
(216403215, 11),
(40816403215, 11),
(816403215, 11),
(16403215, 11),
(1016403215, 11),
(316403215, 12),
(216403215, 12),
(40816403215, 12),
(816403215, 12),
(16403215, 12),
(1016403215, 12),
(316403215, 13),
(216403215, 13),
(40816403215, 13),
(816403215, 13),
(16403215, 13),
(1016403215, 13),
(316403215, 14),
(216403215, 14),
(40816403215, 14),
(816403215, 14),
(16403215, 14),
(1016403215, 14);

-- --------------------------------------------------------

--
-- Table structure for table `usict_subject_allocation`
--

CREATE TABLE `usict_subject_allocation` (
  `subject_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `instructor_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `course` varchar(10) NOT NULL,
  `stream` varchar(10) NOT NULL,
  `semester` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usict_subject_allocation`
--

INSERT INTO `usict_subject_allocation` (`subject_id`, `batch_id`, `subject_code`, `instructor_code`, `subject_name`, `type`, `course`, `stream`, `semester`) VALUES
(11, 1, 'HANU-5', '30597', 'hanu', 'THEORY', 'BTECH', 'CSE', 1),
(12, 1, 'IT-15', '30597', 'cryptography', 'THEORY', 'BTECH', 'CSE', 1),
(13, 1, 'IT-996', '30597', 'vhdl', 'THEORY', 'BTECH', 'CSE', 7),
(14, 1, 'HANU-6', '30597', 'testing subject', 'THEORY', 'BBA', 'IT', 6);

-- --------------------------------------------------------

--
-- Table structure for table `usict_teacher`
--

CREATE TABLE `usict_teacher` (
  `instructor_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `date_of_joining` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `isDean` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usict_teacher`
--

INSERT INTO `usict_teacher` (`instructor_id`, `name`, `email`, `phone`, `date_of_joining`, `password`, `designation`, `room_no`, `isDean`) VALUES
('30080', 'Dr Ramakishore', NULL, NULL, '11-02-2000 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30092', 'Dr Bharti Suri', NULL, NULL, '15-07-1999 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30093', 'Dr Sanjay Malik', NULL, NULL, '15-07-1999 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30104', 'Dr Pravin Chandra', NULL, NULL, '12-07-1999 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 0),
('30109', 'Dr C S Rai', NULL, NULL, '09-07-1999 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 0),
('30118', 'Dr BVR Reddy', NULL, NULL, '29-10-1999 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 0),
('30188', 'Dr Naveen Rajpal', NULL, NULL, '26-07-2000 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 0),
('30204', 'Dr Arvinder Kaur', NULL, NULL, '28-11-2000 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 1),
('30220', 'Dr P S Bharti', NULL, NULL, '23-04-2001 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30228', 'Dr Amit Prakash Singh', NULL, NULL, '23-07-2001 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30259', 'Dr. Abha Aggarwal', 'abhaaggarwal27@gmail.com', '9999261618', '13/8/2004', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30286', 'Dr Sartaj Sodhi', NULL, NULL, '06-06-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30296', 'Dr Anjana Gosain', NULL, NULL, '01-08-2002 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Professor', NULL, 0),
('30303', 'Dr Udyan Ghose', NULL, NULL, '25-07-2002 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30445', 'Dr Anju Saha', NULL, NULL, '15-10-2004 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30466', 'Dr Anurag Jain', NULL, NULL, '05-04-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30474', 'Dr Rinkaj Goyal', NULL, NULL, '07-06-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30475', 'Dr Ravindra Purwar', NULL, NULL, '15-06-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30476', 'Dr. Arif Ali Khan', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30491', 'Dr Shuchi Sharma\r\n\r\n\r\n', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('30492', 'Dr Ashish Payal', NULL, NULL, '26-07-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30494', 'Mr Parijat Mathur', NULL, NULL, '14-06-2005 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30536', 'Ms Jyotsna Yadav', NULL, NULL, '02-08-2006 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30543', 'Dr R L Ujjwal', NULL, NULL, '01-09-2006 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30554', 'Mr. Neeleshwar', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('30564', 'Dr M Balakrishna', NULL, NULL, '30-11-2006 |', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30566', 'Ms Reena Gupta', NULL, NULL, '27-11-2006 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30568', 'Dr. Anjana Bagga', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('30585', 'Ms Anuradha Chug', NULL, NULL, '10-08-2007 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30594', 'Dr Gulshan Kumar', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30597', 'Mr Rahul Johari', 'rahul@ipu.ac.in', '9910185349', '05-09-2007 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', 'E 103', 0),
('30610', 'Ms Priyanka Bhutani', NULL, NULL, '04-02-2008 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30617', 'Dr Vandana Nath', NULL, NULL, '17-07-2008 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30618', 'Dr Kamaldeep Kaur', NULL, NULL, '17-07-2008 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30621', 'Dr. Rajiv Ranjan', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30676 ', 'Shilpa Jain\r\n', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('30706', 'Ms Ruchi Sehrawat', NULL, NULL, '23-11-2010 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30707', 'Ms Mansi Jhamb', NULL, NULL, '19-11-2010 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30709', 'Ms Jasprreeti Singh', NULL, NULL, '22-11-2010 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30714', 'Ms Asna Furqan', NULL, NULL, '31-05-2011 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30733', 'Ms Geetanjali Chopra', NULL, NULL, '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30734', 'Ms Shimpee Seema', NULL, NULL, '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30739', 'Ms Khyati Ahlawat', NULL, NULL, '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30740', 'Ms Sonika', NULL, NULL, '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30741', 'Mr Ashish Joshi', 'ashish.j@ipu.ac.in', '9654869700', '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', 'E-602', 0),
('30742', 'Mr Avinash', NULL, NULL, '19-08-2013 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30746', 'Mr Syed Amirrudin', NULL, NULL, '03-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30747', 'Dr Manoj Taleja', NULL, NULL, '30-08-2013 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30750', 'Dr V Vishwakarma', NULL, NULL, '06-09-2013 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assosciate Professor', NULL, 0),
('30759', 'Dr Manoj Satyarthi', NULL, NULL, '10-10-2013 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30761', 'Mr Shiv Ram Meena', NULL, NULL, '20-12-2013 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30762', 'Mr Chakresh', NULL, NULL, '01-01-2014 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30767', 'Ms Shweta Dabas', NULL, NULL, '23-12-2013 |', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30771', 'Ms Priyanka Choudhary', NULL, NULL, '18-03-2014 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30775', 'Mr Onkar', NULL, NULL, '04-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30776', 'Mr Dileep Kumar Dwivedi', NULL, NULL, '04-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30777', 'Mr Pankaj Kumar Singh', NULL, NULL, '04-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30778', 'Mr Kaushik Midya', NULL, NULL, '04-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30779', 'Mr Priyank', NULL, NULL, '04-08-2015 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30793', 'Mr Amrit Pal Singh', NULL, NULL, '30-08-2016 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30794', 'Ms Varsha Sisaudia', NULL, NULL, '31-08-2016 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('30795', 'Ms Anjali Jain', NULL, NULL, '30-08-2016 00:00:00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Assistant Professor', NULL, 0),
('BT300006', 'Mr. Deshraj', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Research Scholar', NULL, 0),
('USICT30002', 'Mr Deepak', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Research Scholar', NULL, 0),
('USICT30003', 'Apeksha Mittal', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Research Scholar', NULL, 0),
('USICT30004', 'Ms Madhuri', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Research Scholar', NULL, 0),
('USICT30005', 'Heena', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'Research Scholar', NULL, 0),
('USICT30006', 'MR. Amit', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('USICT30008', 'MR. SUDESH', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'RESEARCH SCHOLAR', NULL, 0),
('USICT30009', 'BARNALI', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('USICT30010', 'Dr. Amit Rai', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', ' ', NULL, 0),
('USICT30011', 'KP PANDEY', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0),
('USICT30012', 'BARNA SHREE', NULL, NULL, '00/00/00', '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', '.', NULL, 0);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `usict_attendance`
--
ALTER TABLE `usict_attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usict_attendance_subject_id_lecture_times_ce5a8aee_uniq` (`subject_id`,`lecture_timestamp`,`student`),
  ADD KEY `usict_attendance_student_dedd8d49` (`student`);

--
-- Indexes for table `usict_batch_allocation`
--
ALTER TABLE `usict_batch_allocation`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `usict_students`
--
ALTER TABLE `usict_students`
  ADD PRIMARY KEY (`enrollment_no`),
  ADD KEY `usict_students_batch_id_c3d7c0e8` (`batch_id`);

--
-- Indexes for table `usict_subject_allocation`
--
ALTER TABLE `usict_subject_allocation`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `usict_subject_alloca_instructor_code_e0b04125_fk_usict_tea` (`instructor_code`),
  ADD KEY `usict_subject_allocation_batch_id_e17d645d` (`batch_id`);

--
-- Indexes for table `usict_teacher`
--
ALTER TABLE `usict_teacher`
  ADD PRIMARY KEY (`instructor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `usict_attendance`
--
ALTER TABLE `usict_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `usict_subject_allocation`
--
ALTER TABLE `usict_subject_allocation`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `usict_attendance`
--
ALTER TABLE `usict_attendance`
  ADD CONSTRAINT `usict_attendance_student_dedd8d49_fk_usict_stu` FOREIGN KEY (`student`) REFERENCES `usict_students` (`enrollment_no`),
  ADD CONSTRAINT `usict_attendance_subject_id_c0ffb5d8_fk` FOREIGN KEY (`subject_id`) REFERENCES `usict_subject_allocation` (`subject_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
