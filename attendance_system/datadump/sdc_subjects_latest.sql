-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 07:17 PM
-- Server version: 5.7.20
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdc`
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
(36, 'Can delete usict subject allocation', 12, 'delete_usictsubjectallocation'),
(37, 'Can add usict subjects', 13, 'add_usictsubjects'),
(38, 'Can change usict subjects', 13, 'change_usictsubjects'),
(39, 'Can delete usict subjects', 13, 'delete_usictsubjects');

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
(13, 'deandashboard', 'usictsubjects'),
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
(24, 'deandashboard', '0011_auto_20180130_0356', '2018-01-29 22:26:55.612388'),
(27, 'deandashboard', '0012_usictsubjects', '2018-03-27 20:44:53.323568');

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
('HhSnjUr8-5zBaqZwVh_olnF9XKAVk6Uu', 1524078612, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":{\"id\":\"30597\",\"school\":\"usict\",\"isTeacher\":true,\"isStudent\":false}}}');

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
(112, 'Zakir', NULL, NULL, 2013, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'ECE', 0, 0),
(1812, 'Rohit', NULL, NULL, 2012, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'IT', 0, 0),
(5810, 'Ajay', NULL, NULL, 2010, '4cfad776129962ee7c36839a1e3e15', 'MTECH', 'CSE', 0, 0),
(11618715, 'BAKUL CHAWLA', 'BAKUL CHAWLA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(21618715, 'ANKUR BHARGAVA', 'ANKUR BHARGAVA', NULL, 2015, '$2a$08$TqHk4godBQ/ouxSrFtd3yuWGfo39JvS9KNaGOsSsOBnDljPvAe27y', 'MTECH', 'RA', 0, 0),
(31618715, 'KOMAL GEHANI', 'KOMAL GEHANI', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(41618715, 'ASHIS YADAV', 'ASHIS YADAV', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(51618715, 'MEGHA ', 'MEGHA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(61618715, 'AISHWARYA SHARMA', 'AISHWARYA SHARMA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(71618715, 'BRIJENDRA KUMAR SHARMA', 'BRIJENDRA KUMAR SHARMA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(81618715, 'ANJANI KUMAR ', 'ANJANI KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(91618715, 'RIMJHIM KUMARI', 'RIMJHIM KUMARI', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(101618715, 'RAHUL SARASWAT', 'RAHUL SARASWAT', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(111618715, 'MADHU YADAV', 'MADHU YADAV', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(116401513, 'Sarthak Agrawal', 'asarthak06@gmail.com', '1111111111', 2013, 'llzeoy80rO', 'BTECH', 'IT', 0, 0),
(116401516, 'AASHISH JAIN', 'aashishjain.98@gmail.com', '9953004438', 2016, 'ARwPjjGKsT', 'BTECH', 'IT', 0, 0),
(116403215, 'AAKASH MADAN', 'madan.aakash2@gmail.com', NULL, 2015, '*oSKhpQezY', 'BTECH', 'CSE', 0, 0),
(116403216, 'Aakash Gupta', 'guptaaakash272@gmail.com', '9810977340', 2016, 'GBMTOBOCLp', 'BTECH', 'CSE', 0, 0),
(116404514, 'PRAJJWAL SINGH ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(116404515, 'AAKASH GILL', 'aakashgill210@gmail.com', '', 2015, 'z4Wtzp8Qy8', 'MCA', 'SE', 0, 0),
(116404516, 'AADESH KUMAR', 'AADESH KUMAR', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(116404815, 'GOPAL SINGH TAWAT', 'GOPAL SINGH TAWAT', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(116404816, 'NEHA SRIVASTAVA', 'srivastava.neha46@yahoo.in', NULL, 2016, '2KyAPxctVv', 'MTECH', 'CSE', 0, 0),
(116405315, 'AKANKSHA BHARDWAJ', 'AKANKSHA BHARDWAJ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(116405316, 'SHUBHAM  GUPTA', 'shubhamgupta091193@gmail.com', NULL, 2016, 'FOEPgH2Oa2', 'MTECH', 'IT', 0, 0),
(116412811, 'ANURAG', 'ANURAG', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(116412813, 'MAYANK BANSAL', 'mastermind0368@gmail.com', '8826306428', 2013, 'vw1Lm0JAii', 'BTECH', 'ECE', 0, 0),
(116412816, 'AMAN BHARDWAJ', 'amanbhardwaj1997@gmail.com', '9654047023', 2016, 'Kd24vt0wKU', 'BTECH', 'ECE', 0, 0),
(116414215, 'PRIYA PANWAR ', 'PRIYA PANWAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(116418715, 'BAKUL CHAWLA', 'bakul.chwala50@gmail.com', '9999130160', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(116418716, 'Tushar Sharma ', 'tusharma1510@gmail.com', NULL, 2016, 'FKEm#MUCSQ', 'MTECH', 'RA', 0, 0),
(121618715, 'AKHILESH KUMAR SHARMA', 'AKHILESH KUMAR SHARMA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(216401513, 'ANURAG GUPTA', 'anuraggupta.0607@gmail.com', '1111111111', 2013, 'MQR5WkKG3L', 'BTECH', 'IT', 0, 0),
(216401516, 'ABHISHEK', 'abhishek23021999@gmail.com', '7042956079', 2016, 'f#59p7HnY*', 'BTECH', 'IT', 0, 0),
(216403213, 'VARUN SINGH SAHU', 'singhvarun404@gmail.com', NULL, 2013, 'AEnejTC*tY', 'BTECH', 'CSE', 0, 0),
(216403214, 'Karthik R Prakash', 'gestureg@gmail.com', '9811560657', 2014, 'aVf19HU1Hm', 'BTECH', 'CSE', 0, 0),
(216403215, 'AKAH PRAJAPAT', 'akashprajapat6891@gmail.com', NULL, 2015, 'Wpdl6J5O*Q', 'BTECH', 'CSE', 0, 0),
(216403216, 'Aaskane B. C. Dogra', 'aaskanedogra@gmail.com', '9971720898', 2016, 'iAsnR5ycGD', 'BTECH', 'CSE', 0, 0),
(216404514, 'BHARAT SHARMA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(216404515, 'AAKASH SHRESHTA', 'aakashreshta@gmail.com', '8527057694', 2015, 'SvPUYtPkCA', 'MCA', 'SE', 0, 0),
(216404516, 'AANCHAL MALHOTRA', 'aanchal_0702@yahoo.com', NULL, 2016, 'RHmax4jiHr', 'MCA', 'SE', 0, 0),
(216404815, 'HARSH VARDHAN ', 'HARSH VARDHAN ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(216404816, 'ASHWANI  KUMAR', 'ASHWANI  KUMAR', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(216410514, 'Ujjwal Talluri', 'ujjwal1talluri@gmail.com', NULL, 2014, 'YW6xF55XGf', 'BTECH', 'IT', 0, 0),
(216410515, 'AKSHAY SHARMA', 'akkiakki28@gmail.com', NULL, 2015, 'oRIbjyt84P', 'BTECH', 'IT', 0, 0),
(216412813, 'PRIYADARSHAN', 'pd4184@gmail.com', '9015274330', 2013, 'M5gDikqNXN', 'BTECH', 'ECE', 0, 0),
(216412814, 'VIKRAM GOSAIN', 'vikramgosain2@gmail.com', NULL, 2014, 'uRoE8lwxyD', 'BTECH', 'ECE', 0, 0),
(216412816, 'ANIMESH SHARMA', 'animesh11197@gmail.com', NULL, 2016, 'BLdarkOxN9', 'BTECH', 'ECE', 0, 0),
(216414215, 'RAHUL KUMAR ', 'RAHUL KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(216414216, 'MANJU  RANA', 'manjurana.leo@gmail.com', NULL, 2016, 'KzVXT*MgQL', 'MTECH', 'ECE', 0, 0),
(216418715, 'ANKUR BHARGAVA', 'iamankurbhargava@gmail.com', '8510002671', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(216418716, 'Gaurav Suryan ', 'suryangaurav@gmail.com', '9013738029', 2016, 'rsGKbpObjC', 'MTECH', 'RA', 0, 0),
(316401513, 'Sahil Madan', 'sahilmadan94@gmail.com', '9654296410', 2013, 'Y6LRhLNGUn', 'BTECH', 'IT', 0, 0),
(316401516, 'ABHISHEK ARORA', 'abhishekarora057@gmail.com', '8527729779', 2016, 'U#5a#hF4p5', 'BTECH', 'IT', 0, 0),
(316403213, 'ROHIT   GARG', 'RG.ROHIT@HOTMAIL.COM', '9999814499', 2013, 'cLqWRV2xst', 'BTECH', 'CSE', 0, 0),
(316403214, 'Anmol Kohli', 'anmolkohli.07@gmail.com', '', 2014, 'nOhtRojeD6', 'BTECH', 'CSE', 0, 0),
(316403215, 'AKASH AGRAWAL ', 'akashagrawalbest@gmail.com', NULL, 2015, '*VXZM2r', 'BTECH', 'CSE', 0, 0),
(316403216, 'Abhishek Kumar', 'abhikumarbaghela@gmail.com', '9871981908', 2016, 'LSsAeZKaY*', 'BTECH', 'CSE', 0, 0),
(316404514, 'RAVI KUMAR SINGH ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(316404516, 'ABHISHEK', 'abhishekmorwal59@gmail.com', '9971936044', 2016, 'cG1EpGx5dw', 'MCA', 'SE', 0, 0),
(316404815, 'SANDEEP KUMAR ', 'SANDEEP KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(316405315, 'TRAPTI SINGH', 'TRAPTI SINGH', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(316410515, 'ANMOL JAIN ', 'anmol97j@gmail.com', '8743099301', 2015, 'uA5PByCFIy', 'BTECH', 'IT', 0, 0),
(316412813, 'ROHIT', 'rrohitcchaudhary@gmail.com', '9990480554', 2013, 'ech8K1506I', 'BTECH', 'ECE', 0, 0),
(316412814, 'SHIVI JINDAL', 'shivijindal27@gmail.com', NULL, 2014, 'J9#4NmI5ah', 'BTECH', 'ECE', 0, 0),
(316412815, 'AKSHAT JAIN ', 'akshat.jain957@gmail.com', NULL, 2015, 'efOmcyHnvL', 'BTECH', 'ECE', 0, 0),
(316412816, 'ANKIT MEENA', 'am4190634@gmail.com', NULL, 2016, 'rgKTLYIaUI', 'BTECH', 'ECE', 0, 0),
(316414216, 'NEHA', 'neha9312chaudhary@gmail.com', NULL, 2016, 'CLFIahvP9w', 'MTECH', 'ECE', 0, 0),
(316418715, 'KOMAL GEHANI', 'komal.0110@yahoo.com', '9821736616', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(316418716, 'Amita Kumari ', 'AMITAKUMARI102@GMAIL.COM', NULL, 2016, '7eXG4TWcZr', 'MTECH', 'RA', 0, 0),
(416401513, 'SAJAL JINDAL', 'sajalsjddn@gmail.com', '1111111111', 2013, 'xokqFLelLn', 'BTECH', 'IT', 0, 0),
(416401516, 'ABHISHEK KHANDELWAL', 'abhishekkhandelwal71297@gmail.com', '9555461689', 2016, 'bRx2ArHe46', 'BTECH', 'IT', 0, 0),
(416403213, 'SIDDHARTH   GUPTA', 'siddharthgupta234@gmail.com', NULL, 2013, 'J4Zlp95sPv', 'BTECH', 'CSE', 0, 0),
(416403215, 'ARUN MALIK', 'n00bkillinganon@gmail.com', NULL, 2015, '1UtauhGdO9', 'BTECH', 'CSE', 0, 0),
(416403216, 'Akshit Beck', 'akbeck.beck7@gmail.com', '8447076710', 2016, 'Ce7eq2Lxdr', 'BTECH', 'CSE', 0, 0),
(416404514, 'JEEKA KRISHNA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(416404515, 'ABHISHEK CHOUDHARY', 'abhishek1311choudhary@gmail.com', NULL, 2015, 'Kkp1SHWYTK', 'MCA', 'SE', 0, 0),
(416404516, 'ABHISHEK KUMAR SHARMA', '1994.abhishekvats@gmail.com', '9958004924', 2016, 'K*pUAc8Xq0', 'MCA', 'SE', 0, 0),
(416404815, 'ROHIT VASHIST', 'ROHIT VASHIST', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(416405315, 'KANIKA GUPTA', 'KANIKA GUPTA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(416405316, 'ANNANYA BANSAL', 'annanyabansal55@gmail.com', NULL, 2016, '9Ktkqtwdsn', 'MTECH', 'IT', 0, 0),
(416410514, 'Rohit Chugh', 'rohitchugh.95@gmail.com', NULL, 2014, '6KtAY332*U', 'BTECH', 'IT', 0, 0),
(416412814, 'BANDANA PRASAD', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(416412815, 'ATUL SINGH ', 'atulsingh.rmcf@gmail.com', NULL, 2015, 'XUglnLhsCu', 'BTECH', 'ECE', 0, 0),
(416412816, 'ANKUSH CHOUDHARY', 'ankush.choudhary81@gmail.com', '9015366988', 2016, 'y8A75etNN*', 'BTECH', 'ECE', 0, 0),
(416414215, 'AMIT DAS', 'AMIT DAS', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(416414216, 'CHAVI SRIVASTAVA', 'chavi.srivastava.19@gmail.com', '9911188440', 2016, 'CmNaV67skH', 'MTECH', 'ECE', 0, 0),
(416418715, 'ASHEESH YADAV', 'aasheeshmae@gmail.com', '9013310269', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(416418716, 'Manish Kumar ', 'manishkumareeedelhi@gmail.com', NULL, 2016, 'LhS4R2YoRS', 'MTECH', 'RA', 0, 0),
(516401513, 'Yatharth Thakur', 'Yatharth Thakur', '1111111111', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(516401516, 'ADITYA PUSHKAR', 'adityapushkar100@gmail.com', '7827755911', 2016, 'A*9G7PadYU', 'BTECH', 'IT', 0, 0),
(516403213, 'SHREY  ANAND', 'shrey.anand@ymail.com', NULL, 2013, 'vCV8FVo6NO', 'BTECH', 'CSE', 0, 0),
(516403214, 'Anurag', 'anuragsidana22@gmail.com', '9990481479', 2014, 'wy2CQyXwp*', 'BTECH', 'CSE', 0, 0),
(516403215, 'AVINASH ANAND ', 'avimeaurmain@gmail.com', NULL, 2015, 'zzBL7JrOf#', 'BTECH', 'CSE', 0, 0),
(516403216, 'Anuj Kumar Mishra ', 'anujkmishra61098@gmail.com', '9899860226', 2016, 'ga7tHVEO82', 'BTECH', 'CSE', 0, 0),
(516404514, 'PRASHAN RAWAT ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(516404515, 'AKSHAY KUMAR', 'akshaykumar00769@gmail.com', '8092719010', 2015, 'c7QuYqDOtX', 'MCA', 'SE', 0, 0),
(516404516, 'ADITYA KUMAR', 'adityasharma2630@gmail.com', NULL, 2016, 'gyUqZWKgf7', 'MCA', 'SE', 0, 0),
(516404815, 'SAANCHI SARDANA', 'SAANCHI SARDANA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(516404816, 'SAIJAL  GUPTA', 'offs.ipu2017@gmail.com', NULL, 2016, 'fVfnScN*02', 'MTECH', 'CSE', 0, 0),
(516405315, 'PUSHKAR PUSHAP', 'PUSHKAR PUSHAP', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(516405316, 'SAMAN  AHMED', 'saman.ahmed17@gmail.com', NULL, 2016, 'vLfRVqWdEi', 'MTECH', 'IT', 0, 0),
(516410514, 'Dhruv Mehanditratta', '186dkm@gmail.com', NULL, 2014, '9bAVtFq3vY', 'BTECH', 'IT', 0, 0),
(516410515, 'DEVANG GUPTA ', 'devang2497@gmail.com', NULL, 2015, 'CBEU0J0kIe', 'BTECH', 'IT', 0, 0),
(516412816, 'CHANDRA SHEKHAR', 'shekharshukla932@gkail.com', NULL, 2016, 'CrKV77#', 'BTECH', 'ECE', 0, 0),
(516414215, 'BHAVIKA ', 'BHAVIKA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(516414216, 'MRINALINI  SHARMA', 'mileesharma911@gmail.com', NULL, 2016, 'f7*Q7vYCOp', 'MTECH', 'ECE', 0, 0),
(516418715, 'MEGHA SHARMA', 'megha.sh2231@gmail.com', '9990461975', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(516418716, 'Vishal Gautam ', 'vishalgautambhoot104@gmail.com', NULL, 2016, 'ZHuu9AGode', 'MTECH', 'RA', 0, 0),
(616401513, 'Vatsal Bajpai', 'science.vats@gmail.com', '1111111111', 2013, 'arAurCCHzr', 'BTECH', 'IT', 0, 0),
(616401516, 'AKASH RAZDAN', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(616403214, 'Chaitanya', 'Chaitanya19795@gmail.com', '8447671314', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(616403215, 'AYUSH GIRI', 'ayushgiri23@gmail.com', NULL, 2015, 'XLJBf6An18', 'BTECH', 'CSE', 0, 0),
(616403216, 'Ayush Thakur', 'ayushthakur554@gmail.com', '9582677175', 2016, 'OcWJcB#qEy', 'BTECH', 'CSE', 0, 0),
(616404515, 'AMAR KUNAL', 'kunalanand239@gmail.com', NULL, 2015, 'DDCOl28ZLN', 'MCA', 'SE', 0, 0),
(616404516, 'ALANKIT BAWEJA', 'alankitb@gmail.com', NULL, 2016, '7tiTZ7#D5t', 'MCA', 'SE', 0, 0),
(616404815, 'SHREYA KHURANA', 'SHREYA KHURANA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(616404816, 'ABHISHEK  SHARMA', 'abhishek.4496@gmail.com', NULL, 2016, 'Qf8Xg3z3yk', 'MTECH', 'CSE', 0, 0),
(616405315, 'ANIRUDRA DIWAKAR ', 'ANIRUDRA DIWAKAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(616405316, 'CHIRAG  MITTAL', 'CHIRAG  MITTAL', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(616410515, 'DHEER GULATI', 'dheergulati12@gmail.com', '8901310005', 2015, 'iGNNUNBXYn', 'BTECH', 'IT', 0, 0),
(616412813, 'RAJAT NAGPAL', 'rajatblckd@gmail.com', '9990428760', 2013, 'lYi5YqT32F', 'BTECH', 'ECE', 0, 0),
(616412814, 'SUMAKAR K V S ', 'sumakarkvs@gmail.com', NULL, 2014, '2v5cJSpEQM', 'BTECH', 'ECE', 0, 0),
(616412816, 'DEEPAK KUMAR SHARMA', 'ds191910@gmail.com', NULL, 2016, 'Bblm0rg', 'BTECH', 'ECE', 0, 0),
(616414216, 'ANKIT CHAND', 'ankitchand10@gmail.com', NULL, 2016, 'WIH00oKRID', 'MTECH', 'ECE', 0, 0),
(616418715, 'AISHWARYA SHARMA', 'aishwarya.sharma157@gmail.com', '9717219665', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(616418716, 'Vandita Rana ', 'Vandita Rana ', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(716401516, 'AKSHAY SHARMA', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(716403213, 'AMAN KUMAR JHA', 'mail.amanjha@gmail.com', NULL, 2013, '2eB0H5Dv98', 'BTECH', 'CSE', 0, 0),
(716403214, 'Satyam', 'satyamrai2606@gmail.com', '8285711479', 2014, 'QACbHk6tkL', 'BTECH', 'CSE', 0, 0),
(716403216, 'Chandril Bhardwaj ', 'Chandril Bhardwaj ', '9911700695', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(716404514, 'RAHUL TYAGI ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(716404515, 'AMIT KUMAR SINGH ', 'amittomar991@gmail.com', NULL, 2015, 'SMkJLnr8gC', 'MCA', 'SE', 0, 0),
(716404516, 'ALOK JHA', 'jhaalok51@yahoo.in', NULL, 2016, 'f*cgTK646F', 'MCA', 'SE', 0, 0),
(716404815, 'ANIKA ', 'ANIKA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(716404816, 'AKANKSHA  KOCHHAR', 'akankshakochhar14@gmail.com', NULL, 2016, 'GtWj9QhlD8', 'MTECH', 'CSE', 0, 0),
(716405316, 'SWATI', 'tanwarswati05@gmail.com', NULL, 2016, '7VnMGLeS2j', 'MTECH', 'IT', 0, 0),
(716412813, 'ROHAN BANGA', 'bangarohan@gmail.com', '7838746648', 2013, 'lQaJq2BDqc', 'BTECH', 'ECE', 0, 0),
(716412814, 'PRANAV NAGPAL', 'pranavnagpal97@gmail.com', NULL, 2014, 'reLWiJWJdC', 'BTECH', 'ECE', 0, 0),
(716412815, 'BHUPESH KUMAR ', 'bhupesh.kalher1997@gmail.com', NULL, 2015, '9SmsKtuhOd', 'BTECH', 'ECE', 0, 0),
(716412816, 'DHEERAJ TAILOR', 'dheerajtailor07@gmail.com', NULL, 2016, 'RlB*sJnu0q', 'BTECH', 'ECE', 0, 0),
(716414215, 'AKHIL KUMAR ', 'AKHIL KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(716414216, 'MEENAKSHI', 'meenakshim0023@gmail.com', NULL, 2016, 'HU7Aoraq81', 'MTECH', 'ECE', 0, 0),
(716418715, 'BRIJENDRA KUMAR SHARMA', 'brijendrathelegend@gmail.com', '7503839080', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(716418716, 'Krittika', 'Krittika', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(816401516, 'AMAN KALRA', 'amankalra835@gmail.com', '8506895051', 2016, 'ciZlrsEBDp', 'BTECH', 'IT', 0, 0),
(816403214, 'KARAN SOOD', 'ksood122333@gmail.com', '9971194873', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(816403215, 'DEEKSHA NAYAR', 'nayar.deeksha25@gmail.com', '9810397413', 2015, 'jBPTlXTO72', 'BTECH', 'CSE', 0, 0),
(816403216, 'Chirag Gupta ', 'chiraggupta7991@gmail.com', '9953592254', 2016, 'HvQdV1j9yx', 'BTECH', 'CSE', 0, 0),
(816404514, 'ASHISH GUPTA ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(816404515, 'ANSHIKA', 'dabas.anshika@gmail.com', NULL, 2015, 'rHOitySivY', 'MCA', 'SE', 0, 0),
(816404516, 'ANJALI JUNEJA', 'ajuneja93@gmail.com', NULL, 2016, 'KEVU14qUN2', 'MCA', 'SE', 0, 0),
(816404815, 'NEHA GARG', 'NEHA GARG', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(816404816, 'GARIMA', 'garimamogha1008@gmail.com', '', 2016, 'ivOCgTZUaK', 'MTECH', 'CSE', 0, 0),
(816405316, 'SWATI REHAL', 'SWATI REHAL', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(816410514, 'Shubham Juneja', 'shubhamjuneja11@gmail.com', NULL, 2014, 'kWQRGrd14A', 'BTECH', 'IT', 0, 0),
(816412813, 'NIRLESH SINGH', 'nirleshsinghchandel@gmail.com', '9555899705', 2013, '5hFWZ3dLzL', 'BTECH', 'ECE', 0, 0),
(816412814, 'AMANPREET SINGH', 'aman06singh@gmail.com', NULL, 2014, 'S42R#FyZ#P', 'BTECH', 'ECE', 0, 0),
(816412815, 'DEEPAK KUMAR ', 'dK180398@gmail.com', NULL, 2015, 'JjqBnxLkD#', 'BTECH', 'ECE', 0, 0),
(816412816, 'DHRUV PRATAP SINGH', 'karldot1997@gmail.com', NULL, 2016, 'E6IgLb4RNz', 'BTECH', 'ECE', 0, 0),
(816414215, 'NEHA ', 'NEHA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(816414216, 'ADITYA SURYAN', 'ADITYA SURYAN', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(816418715, 'ANJANI KUMAR', 'kumaranjani902@gmail.com', '7557695716', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(816418716, 'Annu Verma ', 'annuverma.21@gmail.com', '9911385381', 2016, 'SyaQL0Mxbf', 'MTECH', 'RA', 0, 0),
(916401513, 'SATYAM SEHGAL', 'satyams407@gmail.com', '1111111111', 2013, 'HT#g0ReDaV', 'BTECH', 'IT', 0, 0),
(916401516, 'AMIT MOHAN', 'amitmohan98@gmail.com', '8130230868', 2016, 'HfWBMlLlZ*', 'BTECH', 'IT', 0, 0),
(916403216, 'Divij Handa', 'divij.handa.2010@gmail.com', '9811669647', 2016, 'eZhLbnHJjq', 'BTECH', 'CSE', 0, 0),
(916404514, 'ASHISH AGGARWAL ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(916404515, 'ANUBHA SASANK', 'anubha.sasank@gmail.com', NULL, 2015, 'ROdQXPt9UI', 'MCA', 'SE', 0, 0),
(916404516, 'ANKUR SINGH', 'ankursajwan10@gmail.com', NULL, 2016, '3jVLQ0p8E3', 'MCA', 'SE', 0, 0),
(916404815, 'UMME AIMAN ', 'UMME AIMAN ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(916404816, 'KHUSHBOO  KUMARI', 'khushi.mishra.in@gmail.com', NULL, 2016, 'cKufwMrrWn', 'MTECH', 'CSE', 0, 0),
(916405315, 'ABHISHEK GUPTA', 'ABHISHEK GUPTA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(916405316, 'MANISHA SINGH', 'manisep28@gmail.com', '8826573306', 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(916410514, 'Mugdha Garg', 'mugdha.dec@gmail.com', NULL, 2014, 'iwL0qyUWbv', 'BTECH', 'IT', 0, 0),
(916412813, 'AMIT RANJAN', 'ranjanamit179@gmail.com', NULL, 2013, 'B9*HIjCHAL', 'BTECH', 'ECE', 0, 0),
(916412815, 'DEEPAK PRAKASH ', 'deepakprakash2811@gmail.com', '', 2015, 'wZtpApp4x4', 'BTECH', 'ECE', 0, 0),
(916412816, 'GAURAV SEHRA', 'GAURAV SEHRA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(916414215, 'PARCHI GUPTA ', 'PARCHI GUPTA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(916414216, 'DEEPANSHU KATHURIA', 'deepanshu_kathuria93@yahoo.com', NULL, 2016, 'Qvgo0ZKc11', 'MTECH', 'ECE', 0, 0),
(916418715, 'RIMJHIM KUMARI', 'rimjhim.kumari957@gmail.com', '880217782', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(916418716, 'Rohit Kumar Das', 'mailrohitwalia@gmail.com', NULL, 2016, 'lIS1l*qXPl', 'MTECH', 'RA', 0, 0),
(1016401513, 'Abhijeet Chaudhary', 'Chaudhary.raj.ab1994@gmail.com', '1111111111', 2013, 'XcymzySe7T', 'BTECH', 'IT', 0, 0),
(1016401516, 'ANANT KUMAR JAIN', NULL, '9650097542', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(1016403215, 'HANU GAUTAM ', 'gautamhanugautam@yahoo.com', NULL, 2015, '*cOgdBbb0U', 'BTECH', 'CSE', 0, 0),
(1016403216, 'Gaurav ', 'gauravlochab487@gmail.com', '8222022505', 2016, '50b#K9Jtff', 'BTECH', 'CSE', 0, 0),
(1016404516, 'ANUJ DUGGAL', 'anujduggal16@gmail.com', '9211029373', 2016, 'CJOFIQM2T3', 'MCA', 'SE', 0, 0),
(1016404815, 'JATIN GEMINI', 'JATIN GEMINI', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1016404816, 'VISHAL', 'vish.gupta18@gmail.com', '', 2016, 'iQwVi0Pjky', 'MTECH', 'CSE', 0, 0),
(1016405315, 'SHOBHIT RAWAT', 'SHOBHIT RAWAT', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1016405316, 'PRERNA AWASTHI', 'prernaawasthi5@gmail.com', '8130508797', 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1016410514, 'Aseem Chopra', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(1016412813, 'ADITYA SETHI', 'adityasethi956@gmail.com', '8588019177', 2013, 'i38h6TdIfw', 'BTECH', 'ECE', 0, 0),
(1016412815, 'GAURAV DAGAR ', 'gauravd169@gmail.com', '9958446195', 2015, 'sbZJuf*r00', 'BTECH', 'ECE', 0, 0),
(1016412816, 'HIMANSHU', 'singhhimanshu730@gmail.com', NULL, 2016, 'hdccNNQgZ#', 'BTECH', 'ECE', 0, 0),
(1016414215, 'ABHISHEK TIWARI ', 'ABHISHEK TIWARI ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1016414216, 'ANTRIKSH SHARMA', 'antrikshsharma05@gmail.com', NULL, 2016, 'Yoda5bmV#l', 'MTECH', 'ECE', 0, 0),
(1016418715, 'RAHUL SARASWAT', 'rahul.saraswat26@gmail.com', '9015518911', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(1016418716, 'Kunal Sharma ', 'Kunal Sharma ', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(1116401513, 'Piyush Bhandula', 'pbhandula25@gmail.com', '1111111111', 2013, 'QvloPqOMMg', 'BTECH', 'IT', 0, 0),
(1116401516, 'BHAWANA', 'bhavi.otti1704@gmail.com', '7042873647', 2016, '4lZcgBA51k', 'BTECH', 'IT', 0, 0),
(1116403214, 'Vihang Sharma', 'vihang.sharma95@gmail.com', '8826661597', 2014, '1wLfuhMZax', 'BTECH', 'CSE', 0, 0),
(1116403216, 'Gautam Martolia', 'ghostgr07@gmail.com', '7838590968', 2016, 'YVl8nwLt5K', 'BTECH', 'CSE', 0, 0),
(1116404514, 'PRATIK BHARDWAJ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1116404516, 'ARSALA SALEEM', 'arslawar31@gmail.com', NULL, 2016, 'PtGSwgNvvR', 'MCA', 'SE', 0, 0),
(1116404815, 'ANURADHA SHARMA ', 'ANURADHA SHARMA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1116404816, 'BHAVYA  AGRAWAL', 'bhavs.agr@gmail.com', '9911912298', 2016, '8RMyNacHNX', 'MTECH', 'CSE', 0, 0),
(1116405315, 'SHIVANI GUPTA', 'SHIVANI GUPTA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1116405316, 'ARUSHI GUPTA', 'arushigupta071@gmail.com', NULL, 2016, 'x1YZaM5RWA', 'MTECH', 'IT', 0, 0),
(1116410514, 'Prafful Gupta', 'praffulgpt8@gmail.com', NULL, 2014, 'anmUJMIg6v', 'BTECH', 'IT', 0, 0),
(1116412813, 'AMAN GUPTA', 'todayis20092016@gmail.com', '9968833085', 2013, 'GWNjdK52R9', 'BTECH', 'ECE', 0, 0),
(1116412814, 'ADARSH KUMAR SINGH', 'adarshdevil225@gmail.com', NULL, 2014, 'migyvpp#eg', 'BTECH', 'ECE', 0, 0),
(1116412815, 'GURPREET SING MARWAH ', 'gurpreet.201996@gmail.com', NULL, 2015, 'dQGItwz7C2', 'BTECH', 'ECE', 0, 0),
(1116412816, 'HIMANSHU BHORIA', 'HIMANSHU BHORIA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(1116414215, 'KRISHNA MEENA ', 'KRISHNA MEENA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1116414216, 'NIHARIKA VASUDEVA', 'vasudeva.niharika@gmail.com', NULL, 2016, 'sQYPwcg4OW', 'MTECH', 'ECE', 0, 0),
(1116418715, 'MADHU YADAV', 'madhuyadav900@gmail.com', '9971212726', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(1116418716, 'Harshit Varshney ', 'harshney29@gmail.com', '9458584400', 2016, 'FBfdjD#k5a', 'MTECH', 'RA', 0, 0),
(1216401513, 'Kushagra Bhandari', 'kb.lowenhart@gmail.com', '1111111111', 2013, 'dcFvy2uYg3', 'BTECH', 'IT', 0, 0),
(1216401516, 'DALIMA GARG', 'gargdalima30@gmail.com', '8130892779', 2016, 'ZvFp4yv9D5', 'BTECH', 'IT', 0, 0),
(1216403213, 'PULKIT   BHATIA', 'pulkit4tech@gmail.com', NULL, 2013, 'Xh5Fe*fC9#', 'BTECH', 'CSE', 0, 0),
(1216403214, 'Bazil ahmed', 'bazilahmedia@gmail.com', '8285988305', 2014, 'q7zVmxjvzB', 'BTECH', 'CSE', 0, 0),
(1216403215, 'HIMANSHU BHANDARI ', 'hbhandari098@gmail.com', NULL, 2015, '5UolLHw15*', 'BTECH', 'CSE', 0, 0),
(1216403216, 'Gokul josi', 'gokuljoshi15121998rs@gmail.com', '8377056583', 2016, '3FZ2V0tJK1', 'BTECH', 'CSE', 0, 0),
(1216404514, 'SURENDER SINGH ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1216404516, 'AYUSHI JAIN', 'itsme.ayushijain25@gmail.com', NULL, 2016, 'rJX0IO75xn', 'MCA', 'SE', 0, 0),
(1216404815, 'GEETANSHI PAL', 'GEETANSHI PAL', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1216404816, 'VIPIN KUMAR', 'rd.vipin@gmail.com', '9911598738', 2016, 'F0qzW5R2gm', 'MTECH', 'CSE', 0, 0),
(1216405315, 'AMIT KUAMR ', 'AMIT KUAMR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1216410514, 'Shivangi Chauhan', 'shivangichauhan06@gmail.com', NULL, 2014, 'Y4EZKV4Xgs', 'BTECH', 'IT', 0, 0),
(1216410515, 'MOHIT KUMAR', 'mksujanian2683@gmail.com', NULL, 2015, '0USvmLnsxf', 'BTECH', 'IT', 0, 0),
(1216412813, 'NITANT KHULLAR', 'nitant.khullar@gmail.com', '8586927645', 2013, 'z3QICV2N6u', 'BTECH', 'ECE', 0, 0),
(1216412815, 'HARSH KUMAR ', 'harshkumar9995@gmail.com', NULL, 2015, 'gcfEAvIppt', 'BTECH', 'ECE', 0, 0),
(1216412816, 'HIMANSHU TYAGI', 'himanshu.ty45@gmail.com', NULL, 2016, 'WA2onoCZY5', 'BTECH', 'ECE', 0, 0),
(1216414215, 'ANJALI BALIYAN', 'ANJALI BALIYAN', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1216414216, 'TAMISH VERMA', 'tamish60@gmail.com', '9810472019', 2016, 'GiHoIJAzH9', 'MTECH', 'ECE', 0, 0),
(1216418715, 'AKHILESH KUMAR SHARMA', 'akhileshkumarsharma15@gmail.com', '9871649691', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'RA', 0, 0),
(1216418716, 'Surabhi Daeeyya ', 'surbhi9323@gmail.com', NULL, 2016, 'w9s*kQjP4#', 'MTECH', 'RA', 0, 0),
(1316401513, 'Karan Chaudhary', 'kc5463363@gmail.com', '1111111111', 2013, 'RTQkgmr32C', 'BTECH', 'IT', 0, 0),
(1316401516, 'DEEPANSHU AHLAWAT', 'deepahlawat465@gmail.com', '7551122005', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(1316403214, 'Sourav Aggarwal', 'aggarwalsourav0210@gmail.com', '7838701947', 2014, '3rhvuyMhdB', 'BTECH', 'CSE', 0, 0),
(1316403216, 'Hemant Aggrawal ', 'hemantaggarwal915@gmail.com', '7292099310', 2016, 'vxjHV#hx4r', 'BTECH', 'CSE', 0, 0),
(1316404514, 'SURBHI JAIN ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1316404515, 'BALRAJ SINGH BRAR', 'balraajbrar@gmail.com', NULL, 2015, 'JTBlcznkXi', 'MCA', 'SE', 0, 0),
(1316404516, 'DEEPAK SINGH BISHT', 'deepsluminia800@gmail.com', NULL, 2016, 'ZhHuiGeyuq', 'MCA', 'SE', 0, 0),
(1316404815, 'HARDIK KASHYAP', 'HARDIK KASHYAP', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1316404816, 'SHELJA', 'GSHELJA16@GMAIL.COM', NULL, 2016, 'ZKgNxICivv', 'MTECH', 'CSE', 0, 0),
(1316405315, 'ANKITA JAIN ', 'ANKITA JAIN ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1316405316, 'INDU SIBAL', 'sibal.indu@gmail.com', NULL, 2016, 'eDzoI4m2md', 'MTECH', 'IT', 0, 0),
(1316410515, 'NITISH KUMAR', '420knitish@gmail.com', '9810473819', 2015, 'xeWzHeihJ5', 'BTECH', 'IT', 0, 0),
(1316412813, 'NEERAJ KR. JHA', 'neeraj14.nj@gmail.com', '8010879484', 2013, 'KOMIY4HNIA', 'BTECH', 'ECE', 0, 0),
(1316412815, 'HARSHIT SINGH ', 'Hrsht2412@gmail.com', NULL, 2015, 'nLZRrc1#TG', 'BTECH', 'ECE', 0, 0),
(1316412816, 'KUMAR KARTIKEYA', 'kkartikeya123@gmail.com', '8527402934', 2016, 'd*drzha0HJ', 'BTECH', 'ECE', 0, 0),
(1316414216, 'NISHA KUMARI', 'nis.bhargav@gmail.com', NULL, 2016, 'Ghs#OvuB45', 'MTECH', 'ECE', 0, 0),
(1316418716, 'Vaishali Lohchab ', 'vaishalilohchab27@gmail.com', NULL, 2016, 'lI5*Eua7sN', 'MTECH', 'RA', 0, 0),
(1416401513, 'Kapil Chopra', 'kapilchopra963@gmail.com', '1111111111', 2013, 'zLmS4eZ887', 'BTECH', 'IT', 0, 0),
(1416401516, 'DHRUV SAXENA', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(1416403214, 'Gagandeep Nagpal', 'gagannagpal68@gmail.com', '8800489129', 2014, 'vdfOy4efXK', 'BTECH', 'CSE', 0, 0),
(1416403215, 'MANTHAN', 'MANTHAN', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(1416403216, 'Kapil Lamba', 'kapillamba4@gmail.com', '', 2016, 'JJLtGWRtit', 'BTECH', 'CSE', 0, 0),
(1416404514, 'SAKSHAM SEGRA ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1416404515, 'BHARTI KUMARI', 'Bhartik2705@gmail.com', NULL, 2015, 'PNcZ4A7rJp', 'MCA', 'SE', 0, 0),
(1416404516, 'DEEPIKA TIWARI', 'deepikatiwari92@gmail.com', NULL, 2016, 'UPnbIym9fA', 'MCA', 'SE', 0, 0),
(1416404815, 'MONIKA GUPTA', 'MONIKA GUPTA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1416404816, 'PRERNA', 'prernakhobar@gmail.com', NULL, 2016, 'sAdlcx8enY', 'MTECH', 'CSE', 0, 0),
(1416405315, 'PARMEET KAUR ', 'PARMEET KAUR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1416405316, 'RHYTHM BHASIN', 'rhythm.bhasin@gmail.com', NULL, 2016, 'mE77dBBINm', 'MTECH', 'IT', 0, 0),
(1416410514, 'Deepak', 'privacyismyth@gmail.com', '<br>', 2014, 'vuzhK3WK8E', 'BTECH', 'IT', 0, 0),
(1416412813, 'HARSH SHARMA', 'harshshrm94@gmail.com', '9013079448', 2013, 'QDAlcVIOgC', 'BTECH', 'ECE', 0, 0),
(1416412814, 'HEMANT BANSAL', 'hemant.bansal2345@gmail.com', NULL, 2014, 'RZlqfeLnsi', 'BTECH', 'ECE', 0, 0),
(1416412815, 'HIMANSHU RAJPUT ', 'rahul9013360913@gmail.com', NULL, 2015, 'SBMxWnppFc', 'BTECH', 'ECE', 0, 0),
(1416412816, 'LAKSHYA SINGH', 'LAKSHYA SINGH', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(1416414215, 'ARVIND KUMAR ', 'ARVIND KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1416414216, 'SHUBHRA ARYA', 'sarya.eceipu@gmail.com', NULL, 2016, 'JPB7ZPyIXZ', 'MTECH', 'ECE', 0, 0),
(1516401513, 'Prateek Jain', 'jainprateek811@gmail.com', '1111111111', 2013, 'Qx#QqBkJr9', 'BTECH', 'IT', 0, 0),
(1516401516, 'EKANSH GUPTA', 'Ekanshgupta.eku@gmail.com', '8826212377', 2016, '*jSYb3eekT', 'BTECH', 'IT', 0, 0),
(1516403214, 'Surbhi pathak', 'Surbhipathak427@gmail.com', '9654828000', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(1516403215, 'MAYANK', 'mayankchawla220@gmail.com', NULL, 2015, '2eIUm9R*OV', 'BTECH', 'CSE', 0, 0),
(1516403216, 'Keshav Mishra ', 'keshav.m882@gmail.com', '7011457245', 2016, '2QgXnM*l8I', 'BTECH', 'CSE', 0, 0),
(1516404514, 'DEEPIKA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1516404515, 'DEVASHISH', 'devashishnaagar@gmail.com', NULL, 2015, 'rp7B#KW*Il', 'MCA', 'SE', 0, 0),
(1516404516, 'DHRUV OBEROI', 'dhruvoberoi94@gmail.com', NULL, 2016, 'ESP800RQIb', 'MCA', 'SE', 0, 0),
(1516404815, 'SURBHI GUPTA', 'SURBHI GUPTA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1516404816, 'SANGEETA IYER', 'SANGEETA IYER', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1516405315, 'JASMEET KAUR ', 'JASMEET KAUR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1516405316, 'POOJA TYAGI', 'pooja.tyagi94@gmail.com', NULL, 2016, '8U13IB*WZo', 'MTECH', 'IT', 0, 0),
(1516410514, 'Akash Garg', 'akash.garg.5@gmail.com', NULL, 2014, '15FY06K84d', 'BTECH', 'IT', 0, 0),
(1516410515, 'PRAKSHAL JAIN', 'prakshaljain7@gmail.com', '7053449799', 2015, '6LGfoacJjK', 'BTECH', 'IT', 0, 0),
(1516412815, 'HIMANSHU RAJPUT ', 'himanshurajput96@gmail.com', '8700052585', 2015, 'MWVv9lcNRF', 'BTECH', 'ECE', 0, 0),
(1516412816, 'LALLAN KUMAR', 'lallankumarrocks@gmail.com', NULL, 2016, 'C3J0GlB5yi', 'BTECH', 'ECE', 0, 0),
(1516414215, 'TEENA GAKHAR ', 'TEENA GAKHAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1516414216, 'MARIYAM ZUNAIRAH', 'zunairahmariam@gmail.com', NULL, 2016, 'KeNxW#1EOw', 'MTECH', 'ECE', 0, 0),
(1616401513, 'Devashish Kumar', 'devashish2308@gmail.com', '7503043053', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(1616401516, 'GOVIND', 'g.kgautam97@gmail.com', NULL, 2016, 'T3cr*Akd6N', 'BTECH', 'IT', 0, 0),
(1616403214, 'Anmol Khanna', 'anmolkhanna1996@yahoo.in', '9891104002 ', 2014, 'vFJrCha0q#', 'BTECH', 'CSE', 0, 0),
(1616403216, 'Kumar Neelabh', 'neelabh.plus@gmail.com', '', 2016, 'P8U3zCZ3W2', 'BTECH', 'CSE', 0, 0),
(1616404514, 'RICHA KHANNA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1616404515, 'DINESH ANAND', 'dineshanand5@gmail.com', NULL, 2015, 'fran1cMGOe', 'MCA', 'SE', 0, 0),
(1616404516, 'DIKSHA DAYAL', 'diksha.dayal002@gmail.com', NULL, 2016, '46yd64r8zk', 'MCA', 'SE', 0, 0),
(1616404815, 'PUSHPENDRA KUMAR ', 'PUSHPENDRA KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1616404816, 'NIPUL GOYAL', 'goyal.nipul@gmail.com', NULL, 2016, 'tDNbpp5Ch7', 'MTECH', 'CSE', 0, 0),
(1616405315, 'ASHWANI PAYAL ', 'ASHWANI PAYAL ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1616405316, 'ANJALI KUMARI', 'ANJALI KUMARI', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1616410514, 'Akshat Vats', 'akshatvats101@gmail.com', NULL, 2014, '4SGZzJTOa2', 'BTECH', 'IT', 0, 0),
(1616410515, 'PRANJAL AGARWAL ', 'pranjal9agarwal@gmail.com', NULL, 2015, 'H2Cowf#uMX', 'BTECH', 'IT', 0, 0),
(1616412814, 'VARUN PANTHRI', 'varunpanthri38@gmail.com', '9891795403', 2014, 'AZKUZP940u', 'BTECH', 'ECE', 0, 0),
(1616412815, 'HINDUJA PUDI ', 'hindujaiiit@gmail.com', '', 2015, 'di*VsYocsb', 'BTECH', 'ECE', 0, 0),
(1616412816, 'NAMAN RAJPUT', 'naman17121998@gmail.com', '8826746941', 2016, 'gKMwTEkjEq', 'BTECH', 'ECE', 0, 0),
(1616414215, 'PRATEEK SINGH ', 'PRATEEK SINGH ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1616414216, 'TEJASWINI DHALL', 'tejaswini.dhall1994@gmail.com', '', 2016, 'nRwmG4bIFo', 'MTECH', 'ECE', 0, 0),
(1716401513, 'Bhavesh Pant', 'notoriouskratos@gmail.com', '1111111111', 2013, 'SfFGqdeOk6', 'BTECH', 'IT', 0, 0),
(1716401516, 'HARSHIT NARULA', 'harshitnarula22@gmail.com', '8198941403', 2016, 'umUIiNQ', 'BTECH', 'IT', 0, 0),
(1716403214, 'Salil Khandelwal', 'salilkhandelwal@gmail.com', '', 2014, 'PNzzDtk2yJ', 'BTECH', 'CSE', 0, 0),
(1716403215, 'PANKAJ KUMAR GAUTAM', 'pnkjgautam05@gmail.com', '9560247095', 2015, 'tIQIrCjFsR', 'BTECH', 'CSE', 0, 0),
(1716403216, 'Lalit Jain', 'jain.lalit90@yahoo.com', '9999306397', 2016, 'kTRDe7DkEN', 'BTECH', 'CSE', 0, 0),
(1716404514, 'VARDHMAN JAIN ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1716404515, 'DIPANNITA SHIL', 'dipannitashil24@gmail.com', NULL, 2015, 'ekdbj*kAdi', 'MCA', 'SE', 0, 0),
(1716404516, 'DIKSHA MEHRA', 'dikshamehra891@gmail.com', NULL, 2016, 'D7nMldMCJ*', 'MCA', 'SE', 0, 0),
(1716404815, 'TUSHARIKA SINGH ', 'TUSHARIKA SINGH ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(1716405315, 'SUNAKSHI MEHRA', 'SUNAKSHI MEHRA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1716405316, 'SUPREET KAUR', 'supreetkaur7891@gmail.com', NULL, 2016, '6d1NhvzsKD', 'MTECH', 'IT', 0, 0),
(1716410514, 'Shubham Jindal', 'shubhamj1996@gmail.com', NULL, 2014, 'KVGYfjk*DK', 'BTECH', 'IT', 0, 0),
(1716410515, 'PUNEET KUMAR MAURYA', 'punim187@gmail.com', NULL, 2015, '33qhtX0', 'BTECH', 'IT', 0, 0),
(1716412814, 'PRANAV GUPTA', 'pranavgupta8@hotmail.com', NULL, 2014, '04e0x4rFHr', 'BTECH', 'ECE', 0, 0),
(1716412816, 'NITISH PAL', 'nitishpal464@gmail.com', NULL, 2016, 'bftqD#j4jy', 'BTECH', 'ECE', 0, 0),
(1716414215, 'MOHIT VERMA ', 'MOHIT VERMA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'ECE', 0, 0),
(1716414216, 'PRITTY', 'malik65456@gmail.com', NULL, 2016, 'g9WtChBG9j', 'MTECH', 'ECE', 0, 0),
(1816401513, 'Prateek Bajaj', 'rockprateek95@gmail.com', '1111111111', 2013, '4WmhIcZ23U', 'BTECH', 'IT', 0, 0),
(1816401516, 'HIMANSHU', '1301himanshu@gmail.com', '9911200781', 2016, 'z95yOz4YP6', 'BTECH', 'IT', 0, 0),
(1816403213, 'KULBIR  SINGH', 'kulbirsingh445@gmail.com', NULL, 2013, '0#*rJguGZG', 'BTECH', 'CSE', 0, 0),
(1816403214, 'Pranav Khurana', 'pranavkhurana96@gmail.com', '9654768080', 2014, '1m5fW6m4c*', 'BTECH', 'CSE', 0, 0),
(1816403215, 'PARAS ', 'khandelwalparas8@gmail.com', '7042772660', 2015, 'y1m1xlaiRV', 'BTECH', 'CSE', 0, 0),
(1816403216, 'Lalit kumar', 'lalit5542@gmail.com', '9013316879', 2016, 'cS4ic4k6aR', 'BTECH', 'CSE', 0, 0),
(1816404514, 'MEGHAN GAUR', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1816404515, 'GARIMA JAITLY', 'garimajaitly8@gmail.com', NULL, 2015, '0VgITvW4Pg', 'MCA', 'SE', 0, 0),
(1816404516, 'DIVESH', 'ra.divesh1994@gmail.com', NULL, 2016, 'nyfCHQpkS4', 'MCA', 'SE', 0, 0),
(1816405315, 'AYUSHI AGGARWAL ', 'AYUSHI AGGARWAL ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1816405316, 'PRITI SHARMA', 'priti.sharma35@gmail.com', NULL, 2016, 'TEW6NcezHD', 'MTECH', 'IT', 0, 0),
(1816412811, 'VAIBHAV', 'VAIBHAV', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(1816412813, 'SHIVAM SINGH', 'shivamb1606@gmail.com', '9650129933', 2013, '4qkaUFRTnV', 'BTECH', 'ECE', 0, 0),
(1816412815, 'KESHAV ', 'keshavchaudhary401@gmail.com', NULL, 2015, 'ZKVLuy9ju#', 'BTECH', 'ECE', 0, 0),
(1816412816, 'PARV VERMA', 'parvverma.del@gmail.com', NULL, 2016, 'XuZ3H*pd2p', 'BTECH', 'ECE', 0, 0),
(1816414215, 'DHIRAJ KUMAR ', 'kr.dhiraj@outlook.com', '9899489911', 2015, '6b35dcba5d501ca15bbedb9a24a971f7', 'MTECH', 'ECE', 0, 0),
(1916401513, 'Mohan Gupta', 'mohangupta994@gmail.com', '1111111111', 2013, 'WogkVG51Tl', 'BTECH', 'IT', 0, 0),
(1916401516, 'HIMANSHU MEENA', 'himanshu57boss@gmail.com', '9899795998', 2016, 'TeE4u6498I', 'BTECH', 'IT', 0, 0),
(1916403213, 'DEEPAK  SAHU', NULL, NULL, 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(1916403215, 'PIYUSH MEHENDIRATTA', 'mehndiratta142@gmail.com', NULL, 2015, 's9AkuIXTCP', 'BTECH', 'CSE', 0, 0),
(1916403216, 'Luv Attri', 'Luv Attri', '9958941467', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(1916404514, 'PARIDHI JAIN', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(1916404515, 'GAURAV', 'gaurav20515060@gmail.com', NULL, 2015, 'KTitSSSne9', 'MCA', 'SE', 0, 0),
(1916404516, 'DIVYA ARORA', 'divyarora1995@gmail.com', NULL, 2016, 'LYat8eJFvQ', 'MCA', 'SE', 0, 0),
(1916405315, 'PRIYA GARG', 'PRIYA GARG', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1916405316, 'AASHNA GUPTA', 'AASHNA GUPTA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(1916410514, 'Deepanshu Gupta', 'deepanshu.ggupta@gmail.com', NULL, 2014, 'A8siEVSqYH', 'BTECH', 'IT', 0, 0),
(1916412813, 'ANSHUL GARG', 'anshul80.ag@gmail.com', '7827489202', 2013, 'lNcB0FL', 'BTECH', 'ECE', 0, 0),
(1916412814, 'SIDHANT DALMIYA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(1916412815, 'MAYANK BHATT ', 'mnkbhtt224@gmail.com', NULL, 2015, 'A9h4W0rC4Z', 'BTECH', 'ECE', 0, 0),
(1916412816, 'PRADEEP CHAUDHARY', 'pradeepchaudhary647@gmail.com', NULL, 2016, '6oAmDJu', 'BTECH', 'ECE', 0, 0),
(2016401513, 'Sahil Gupta', 'sgsgupta37@yahoo.com', '1111111111', 2013, 'PBbDtk0dMk', 'BTECH', 'IT', 0, 0),
(2016401516, 'JASMINE RAI', NULL, '9991278720', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(2016403214, 'Varun Sharma', 'varun199539@gmail.com', '9953056043', 2014, 'jY2tBpQbc0', 'BTECH', 'CSE', 0, 0),
(2016403215, 'PRABBUDH SINGH ', 'prabuddhksingh@gmail.com', NULL, 2015, 'SddmJ76ygb', 'BTECH', 'CSE', 0, 0),
(2016403216, 'Maninder Singh Bhatia ', 'gsbhatia67@gmail.com', '8802828911', 2016, '7PX1LmVTla', 'BTECH', 'CSE', 0, 0),
(2016404514, 'SHIVAM NARANG ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2016404515, 'GEETANJALI', 'geet.anjali672@gmail.com', '8882251562', 2015, 'gU0xuxjeCj', 'MCA', 'SE', 0, 0),
(2016404516, 'DIVYANSHU SIKKA', 'DIVYANSHU SIKKA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2016405315, 'ANUJ KUMAR DAGAR ', 'ANUJ KUMAR DAGAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(2016405316, 'AARTI', 'AARTI', NULL, 2016, '84ffb3041101a1cc3b9530d66f66e1', 'MTECH', 'IT', 0, 0),
(2016410514, 'Prayansh Srivastava', 'prayansh1996@gmail.com', '9810661992', 2014, 'Iyj4v3AHjs', 'BTECH', 'IT', 0, 0),
(2016412815, 'MAYANK SHARMA ', 'ms22021997@gmail.com', NULL, 2015, 'lbcTBpnTUO', 'BTECH', 'ECE', 0, 0),
(2016412816, 'PRADYUMN MATTU', 'PRADYUMN MATTU', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(2116401513, 'Pranjal Aggarwal', 'agrawal.pranjal7@gmail.com', '1111111111', 2013, '*PQmDH9#4g', 'BTECH', 'IT', 0, 0),
(2116401516, 'JYOTI', 'thejyotikaushik13@gmail.com', '8398982382', 2016, 'sGMLEch*Ai', 'BTECH', 'IT', 0, 0),
(2116403213, 'ANIMESH  GOYAL', 'animesh.goyal43@gmail.com', '7838044399', 2013, 'VJqgkBExJa', 'BTECH', 'CSE', 0, 0),
(2116403215, 'PRANSHU MITTAL', 'pranshu2009@gmail.com', NULL, 2015, 'ksU3iHEPcd', 'BTECH', 'CSE', 0, 0),
(2116403216, 'Manisha Guddolian', 'Manisha Guddolian', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(2116404514, 'NEERAJ PANDY', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2116404515, 'ISHITA BHATI', 'ishiitabhatt@gmail.com', NULL, 2015, '8Lojczhd33', 'MCA', 'SE', 0, 0),
(2116404516, 'DUSHYANT TANWAR', 'dushyanttanwar5@gmail.com', '8053046232', 2016, 'tb#rjx7JXX', 'MCA', 'SE', 0, 0),
(2116405316, 'MAMTA', 'MAMTA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(2116410515, 'SACHIN KUMAR', 'sk1526962@gmail.com', NULL, 2015, 'Y41jG*wltR', 'BTECH', 'IT', 0, 0),
(2116412813, 'BRAHAM PRAKASH', 'brahm80900@gmail.com', '9953125272', 2013, 'eyQAB3o#x0', 'BTECH', 'ECE', 0, 0),
(2116412815, 'NIKHIL GUPTA ', 'nikhil.gupta120897@gmail.com', '9871160963', 2015, 'FeuRV*4MwP', 'BTECH', 'ECE', 0, 0),
(2116412816, 'PRERAK MANN', 'mannprerak1@gmail.com', NULL, 2016, 'i2wG*TbKwX', 'BTECH', 'ECE', 0, 0),
(2216401513, 'Ashish Kaushik', 'ashishflyingstar@gmail.com', '1111111111', 2013, 'u9C64XAUFE', 'BTECH', 'IT', 0, 0),
(2216401516, 'KAPIL CHOUDHARY', NULL, '8510053054', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(2216403213, 'Abhishek Ranjan Das', 'abhishekrdas@gmail.com', NULL, 2013, 'uZrgnkOnYF', 'BTECH', 'CSE', 0, 0),
(2216403215, 'PRATHAM JOSHI', 'pratham.1997@gmail.com', ' 919810456022', 2015, 'qRa6OCfwMf', 'BTECH', 'CSE', 0, 0),
(2216403216, 'Mehul Kanotra', 'mehulkanotra98@gmail.com', '8587055510', 2016, 'KcO5JfcQ#c', 'BTECH', 'CSE', 0, 0),
(2216404514, 'ANURABH MITRA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2216404515, 'JIYASA MEENA', 'messing.with.chacecrawford@gmail.com', NULL, 2015, 'XYCm6TislF', 'MCA', 'SE', 0, 0),
(2216404516, 'GOKUL KRISHNA', 'GOKUL KRISHNA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2216405316, 'ASHU  SHARMA', 'ashi.sharma.578@gmail.com', NULL, 2016, 'isQDFNMKo8', 'MTECH', 'IT', 0, 0),
(2216412813, 'KASHIF FURKAN', 'kashif.batman@gmail.com', '7531993304', 2013, 'Fn6ZbXwmlw', 'BTECH', 'ECE', 0, 0),
(2216412815, 'PRANAY MISHRA ', 'mishra.pranay.01@gmail.com', '9899830153', 2015, '0hwa8iIjaE', 'BTECH', 'ECE', 0, 0),
(2216412816, 'RAHUL KUMAR MEENA', 'RAHUL KUMAR MEENA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(2316401513, 'Himank Bhalla', 'hbhalla95@gmail.com', '1111111111', 2013, 'tNyg6GfUCN', 'BTECH', 'IT', 0, 0),
(2316401516, 'KUSHAGRA GUPTA', 'Kg8555869@gmail.com', '8376021120', 2016, '*xJL7Fpjyf', 'BTECH', 'IT', 0, 0),
(2316403213, 'SAHIL  AGGARWAL', 'aggarwalsahil100@gmail.com', '9871319069', 2013, 'aWf5EB4jgj', 'BTECH', 'CSE', 0, 0),
(2316403214, 'keshav aggarwal', 'aggarwalkeshav38@gmail.com', '8527569689', 2014, 'Azi0sTTsoJ', 'BTECH', 'CSE', 0, 0),
(2316403215, 'RAHUL DEV', 'rahuldev20011997@gmail.com', '9810478320', 2015, '4sjUzR3Evv', 'BTECH', 'CSE', 0, 0),
(2316403216, 'Mohd. Ashraf', 'abdhoom@gmail.com', '9971369679', 2016, 'Ra9CKbcDSx', 'BTECH', 'CSE', 0, 0),
(2316404514, 'ASHNA SIKRI', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2316404515, 'JOBAN SINGH', 'jobansingh8@gmail.com', NULL, 2015, 'dD60MgDfSz', 'MCA', 'SE', 0, 0),
(2316404516, 'HIMANSHU', 'himanshugautam251994@gmail.com', NULL, 2016, 'pFw5n2Ka0z', 'MCA', 'SE', 0, 0),
(2316405316, 'SIELVIE SHARMA', 'sielvie@outlook.com', NULL, 2016, 'S6oX*5whhf', 'MTECH', 'IT', 0, 0),
(2316410514, 'Chirag Arora', 'chirag.rooney@gmail.com', '9990015270', 2014, 'b5zMRsPvyg', 'BTECH', 'IT', 0, 0),
(2316410515, 'SANJEET KUMAR', 'sanjeet07.kumar07@gmail.com', NULL, 2015, 'GxYIbnZJNo', 'BTECH', 'IT', 0, 0),
(2316412813, 'UTKARSH PANDEY', 'uttu27@gmail.com', '7531993304', 2013, 'DBZjXN3RDy', 'BTECH', 'ECE', 0, 0),
(2316412814, 'SHUBHAM AGARWAL', 'shubham641@gmail.com', NULL, 2014, 'KvLeNNyFu7', 'BTECH', 'ECE', 0, 0),
(2316412815, 'RAVI SHARMA ', 'ravish1907@gmail.com', '8802587860', 2015, '#AVeZGJHUX', 'BTECH', 'ECE', 0, 0),
(2316412816, 'RISHI RAJ', 'rishi.delhi1979@gmail.com', '9650083754', 2016, 'bvQo#hgqja', 'BTECH', 'ECE', 0, 0),
(2416401516, 'MANISH KUMAR MISHRA', 'manishmishra039@gmail.com', '8745873385', 2016, '2#dn2DVGEL', 'BTECH', 'IT', 0, 0),
(2416403213, 'RAVISH  GARG', 'ravishgarg95@gmail.com', NULL, 2013, 'Xnz8Ere1N0', 'BTECH', 'CSE', 0, 0),
(2416403215, 'RATN ROHAN', 'ratnrohan007@gmail.com', '9991731414', 2015, 'NVi0gviPug', 'BTECH', 'CSE', 0, 0),
(2416403216, 'Nitesh Kumar Tyagi ', 'Nitesh Kumar Tyagi ', '8587040507', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(2416404514, 'ANMOL ARORA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2416404515, 'KANCHI MITTAL ', 'kanchi@live.in', '7011503995', 2015, 'yz1uMZx5hO', 'MCA', 'SE', 0, 0),
(2416404516, 'JATIN GOYAL', 'JATIN GOYAL', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2416410514, 'Amit Sharma', 'amit.usict@gmail.com', NULL, 2014, '#aCIJlOkyK', 'BTECH', 'IT', 0, 0),
(2416412813, 'SHUBHAM GUPTA', 'sg041994@gmail.com', NULL, 2013, 'LVJ#uQmpyF', 'BTECH', 'ECE', 0, 0),
(2416412815, 'RISHABH SINGH ', 'rishabh.singh1214@gmail.com', NULL, 2015, 'NxEfpm8tvJ', 'BTECH', 'ECE', 0, 0),
(2416412816, 'RITVIK SINGH RAUTELA', 'Ritviksinghrautela@gmail.com', '9871041521', 2016, 'EyrYRcY#zg', 'BTECH', 'ECE', 0, 0),
(2516401513, 'Nidhish Kumar', 'nidhish9054@gmail.com', '1111111111', 2013, '*yJMzt4xWX', 'BTECH', 'IT', 0, 0),
(2516401516, 'MUKUL VASHISHTHA', 'mukulvashishtha97@gmail.com', '7531857125', 2016, 'R*64pQlA26', 'BTECH', 'IT', 0, 0),
(2516403213, 'RAJAT  CHAUHAN', 'rajatchauhann95@gmail.com', '9210501637', 2013, 'lgFY064vpn', 'BTECH', 'CSE', 0, 0),
(2516403216, 'Prafful Kumar', 'kumarprafful54@gmail.com', '8750442030', 2016, 'u8doJ414Gz', 'BTECH', 'CSE', 0, 0),
(2516404515, 'KAPIL VALLABH', 'kpl.vallabh@gmail.com', NULL, 2015, 'UlbBpZVysI', 'MCA', 'SE', 0, 0),
(2516404516, 'KANCHAN SINHA', 'kanchansinha5614@gmail.com', NULL, 2016, 'MLEF2R4q#j', 'MCA', 'SE', 0, 0),
(2516410515, 'SHUBHAM SHARMA', 'shubhamsharma5922@gmail.com', NULL, 2015, 'DGtmZHNij0', 'BTECH', 'IT', 0, 0),
(2516412811, 'AKSHAY', 'AKSHAY', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(2516412813, 'SIDDHARTH SINGH', 'siddharthsingh1173@gmail.com', '9718885134', 2013, 'zDrnfYjtbx', 'BTECH', 'ECE', 0, 0),
(2516412815, 'RITIK NEGI ', 'himanshurajpoot96@gmail.com', NULL, 2015, 'JhM9EmNveK', 'BTECH', 'ECE', 0, 0),
(2516412816, 'ROHIT', 'rohitgns123@gmail.com', NULL, 2016, 'LBOOMQfnKR', 'BTECH', 'ECE', 0, 0),
(2616401513, 'KARTIK DUA', 'duakartik2015@gmail.com', '1111111111', 2013, 'bv83FCHVFf', 'BTECH', 'IT', 0, 0),
(2616401516, 'NAMAN', 'namangupta19041998@gmail.com', '9599114618', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(2616403213, 'SHASHANK  MAKKAR', 'shashankmakkar@yahoo.in', NULL, 2013, 'gWdvWanVD0', 'BTECH', 'CSE', 0, 0),
(2616403215, 'RITVIK ARORA', 'mukesharora878@yahoo.com', NULL, 2015, '*z0ZIg5FGn', 'BTECH', 'CSE', 0, 0),
(2616403216, 'Prashant ', 'ghumariya007@gmail.com', '9958214844', 2016, 'mzBxSaONBY', 'BTECH', 'CSE', 0, 0),
(2616404514, 'AMANPRET SINGH ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2616404516, 'KUNGA JIGMEY', 'kjarya159@gmail.com', '', 2016, '5M8tYNIf2a', 'MCA', 'SE', 0, 0),
(2616410515, 'Swapnil ', 'swpnltiwari361@gmail.com', '9560029697', 2015, '9OLm9OokgC', 'BTECH', 'IT', 0, 0),
(2616412813, 'SHUBHAM JAIN', 'shubhamjain1602@gmail.com', '9560796951', 2013, 'V8q5vatLL4', 'BTECH', 'ECE', 0, 0),
(2616412814, 'ABHISHEK SINGH', 'SINGHABHISHEK7777777@GMAIL.COM', NULL, 2014, '8O*um5OvOG', 'BTECH', 'ECE', 0, 0),
(2616412815, 'RITWIK RUDRA ', 'RITWIKRUDRA1997@GMAIL.COM', NULL, 2015, 'jdmPEy0oUw', 'BTECH', 'ECE', 0, 0),
(2616412816, 'SANCHIT SETHI', 'sanchitsethi97@gmail.com', NULL, 2016, 'y6vxJbXyf*', 'BTECH', 'ECE', 0, 0),
(2716401513, 'VIKAS JAKHAR', 'vikz2708@gmail.com', '9810665209', 2013, 'GVT0doLw0x', 'BTECH', 'IT', 0, 0),
(2716401516, 'NIHIT BANSAL', 'nihitbansal06@gmail.com', '8860408118', 2016, 'v5kLTCvICL', 'BTECH', 'IT', 0, 0),
(2716403213, 'PREM KUMAR  TIWARI ', 'caesarrocks3@gmail.com', NULL, 2013, '811gkLa', 'BTECH', 'CSE', 0, 0),
(2716403214, 'Amit Singh Negi', 'amitnegi0195@gmail.com', '9958762163', 2014, 'tMR5DmJogI', 'BTECH', 'CSE', 0, 0),
(2716403216, 'Prashant kumar', 'Prashantkumar4ever@gmail.com', '88024 42875', 2016, 'VUcom4bLGR', 'BTECH', 'CSE', 0, 0),
(2716404514, 'CHIRNJEEV THOMAS', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2716404516, 'MANDEEP BALIYAN', 'mandeepbaliyan@outlook.com', '9971937697', 2016, 'siBNNSPTpv', 'MCA', 'SE', 0, 0),
(2716410514, 'Vibhor Verma', 'djdj@fmail.com', NULL, 2014, 'q4RdFW*', 'BTECH', 'IT', 0, 0),
(2716410515, 'TUSHAR PURANG ', 'tpurang@yahoo.in', '9871026277', 2015, '7BuT7MhazB', 'BTECH', 'IT', 0, 0),
(2716412814, 'ANKIT KAUSHIK', 'ankitkaushik155@gmail.com', NULL, 2014, 'BVmCMgFAre', 'BTECH', 'ECE', 0, 0),
(2716412815, 'SACHIN BHATI ', 'sachinbhati031@gmail.com', NULL, 2015, '#w6yFhIt1n', 'BTECH', 'ECE', 0, 0),
(2716412816, 'SAURABH MAHATO', 'saurabhmahato3@gmail.com', NULL, 2016, '1fNCRzo', 'BTECH', 'ECE', 0, 0);
INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(2816401516, 'NIMISH BANSAL', 'nimish4july1998@gmail.com', '9654422849', 2016, 'VQcFJbwhoz', 'BTECH', 'IT', 0, 0),
(2816403213, 'SIDDHARTH  LALWANI', 'siddharth.lalwani@gmail.com', NULL, 2013, 'YRfCXlFtP9', 'BTECH', 'CSE', 0, 0),
(2816403215, 'SAJEEV MAHAJAN ', 'sjv97mhjn@gmail.com', '9711755874', 2015, 'WKvH5bYBHP', 'BTECH', 'CSE', 0, 0),
(2816403216, 'Pratishtha singh', 'pratisingh15@gmail.com', '99534 92254', 2016, '*Cq6jPO*cP', 'BTECH', 'CSE', 0, 0),
(2816404514, 'ANCHITYA BHALOTIA ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2816404515, 'KIRAN LATA', 'kiranlata12@gmail.com', NULL, 2015, 'ClcvPfrBkr', 'MCA', 'SE', 0, 0),
(2816404516, 'MANINDER SINGH', 'maniinthe@yahoo.co.in', NULL, 2016, 'VVKDHuMEEI', 'MCA', 'SE', 0, 0),
(2816410514, 'Guneet Singh', 'gsgsdhillon@gmail.com', NULL, 2014, 'Lc5WDqvWCr', 'BTECH', 'IT', 0, 0),
(2816410515, 'UJJWAL JAIN ', 'ujjwal451@gmail.com', NULL, 2015, '4E3**fhrpG', 'BTECH', 'IT', 0, 0),
(2816412813, 'AMIT UPRETI', 'kumarshaurya32@gmail.com', '9910381864', 2013, 'GkSA7x#d9i', 'BTECH', 'ECE', 0, 0),
(2816412815, 'SANCHIT PANWAR ', 'sanchitpanwar196@gmail.com', NULL, 2015, '*DCeqB0HNf', 'BTECH', 'ECE', 0, 0),
(2816412816, 'SHASHWAT DIXIT', 'SHASHWAT DIXIT', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(2916401513, 'Prateek Jain', 'shubhgrwlll@gmail.com', '', 2013, 'HRB*YkW', 'BTECH', 'IT', 0, 0),
(2916401516, 'PANKAJ PRATAP SINGH', 'pankajpratap990@gmail.com', NULL, 2016, '7berJauBqF', 'BTECH', 'IT', 0, 0),
(2916403213, 'VISHAL  SHARMA', 'vshlsharma869@gmail.com', NULL, 2013, 'qnnNDtdg7j', 'BTECH', 'CSE', 0, 0),
(2916403214, 'Mayank Bhandari', 'mbmbmayank19@gmail.com', '8882445141', 2014, 'WkO30FxZHE', 'BTECH', 'CSE', 0, 0),
(2916403215, 'SANDESH ', 'sandeshsharma0003@gmail.com', NULL, 2015, 'dXcd2QL7Sn', 'BTECH', 'CSE', 0, 0),
(2916403216, 'Pratyush pathak', 'lovingpratyush.pathak2@gmail.com', '', 2016, 'HcYFGBiICz', 'BTECH', 'CSE', 0, 0),
(2916404514, 'AAGMAN PUROHIT', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(2916404515, 'KIRAN SHORI', 'shori.kiran@gmail.com', NULL, 2015, 'VdyxMRwbJC', 'MCA', 'SE', 0, 0),
(2916404516, 'MANISH KUMAR PARASHAR', 'parashar.manish229@yahoo.com', NULL, 2016, 'QhWdyuNhPn', 'MCA', 'SE', 0, 0),
(2916412815, 'SANJAY KUMAR MEENA ', 'sanjaykumarmeena911@gmail.com', NULL, 2015, '6VaZMXLIHd', 'BTECH', 'ECE', 0, 0),
(2916412816, 'SUMIT KUMAR PHOGAT', 'SUMIT KUMAR PHOGAT', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(3016401513, 'Shubham Agarwal', 'shubhgrwlgeniee@gmail.com', '8802164686', 2013, 'i48bUYw', 'BTECH', 'IT', 0, 0),
(3016401516, 'PRANAV BANSAL', 'pranavbansal2809@gmail.com', '9582041039', 2016, '2RpoI38nz6', 'BTECH', 'IT', 0, 0),
(3016403213, 'NITIN  SHARMA', 'ns201295@gmail.com', '9717565800', 2013, 'fOLyliGPOx', 'BTECH', 'CSE', 0, 0),
(3016403214, 'Mayank Singh', 'mayanksingh.461996@gmail.com', '7042044700', 2014, 'HNW0UISj73', 'BTECH', 'CSE', 0, 0),
(3016403215, 'SAQUIB SIDDIQUE', 'm.s.siddique131@gmail.com', '9650482286', 2015, 'e7ZKVHU2mG', 'BTECH', 'CSE', 0, 0),
(3016403216, 'Prince ', 'Prince ', '8375984236', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(3016404514, 'PINKI CHOUDHARY', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3016404515, 'KOMAL GAUTAM', 'komalgautam1994@gmail.com', '', 2015, 'FERIWPgNVu', 'MCA', 'SE', 0, 0),
(3016404516, 'MOHIT YADAV', 'MOHIT YADAV', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3016410514, 'Pratulya Bubna', 'pratulyabubna@outlook.com', NULL, 2014, 'q08ESvlB2u', 'BTECH', 'IT', 0, 0),
(3016412813, 'SURYA PRATAP SINGH', 'spssurya24@gmail.com', '9015895970', 2013, 'rhhULyikN3', 'BTECH', 'ECE', 0, 0),
(3016412815, 'SARTHAK KUMAR ', 'srthk.2597@gmail.com', NULL, 2015, 'RKGZNZ10ya', 'BTECH', 'ECE', 0, 0),
(3016412816, 'SURAJ JHA', 'ersurajjha1997@gmail.com', NULL, 2016, 'kIebet0VUK', 'BTECH', 'ECE', 0, 0),
(3116401513, 'Ajay Goyal', 'ajaygoyal429@gmail.com', '1111111111', 2013, 'QWbCPt0kmM', 'BTECH', 'IT', 0, 0),
(3116401516, 'PRASHANT KUMAR', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(3116403214, 'aakash bhardwaj', 'top.aakash123@gmail.com', '9582688373', 2014, 'o#Uvw6yu6n', 'BTECH', 'CSE', 0, 0),
(3116403216, 'Rahul Kanojia', 'rlrahulkanojia@gmail.com', '9458164930', 2016, 'dQRyKrxHGN', 'BTECH', 'CSE', 0, 0),
(3116404514, 'DALINDER SINGH', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3116404515, 'KUNAL SONI', 'kunal.sohni94@gmail.com', '8587864231', 2015, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3116404516, 'NABEEL HASAN ANSARI', 'nabeelhasan0@gmail.com', NULL, 2016, '19*b*U9Xul', 'MCA', 'SE', 0, 0),
(3116410515, 'VIKAS VERMA', 'vikasbhatia1995@gmail.com', NULL, 2015, 'MuOQxaB1fQ', 'BTECH', 'IT', 0, 0),
(3116412814, 'PARTH TREHAN', 'trehanparth11@gmail.com', NULL, 2014, '9qfFp7FqLo', 'BTECH', 'ECE', 0, 0),
(3116412815, 'SATYARTH VIMAL ', 'satyarthvimal12@gmail.com', NULL, 2015, 'kpaXLZNJ4p', 'BTECH', 'ECE', 0, 0),
(3116412816, 'SWAPNIL TIWARI', 'tiwariswapnil133@gmail.com', NULL, 2016, 'x3EyFnz5ep', 'BTECH', 'ECE', 0, 0),
(3216401513, 'ANISHA GOPALIA', 'anishag.3010@gmail.com', '1111111111', 2013, 'kHfK83ttxn', 'BTECH', 'IT', 0, 0),
(3216401516, 'PRINCE KHERA', 'khera96@gmail.com', '7042421848', 2016, 'fbDXEqjRKg', 'BTECH', 'IT', 0, 0),
(3216403213, 'ANUSHREE  KESAN', 'anushree.kesan@gmail.com', NULL, 2013, '*R8qYfeT3x', 'BTECH', 'CSE', 0, 0),
(3216403214, 'suraj kumar', 'surajkumar246@gmail.com', '9013155212', 2014, 'AD997IvQ2I', 'BTECH', 'CSE', 0, 0),
(3216403216, 'Rishabh Bhardwaj', 'rishabhbhardwaj64@gmail.com', '8377838313', 2016, '3gBCLO3mO0', 'BTECH', 'CSE', 0, 0),
(3216404514, 'MANISH KUMAR SINGH ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3216404515, 'MAYANK NAGAR', 'mayank.171193@gmail.com', '9958766232', 2015, 'kj3idSikxo', 'MCA', 'SE', 0, 0),
(3216404516, 'NAUFIL SIDDIQUI', 'NAUFIL SIDDIQUI', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3216410514, 'Rajneesh Sharma', 'rajneeshsharma.cooldude@gmail.com', '9716493916', 2014, 'hVF6sV#*zC', 'BTECH', 'IT', 0, 0),
(3216410515, 'VIKAS VERMA', 'vikas097verma@gmail.com', NULL, 2015, '1O6TEYr1J*', 'BTECH', 'IT', 0, 0),
(3216412814, 'SANNA NAZIR', 'nazirsanna99@gmail.com', NULL, 2014, 'S0ESMjAqWY', 'BTECH', 'ECE', 0, 0),
(3216412815, 'SHIVAM AGGARWAL ', 'shivam.aggarwal1597@gmail.com', '9654772898', 2015, 'zJAvPmRaXv', 'BTECH', 'ECE', 0, 0),
(3216412816, 'TAVESH', 'taveshcool97@gmail.com', NULL, 2016, '4cBRDGX', 'BTECH', 'ECE', 0, 0),
(3316401513, 'Prakhar Dua', 'prakhz@gmail.com', '8700878089', 2013, 'LkkxVFv', 'BTECH', 'IT', 0, 0),
(3316401516, 'RAGINI KUMARI', 'ragini10316@gmail.com', '9540949926', 2016, 'J248yUAdXy', 'BTECH', 'IT', 0, 0),
(3316403214, 'Mansee aggarwal', 'aggarwalmanseee777@gmail.com', '9717456048', 2014, 'QJODfoTEix', 'BTECH', 'CSE', 0, 0),
(3316403216, 'Rohan Dev Verma', 'rohandevverma1998@gmail.com', '', 2016, 'NrraHGVVRU', 'BTECH', 'CSE', 0, 0),
(3316404514, 'PARBHAT SAINI', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3316404515, 'MEGHNA', 'anhgem30@gmail.com', NULL, 2015, 'zu4#FAc9aV', 'MCA', 'SE', 0, 0),
(3316404516, 'NIDHI', 'nidhichopra1993@gmail.com', NULL, 2016, 'o4HGLvECHU', 'MCA', 'SE', 0, 0),
(3316410514, 'Shivam Sharma', 'mailtoshivam13@gmail.com', NULL, 2014, 'lkUX85EwOl', 'BTECH', 'IT', 0, 0),
(3316412816, 'VARUN KUMAR SINGH', 'varuns.india@gmail.com', NULL, 2016, 'ckQS9ETlBE', 'BTECH', 'ECE', 0, 0),
(3416401513, 'SIDDHARTH GOEL', 'sgoel24212@gmail.com', '1111111111', 2013, 'GSJ7v8VkNm', 'BTECH', 'IT', 0, 0),
(3416401516, 'RIJUL SINGH MALIK', 'rijulsingh9@gmail.com', '9582688225', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(3416403216, 'Rohit Gambhir', 'rohitgambhir96@gmail.com', '9215331533', 2016, 'OT6WGh#MqY', 'BTECH', 'CSE', 0, 0),
(3416404514, 'INDU GUMBER', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3416404516, 'NISHA KANYAL', 'kanyalnisha26@gmail.com', NULL, 2016, 'U68iAcrz*#', 'MCA', 'SE', 0, 0),
(3416410514, 'Man Mohan Singh', 'manmohansingh201995@gmail.com', NULL, 2014, 'LclT1uMIv6', 'BTECH', 'IT', 0, 0),
(3416412813, 'PRANJAL MISHRA', 'mi.pranjal@gmail.com', '9711096796', 2013, 'jOU*7HtC6h', 'BTECH', 'ECE', 0, 0),
(3416412814, 'VISHAL KUMAR', 'vishalkumar.kumar1234@gmail.com', NULL, 2014, 'WY2Ep25LgZ', 'BTECH', 'ECE', 0, 0),
(3416412815, 'SHUBHAM GUPTA ', 'shubhamg.745@gmail.com', NULL, 2015, '1LpCze0zkz', 'BTECH', 'ECE', 0, 0),
(3416412816, 'VEDANG CHAUHAN', 'vedang.cheenu@gmail.com', NULL, 2016, 'VJs4EpVQIT', 'BTECH', 'ECE', 0, 0),
(3516401513, 'Shivesh pandey', 'shivesh18@gmail.com', '1111111111', 2013, 'rLGlNSlEk4', 'BTECH', 'IT', 0, 0),
(3516401516, 'RIPIN KUMAR', 'ripinkumar267@gmail.com', '9968873730', 2016, '74#qcykXcP', 'BTECH', 'IT', 0, 0),
(3516403213, 'AKSHAY  KHUSHU', 'akshaykhushu.ak@gmail.com', '8800571992', 2013, 'tUSj3oXdKO', 'BTECH', 'CSE', 0, 0),
(3516403214, 'Aakash yadav', 'aakash141997@gmail.com', '8130610491', 2014, 'khVTnwcnX6', 'BTECH', 'CSE', 0, 0),
(3516403216, 'Rohit Whachal', 'rohitwac@gmail.com', '7503889355', 2016, '65tB3s1s5x', 'BTECH', 'CSE', 0, 0),
(3516404514, 'SONALI SAREEN ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3516404516, 'ONKAR BANSAL', 'onkar.bansal93@gmail.com', NULL, 2016, 'Jg40rNJDlW', 'MCA', 'SE', 0, 0),
(3516410514, 'Sarthak Manchanda', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(3516410515, 'VIVEK SHARMA ', 'vsviveksharma999@gmail.com', NULL, 2015, 'kNoiQg7gwK', 'BTECH', 'IT', 0, 0),
(3516412811, 'NITISH SAINI', 'nitz.445@gmail.com', '9999030302', 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(3516412813, 'RAGHAV CHHABRA', 'stratocasternblues@gmail.com', '9716047134', 2013, 'ST*TDq8', 'BTECH', 'ECE', 0, 0),
(3516412814, 'KUMAR UTKARSH', 'utkarsh1367@gmail.com', NULL, 2014, 'bgqWwPjDJQ', 'BTECH', 'ECE', 0, 0),
(3516412815, 'SHUBHAM SINGH KHATI ', 'kaikhati114@gmail.com', NULL, 2015, 'm7ee0r1D9q', 'BTECH', 'ECE', 0, 0),
(3516412816, 'VIBHOR AGGARWAL', 'vibhuagg@gmail.com', NULL, 2016, 'PgxFX9apu4', 'BTECH', 'ECE', 0, 0),
(3616401513, 'ISHWAR THAPA', 'ishwarmanithapa@gmail.com', '1111111111', 2013, 'Wrm7Kc62bb', 'BTECH', 'IT', 0, 0),
(3616401516, 'RISHABH JOSHI', 'joshir838@gmail.com', '886-0844418', 2016, '9X0RfDM2v0', 'BTECH', 'IT', 0, 0),
(3616403214, 'Hrithik Dhawan ', 'hrithikdhawan@gmail.com', '8800511944', 2014, 'X94vKpa6Pu', 'BTECH', 'CSE', 0, 0),
(3616403215, 'SURAJ KUMAR ', 'surajkumar7091@gmail.com', NULL, 2015, 'uCjlYiPMxi', 'BTECH', 'CSE', 0, 0),
(3616403216, 'Sarthak Agarwal ', 'akkisfavourite@gmail.com', '7455858664', 2016, 'dE*z9RBmvB', 'BTECH', 'CSE', 0, 0),
(3616404514, 'PARDEEP PATHAK', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3616404515, 'NIKHIL RAHEJA ', 'nikhilraheja17@gmail.com', NULL, 2015, 'HIBfGgFQmQ', 'MCA', 'SE', 0, 0),
(3616404516, 'PIYUSH GUPTA', 'PIYUSH GUPTA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3616410515, 'VYOM SHARMA', 'vyom.incite@gmail.com', NULL, 2015, 'GCvSB2CWHT', 'BTECH', 'IT', 0, 0),
(3616412813, 'RAJAT ARORA', 'rajatarora216@gmail.com', '9582483969', 2013, 'khdBHxi9PX', 'BTECH', 'ECE', 0, 0),
(3616412814, 'ANKIT GUPTA', 'ankit25091996@gmail.com', NULL, 2014, 'Mb31J22xzg', 'BTECH', 'ECE', 0, 0),
(3616412815, 'SUKANT VATS ', 'vatssukant74@gmail.com', NULL, 2015, 'LvSgKBNnfB', 'BTECH', 'ECE', 0, 0),
(3616412816, 'VIKASH KUMAR', 'vikaskumarsingh8662@gmail', '7982809517', 2016, 'TjUCC#5', 'BTECH', 'ECE', 0, 0),
(3716401513, 'Navdeep Sandhu', 'navdeep2611@gmail.com', '9810354223', 2013, 'oAJVJAkFgI', 'BTECH', 'IT', 0, 0),
(3716401516, 'ROHAN GOYAL', 'rohan.me2014@gmail.com', '9654827013', 2016, 'ngu1DKtUiL', 'BTECH', 'IT', 0, 0),
(3716403213, 'ANKIT  YADAV', 'ANKITUSIT2012@GMAIL.COM', NULL, 2013, 'ZZqM5QVQGC', 'BTECH', 'CSE', 0, 0),
(3716403216, 'Saurabh Kumar', 'kumarsaurabh1997@gmail.com', NULL, 2016, 'RbdYal95X1', 'BTECH', 'CSE', 0, 0),
(3716404514, 'MEENAKSHI', 'meenakshi.singh729@gmail.com', '', 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3716404515, 'NIKUNJ JAIN', 'NIKUNJ JAIN', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3716404516, 'POOJA SINGH', 'POOJA SINGH', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(3716412813, 'RAHUL GULIA', 'rahultopped007@gmail.com', '9971712865', 2013, 'XNk0R91OIe', 'BTECH', 'ECE', 0, 0),
(3716412816, 'VINAY KUSHWAHA', 'vinaykmw@gmail.com', NULL, 2016, '6ug#9m4Gyo', 'BTECH', 'ECE', 0, 0),
(3816401513, 'Ashish Kadyan', 'ashishrated007@gmail.com', '1111111111', 2013, '8KshRhZi8y', 'BTECH', 'IT', 0, 0),
(3816401516, 'SACHIN KUMAR', 'sk87579@gmail.com', '9958601136', 2016, 'EnZExVDcjX', 'BTECH', 'IT', 0, 0),
(3816403213, 'HENU  KUMAR', 'hkkalher@gmail.com', '8130681131', 2013, 'P3CaNrkC7e', 'BTECH', 'CSE', 0, 0),
(3816403214, 'Pushkar Mittal', 'mittal.pushkar@gmail.com', '9555289635', 2014, 'yoSt83v8*o', 'BTECH', 'CSE', 0, 0),
(3816403215, 'VANSHAJ GIROTRA', 'vanshajgirotraa@gmail.com', '8377872112', 2015, 'wGi3MqDvRX', 'BTECH', 'CSE', 0, 0),
(3816403216, 'Shivam garg', 'shivamgarg1998@gmail.com', '9971056113', 2016, 'G4fSlEN4X7', 'BTECH', 'CSE', 0, 0),
(3816404515, 'NITISH VERMA ', 'nitishverma2011@gmail.com', NULL, 2015, 'nTv94o1U2V', 'MCA', 'SE', 0, 0),
(3816404516, 'PRITESH KUMAR', 'pritxkmr@gmail.com', NULL, 2016, 'wZyYKnfAiH', 'MCA', 'SE', 0, 0),
(3816410514, 'Shubham Jain', 's1996jain@gmail.com', NULL, 2014, 'xq4FPfq', 'BTECH', 'IT', 0, 0),
(3816412813, 'SAKSHAM SHARMA', 'saksham2895sharma@gmail.com', '8826112833', 2013, 'QDro6DHA#y', 'BTECH', 'ECE', 0, 0),
(3816412815, 'UJJWAL GUPTA ', 'guptaujjwal83@yahoo.com', NULL, 2015, '9I3pg*F2fx', 'BTECH', 'ECE', 0, 0),
(3916401513, 'ANKUR RAJPUT', 'rajputankur023@gmail.com', '1111111111', 2013, 'E6Y1Dn*s3F', 'BTECH', 'IT', 0, 0),
(3916401516, 'SARANSH GUPTA', 'guptasaransh95@gmail.com', '9650009473', 2016, 'k9a3BG92yQ', 'BTECH', 'IT', 0, 0),
(3916403215, 'VASU MAAN', 'vasu.maan14@gmail.com', NULL, 2015, '0yc5Bc1VPy', 'BTECH', 'CSE', 0, 0),
(3916403216, 'Shobit Gupta', 'Shobit Gupta', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(3916404514, 'KARTIK PANDEY', NULL, NULL, 2014, '776427d932fc774a26b3404ffb71b16c', 'MCA', 'SE', 0, 0),
(3916404515, 'PAYAL KEDIA', 'payal.kedia01@gmail.com', '8447066654', 2015, 'lNl5YYU7ez', 'MCA', 'SE', 0, 0),
(3916404516, 'RAGHAV SHADIJA', 'mr.raghav238@gmail.com', NULL, 2016, 'nBv8Io#kMc', 'MCA', 'SE', 0, 0),
(3916410514, 'Abhijeet Singh Chauhan', 'abhiusict@gmail.com', NULL, 2014, 'QmJRhyyhGd', 'BTECH', 'IT', 0, 0),
(3916412811, 'TRISHALA DAYAL ', 'TRISHALA DAYAL ', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(3916412815, 'VIJAY GARG ', 'vijaygarg04@gmail.com', NULL, 2015, 'jic129sUFP', 'BTECH', 'IT', 0, 0),
(4016401516, 'SATYAM', 'satyam.mehto750@gmail.com', '7503368459', 2016, 'wZO7tMkytQ', 'BTECH', 'IT', 0, 0),
(4016403213, 'MOHAMMED  SHAHID  ', 'shahid2195@gmail.com', NULL, 2013, 'BD##8RSC9X', 'BTECH', 'CSE', 0, 0),
(4016403214, 'Devesh Tewari', 'xx.devesh.xx@gmail.com', '9717104667', 2014, 'xgMSkJH4il', 'BTECH', 'CSE', 0, 0),
(4016403216, 'Smiriti Verma', 'Smiriti Verma', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(4016404514, 'AASHIT SHARMA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4016404515, 'PRIYANKA LAMBA ', 'lambapriyanka12@gmail.com', NULL, 2015, '1#SZ*1EfiB', 'MCA', 'SE', 0, 0),
(4016404516, 'RAHUL KUMAR SAH', 'rahul.kumar2856@gmail.com', NULL, 2016, 'gDSUTqooWs', 'MCA', 'SE', 0, 0),
(4016412813, 'TUSHAR KHURANA', 'tusharkhurana841@gmail.com', '9716239843', 2013, '2a#L*Y2tgF', 'BTECH', 'ECE', 0, 0),
(4116401513, 'AAKASH SINGH', 'aakashggsipu@gmail.com', '1111111111', 2013, 'YeeT8nbTuY', 'BTECH', 'IT', 0, 0),
(4116401516, 'SAURABH KUMAR', 'saurabhkr1888@gmail.com', NULL, 2016, 'w2EMufu19M', 'BTECH', 'IT', 0, 0),
(4116403213, 'AVINASH  CAMMA', 'avinashcamma@gmail.com', NULL, 2013, 'GPrYkvuLqz', 'BTECH', 'CSE', 0, 0),
(4116403214, 'Bhanu walia', 'bhanu10496@gmail.com', '9873170736', 2014, 'VhhSH1LaXl', 'BTECH', 'CSE', 0, 0),
(4116403216, 'Sumit Kumar', 'sumitkr.kapar@gmail.com', '8744805801', 2016, 'H7jGvgh2qn', 'BTECH', 'CSE', 0, 0),
(4116404516, 'RAJESH KUMAR SAH', 'rajeshkumaar9@gmail.com', NULL, 2016, 'Qa#dwB0Fcp', 'MCA', 'SE', 0, 0),
(4116410514, 'Vasu Jain', 'vasu.j550@gmail.com', NULL, 2014, 'UIbJdFHAhf', 'BTECH', 'IT', 0, 0),
(4116412813, 'NIMESH JAIN', 'nimishjain1000@gmail.com', '9999574213', 2013, 'od3vGuysYe', 'BTECH', 'ECE', 0, 0),
(4116412814, 'ANSHUL RANA', 'anshul.rana95@gmail.com', NULL, 2014, 'cAV8emAV7w', 'BTECH', 'ECE', 0, 0),
(4116412815, 'MOHIT KAUSHIK', 'mohitkaushik777@gmail.com', '8373972840', 2015, 'zQlmMjuVwG', 'BTECH', 'ECE', 0, 0),
(4216401513, 'Mohd Fahad', 'khanmf826@gmail.com', '1111111111', 2013, 'oxhcE8pgdf', 'BTECH', 'IT', 0, 0),
(4216401516, 'SHUBHAM GUPTA', 'sg270798@gmail.com', '8470869254', 2016, 'PXGaRZbvQs', 'BTECH', 'IT', 0, 0),
(4216403213, 'ANKIT  PRATAP', 'ankitprothebro@gmail.com', NULL, 2013, 'rHVXE25EQ5', 'BTECH', 'CSE', 0, 0),
(4216403216, 'Umang Jain', 'jainumang12@gmail.com', '7838139676', 2016, 'VxIsHEDctK', 'BTECH', 'CSE', 0, 0),
(4216404514, 'MOHIT KUMAR', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4216404515, 'SANDEEP NEMI', 'sandeepnemi@gmail.com', NULL, 2015, 'Avpuo*nl7g', 'MCA', 'SE', 0, 0),
(4216404516, 'RAKESH PATEL', 'patelrakeshkumar10@gmail.com', NULL, 2016, 'kkKapymsKR', 'MCA', 'SE', 0, 0),
(4216410514, 'Ravi Ranjan', 'raviranjan19961703@gmail.com', NULL, 2014, 'j2XMV#dwaH', 'BTECH', 'IT', 0, 0),
(4216412811, 'VARUN SAHANI ', 'VARUN SAHANI ', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(4216412813, 'HARSHIT DIWEDI', 'manasbagula@gmail.com', '9968195588', 2013, 'cRB3Lsp6ls', 'BTECH', 'ECE', 0, 0),
(4216412814, 'ARUNAV DUTTA', 'arunavdutta.ad@gmail.com', NULL, 2014, 'Jf9*k*mufs', 'BTECH', 'ECE', 0, 0),
(4316401513, 'Navjot singh', 'nvjot94@gmail.com', '1111111111', 2013, 'lGwE4S4kMp', 'BTECH', 'IT', 0, 0),
(4316401516, 'SHUBHAM SHARMA', 'kajubadaam1@gmail.com', '9716547943', 2016, 'eSVQgWAeUk', 'BTECH', 'IT', 0, 0),
(4316403214, 'Gaurav Kumar', 'gauravtanwar03@gmail.com', '9990487763', 2014, 'jCyIMUdp#r', 'BTECH', 'CSE', 0, 0),
(4316403216, 'Vidit Jain', 'viditapps@gmail.com', '9013290400', 2016, 'fG1Z#U52Ek', 'BTECH', 'CSE', 0, 0),
(4316404514, 'ISHA GUPTA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4316404515, 'SAWAN KALRA ', 'sa1kalra@gmail.com', NULL, 2015, 'WIES6QzAtg', 'MCA', 'SE', 0, 0),
(4316404516, 'RISHABH DUTT', 'duttrishabh95@gmail.com', NULL, 2016, '4T0#ycdjQD', 'MCA', 'SE', 0, 0),
(4316410514, 'Rajiv Kumar Jha', 'rajiv@codestreet.io', NULL, 2014, 'VTK3RZl5Q1', 'BTECH', 'IT', 0, 0),
(4316412813, 'AYUSHMAN BAJPAI', 'bajpaiayushman7@gmail.com', NULL, 2013, 'FGgCtjE1Oe', 'BTECH', 'ECE', 0, 0),
(4316412814, 'JATIN KUMAR', 'jk031997@gmail.com', NULL, 2014, 'YwUm5rAG1U', 'BTECH', 'ECE', 0, 0),
(4416401513, 'Ankur Chaudhary', 'xs2ankur94@gmail.com', '7838682189', 2013, 'X*WUaScnlV', 'BTECH', 'IT', 0, 0),
(4416401516, 'UTSAV KRISHNATRA', NULL, '9582751590', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(4416403216, 'Vikas', 'vikasrrana9@gmail.com', '8700964442', 2016, 'Wh5t9maEuo', 'BTECH', 'CSE', 0, 0),
(4416404514, 'VISHWAJEET PANWAR', 'vp00692@gmail.com', '8802353933', 2014, '8961d980b82f69d974db3e3745aeba72', 'MCA', 'SE', 0, 0),
(4416404516, 'ROHIT KUMAR', 'kashyaprohit99@gmail.com', NULL, 2016, 'ZWOvK35tfC', 'MCA', 'SE', 0, 0),
(4416410514, 'Sebin Duke Stephan', 'sebindukestephan@gmail.com', NULL, 2014, 'cfp2y4MK0*', 'BTECH', 'IT', 0, 0),
(4416412813, 'VIPIN KUMAR', 'vipinphalswal12345@gmail.com', '8826633878', 2013, 'SmJ*Dxj', 'BTECH', 'ECE', 0, 0),
(4416412814, 'HARINDER SINGH CHOUHAN', 'harry21395@gmail.com', NULL, 2014, 'gGh1w1gA89', 'BTECH', 'ECE', 0, 0),
(4516401513, 'Dharam Lohia', 'dharamlohia11@gmail.com', '1111111111', 2013, 'JMttA628TY', 'BTECH', 'IT', 0, 0),
(4516401516, 'VAIBHAV', 'vaibhavnandwani@gmail.com', '8950808939', 2016, 'wq6qerSCAr', 'BTECH', 'IT', 0, 0),
(4516403213, 'VIKRAM  ', 'thevikrampanwar@gmail.com', NULL, 2013, '865CS508Lt', 'BTECH', 'CSE', 0, 0),
(4516403216, 'Vinay Kumar ', 'ccxben@gmail.com', '8802259380', 2016, 'r5ZVv9a0bt', 'BTECH', 'CSE', 0, 0),
(4516404514, 'PRIYA KATOCH', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4516404515, 'SHRISTHI MATHUR ', 'srishtimathur2@gmail.com', NULL, 2015, 'mgBd9c5VnS', 'MCA', 'SE', 0, 0),
(4516404516, 'ROHIT SEHAJPAL', 'r.sehajpal@gmail.com', NULL, 2016, 'zSJGwKw3*o', 'MCA', 'SE', 0, 0),
(4516412813, 'SIDDHARTH', '007sid700@gmail.com', '9911688172', 2013, 'UQ2XMOP6H*', 'BTECH', 'ECE', 0, 0),
(4616401513, 'Shyam Hundiwal', 'Shyam Hundiwal', '1111111111', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(4616401516, 'VINEET', NULL, '8527030704', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(4616403213, 'CHETAN  YADAV', 'chetanx.yadav29@gmail.com', NULL, 2013, 'MdAz*tLfBk', 'BTECH', 'CSE', 0, 0),
(4616403214, 'Akhil Prasannan', 'akhilprasannan.misc@gmail.com', '8447729290', 2014, 'JQsc#uS6TC', 'BTECH', 'CSE', 0, 0),
(4616403216, 'Vishal', 'singvishal7@gmail.com', '9013949680', 2016, 'TCjegzAAXc', 'BTECH', 'CSE', 0, 0),
(4616404514, 'SIDHARTH SHEKHAR ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4616404515, 'SUBODH KANT TIWARI', 'subodh.tiwari.65@gmail.com', NULL, 2015, 'Ml57oJFtFy', 'MCA', 'SE', 0, 0),
(4616404516, 'SHATAKSHI MITTAL', 'shatakshimittal@gmail.com', NULL, 2016, 'iqEwpyPTCx', 'MCA', 'SE', 0, 0),
(4616410514, 'Divesh Bisht', 'doubledeep007@gmail.com', '9013383538', 2014, 'mYJkUn9nPB', 'BTECH', 'IT', 0, 0),
(4616412813, 'RAJEEV KUMAR', 'yadav.rajeev0123@gmail.com', '9650856722', 2013, 'T6Zcpmrj#j', 'BTECH', 'ECE', 0, 0),
(4616412814, 'AVILASH MOHANTY', 'avilashmohanty1920@gmail.com', NULL, 2014, 'zMAIGV#nEJ', 'BTECH', 'ECE', 0, 0),
(4716401513, 'Vishal Shokeen', 'vishalshokeen01@gmail.com', '1111111111', 2013, 'hep#M#sZqD', 'BTECH', 'IT', 0, 0),
(4716401516, 'VIVEK KUMAR', 'vivek.ku1997@gmail.com', '8826776971', 2016, 'HjTaD0h*N2', 'BTECH', 'IT', 0, 0),
(4716403213, 'AMIR  HASAN', 'amirhsn896@gmail.com', NULL, 2013, '3KV99ldr*9', 'BTECH', 'CSE', 0, 0),
(4716403214, 'Jatin Aswal', 'jatin.aswal@rediffmail.com', '8586072887', 2014, 'UuYDjxA9sd', 'BTECH', 'CSE', 0, 0),
(4716403216, 'Vishal Pal ', 'pal.vishal41@gmail.com', '9873033645', 2016, 'rRwAtez6*3', 'BTECH', 'CSE', 0, 0),
(4716404514, 'PARGYA KASHYAP', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4716404515, 'SUMIT TEOTIA', 'teotiasumit13@gmail.com', NULL, 2015, 'gy0iCQC4KT', 'MCA', 'SE', 0, 0),
(4716404516, 'SHIKHARDEEP BHATNAGAR', 'shikharbhatnagar68@gmail.com', NULL, 2016, 'ZbOBkK8BG4', 'MCA', 'SE', 0, 0),
(4716410514, 'Gaurav Mann', 'gauravmann@ymail.com', NULL, 2014, '#4pC6Bnrpl', 'BTECH', 'IT', 0, 0),
(4716412813, 'JITENDER', 'sehgal12harmohit@gmail.com', '9871137390', 2013, '3HGehJMzQ3', 'BTECH', 'ECE', 0, 0),
(4716412814, 'MANISH KUMAR YADAV', 'manishkumryadav@gmail.com', NULL, 2014, 'iTRH74egQ6', 'BTECH', 'ECE', 0, 0),
(4816401513, 'Mohd Gulfam', 'gulfamansari1515@gmail.com', '1111111111', 2013, 'bGgcIenZDN', 'BTECH', 'IT', 0, 0),
(4816403213, 'VIKAS  GIRI', NULL, NULL, 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(4816403214, 'Vikas Soni', 'vikassonibest22@gmail.com', NULL, 2014, '7v0svIFwFd', 'BTECH', 'CSE', 0, 0),
(4816403216, 'Yash Anand', 'yashanand155@gmail.com', '8800221080', 2016, 'xN7bR5hsXO', 'BTECH', 'CSE', 0, 0),
(4816404514, 'PARCHI', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4816404515, 'VAIBHAV RAI ', 'vaibhav.restless@gmail.com', '7065146268', 2015, 'vJQiW7khE#', 'MCA', 'SE', 0, 0),
(4816404516, 'SOUVIK CHAKRABORTY', 'souvikc40@gmail.com', '9716330981', 2016, 'hg*zBQ3Lvw', 'MCA', 'SE', 0, 0),
(4816410514, 'Mahesh Gahlot', 'gahlotmahesh8@gmail.com', '7042464686', 2014, 'CVNCbEm47R', 'BTECH', 'IT', 0, 0),
(4816412813, 'GAUTAM RAWAT', 'Gautamrawat3333@gmail.com', '', 2013, 'HUDZjUAtyZ', 'BTECH', 'ECE', 0, 0),
(4816412814, 'SAURABHA SIDDHARTH WANKHEDE', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(4916401513, 'Pankaj Shokeen', 'pankajshokeen751@gmail.com', '1111111111', 2013, 'ajiv4hIRvZ', 'BTECH', 'IT', 0, 0),
(4916403213, 'SACHIN  KUMAR', 'sachin8447@gmail.com', NULL, 2013, 'uDmSFoaWfC', 'BTECH', 'CSE', 0, 0),
(4916403214, 'Mohd Shadab ', 'shadab.saifi007@gmail.com', '8744969633', 2014, 'V5q#3J5bdC', 'BTECH', 'CSE', 0, 0),
(4916403216, 'Yogesh Sharma ', 'yogesh02011998@gmail.com', '9910255044', 2016, 'AA21XT7hcu', 'BTECH', 'CSE', 0, 0),
(4916404514, 'ASHISH ARPAN KULLU', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4916404515, 'VISHAL ARORA ', 'VISHAL ARORA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(4916404516, 'UDIT SINGH PATWAL', 'patwaludy1995@gmail.com', '8377026242', 2016, 'Ajzcy0*Tby', 'MCA', 'SE', 0, 0),
(4916410514, 'Prashant Jaiswal', 'prashantj95@gmail.com', NULL, 2014, '*wqbBVzEd3', 'BTECH', 'IT', 0, 0),
(4916412813, 'HARMOHIT SINGH', 'sehgal12harmohit@hotmail.com', '9999905987', 2013, 'doJw5eqY7d', 'BTECH', 'ECE', 0, 0),
(4916412814, 'UDIT RANA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(5016401513, 'Vishal Kardam', 'vishalat1994@gmail.com', '1111111111', 2013, 'b6#TJlY0sN', 'BTECH', 'IT', 0, 0),
(5016403214, 'himanshu kumar', 'kumarhimanshu901@gmail.com', '7827285662', 2014, 'WstNSkroRg', 'BTECH', 'CSE', 0, 0),
(5016404514, 'JASKARNA SINGH', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5016404515, 'YANKIT CHAUHAN', 'yankitch@gmail.com', '9958511153', 2015, 'pqHKIaILtL', 'MCA', 'SE', 0, 0),
(5016404516, 'VARUN KUMAR', 'varunkumar.2805@gmail.com', NULL, 2016, 'bWZloisOi2', 'MCA', 'SE', 0, 0),
(5016410514, 'Md. Naiyar Alam', 'naiyar3309@gmail.com', NULL, 2014, 'BppPAMpv1w', 'BTECH', 'IT', 0, 0),
(5016412814, 'SAURAV MANN', 'souravmaan1@gmail.com', NULL, 2014, 'CP7JJldFeq', 'BTECH', 'ECE', 0, 0),
(5116401513, 'Sanyam Kumar', 'sanyamkumar007@gmail.com', '1111111111', 2013, 'm8SkIc2vAn', 'BTECH', 'IT', 0, 0),
(5116403214, 'Prince Dhiman', 'princed000@gmail.com', '9911484907', 2014, 'U2giaBmnqi', 'BTECH', 'CSE', 0, 0),
(5116404514, 'WILSON XAVIER MINZ ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5116404516, 'VASUNDHARA', 'mvasu2406@gmail.com', '9711549681', 2016, '2hBFfp33Ka', 'MCA', 'SE', 0, 0),
(5116410514, 'Ekta Sharma', 'sharma17ekta@gmail.com', NULL, 2014, 'SMwzOZ6Izu', 'BTECH', 'IT', 0, 0),
(5116412813, 'HARSHIT PAL', 'harshitgoku@gmail.com', '9716629098', 2013, 'H0Ofw5u4NN', 'BTECH', 'ECE', 0, 0),
(5116412814, 'RAGHAV KUMAR', 'WWW.RAGHAV.KUMAR1994@GMAIL.COM', '9999225054', 2014, 'UCOUgSPWGF', 'BTECH', 'ECE', 0, 0),
(5216401513, 'Kislay Raj', 'Kislay Raj', '1111111111', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(5216403213, 'TUSHAR  KUMAR', 'tusharkumar886@gmail.com', NULL, 2013, 'wNpJVPOrja', 'BTECH', 'CSE', 0, 0),
(5216403214, 'sujit kumar', 'sujeet.sharma2395@gmail.com', '9971879231', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(5216404514, 'ABHISKEK', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5216410514, 'Sarthak Rohilla', 'sarthakrohilla03@gmail.com', NULL, 2014, 'R*1CRrMwwl', 'BTECH', 'IT', 0, 0),
(5216412813, 'ZAKIR', 'zak.saifi7@gmail.com', '9560458425', 2013, 'nwR5YsXYfV', 'BTECH', 'ECE', 0, 0),
(5216412814, 'ABHISHEK KUMAR SINGH', 'abhisheksingh0496@gmail.com', NULL, 2014, 'N0RgGbAbJ3', 'BTECH', 'ECE', 0, 0),
(5316401513, 'Rishabh Narwara', 'Rishabhnarwara95@gmail.com', '1111111111', 2013, '26ZQVYvtbg', 'BTECH', 'IT', 0, 0),
(5316403213, 'ISHAN  SAIN', 'ishansain27@gmail.com', NULL, 2013, '2NWNdGlWsd', 'BTECH', 'CSE', 0, 0),
(5316403214, 'Suhail Riyaz', 'suh24ailriyaz@gmail.com', '9654061081', 2014, 'oVPFFcE9yB', 'BTECH', 'CSE', 0, 0),
(5316404514, 'LALIT KUMAR NAGAR', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5316410514, 'Akash Verma', 'smart.akashvermaa@gmail.com', NULL, 2014, 'OpTogCpfac', 'BTECH', 'IT', 0, 0),
(5316412813, 'PIYUSH VERMA', 'piyushverma955@gmail.com', '8826210542', 2013, 'aApYF*rt6x', 'BTECH', 'ECE', 0, 0),
(5316412814, 'KAVINDER YADAV', 'kavinderyadav16@gmail.com', NULL, 2014, 'gO8k35fdZQ', 'BTECH', 'ECE', 0, 0),
(5416401513, 'Himanshu Kumar', 'Himanshu Kumar', '1111111111', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(5416403214, 'AMIT YADAV', 'amitiscool4u@gmail.com', '9871891337', 2014, 'f*coLWS8sF', 'BTECH', 'CSE', 0, 0),
(5416404514, 'LOVENISH RAJ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5416410514, 'Rishab Sharma', 'rickirishabh4895@gmail.com', NULL, 2014, 'XaqkG7CHNf', 'BTECH', 'IT', 0, 0),
(5516401513, 'Naman Jain', 'nj9412869269@gmail.com', '1111111111', 2013, 'iB32#VCNNQ', 'BTECH', 'IT', 0, 0),
(5516403213, 'ANUDIT  VERMA', 'verma.anudit@gmail.com', NULL, 2013, 'y9yH8tCgjZ', 'BTECH', 'CSE', 0, 0),
(5516403214, 'Aman Solanki', 'amysolanki08@gmail.com', '', 2014, 'gi1aojrVYQ', 'BTECH', 'CSE', 0, 0),
(5516404514, 'JENIYA JEPH', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5516404810, 'ANKIT KUMAR', 'ANKIT KUMAR', NULL, 2015, 'e3d74f3542b44a621ebed70dcefe13', 'MTECH', 'CSE', 0, 0),
(5516410514, 'Anu Sharma', 'anusharma377a@gmail.com', NULL, 2014, 'LMezE*LgCB', 'BTECH', 'IT', 0, 0),
(5516412814, 'ABHIMANYU KUMAR', 'abhimanyuk92@gmail.comy', NULL, 2014, '6mqTU2M', 'BTECH', 'ECE', 0, 0),
(5616401513, 'lalit kumar', 'lucky251293@gmail.com', '1111111111', 2013, 'rh22rSmPU6', 'BTECH', 'IT', 0, 0),
(5616403213, 'ANSHUL  WALIA', 'anshulwalia128@gmail.com', NULL, 2013, '3MIcskuBpO', 'BTECH', 'CSE', 0, 0),
(5616403214, 'Bhunesh Singh ', 'bhunesh34@gmail.com', '9971796246', 2013, '8T5Okz1b86', 'BTECH', 'CSE', 0, 0),
(5616404514, 'DHARA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5616412813, 'AAYUSH SAINI', 'aayush8895@gmail.com', '9654349730', 2013, 'rby7Cy4mJG', 'BTECH', 'ECE', 0, 0),
(5616412814, 'MOHAMMAD RAIYAN', 'yahoo1732@gmail.com', NULL, 2014, 'EMQXpqW1PC', 'BTECH', 'ECE', 0, 0),
(5716401513, 'ANURAG ', 'anuragb12g@gmail.com', '1111111111', 2013, 'XSjFPtalZi', 'BTECH', 'IT', 0, 0),
(5716403213, 'Yogesh', 'yogeshmehra68@gmail.com', '8588842818', 2013, 'JgMKBnBRM4', 'BTECH', 'CSE', 0, 0),
(5716403214, 'Rakshit solanki', 'rac1909@gmail.com', '+918826512355', 2014, '0uZ8x78eSN', 'BTECH', 'CSE', 0, 0),
(5716404514, 'PRIYANKA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5716410514, 'Gaurav Baisoya', 'gauravbaisoya96@gmail.com', NULL, 2014, '0wlvQ0T', 'BTECH', 'IT', 0, 0),
(5716412811, 'VIKASH ', 'VIKASH ', NULL, 2015, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'ECE', 0, 0),
(5716412814, 'KAPIL KUMAR', '0704kapilkumar@gmail.com', NULL, 2014, 'A1*C3vBmha', 'BTECH', 'ECE', 0, 0),
(5816401513, 'Ashish Kumar', 'Ashish Kumar', '1111111111', 2013, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(5816403213, 'ABHISHEK  ', 'abhishekka3193@gmail.com', NULL, 2013, 'NLBS3XREhl', 'BTECH', 'CSE', 0, 0),
(5816404514, 'ADITI MEHRA ', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5816410514, 'Jatin Verma', 'jatin95oct@gmail.com', NULL, 2014, 'l5dKQvCNK9', 'BTECH', 'IT', 0, 0),
(5816412813, 'PRATEEK DUTT', 'duttprateek1996@gmail.com', '9910411297', 2013, 'qbMP7QFx9b', 'BTECH', 'ECE', 0, 0),
(5816412814, 'BHARAT DAGAR', 'bharatdagar10@gmail.com', NULL, 2014, 'V#YPFaJeyW', 'BTECH', 'ECE', 0, 0),
(5916401513, 'Rahul Sah', 'rahulworkingtim@gmail.com', '1111111111', 2013, 'rbd#9BZD*w', 'BTECH', 'IT', 0, 0),
(5916403214, 'Mohit Yadav', 'yadavmohit0001@gmail.com', '8285721438', 2014, 'X#tFr41GXa', 'BTECH', 'CSE', 0, 0),
(5916404514, 'CHESHTA PUNJABI', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(5916410514, 'Sawan Jangra', 'sawansavlodhia@gmail.com', NULL, 2014, 'o#nfJxXNOs', 'BTECH', 'IT', 0, 0),
(5916412813, 'TARUN KUMAR', 'tarunk771@gmail.com', '9818314329', 2013, 'umyJHKucKW', 'BTECH', 'ECE', 0, 0),
(5916412814, 'ROSHAN KUMAR ', 'ROSHAN KUMAR ', NULL, 2015, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'ECE', 0, 0),
(6016401513, 'Santosh Pant', 'santos.xwolverine@gmail.com', '1111111111', 2013, 'GzbLBaHrAq', 'BTECH', 'IT', 0, 0),
(6016403213, 'RAHUL  MEENA', 'www.rahulmeena100@gmail.com', NULL, 2013, 'bO1QKM9shf', 'BTECH', 'CSE', 0, 0),
(6016403214, 'Anurag Kumar', 'anuragk240@gmail.com', '9910770607', 2014, 'rE3MOg6hns', 'BTECH', 'CSE', 0, 0),
(6016404514, 'JYOTI MEENA', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(6016410514, 'Sagar Rooprai', 'sagarrooprai2013@gmail.com', '9999994993', 2014, 'EAqZZwnASF', 'BTECH', 'IT', 0, 0),
(6016412813, 'LOKESH SHERAWAT', 'lokesharawat@gmail.com', NULL, 2013, '7LQaL7Zte*', 'BTECH', 'ECE', 0, 0),
(6016412814, 'ASHWANI', 'ashwani28197@gmail.com', NULL, 2014, 'rWhXpXUYL*', 'BTECH', 'ECE', 0, 0),
(6116403213, 'KARAN RAJIV PUNDIR', 'lupine.libran@gmail.com', NULL, 2013, 'FoQaLAcGoJ', 'BTECH', 'CSE', 0, 0),
(6116410514, 'Prashant Kumar Singh', 'prashant.kr.singh2@gmail.com', NULL, 2014, 'UHpoxIl2nM', 'BTECH', 'IT', 0, 0),
(6116412813, 'NITESH BAJAJ', 'niteshbajaj164@hotmail.com', NULL, 2013, '6fqQOwNHPv', 'BTECH', 'ECE', 0, 0),
(6116412814, 'KARAMVEER', 'vickynirwal16@gmail.com', NULL, 2014, 'wflS*JtWnI', 'BTECH', 'ECE', 0, 0),
(6216403214, 'Parul kumar', 'prlkumar96@gmail.com', '8527978358', 2014, '#zdlp45#bg', 'BTECH', 'CSE', 0, 0),
(6216410514, 'Rajat Kumar', 'rajat771995@gmail.com', NULL, 2014, 'Cw0wee35Vm', 'BTECH', 'IT', 0, 0),
(6216412813, 'KARAN', 'karankashyap111@gmail.com', '8586006768', 2013, 'M7K#0EV8jV', 'BTECH', 'ECE', 0, 0),
(6216412814, 'PRASHANT SINGH', 'godisbenevolent@gmail.com', NULL, 2014, 'RVCU8Z##A7', 'BTECH', 'ECE', 0, 0),
(6316403213, 'ANKIT  KUMAR', 'KUMAR7ANI@GMAIL.COM', '', 2013, 'nqclWQ0ZFi', 'BTECH', 'CSE', 0, 0),
(6316403214, 'Annie Marandi', 'annie.13anki@gmail.com', '8860058205', 2014, 'XL#fq1z4fI', 'BTECH', 'CSE', 0, 0),
(6316410514, 'Prashant ', 'prashantk751@gmail.com', NULL, 2014, '#82NSpidEb', 'BTECH', 'IT', 0, 0),
(6316412813, 'UJJWAL BHARGAVA', 'ujjwal71194@gmail.com', NULL, 2013, '8RAqqwyhsG', 'BTECH', 'ECE', 0, 0),
(6416403214, 'Ashish', 'ashishraj615@gmail.com', '8285587254', 2014, 'JzNw#vECmc', 'BTECH', 'CSE', 0, 0),
(6416412814, 'MAYANK SINGH', 'mayanksingh98765@gmail.com', NULL, 2014, 'zf0ZYkh0it', 'BTECH', 'ECE', 0, 0),
(6516403213, 'AKANKSHA  BHALLA', 'akanksha.bhalla@gmail.com', NULL, 2013, 'NWvOtSbAoH', 'BTECH', 'CSE', 0, 0),
(6516403214, 'Surender Kumar', 'surender7790@gmail.com', '9718305549', 2014, 'PJ7W5XJSvo', 'BTECH', 'CSE', 0, 0),
(6516410514, 'Sanjay Singh', 'thebboyersam@gmail.com', '7042724201', 2014, '75jb6hUeWz', 'BTECH', 'IT', 0, 0),
(6516412813, 'AMOL ISSAC', 'amol.xalxo@gmail.com', NULL, 2013, '4#6138cgg9', 'BTECH', 'ECE', 0, 0),
(6516412814, 'JAI PRAKASH', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(6616403210, 'RAHUL KUMAR', 'RAHUL KUMAR', NULL, 2015, 'e3d74f3542b44a621ebed70dcefe13', 'MTECH', 'CSE', 0, 0),
(6616412814, 'SAURAV SINGH RANA', 'ranasaurav92@gmail.com', NULL, 2014, 'tfq03gy#a4', 'BTECH', 'ECE', 0, 0),
(6716403213, 'KARMA YESHI PHUNTSOK', 'kyp68forever@gmail.com', NULL, 2013, 'QuyOft3Q#l', 'BTECH', 'CSE', 0, 0),
(6716403214, 'VARUN KUMAR', 'varun96505@gmail.com', '9650580338', 2014, 'W1#IxXWYEv', 'BTECH', 'CSE', 0, 0),
(6716410514, 'Vasudha Rajora', 'vasudharajora@gmail.com', NULL, 2014, 'iY2KCsdrWY', 'BTECH', 'IT', 0, 0),
(6716412814, 'ANSHUL', 'anshul7471@gmail.com', NULL, 2014, 'hzzmokh83o', 'BTECH', 'ECE', 0, 0),
(6816403213, 'TENZIN   CHONYI', 'tchonyi69@gmail.com', '9953144710', 2013, 'Sg4cuIyCIs', 'BTECH', 'CSE', 0, 0),
(6816403214, 'Nitish panwar', 'nitishrock26@gmail.com', '9718162077', 2014, 'Y1gmK#Ka2z', 'BTECH', 'CSE', 0, 0),
(6816412813, 'PIYUSH GUPTA', 'HANCY.piyushgupta@gmail.com', NULL, 2013, 't5zfQYmATK', 'BTECH', 'ECE', 0, 0),
(6816412814, 'MAHESH', 'diwakar.mahesh99@gmail.com', NULL, 2014, 'Jv5N4zKeib', 'BTECH', 'ECE', 0, 0),
(6916401511, 'Sudeep Chahlia', 'Sudeep Chahlia', '1111111111', 2013, 'ad23482925b933196ba818f7a872b', 'BTECH', 'IT', 0, 0),
(6916403213, 'TSERING  DHONDUP', 'tdhondup01@gmail.com', NULL, 2013, 'bzl211s', 'BTECH', 'CSE', 0, 0),
(6916403214, 'Bhagyashree', 'shreebhagya3110@gmail.com', '8800650639', 2014, 'WPLdNQ7', 'BTECH', 'CSE', 0, 0),
(6916410514, 'Deepanshu Chambok', 'deepanshu20296@gmail.com', '9818206925', 2014, 'h9U*7QlHBO', 'BTECH', 'IT', 0, 0),
(7016403213, 'SIDHARTH  DEWAN', 'sidharthdewan1@gmail.com', NULL, 2013, 'DuGLjWR49o', 'BTECH', 'CSE', 0, 0),
(7016403214, 'Sunedh Hedaoo', 'hdemus.hedaoo@gmail.com', '9868462059', 2014, 'rAWdv7HWr0', 'BTECH', 'CSE', 0, 0),
(7016410514, 'Mohit Sandhu', 'mohitsandhu98@gmail.com', NULL, 2014, 'RLiD1I1ivm', 'BTECH', 'IT', 0, 0),
(7016412811, 'Abhishek ', NULL, NULL, 2013, 'ad23482925b933196ba818f7a872b', 'BTECH', 'ECE', 0, 0),
(7016412813, 'KOMAL CHAUDHARY', 'krzzzkomal@gmail.com', NULL, 2013, 'b4erVjlGnl', 'BTECH', 'ECE', 0, 0),
(7116403213, 'RISHI  SOOD', 'rishisood16@gmail.com', NULL, 2013, 'raurzNCubw', 'BTECH', 'CSE', 0, 0),
(7116403214, 'Kirtika', 'kirtika.chahar@gmail.com', '9953050175', 2014, 'baon9YAvRB', 'BTECH', 'CSE', 0, 0),
(7116410514, 'Sandeep Tanwar', 'sandeepmtanwar@gmail.com', '9015941977', 2014, 'rcWf3xUvwO', 'BTECH', 'IT', 0, 0),
(7116412814, 'NITIN', 'nitingautam2701@gmail.com', NULL, 2014, 'VAM8Fqk#5T', 'BTECH', 'ECE', 0, 0),
(7216401512, 'SHASHIKANT', 'SHASHIKANT', NULL, 2012, '86985e105f79b95d6bc918fb45ec7727', 'MTECH', 'IT', 0, 0),
(7216403213, 'MANEBAYE MARK', 'jamesrobert340@gmail.com', '9711450997', 2013, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'CSE', 0, 0),
(7216403214, 'Sanidhya Wakdikar', 'sanidhya12@gmail.com', '9555057048', 2014, 'ggu4i86ex2', 'BTECH', 'CSE', 0, 0),
(7216410514, 'Sumit Singwal', 'sumit13singwal@gmail.com', '7838293188', 2014, '3jXnk3jldF', 'BTECH', 'IT', 0, 0),
(7216412814, 'DASARI SINDHU', 'dsu.ipu1995@gmail.com', NULL, 2014, 'SBNh*J29nj', 'BTECH', 'ECE', 0, 0),
(7316403214, 'Sumit Kumar', 'realsumitkumar@gmail.com', '9650739442', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(7316410514, 'Sulabh Jain', 'sulabhjain1604@gmail.com', NULL, 2014, 'NYlkuQzI9t', 'BTECH', 'IT', 0, 0),
(7316412814, 'VIVEK KUMAR', 'vivek.sr007@gmail.com', '8377918810', 2014, 'JhV4YiJvdc', 'BTECH', 'ECE', 0, 0),
(7416403214, 'Arshad Nasir', 'nasirarshad0208@gmail.com', '7503809974', 2014, 'aOPHJnWbgL', 'BTECH', 'CSE', 0, 0),
(7416410514, 'Abhishek Kumar Meena', 'abhishekmeena969@gmail.com', NULL, 2014, 'x0Q64fz7s2', 'BTECH', 'IT', 0, 0),
(7416412814, 'Sohil Solanki', 'sahilsolanki32@gmail.com', NULL, 2014, 'eons4TCfeK', 'BTECH', 'ECE', 0, 0),
(7516410514, 'Kushagra Bansal', 'kushagrabansal95@gmail.com', '7836951989', 2014, 'mWERH4nuB9', 'BTECH', 'IT', 0, 0),
(7516412814, 'SHUBHAM Bansal', 'sbbansal93@gmail.com', '9873194509', 2014, 'OQfdLKyyMS', 'BTECH', 'ECE', 0, 0),
(7616412814, 'Shubham Srivastava', 'persistentshubham@gmail.com', NULL, 2014, 'ohoQ4g7Frp', 'BTECH', 'ECE', 0, 0),
(7716403214, 'JATIN RAJANI', 'jatinraj15@gmail.com', '9871748867', 2014, 'npZEn7Jcsz', 'BTECH', 'CSE', 0, 0),
(7716410514, 'Aishwarya Gambhir', 'aishwarya.gambhir13@gmail.com', NULL, 2014, '3ktjfs34ju', 'BTECH', 'IT', 0, 0),
(7816403214, 'Mayank Tyagi', 'mayaanktyagi@gmail.com', ' 91-9718287727', 2014, 'vgELpbjla6', 'BTECH', 'CSE', 0, 0),
(7816410514, 'Mohit Nagpal', 'nagpalmohit3@gmail.com', '9711122310', 2014, '1Ur5*9n80K', 'BTECH', 'IT', 0, 0),
(7816412814, 'Shubham', 'shubhamkheraliya111@gmail.com', NULL, 2014, 'Vr8IyIUQhn', 'BTECH', 'ECE', 0, 0),
(7916403214, 'Madhur Bansal', 'bansal.madhur17@gmail.com', '9811556687', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(7916410514, 'Sudhir Prasad', 'sudhirprasad29@gmail.com', NULL, 2014, 'Le*1#ydA**', 'BTECH', 'IT', 0, 0),
(7916412814, 'Tanya Jayant', 'tanyajayant27@gmail.com', NULL, 2014, 'LbJ2kpKWoT', 'BTECH', 'ECE', 0, 0),
(8016403214, 'Sukirti Arora ', 'sukirtiarora1996@gmail.com', '7053427752 ', 2014, 'KIWjbxY48k', 'BTECH', 'CSE', 0, 0),
(8016410514, 'Bhavya Gard', 'bhavyagarg199@gmail.com', NULL, 2014, 'sIR8fM87NJ', 'BTECH', 'IT', 0, 0),
(8016412814, 'Mohit Sehgal', 'sehgalrkss@gmail.com', NULL, 2014, 's2kBXLGpqJ', 'BTECH', 'ECE', 0, 0),
(8116403212, 'Gaurav Jaglan', 'jaglan.gaurav@gmail.com', NULL, 2016, 'CfQ5M0DiFY', 'MTECH', 'CSE', 0, 0),
(8116403214, 'Sarthak goel', 'Sarthakgoel1995@gmail.com ', '8527108534', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(8116412814, 'Sabitra Rudra', 'toshy2say@gmail.com', NULL, 2014, 'plaI0oY*lf', 'BTECH', 'ECE', 0, 0),
(8216403214, 'Sameer kumar', 'sameer27995@gmail.com', '9015408972', 2014, 'WaO1IDi6NI', 'BTECH', 'CSE', 0, 0),
(8216412814, 'Mridul Gupta', 'gupta.mridul36@gmail.com', NULL, 2014, 'qA*t3ol7gn', 'BTECH', 'ECE', 0, 0),
(8316403212, 'Yash Jain', 'yashjain1394@gmail.com', NULL, 2016, 'yUAGZRAiXd', 'MTECH', 'CSE', 0, 0),
(8316403214, 'Rahul sharma', 'rahulrock0082@gmail.com', '7840816145', 2014, 'M4oMrNl61g', 'BTECH', 'CSE', 0, 0),
(8316410514, 'Simran Sarin', 'simran.sarin.03.ss@gmail.com', '', 2014, 'F2C5PFV8DV', 'BTECH', 'IT', 0, 0),
(8316412814, 'Varun Malhotra', 'vrn.malhotra@gmail.com', NULL, 2014, 'XBfgoV12x6', 'BTECH', 'ECE', 0, 0),
(8416403214, 'Hemang S Kumar', 'hemansk@gmail.com', '9718368484', 2014, '6OZggK##sb', 'BTECH', 'CSE', 0, 0),
(8416412814, 'Somya Chauhan', 'saumya190396@gmail.com', NULL, 2014, '1lbC1JY3kn', 'BTECH', 'ECE', 0, 0),
(8516403214, 'arpan kushwaha', 'knightwatchmayday@gmail.com', '9968828315', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(8516410514, 'Rishabh Narang', 'rnradon17@gmail.com', '9999688904', 2014, 'RSr4p9c9bF', 'BTECH', 'IT', 0, 0),
(8516412814, 'Tanya Mmenhani', 'tanay.menghani@gmail.com', NULL, 2014, 'h9xeTHN5Q6', 'BTECH', 'ECE', 0, 0),
(8616403214, 'Akarsh Choudhary', NULL, '8586895856', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(8616410514, 'Shivani Bhutani', 'shivanibhutani9@gmail.com', NULL, 2014, 'xw61Gyw4TO', 'BTECH', 'IT', 0, 0),
(8616412814, 'Sudhir Sharma', 'SHARMASUDHIR233@GMAIL.COM', NULL, 2014, '2d9qOJAP7G', 'BTECH', 'ECE', 0, 0),
(8716410514, 'Hemant Kumar', 'hemant.gt.kumar@gmail.com', NULL, 2014, 'xmUxWS4yAb', 'BTECH', 'IT', 0, 0),
(9116403212, 'NIPUN  GARG', 'nipunfl@gmail.com', '9953809876', 2013, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'CSE', 0, 0),
(9516410514, 'Pranav Handoo', 'pranav.handoo@gmail.com', NULL, 2014, 'f8uH#4BRoT', 'BTECH', 'IT', 0, 0),
(9916412811, 'AKASH', 'AKASH', NULL, 2015, 'a96449d5769fa7361d7ecc6aa3f6d28', 'MTECH', 'ECE', 0, 0),
(10016403212, 'Mayank Pant', NULL, NULL, 2012, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'CSE', 0, 0),
(10116403212, 'TSEWANG  DORJEE', 'tsewangjee@gmail.com', '9910745488', 2013, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'CSE', 0, 0),
(10116403215, 'Rajat Maheshwari', 'rajat.usict.101164@ipu.ac.in', '8447828766', 2015, '4QrILNnXtB', 'BTECH', 'CSE', 0, 0),
(10216403212, 'BISHWARAJ  CHOURASIA', NULL, NULL, 2013, '5a105e8b9d40e1329780d62ea2265d8a', 'BTECH', 'CSE', 0, 0),
(10216403215, 'Abhishek Malik ', 'malikabhishek273@gmail.com', '9818742437', 2015, 'i1RnMy1Tbr', 'BTECH', 'CSE', 0, 0),
(10316403215, 'Divyansh', 'divyansh1802@gmail.com', '9650825415', 2015, '2gRNUBLDjQ', 'BTECH', 'CSE', 0, 0),
(40016401513, 'Paras Chugh', 'paraschugh6@gmail.com', '1111111111', 2013, 'iIm9d#Uqqe', 'BTECH', 'IT', 0, 0),
(40016403214, 'Sachin Chaudhury', 'sachinchaudhury@gmail.com', '7042422162', 2014, '#8jcebhE5A', 'BTECH', 'CSE', 0, 0),
(40016404514, 'REGAN TIMSINA (Foreign Student)', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(40116401515, 'AMAN MITTAL ', 'sharadmittal52@gmail.com', '8130659989', 2015, 'aJAm8PHFPi', 'BTECH', 'IT', 0, 0),
(40116401516, 'ANUBHAV BANSAL', 'availapanti@gmail.com', '7027379480', 2016, 'c09qv7n8gn', 'BTECH', 'IT', 0, 0),
(40116403214, 'Tashi Paljor', 'tashi.paljor@ymail.com ', '8447853488', 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(40116403215, 'PARAS', 'paraswadhwa13@gmail.com', '9215297777', 2015, 'LZS5v#TakG', 'BTECH', 'CSE', 0, 0),
(40116403216, 'Harish kumar', 'Harish kumar', '9468380165', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(40116404516, 'SHASHANK SHEKHAR YADAV', 'twinshashank@gmail.com', NULL, 2016, '2AN0OhSRhO', 'MCA', 'SE', 0, 0),
(40116410514, 'Manish Kumar Gupta ', 'kumarmanish1995130@gmail.com', NULL, 2014, 's*N8xhusCP', 'BTECH', 'IT', 0, 0),
(40116412815, 'PRANJAL RAJAN ', 'pranjalrajan007@gmail.com', NULL, 2015, 'X0yGAbIv13', 'BTECH', 'ECE', 0, 0),
(40116412816, 'HARSH', 'harshj1298@gmail.com', NULL, 2016, 'vvZhrtbmy*', 'BTECH', 'ECE', 0, 0),
(40216401516, 'TARUN SINGH', 'riosingh@gmail.com', '8745065530', 2016, 'ONPTeMmTaC', 'BTECH', 'IT', 0, 0),
(40216403215, 'DHAWAL BABAR ', 'dhawalbabbar97@gmail.com', NULL, 2015, 'q4Jq5FFa1h', 'BTECH', 'CSE', 0, 0),
(40216403216, 'Kunal Goyal ', 'kunalgoyal.goyal9@gmail.com', '8587836880', 2016, 'Zz6n6dg', 'BTECH', 'CSE', 0, 0),
(40216404516, 'SHUBHAM SINGH', 'SHUBHAM SINGH', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(40216412815, 'ABHISHEK MALIK', 'ABHISHEK MALIK', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(40216412816, 'YASH MAHERWAL', 'noni12yash@gmail.com', '9205954730', 2016, 'daarc3XTL3', 'BTECH', 'ECE', 0, 0),
(40316401515, 'DEEPANSHU MALHOTRA', 'DEEPANSHU MALHOTRA', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(40316401516, 'HITESH POPLY', 'poply.hitesh@gmail.com', '8059517188', 2016, '4TVBbq7YIj', 'BTECH', 'IT', 0, 0),
(40316403214, 'Ankit', 'ankitrajpal@hotmail.com', '8373961209', 2014, 'XTXuIa0ImL', 'BTECH', 'CSE', 0, 0),
(40316403215, 'SUNNY PARIHAR ', 'sunnyparihar35@gmail.com', '7836079960', 2015, 'Hh6InhBTGe', 'BTECH', 'CSE', 0, 0),
(40316403216, 'Rashi Jain', 'jainrashi2804@gmail.com', '9034340676', 2016, 'phkGkKkwYg', 'BTECH', 'CSE', 0, 0),
(40316404515, 'ANADI SAHA', 'anadishah23@gmail.com', NULL, 2015, 'o7L18OTrij', 'MCA', 'SE', 0, 0),
(40316404516, 'NITESH KAUSHIK', 'linktonitesh@gmail.com', NULL, 2016, 'RVGz08gdyI', 'MCA', 'SE', 0, 0),
(40316412815, 'VISHAL GAUD', 'gaudsmack07@gmail.com', NULL, 2015, 'ntooF*ytEp', 'BTECH', 'ECE', 0, 0),
(40316412816, 'ASHUTOSH SINGH', 'ashutoshsinghe@gmail.com', NULL, 2016, '2zGFFGJrfD', 'BTECH', 'ECE', 0, 0),
(40416401515, 'SATYAM KUMAR ', 'satyamkmr326@gmail.com', NULL, 2015, '9L9E15*G4L', 'BTECH', 'IT', 0, 0),
(40416401516, 'VISHU TYAGI', 'tyagi.sparky@gmail.com', '8607287966', 2016, 'IcnAe0tDgc', 'BTECH', 'IT', 0, 0),
(40416403214, 'Karishma', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(40416403216, 'Gaurav Kumar', 'icon.gaurav806@gmail.com', '9654455897', 2016, 'm*jzzlKYDQ', 'BTECH', 'CSE', 0, 0),
(40416404515, 'SHUBHAM SINGH ', 'shuvi1235@gmail.com', NULL, 2015, 'yJZCTvaKOK', 'MCA', 'SE', 0, 0),
(40416404516, 'VIVEK DAGAR', 'vivekdagar26@gmail.com', NULL, 2016, 'MN#B0PGJGe', 'MCA', 'SE', 0, 0),
(40416412815, 'SHUBHAM KUMAR ', 'SK9331657@GMAIL.COM', '8447033951', 2015, '0hF6o1MwER', 'BTECH', 'ECE', 0, 0),
(40416412816, 'AIMAN FATIMA', 'AIMAN FATIMA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(40516401515, 'PRERNA SRIVASTAV ', 'prernasrivastav03@gmail.com', NULL, 2015, '7wKsr65tXe', 'BTECH', 'IT', 0, 0),
(40516401516, 'ABHISHEK UPADHYAY', 'aupadhyay.upadhyay786@gmail.com', '', 2016, '5pvFRO43BC', 'BTECH', 'IT', 0, 0),
(40516403214, 'sneha ghimire', 'snehaghimire12@yahoo.com', '9717432406', 2014, 'D*sxZcDJ3P', 'BTECH', 'CSE', 0, 0),
(40516403215, 'UTKARSH GARG ', 'utkarsh19031997@gmail.com', '8901069099', 2015, 'vM7e72hXgg', 'BTECH', 'CSE', 0, 0),
(40516403216, 'Chanda', 'chandajyoti1@gmail.com', '9992929477', 2016, 'zPIIVrQ7OC', 'BTECH', 'CSE', 0, 0),
(40516404515, 'MOHIT ', 'mohitkathuria123@gmail.com', NULL, 2015, '8RICstOhiO', 'MCA', 'SE', 0, 0),
(40516404516, 'PRASHANT SHARMA', 'PRASHANT SHARMA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(40516412815, 'SHUBHAM BHARDWAJ', 'shubhambh2311@gmail.com', '7503068752', 2015, '9DrkLN7iJm', 'BTECH', 'ECE', 0, 0),
(40516412816, 'TARUN KUMAR TIWARI', 'tarunkumar20511@gmail.com', NULL, 2016, 'w0YAaq#xfF', 'BTECH', 'ECE', 0, 0),
(40616401515, 'DIVYANSHU SINGHAL', 'DIVYANSHU SINGHAL', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(40616401516, 'JITENDER SINGH PUNIA', 'ddeepu.kumar11@gmail.com', '7503755884', 2016, 'CCaNQvnI47', 'BTECH', 'IT', 0, 0),
(40616403214, 'Sherap Gyaltsen', 'sheraprabgyal@yahoo.com', '9958865893', 2014, 'yezbakEbxh', 'BTECH', 'CSE', 0, 0),
(40616403216, 'Sunny Goel', 'goyalsunny888@gmail.com', '8882097631', 2016, 'sO8vGus1qX', 'BTECH', 'CSE', 0, 0),
(40616404515, 'SMRITI AGGARWAL', 'aggarwalsmriti14@gmail.com', NULL, 2015, 'MyYPZZJsKG', 'MCA', 'SE', 0, 0),
(40616412815, 'KRITARTH SHARMA', 'atulyadav.rm@gmail.com', NULL, 2015, 'ikPdaEnDX#', 'BTECH', 'ECE', 0, 0),
(40616412816, 'POOJA KANDOI', 'pujakandoi06@gmail.com', '9711057170', 2016, 'SFnwmjOUkQ', 'BTECH', 'ECE', 0, 0),
(40716401515, 'SHUBHAM SHARMA ', 'sharmashubham9800@gmail.com', '9045663544', 2015, '#mVTPZa3A6', 'BTECH', 'IT', 0, 0),
(40716401516, 'MANVI VARSHNEY', NULL, '8585990669', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(40716403214, 'Shourya', 'rajshourya0722@gmail.com', '9582187696', 2014, 'y66bemS8Ng', 'BTECH', 'CSE', 0, 0),
(40716403215, 'KUMAR ANKIT ', 'ankit221505@gmail.com', NULL, 2015, 'bROXurLt8B', 'BTECH', 'CSE', 0, 0),
(40716403216, 'Tarun Goel', 'goeltarun26@gmail.com', '8586001319', 2016, 'grmesm9KQ*', 'BTECH', 'CSE', 0, 0),
(40716404515, 'HIMANSHU', 'raheja944@gmail.com', NULL, 2015, 'iMbOxKITbr', 'MCA', 'SE', 0, 0),
(40716404516, 'SHUBHAM', 'shbhm96@gmail.com', NULL, 2016, 'bsl8EMP38r', 'MCA', 'SE', 0, 0),
(40716412815, 'ARJUN SINGLA', 'arjunsinglaunique@gmail.com', '8860466727', 2015, 'doFFrhXiSE', 'BTECH', 'ECE', 0, 0),
(40716412816, 'YASH AGARWAL', 'yashag1804@gmail.com', '9654949636', 2016, 'AbWeWRUisp', 'BTECH', 'ECE', 0, 0),
(40816401516, 'PULKIT PRADEEP GUPTA', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(40816403214, 'Akash Kumar', 'akashkumar4503@gmail.com', '9717865383', 2014, 'JcG7bJECn8', 'BTECH', 'CSE', 0, 0),
(40816403215, 'PRABHANSHU GUPTA', 'prabhanshu98@gmail.com', '', 2015, 'vBKDQss', 'BTECH', 'CSE', 0, 0);
INSERT INTO `usict_students` (`enrollment_no`, `name`, `email`, `phone`, `year_of_admission`, `password`, `course`, `stream`, `batch_id`, `isUpdated`) VALUES
(40816403216, 'Sourabh karnani', 'SOURABH.KARNANI@GMAIL.COM', '9555106654', 2016, 'JzKVcrGgCD', 'BTECH', 'CSE', 0, 0),
(40816404515, 'EKAPARNA JHA', 'Jhaekparna@gmail.com', NULL, 2015, '56Fx6DbLyA', 'MCA', 'SE', 0, 0),
(40816404516, 'ANISHA GOYAL', 'anishagoyal14@gmail.com', '7838282509', 2016, 'fmcS4g#zqP', 'MCA', 'SE', 0, 0),
(40816412815, 'ADITYA GUPTA ', 'adityagupta803ag@gmail.com', NULL, 2015, 'uUY4Ejzf3j', 'BTECH', 'ECE', 0, 0),
(40816412816, 'RAJAT DENGRA', 'rajatdengra@gmail.com', NULL, 2016, 'PLcS0EjLWK', 'BTECH', 'ECE', 0, 0),
(40916401516, 'AJEET TRIPATHI', 'ajeetrock1999@gmail.comm', NULL, 2016, 'x008qxS', 'BTECH', 'IT', 0, 0),
(40916403215, 'NEIL TYAGI', 'tyagi.neil@hotmail.com', '8126732711', 2015, 'HHRrH9ii66', 'BTECH', 'CSE', 0, 0),
(40916403216, 'Dikshant Rawat', 'dikshantrawat6@gmail.com', '8285991858', 2016, 'FJWwByCTOu', 'BTECH', 'CSE', 0, 0),
(40916404515, 'SHREYA SHARMA ', 'shreyasharma93.9.11@gmail.com', NULL, 2015, 'd1ZLlg5tu7', 'MCA', 'SE', 0, 0),
(40916404516, 'TARUN GARG', 'TARUN GARG', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'MCA', 'SE', 0, 0),
(40916412815, 'PRAKASH KUMAR ', 'parkash007420@gmail.com', NULL, 2015, 'fLnOgvtoVx', 'BTECH', 'ECE', 0, 0),
(40916412816, 'ROHAN TALWAR', 'talwarrohan@yahoo.in', NULL, 2016, '0vSoRdfGya', 'BTECH', 'ECE', 0, 0),
(41016401515, 'AMAN KUMAR ', 'amansharma00a@gmail.com', '9717135501', 2015, 'dnqupQ*P1R', 'BTECH', 'IT', 0, 0),
(41016401516, 'AAYUSHI CHOUDHARY', 'aayushichoudhary.02@gmail.com', '9950141333', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(41016403215, 'VIKRAM SINGH PANWAR ', 'vikramsinghpanwar4@gmail.com', '9717544135', 2015, 'uKdUI66xqI', 'BTECH', 'CSE', 0, 0),
(41016403216, 'Akshat Papnoi', 'akshatpapnoi1110@gmail.com', '8439500407', 2016, '6*1BBhmDPP', 'BTECH', 'CSE', 0, 0),
(41016404516, 'DEEPSHIKHA', 'deep0101kaushik@gmail.com', NULL, 2016, 'lnTuAcJ51a', 'MCA', 'SE', 0, 0),
(41016412815, 'ARJUN KALIA ', 'best.buddy145@gmail.com', '9810533090', 2015, '2Sl2z5fEke', 'BTECH', 'ECE', 0, 0),
(41016412816, 'RITVIK AGRAWAL', 'ritvikagrawal1@gmail.com', '', 2016, 'd02E5yypvE', 'BTECH', 'ECE', 0, 0),
(41116401515, 'PRAGATI LOHIA ', 'PRAGATI LOHIA ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(41116401516, 'UJJWAL', 'ujjwal.lohchab7@gmail.com', '7206982874', 2016, 'PFGf4n*wjG', 'BTECH', 'IT', 0, 0),
(41116403215, 'Ritik Kamra', 'ritikkamra2@gmail.com', NULL, 2015, 'DDv5f48uNH', 'BTECH', 'CSE', 0, 0),
(41116403216, 'Abhishek Vats', 'yoabhishekvats@gmail.com', '9899515327', 2016, 'pK#zzJuQy5', 'BTECH', 'CSE', 0, 0),
(41116412816, 'SHILAJEET BANERJEE', 'sjeetbanerjee907@gmail.com', '9868176407', 2016, 'flrNjlxVYN', 'BTECH', 'ECE', 0, 0),
(41216401515, 'SIDDHARTH SINGH ', 'siddharth.titan@gmail.com', NULL, 2015, 'mclg2Hs0wE', 'BTECH', 'IT', 0, 0),
(41216401516, 'DAMANPREET SINGH', 'damanpreetsingh97@gmail.com', '9871531581', 2016, 'kukufGuTdb', 'BTECH', 'IT', 0, 0),
(41216403215, 'RITKA KADIAN', 'ritikakadian09@gmail.com', NULL, 2015, '63vLNicIkJ', 'BTECH', 'CSE', 0, 0),
(41216412815, 'SOUMAY GUTPA ', 'soumya.gupta31@gmail.com', NULL, 2015, '#AVR508UVd', 'BTECH', 'IT', 0, 0),
(41216412816, 'NAMAN MITTAL', 'naman_nm@yahoo.com', NULL, 2016, 'W*Kel5GKXD', 'BTECH', 'ECE', 0, 0),
(41316401515, 'RIYA BHATIA', 'riyabhatia26@gmail.com', NULL, 2015, 'qfIWK3cJ3f', 'BTECH', 'IT', 0, 0),
(41316401516, 'PRAKHAR KUMAR SRIVASTAVA', 'prakharkumarsrivastav@gmail.com', NULL, 2016, 'eJeAcn65KU', 'BTECH', 'IT', 0, 0),
(41316403215, 'SUBHHAM PRAKASH ', 'chimps.shubham2373@gmail.com', NULL, 2015, 'DBuNDO6lre', 'BTECH', 'CSE', 0, 0),
(41316412815, 'SUBHAM', 'upadhyaysachin92@gmail.com', NULL, 2015, 'xUUbOvr2RE', 'BTECH', 'ECE', 0, 0),
(41316412816, 'PRANAV GAUTAM', 'PRANAV GAUTAM', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(41416401515, 'GARGI GOYAL', 'GARGI GOYAL', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(41416401516, 'SOURABH MITTAL', 'sourabhm465@gmail.com', '9899980623', 2016, 'NmLoGxnq*p', 'BTECH', 'IT', 0, 0),
(41416403215, 'VAIBHAV GUPTA', 'vaibhavgupta2233@gmail.com', NULL, 2015, 'u7CwDfTZXQ', 'BTECH', 'CSE', 0, 0),
(41416412815, 'UDIT GERA', 'udit.gera98@gmail.com', NULL, 2015, '2a5VVB73d6', 'BTECH', 'ECE', 0, 0),
(41416412816, 'SHIKHAR CHADHA', 'shikharchadha17@gmail.com', NULL, 2016, 'v#wyBaWpji', 'BTECH', 'ECE', 0, 0),
(41516401515, 'REYA MAHAJAN ', 'reyamahajan27@gmail.com', NULL, 2015, '3hsHbCH#Dv', 'BTECH', 'IT', 0, 0),
(41516403215, 'NAVEEN YADAV', 'yadavnaveen826@gmail.com', NULL, 2015, 'EnGYvjP62O', 'BTECH', 'CSE', 0, 0),
(41516412815, 'SAHIL KHAN ', 'sahilkhan480@gmail.com', NULL, 2015, 'uB0H6YqmRt', 'BTECH', 'ECE', 0, 0),
(41516412816, 'DEEPAK BANSAL', 'DEEPAK BANSAL', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(41616401515, 'SHUBHAM MITTAL ', 'shubham2796@gmail.com', '9868880164', 2015, 'cI414O4GCG', 'BTECH', 'IT', 0, 0),
(41616403215, 'RAVI KUMAR RANJAN ', 'qwertyravi86@gmail.com', NULL, 2015, 'r8o0FD0', 'BTECH', 'CSE', 0, 0),
(41616412815, 'BHAVESH PAL', 'palbhavesh2121@gmail.com', NULL, 2015, 'OAhrrflMip', 'BTECH', 'ECE', 0, 0),
(41616412816, 'VANSH GOEL', 'VANSH GOEL', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(41716401515, 'BANSI', 'bansibhardwaj97@gmail.com', NULL, 2015, 'MYIr1#tWQN', 'BTECH', 'IT', 0, 0),
(41716403215, 'AKASH KUMAR ', 'AKASH KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(41716412815, 'MAMTA LUTHRA ', 'mamtaluthra98@gmail.com', NULL, 2015, 'spmvGtn7Vy', 'BTECH', 'ECE', 0, 0),
(41716412816, 'ROHAN KUMAR DAS', 'ROHAN KUMAR DAS', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(41816401515, 'ADITI ANAND ', 'aanandb57@gmail.com', NULL, 2015, 'qIlNyUrW#U', 'BTECH', 'IT', 0, 0),
(41816403215, 'SUBHAM VERMA ', 'shubham_boss@yahoo.com', NULL, 2015, 'p8QxkIT9bH', 'BTECH', 'CSE', 0, 0),
(41816412815, 'JATIN CHOUDHARY ', 'choudharyjatin.rathi@gmail.com', NULL, 2015, 'odjGWspBKE', 'BTECH', 'ECE', 0, 0),
(41816412816, 'SAMEER KUMAR', 'sameerjha1997@gmail.com', '9717119124', 2016, 'mj5QiecVpm', 'BTECH', 'ECE', 0, 0),
(41916401515, 'KAMAL ', 'kyzx11@gmail.com', NULL, 2015, 'm0o04X2Muc', 'BTECH', 'IT', 0, 0),
(41916403215, 'DINESH KUMAR ', 'dineshyadav681@gmail.com', '9136298794', 2015, 'UTc2FvFpsM', 'BTECH', 'CSE', 0, 0),
(41916412815, 'RISHABH KUMAR ', 'rishabh.kumar7@yahoo.com', NULL, 2015, '7*NllnnV*F', 'BTECH', 'ECE', 0, 0),
(41916412816, 'SRISHTEE JAIN', 'srishteejain09@yahoo.in', NULL, 2016, 'sk7u8hVUZB', 'BTECH', 'ECE', 0, 0),
(42016401515, 'VISHAL CHAUDHARY ', 'vishalch181@gmail.com', NULL, 2015, 'yEPhXEAjAU', 'BTECH', 'IT', 0, 0),
(42016403215, 'PRASHANT SINGH ', 'prashantsingh_13@yahoo.com', '8800102347', 2015, '#PaA5ATWAX', 'BTECH', 'CSE', 0, 0),
(42016412815, 'AADITYA ARYA ', 'aadityaarya001@gmail.com', NULL, 2015, 'MC07aVFjlP', 'BTECH', 'ECE', 0, 0),
(42016412816, 'DEVANSH CHAWLA', 'devanshchawla7@gmail.com', '9643158060', 2016, 'YrtkMCHmkI', 'BTECH', 'ECE', 0, 0),
(42116401515, 'ZABBY TAPPA', 'zabby0597@gmail.com', NULL, 2015, 'akIXv5V1pW', 'BTECH', 'IT', 0, 0),
(42116403215, 'MANJEET KUMAR ', 'MANJEET KUMAR ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(42116412815, 'AAKASH TIKOO', 'akashtikoo@yahoo.co.in', NULL, 2015, 'cuDfNYhLAJ', 'BTECH', 'ECE', 0, 0),
(42116412816, 'AAKASH PARIHAR', 'pariharaakash09@gmail.com', NULL, 2016, 'SlN0CGqrk5', 'BTECH', 'ECE', 0, 0),
(42216401515, 'HARSH YADAV', 'theharshji9@gmail.com', NULL, 2015, 'I9h4REwKp4', 'BTECH', 'IT', 0, 0),
(42216412816, 'KARANDEEP SINGH', 'karantaurus15@gmail.com', NULL, 2016, 'cjxXG488EO', 'BTECH', 'ECE', 0, 0),
(42316401515, 'HIMANI MALIK', 'malikhimani20@gmail.com', NULL, 2015, 'gAhK1wL', 'BTECH', 'IT', 0, 0),
(42316412816, 'PRAVEEN SANGWA', 'PRAVEEN SANGWA', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(42416401515, 'HIMANSHU', 'himanshumathur.0000@gmail.com', NULL, 2015, 'qdYhMiNWUB', 'BTECH', 'IT', 0, 0),
(50116404816, 'AKANKSHA TRIVEDI', 'akankshatrivedi.3feb@gmail.com', NULL, 2016, 'ZFgRBtj0lk', 'MTECH', 'CSE', 0, 0),
(60016403214, 'Saurabh Pahwa', 'saurabhphw@gmail.com', '9711820714', 2014, 'kqmCK6pjzR', 'BTECH', 'CSE', 0, 0),
(60016403215, 'Aayush Chaudhary', 'aayushhd10@gmail.com', NULL, 2015, 'OcmgKkXHSv', 'BTECH', 'CSE', 0, 0),
(60016404815, 'NEHA', NULL, NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'CSE', 0, 0),
(60016410514, 'Harsh Pathak ', 'vatsharsh1@gmail.com', '', 2014, '#UDrPufPjB', 'BTECH', 'IT', 0, 0),
(60016412814, 'Anusha Goel ', 'amushagoel1997@gmail.com', NULL, 2014, 'SRFuSFkg01', 'BTECH', 'ECE', 0, 0),
(60016412815, 'Apaar Parashar', 'apaarparashar@gmail.com', NULL, 2015, 'orpT0rxntR', 'BTECH', 'ECE', 0, 0),
(60116403214, 'Garima', 'garima007rajput@gmail.com', '7042830672', 2014, '21kyvkbkj1', 'BTECH', 'CSE', 0, 0),
(60116403215, 'Pranav Malik', 'pranav.sheep@gmail.com', NULL, 2015, 'V4ijJvLDmf', 'BTECH', 'CSE', 0, 0),
(60116410514, 'Prachi Garg', 'prachi3331@gmail.com', NULL, 2014, 'SeL7kS8IOI', 'BTECH', 'IT', 0, 0),
(60116410515, 'SANCHIT', NULL, NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(60116412814, 'Soumya Pandey ', 'soumyasoumya.0601@gmail.com', NULL, 2014, 'xW0EiI5wUF', 'BTECH', 'ECE', 0, 0),
(60216403214, 'neelansh garg', 'neelansh5@gmail.com', '8860430933', 2014, 'sf0SM44Qaj', 'BTECH', 'CSE', 0, 0),
(60216403215, 'Manish Yadav', 'manishyadav.nd@gmail.com', '9868453905', 2015, '#wpdi2#iRQ', 'BTECH', 'CSE', 0, 0),
(60216410514, 'Manan Narula ', 'mananipu@gmail.com', '9560481916', 2014, 'D3EEyW*PUx', 'BTECH', 'IT', 0, 0),
(60216410515, 'DEVANK', NULL, NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(60216412814, 'Priyanka Mittal ', 'mittalpriyanka96@gmail.com', NULL, 2014, 'JECP3T5Tcc', 'BTECH', 'ECE', 0, 0),
(60316403214, 'Arjun Upmanyu', 'arjun.upmanyu@gmail.com', '8860224623', 2014, '3zdBOIYiPH', 'BTECH', 'CSE', 0, 0),
(60316403215, 'Deepanshu Malhotra', 'deepanshumalhotra@gmail.com', NULL, 2015, 'p3P*IYVV48', 'BTECH', 'CSE', 0, 0),
(60316410514, 'Bhawna', 'bhawnak14@gmail.com', NULL, 2014, 'TyjzvEj9TQ', 'BTECH', 'IT', 0, 0),
(60316412814, 'Anupriya Dangi', NULL, NULL, 2014, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'ECE', 0, 0),
(60416401515, 'Vineet Kumar', 'mail', NULL, 2016, '11111', 'BTECH', 'IT', 0, 0),
(60416403215, 'Naman Chhabra', 'namanchhabra1311@yahoo.co.in', NULL, 2015, 'yqhj1tUlAP', 'BTECH', 'CSE', 0, 0),
(60416410514, 'VINEET', NULL, NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(60416412814, 'Suraj Jain ', 'jainsuraj234@gmail.com', NULL, 2014, 'IrGjOSNS5Q', 'BTECH', 'ECE', 0, 0),
(60516410514, 'SIDDHARTH', NULL, NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(60516412814, 'Shweta Sharma ', 's.shweta.s0004@gmail.com', NULL, 2014, '*ozG*DYiV*', 'BTECH', 'ECE', 0, 0),
(70116401515, 'AMAH JHA ', 'aman95jha@gmail.com', NULL, 2015, 'em7EvPbRgq', 'BTECH', 'IT', 0, 0),
(70116401516, 'PRAMOD SHAH', 'pramodshah1444@gmail.com', '8802556791', 2016, 'Gm2zI2WAFl', 'BTECH', 'IT', 0, 0),
(70116403215, 'RAJEEV RANJAN', 'raj123.sah@gmail.com', '8373990650', 2015, 'Tx35Y1haHh', 'BTECH', 'CSE', 0, 0),
(70116403216, 'Anuj bhalla', 'Anuj bhalla', NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'CSE', 0, 0),
(70116404516, 'Jeevan Prakash Pant', 'jeevanppant@gmail.com', NULL, 2016, 'LV2Qfkdzo1', 'MCA', 'SE', 0, 0),
(70116404816, 'TENZIN', 'tgaphel2016@gmail.com', NULL, 2016, 'n5Jsydv96D', 'MTECH', 'CSE', 0, 0),
(70116405315, 'TSERING DHARGYAL', 'TSERING DHARGYAL', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'MTECH', 'IT', 0, 0),
(70116412815, 'NIRAJAN JHA', 'n4nirajan@gmail.com', NULL, 2015, 'UXUKu1bXJx', 'BTECH', 'ECE', 0, 0),
(70116412816, 'Nitesh Kumar Gaurav', 'niteshkumargaurav6@yahoo.com', '', 2016, 'RCd8xx5HMh', 'BTECH', 'ECE', 0, 0),
(70216401515, 'TENZIN RINCHEN ', 'TENZIN RINCHEN ', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(70216401516, 'SANA', 'khetarpalsana@gmail.com', '9643601772', 2016, 'Jnq81hFZnP', 'BTECH', 'IT', 0, 0),
(70216403215, 'VIKAS ', 'getmevikasgupta@gmail.com', NULL, 2015, 'fj5ecTSZKM', 'BTECH', 'CSE', 0, 0),
(70216403216, 'Geetanjali Khanna ', 'geetanjalikhanna98@gmail.com', '9650458887', 2016, 'FGl9d9Dp89', 'BTECH', 'CSE', 0, 0),
(70216412816, 'Saloni', NULL, NULL, 2016, '11111', 'BTECH', 'ECE', 0, 0),
(70316401515, 'GYANDEEP', 'GYANDEEP', NULL, 2015, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(70316401516, 'RAHUL YADAV', NULL, NULL, 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(70316403215, 'TENZIN DAKAR ', 'tenzindakar19@gmail.com', NULL, 2015, 'vUT0SK49dt', 'BTECH', 'CSE', 0, 0),
(70316403216, 'Sujata Adhikari', 'speak2sujataadhikari@gmail.com', '8587919866', 2016, 'YOz1DF*961', 'BTECH', 'CSE', 0, 0),
(70316412816, 'SAMUEL', NULL, NULL, 2016, '1111', 'BTECH', 'ECE', 0, 0),
(70416401515, 'NGAWANG PALJOR', 'paljorngawang@gmail.com', '9810533260', 2015, '#XKl5vOej9', 'BTECH', 'IT', 0, 0),
(70416401516, 'DIMPLE', NULL, '9811038358', 2016, '98f6bcd4621d373cade4e832627b4f6', 'BTECH', 'IT', 0, 0),
(70416403215, 'NAGWAY DAPKA', 'keepvidme21@gmail.com', NULL, 2015, 'TkEpbyncrL', 'BTECH', 'CSE', 0, 0),
(70416403216, 'Nikit Bhandari ', 'nikit.bhandari@gmail.com', '7838868724', 2016, 'pvuhVbAsG4', 'BTECH', 'CSE', 0, 0),
(70416412816, 'MD ISLAM', NULL, NULL, 2016, '1111', 'BTECH', 'ECE', 0, 0),
(70516401515, 'TENZIN KUNGANG', 'tenkus47@gmail.com', NULL, 2015, '9YSBUCAirz', 'BTECH', 'IT', 0, 0),
(70516401516, 'ANISH', 'anishsingh2k16@gmail.com', '9205101905', 2016, '2Gtecmyzem', 'BTECH', 'IT', 0, 0),
(70516403216, 'Amit Kumar Jha', 'amit.jha120994@gmail.com', '9582630254', 2016, 'Wge1bbH', 'BTECH', 'CSE', 0, 0),
(70616401515, 'ENZIN LUNGSANG', 'tiboyz9825@gmail.com', '9643245565', 2015, 'MdHhwQQWsk', 'BTECH', 'IT', 0, 0),
(70616401516, 'SUDIP KUNWAR', 'sudipkunwar1996@gmail.com', '7836956526', 2016, 'w5061f4XBQ', 'BTECH', 'IT', 0, 0),
(70616403215, 'THUPTEN LAKSHAY', 'keepvidme@yahoo.com', NULL, 2015, 'zxWO7j9I4h', 'BTECH', 'CSE', 0, 0),
(70616403216, 'Shiv Raj Bhagat', 'rajshiv169@gmail.com', ' 918744897125', 2016, 'nwZ0NoWgIB', 'BTECH', 'CSE', 0, 0),
(70716401515, 'ANURAG GUPTA ', 'gupta.anuragkly@gmail.com', '', 2015, '3HP8PMs5nP', 'BTECH', 'IT', 0, 0),
(70716401516, 'TENZIN', 'kunselaugust@gmail.com', '7210065427', 2016, 'QE8ELUzDvt', 'BTECH', 'IT', 0, 0),
(70716403215, 'LYKA KINRA', 'rythm.kinra@gmail.com', NULL, 2015, 'I5xZPhdtaa', 'BTECH', 'CSE', 0, 0),
(70716403216, 'Rahul Chaudhry ', 'rahulchaudhry14@gmail.com', '9871044396 ', 2016, '0E0fC1gAzS', 'BTECH', 'CSE', 0, 0),
(70816401515, 'AMAN SOOD ', 'amansood2117@gmail.com', NULL, 2015, 'KvGCqIRCAs', 'BTECH', 'IT', 0, 0),
(70816401516, 'ADITYA PANDIT', 'adityaprajapati0099@gmail.com', '9971017650', 2016, 'ac8UaYorFI', 'BTECH', 'IT', 0, 0),
(70816403215, 'SWETA', 'shwetakarna61@gmail.com', '9810473626', 2015, 'pU46SWJSaW', 'BTECH', 'CSE', 0, 0),
(70816403216, 'Chetna Agarwal ', 'chetnaagarwal_97@yahoo.com', '9873831329', 2016, 'yMzkdDx9Sr', 'BTECH', 'CSE', 0, 0),
(70916401515, 'TENZIN ZOMKEY', 'zomkey96@gmail.com', NULL, 2015, 'OK3b7WWdhP', 'BTECH', 'IT', 0, 0),
(70916403215, 'TASHI TSERANG', 'ta3tsering@gmail.com', NULL, 2015, 'j7ghF92REQ', 'BTECH', 'CSE', 0, 0),
(70916403216, 'Samba Colley', 'sambacolley455@gmail.com', '9953006738', 2016, 'WAX1amFr8c', 'BTECH', 'CSE', 0, 0);

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
(21618715, 21);

-- --------------------------------------------------------

--
-- Table structure for table `usict_subjects`
--

CREATE TABLE `usict_subjects` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `course` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usict_subjects`
--

INSERT INTO `usict_subjects` (`id`, `subject_code`, `subject_name`, `type`, `course`, `stream`, `semester`) VALUES
(2, 'MECS-601', 'Advanced Data Structures', 'Theory', 'MTECH', 'IT', 1),
(3, 'MECS-603', 'Advanced Software Engineering ', 'Theory', 'MTECH', 'IT', 1),
(4, 'MECS-605', 'Advanced in Data & computer Communication', 'Theory', 'MTECH', 'IT', 1),
(6, 'MEIT-655', 'Advanced Computer Networking Lab', 'Practical', 'MTECH', 'IT', 1),
(7, 'MEIT- 653', 'Software Engineering Lab', 'Practical', 'MTECH', 'IT', 1),
(8, 'MEIT-651', 'Advanced Data Structure Lab ', 'Practical', 'MTECH', 'IT', 1),
(9, 'MECS-613', 'Advanced Operating Systems', 'Theory', 'MTECH', 'CSE', 1),
(10, 'MECS-601', 'Advanced Data Structures', 'Theory', 'MTECH', 'CSE', 1),
(11, 'MECS-603', 'Advanced Software Engineering ', 'Theory', 'MTECH', 'CSE', 1),
(12, 'MECS-605', 'Advances in Data & computer Communication', 'Theory', 'MTECH', 'CSE', 1),
(14, 'MECS-655', 'Advanced Computer Networking Lab', 'Practical', 'MTECH', 'CSE', 1),
(15, 'MECS- 653', 'Software Engineering Lab', 'Practical', 'MTECH', 'CSE', 1),
(16, 'MECS-651', 'Algorithm Analysis Lab ', 'Practical', 'MTECH', 'CSE', 1),
(17, 'IT-301', 'Theory of Computation', 'Theory', 'BTECH', 'CSE', 5),
(18, 'IT-303', 'Analog and Digital Communication', 'Theory', 'BTECH', 'CSE', 5),
(19, 'IT-305', 'Computer Architecture', 'Theory', 'BTECH', 'CSE', 5),
(20, 'IT-307', 'Digital Signal Processing', 'Theory', 'BTECH', 'CSE', 5),
(21, 'IT-309', 'Object Oriented Software Engineering', 'Theory', 'BTECH', 'CSE', 5),
(22, 'IT-311', 'Digital Design using VHDL', 'Theory', 'BTECH', 'CSE', 5),
(23, 'IT-351', 'Analog & Digital Communication Lab', 'Practical', 'BTECH', 'CSE', 5),
(24, 'IT-353', 'Digital Signal Processing Lab', 'Practical', 'BTECH', 'CSE', 5),
(25, 'IT-355', 'Digital Design Lab', 'Practical', 'BTECH', 'CSE', 5),
(26, 'MEIT-703', 'ITC', 'Theory', 'MTECH', 'IT', 3),
(27, 'MECS-701', 'DWDM', 'Theory', 'MTECH', 'IT', 3),
(28, 'MEIT-703', 'AST', 'Theory', 'MTECH', 'IT', 3),
(29, 'MEEC-707', 'ANN', 'Theory', 'MTECH', 'IT', 3),
(30, 'MECS-711', 'SQM', 'Theory', 'MTECH', 'IT', 3),
(31, 'MECS-717', 'CCI&CF', 'Theory', 'MTECH', 'IT', 3),
(32, 'MEIT-753', 'ITC', 'Practical', 'MTECH', 'IT', 3),
(33, 'MEIT-751', 'DWDM', 'Practical', 'MTECH', 'IT', 3),
(34, 'MEEC-701', 'ADHOC SENSOR NETWORKS', 'Theory', 'MTECH', 'ECE', 3),
(35, 'MERF-601', 'ADVANCE ELECTROMAGNETIC ENGINEERING', 'Theory', 'MTECH', 'ECE', 3),
(36, 'MEEC-713', 'MEMS AND SENSOR TECHNOLOGY', 'Theory', 'MTECH', 'ECE', 3),
(37, 'MEEC-715', 'BROADBAND ACCESS TECHNOLOGY', 'Theory', 'MTECH', 'ECE', 3),
(38, 'MEEC-721', 'MICROWAVE PLANAR TRANSMISSION LINES AND CIRCUITS', 'Theory', 'MTECH', 'ECE', 3),
(39, 'MEEC-751', 'Lab-7', 'Practical', 'MTECH', 'ECE', 3),
(40, 'MEEC-753', 'Lab-8', 'Practical', 'MTECH', 'ECE', 3),
(41, 'IT 201', 'COMPUTATIONAL METHODS', 'Theory', 'BTECH', 'IT', 3),
(42, 'IT 203', 'CIRCUITS AND SYSTEM', 'Theory', 'BTECH', 'IT', 3),
(43, 'IT 205', 'ELECTRONI DEVICES & CIRCUIT', 'Theory', 'BTECH', 'IT', 3),
(44, 'IT 207', 'OOPS', 'Theory', 'BTECH', 'IT', 3),
(45, 'IT 209', 'COMPUTER GRAPHICS', 'Theory', 'BTECH', 'IT', 3),
(46, 'IT211', 'DBMS', 'Theory', 'BTECH', 'IT', 3),
(47, 'IT 251', 'EDC LAB', 'Practical', 'BTECH', 'IT', 3),
(48, 'IT 253', 'COMPUTATIONAL LAB', 'Practical', 'BTECH', 'IT', 3),
(49, 'IT 255', 'OOPS LAB', 'Practical', 'BTECH', 'IT', 3),
(50, 'IT 257', 'GRAPHICS LAB', 'Practical', 'BTECH', 'IT', 3),
(51, 'IT 259', 'DBMS LAB', 'Practical', 'BTECH', 'IT', 3),
(52, 'IT-313', 'Communication Systems', 'Theory', 'BTECH', 'IT', 5),
(53, 'IT-305', 'Computer Architecture', 'Theory', 'BTECH', 'IT', 5),
(54, 'IT-315', 'Linux & Win32 Programming', 'Theory', 'BTECH', 'IT', 5),
(55, 'IT-309', 'Object Oriented Software Engineering', 'Theory', 'BTECH', 'IT', 5),
(56, 'IT-307', 'Digital Signal Processing', 'Theory', 'BTECH', 'IT', 5),
(57, 'IT-317', 'Operating Systems', 'Theory', 'BTECH', 'IT', 5),
(58, 'IT-359', 'Object Oriented Software Engineering Lab', 'Practical', 'BTECH', 'IT', 5),
(59, 'IT-353', 'Digital Signal Processing Lab', 'Practical', 'BTECH', 'IT', 5),
(60, 'IT-361', 'Linux & Win32 Programming Lab', 'Practical', 'BTECH', 'IT', 5),
(61, 'IT401', 'Advanced Computer Networks', 'Theory', 'BTECH', 'IT', 7),
(62, 'IT413', 'Front End Design Tools and Web Technologies', 'Theory', 'BTECH', 'IT', 7),
(63, 'IT403', 'Software Testing', 'Theory', 'BTECH', 'IT', 7),
(64, 'IT421', 'Data Warehousing And Mining', 'Theory', 'BTECH', 'IT', 7),
(65, 'IT451', 'ACN Lab.', 'Practical', 'BTECH', 'IT', 7),
(66, 'IT459', 'FEDT and Web Technology Lab.', 'Practical', 'BTECH', 'IT', 7),
(67, 'IT455', 'Software Testing Lab.', 'Practical', 'BTECH', 'IT', 7),
(68, 'IT - 803', 'Linux administration', 'Theory', 'MCA', 'SE', 5),
(69, 'IT - 801', 'Software verifications validation and testing', 'Theory', 'MCA', 'SE', 5),
(70, 'IT - 805', 'Advanced computer networks', 'Theory', 'MCA', 'SE', 5),
(71, 'IT - 807', 'Multimedia applications', 'Theory', 'MCA', 'SE', 5),
(72, 'IT - 716', 'Software Quality Management', 'Theory', 'MCA', 'SE', 5),
(73, 'IT - 712', 'Software Requirement Estimation', 'Theory', 'MCA', 'SE', 5),
(74, 'IT - 853', 'Linux Lab', 'Practical', 'MCA', 'SE', 5),
(75, 'IT - 857', 'Multimedia lab', 'Practical', 'MCA', 'SE', 5),
(76, 'IT- 855', 'Advanced Computer Networks lab', 'Practical', 'MCA', 'SE', 5),
(77, 'IT - 851', 'SVVT lab', 'Practical', 'MCA', 'SE', 5),
(78, 'MEEC-601', 'Optoelectronics and Optical fibre communication', 'Theory', 'MTECH', 'ECE', 1),
(79, 'MEDC-601', 'Advanced Digital Communication systems', 'Theory', 'MTECH', 'ECE', 1),
(80, 'MEVS -603', 'VLSI Technology', 'Theory', 'MTECH', 'ECE', 1),
(81, 'MEEC-607', 'Advanced Computer Networks', 'Theory', 'MTECH', 'ECE', 1),
(82, 'MEVS-613', 'Wireless Networks', 'Theory', 'MTECH', 'ECE', 1),
(83, 'MEEC-651', 'Lab – 1 (OOFC Lab)', 'Practical', 'MTECH', 'ECE', 1),
(84, 'MEEC-653', 'Lab – 2 (ADCS Lab)', 'Practical', 'MTECH', 'ECE', 1),
(85, 'MEEC-655', 'Lab -3 (VLSI Lab)', 'Practical', 'MTECH', 'ECE', 1),
(86, 'MERA-601', 'Computational Mathematics', 'Theory', 'MTECH', 'RA', 1),
(87, 'MERA-603', 'Robotics Engineering', 'Theory', 'MTECH', 'RA', 1),
(88, 'MERA-605', 'Introduction to Manufacturing Systems', 'Theory', 'MTECH', 'RA', 1),
(89, 'MERA-607', 'Introduction to Electrical and Electronics  Systems', 'Theory', 'MTECH', 'RA', 1),
(90, 'MERA-609', 'Control System', 'Theory', 'MTECH', 'RA', 1),
(91, 'MERA-619', 'Mechatronics  Systems and Applications', 'Theory', 'MTECH', 'RA', 1),
(92, 'MERA-651', 'Lab -I (Computational Lab)', 'Practical', 'MTECH', 'RA', 1),
(93, 'MERA-653', 'Lab-II (Robotics Engineering Lab)', 'Practical', 'MTECH', 'RA', 1),
(94, 'MERA-655', 'Lab-III (Control System)', 'Practical', 'MTECH', 'RA', 1),
(95, 'IT-701', 'Java Programming', 'Theory', 'MCA', 'SE', 3),
(96, 'IT-703', 'Algorithm analysis and Design', 'Theory', 'MCA', 'SE', 3),
(97, 'IT-705', 'Web Technology', 'Theory', 'MCA', 'SE', 3),
(98, 'IT-707', 'Computer Networks', 'Theory', 'MCA', 'SE', 3),
(99, 'IT-709', 'Operating Systems', 'Theory', 'MCA', 'SE', 3),
(100, 'IT-751', 'Java Programming Lab', 'Practical', 'MCA', 'SE', 3),
(101, 'IT-753', 'Algorithm analysis and Design Lab', 'Practical', 'MCA', 'SE', 3),
(102, 'IT-755', 'Web Technology Lab', 'Practical', 'MCA', 'SE', 3),
(103, 'IT-757', 'Computer Networks Lab', 'Practical', 'MCA', 'SE', 3),
(104, 'EC301', 'Microwave Devices and Circuits', 'Theory', 'BTECH', 'ECE', 5),
(105, 'EC303', 'Microprocessors and Interfacing', 'Theory', 'BTECH', 'ECE', 5),
(106, 'EC305', 'Microelectronics', 'Theory', 'BTECH', 'ECE', 5),
(107, 'EC307', 'RDBMS', 'Theory', 'BTECH', 'ECE', 5),
(108, 'EC309', 'Stochastic Systems and Processes', 'Theory', 'BTECH', 'ECE', 5),
(109, 'EC351', 'Microwave Devices Lab.', 'Practical', 'BTECH', 'ECE', 5),
(110, 'EC353', 'Microprocessors Lab.', 'Practical', 'BTECH', 'ECE', 5),
(111, 'EC355', 'Microelectronics Lab.', 'Practical', 'BTECH', 'ECE', 5),
(112, 'EC357', 'RDBMS Lab', 'Practical', 'BTECH', 'ECE', 5),
(113, 'EC355', 'Microelectronics Lab.', 'Practical', 'BTECH', 'ECE', 5),
(114, 'IT-105', 'Introduction To Computer', 'Theory', 'BTECH', 'IT', 1),
(115, 'BA-103', 'Chemistry - I', 'Theory', 'BTECH', 'IT', 1),
(116, 'IT-107', 'Electrical Science', 'Theory', 'BTECH', 'IT', 1),
(117, 'BA-109', 'Mathematics - I', 'Theory', 'BTECH', 'IT', 1),
(118, 'HS-101', 'Communication Skills', 'Theory', 'BTECH', 'IT', 1),
(119, 'BA-111', 'Physics-I', 'Theory', 'BTECH', 'IT', 1),
(120, 'IT-155', 'Computer Lab', 'Practical', 'BTECH', 'IT', 1),
(121, 'IT-159', 'Electrical Science', 'Practical', 'BTECH', 'IT', 1),
(122, 'BA-151', 'Chemistry - I', 'Practical', 'BTECH', 'IT', 1),
(123, 'BA-153', 'Physics-I', 'Practical', 'BTECH', 'IT', 1),
(124, 'IT-157', 'Engineering Graphics-I', 'Practical', 'BTECH', 'IT', 1),
(125, 'BA-153', 'Physics-I', 'Practical', 'BTECH', 'IT', 1),
(126, 'IT-417', 'Embedded Systems', 'Theory', 'BTECH', 'ECE', 7),
(127, 'EC-401', 'Satellite Communicaiton', 'Theory', 'BTECH', 'ECE', 7),
(129, 'MS-425', 'Principles of Organization Behaviour', 'Theory', 'BTECH', 'ECE', 7),
(130, 'EC-451', 'Embedded Systems Lab', 'Practical', 'BTECH', 'ECE', 7),
(132, 'EC-453', 'Matlab ', 'Practical', 'BTECH', 'ECE', 7),
(133, 'MECS-701', 'Data Warehouse Data Mining', 'Theory', 'MTECH', 'CSE', 3),
(134, 'MECS-703', 'Software Testing', 'Theory', 'MTECH', 'CSE', 3),
(135, 'MEEC-707', 'Neural Network', 'Theory', 'MTECH', 'CSE', 3),
(136, 'MECS-711', 'Software Quality Management', 'Theory', 'MTECH', 'CSE', 3),
(137, 'MECS-717', 'Cyber Crime Investigation and Cyber Forensic', 'Theory', 'MTECH', 'CSE', 3),
(138, 'MECS-751', 'Data Warehouse Data Mining', 'Practical', 'MTECH', 'CSE', 3),
(139, 'MECS-753', 'Software Testing', 'Practical', 'MTECH', 'CSE', 3),
(140, 'MECS-757', 'Minor Project / Term Paper', 'Practical', 'MTECH', 'CSE', 3),
(141, 'MERA 701', 'CIM', 'Theory', 'MTECH', 'RA', 3),
(142, 'MERA 703', 'COMPUTER VISION', 'Theory', 'MTECH', 'RA', 3),
(143, 'MERA 713', 'SOFT COMPUTING', 'Theory', 'MTECH', 'RA', 3),
(144, 'MERA 719', 'SIMULATION AND MODELLING', 'Theory', 'MTECH', 'RA', 3),
(145, 'MERA 721', 'MACHINE LEARNING', 'Theory', 'MTECH', 'RA', 3),
(146, 'MERA 751', 'SIMULATION AND MODELLING', 'Practical', 'MTECH', 'RA', 3),
(147, 'MERA 753', 'SOFT COMPUTING', 'Practical', 'MTECH', 'RA', 3),
(148, 'IT-203', 'Circuits and Systems', 'Theory', 'BTECH', 'CSE', 3),
(149, 'IT-209', 'Computer Graphics', 'Theory', 'BTECH', 'CSE', 3),
(150, 'IT-207', 'Object Oriented Programming using C++', 'Theory', 'BTECH', 'CSE', 3),
(151, 'IT-205', 'Electronic Devices & Circuits', 'Theory', 'BTECH', 'CSE', 3),
(153, 'IT-201', 'Computational Methods', 'Theory', 'BTECH', 'CSE', 3),
(154, 'IT-257', 'Computer Graphics Lab.', 'Practical', 'BTECH', 'CSE', 3),
(155, 'IT-255', 'Object Oriented Programming using Lab', 'Practical', 'BTECH', 'CSE', 3),
(156, 'IT-251', 'Electronic Devices & Circuits Lab.', 'Practical', 'BTECH', 'CSE', 3),
(158, 'IT-253', 'Computation Lab.', 'Practical', 'BTECH', 'CSE', 3),
(159, 'IT-403', 'Software testing', 'Theory', 'BTECH', 'CSE', 7),
(160, 'IT-413', 'Front End Design Tools and Web Technologies', 'Theory', 'BTECH', 'CSE', 7),
(161, 'IT-415', 'Advance Java', 'Theory', 'BTECH', 'CSE', 7),
(162, 'IT-401', 'Advance Computer Network', 'Theory', 'BTECH', 'CSE', 7),
(163, 'IT-451', 'Advance Computer Network Lab. ', 'Practical', 'BTECH', 'CSE', 7),
(164, 'IT-461', 'Software Testing Lab.', 'Practical', 'BTECH', 'CSE', 7),
(165, 'IT-455', 'Advance Java Lab.', 'Practical', 'BTECH', 'CSE', 7),
(166, 'HS101', 'Communication Skills - 1', 'Theory', 'BTECH', 'CSE', 1),
(167, 'BA103', 'Chemistry - 1', 'Theory', 'BTECH', 'CSE', 1),
(168, 'IT105', 'Introduction to Computer', 'Theory', 'BTECH', 'CSE', 1),
(169, 'IT107', 'Electrical Science', 'Theory', 'BTECH', 'CSE', 1),
(170, 'BA109', 'Mathematics - 1', 'Theory', 'BTECH', 'CSE', 1),
(171, 'BA111', 'Physics - 1', 'Theory', 'BTECH', 'CSE', 1),
(172, 'HS119*', 'Impact of Science & Technology on Society', 'Theory', 'BTECH', 'CSE', 1),
(173, 'BA151', 'Chemistry - 1 Lab', 'Practical', 'BTECH', 'CSE', 1),
(174, 'BA153', 'Physics - 1 Lab', 'Practical', 'BTECH', 'CSE', 1),
(175, 'IT155', 'Computer Lab', 'Practical', 'BTECH', 'CSE', 1),
(176, 'IT157', 'Engineering Graphics -1', 'Practical', 'BTECH', 'CSE', 1),
(177, 'IT159', 'Electrical science Lab', 'Practical', 'BTECH', 'CSE', 1),
(178, 'IT201', 'Computational Techniques', 'Theory', 'BTECH', 'ECE', 3),
(179, 'EC203', 'Communications Systems  I', 'Theory', 'BTECH', 'ECE', 3),
(180, 'EC205', 'Engineering Electromagnetics', 'Theory', 'BTECH', 'ECE', 3),
(181, 'IT207', 'Object Oriented Programming Using C++', 'Theory', 'BTECH', 'ECE', 3),
(182, 'EC209', 'Digital Electronics', 'Theory', 'BTECH', 'ECE', 3),
(183, 'EC211', 'Analog Electronics II', 'Theory', 'BTECH', 'ECE', 3),
(184, 'EC251', 'Computational Techniques Lab.', 'Practical', 'BTECH', 'ECE', 3),
(185, 'EC253', 'Communications Systems  I Lab', 'Practical', 'BTECH', 'ECE', 3),
(186, 'EC255', 'Object Oriented Programming Using C++ Lab.', 'Practical', 'BTECH', 'ECE', 3),
(187, 'EC257', 'Digital Electronics Lab', 'Practical', 'BTECH', 'ECE', 3),
(188, 'EC259', 'Analog Electronics II Lab. ', 'Practical', 'BTECH', 'ECE', 3),
(189, 'IT-601', 'Information Technology', 'Theory', 'MCA', 'SE', 1),
(190, 'IT-603', 'Computer Architecture', 'Theory', 'MCA', 'SE', 1),
(191, 'IT-605', 'Programming and Data Structure', 'Theory', 'MCA', 'SE', 1),
(192, 'IT-607', 'Foundations of computer Science', 'Theory', 'MCA', 'SE', 1),
(193, 'BA-609', 'Mathematics – I', 'Theory', 'MCA', 'SE', 1),
(194, 'IT-651', 'Information Technology Lab ', 'Practical', 'MCA', 'SE', 1),
(195, 'IT-653', 'Programming and Data Structure Lab ', 'Practical', 'MCA', 'SE', 1),
(196, 'IT-655', 'Computer Architecture Lab', 'Practical', 'MCA', 'SE', 1),
(197, 'IT-651', 'Information Technology Lab ', 'Practical', 'MCA', 'SE', 1),
(198, 'MS311', 'Principles of Management', 'Theory', 'BTECH', 'ECE', 5),
(199, 'HS 101', 'Communications Skills I', 'Theory', 'BTECH', 'ECE', 1),
(200, 'BA 105', 'Theory and Technology of Semiconductors', 'Theory', 'BTECH', 'ECE', 1),
(202, 'EC 107', 'Network Analysis', 'Theory', 'BTECH', 'ECE', 1),
(203, 'BA 109', 'Mathematics I', 'Theory', 'BTECH', 'ECE', 1),
(204, 'BA 111', 'Physics - I', 'Theory', 'BTECH', 'ECE', 1),
(205, 'HS 119', 'Impact of Science and Technology on Society', 'Theory', 'BTECH', 'ECE', 1),
(206, 'BA 151', 'Theory and Technology of Semiconductors Lab', 'Practical', 'BTECH', 'ECE', 1),
(207, 'BA 153', 'Engineering Physics I Lab', 'Practical', 'BTECH', 'ECE', 1),
(208, 'IT 155', 'Computer Lab', 'Practical', 'BTECH', 'ECE', 1),
(209, 'IT 157', 'Engineering Graphics I Lab', 'Practical', 'BTECH', 'ECE', 1),
(210, 'EC 159', 'Network Analysis Lab.', 'Practical', 'BTECH', 'ECE', 1),
(211, 'HS 161', 'Communications Skills I Lab', 'Practical', 'BTECH', 'ECE', 1),
(212, 'BA 111', 'Physics - I', 'Theory', 'BTECH', 'ECE', 1),
(213, 'BA 153', 'Engineering Physics I Lab', 'Practical', 'BTECH', 'ECE', 1),
(214, 'IT407', 'Artificial Intelligence', 'Theory', 'BTECH', 'ECE', 7),
(216, 'HANU-5', 'hanu is_Group B', 'PRACTICAL', 'BTECH', 'IT', 1),
(218, 'HANU-5', 'hanu is_Group A', 'THEORY', 'BTECH', 'IT', 1),
(219, 'HANU-5', 'hanu is_Group B', 'PRACTICAL', 'BTECH', 'IT', 1);

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
(21, 1, 'DWED', '30597', 'Halua', 'THEORY', 'BTECH', 'CSE', 7);

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
('30597', 'Mr Rahul Johari', 'rahul@ipu.ac.in', '9910185349', '05-09-2007 00:00:00', '$2a$10$pYcVIMSc.LkKC.gIOnghgOXvOR9Qk9Ul1OlESkqs5P4fqUz/qeGBC', 'Assistant Professor', 'E 103', 0),
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
-- Indexes for table `usict_subjects`
--
ALTER TABLE `usict_subjects`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `usict_attendance`
--
ALTER TABLE `usict_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usict_subjects`
--
ALTER TABLE `usict_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `usict_subject_allocation`
--
ALTER TABLE `usict_subject_allocation`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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

--
-- Constraints for table `usict_students`
--
ALTER TABLE `usict_students`
  ADD CONSTRAINT `usict_students_batch_id_c3d7c0e8_fk_usict_bat` FOREIGN KEY (`batch_id`) REFERENCES `usict_batch_allocation` (`batch_id`);

--
-- Constraints for table `usict_subject_allocation`
--
ALTER TABLE `usict_subject_allocation`
  ADD CONSTRAINT `usict_subject_alloca_batch_id_e17d645d_fk_usict_bat` FOREIGN KEY (`batch_id`) REFERENCES `usict_batch_allocation` (`batch_id`),
  ADD CONSTRAINT `usict_subject_alloca_instructor_code_e0b04125_fk_usict_tea` FOREIGN KEY (`instructor_code`) REFERENCES `usict_teacher` (`instructor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;