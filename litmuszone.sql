-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2017 at 07:06 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `litmuszone`
--

-- --------------------------------------------------------

--
-- Table structure for table `lz_menu`
--

CREATE TABLE `lz_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `menu_status` enum('inactive','delete','active') COLLATE utf8_bin NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lz_menu`
--

INSERT INTO `lz_menu` (`menu_id`, `menu_name`, `menu_status`, `updated_at`, `created_on`) VALUES
(1, 'Problem Solving', 'active', '2017-01-29 19:22:32', '2029-01-17 09:22:32'),
(2, 'Quantitative Ability', 'active', '2017-01-28 10:37:52', '2017-01-28 05:07:52'),
(3, 'Verbal Ability', 'active', '2017-01-29 19:22:34', '2029-01-17 09:22:34'),
(4, 'Data Sufficiency', 'active', '2017-01-29 19:22:37', '2029-01-17 09:22:37'),
(5, 'Testing', 'delete', '2017-01-28 10:39:21', '2017-01-28 05:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `lz_sets`
--

CREATE TABLE `lz_sets` (
  `set_id` int(11) NOT NULL,
  `set_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `set_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `set_status` enum('inactive','delete','active') COLLATE utf8_bin NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lz_sets`
--

INSERT INTO `lz_sets` (`set_id`, `set_name`, `set_type`, `set_status`, `updated_at`, `created_on`) VALUES
(1, 'Blue', 'Easy', 'active', '2017-01-28 17:41:43', '2028-01-17 07:41:43'),
(2, 'Orange', 'Intermediate', 'active', '2017-01-28 20:33:24', '2028-01-17 10:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `lz_submenu`
--

CREATE TABLE `lz_submenu` (
  `submenu_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `submenu_status` enum('inactive','delete','active') COLLATE utf8_bin NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lz_submenu`
--

INSERT INTO `lz_submenu` (`submenu_id`, `menu_id`, `submenu_name`, `submenu_status`, `updated_at`, `created_on`) VALUES
(9, 1, 'zxcxc', 'active', '2017-01-28 10:29:01', '2028-01-17 00:29:01'),
(11, 2, 'a', 'active', '2017-01-28 10:37:57', '2028-01-17 00:37:57'),
(12, 1, 'b', 'active', '2017-01-28 10:37:15', '2028-01-17 00:37:15'),
(13, 3, 'c', 'active', '2017-01-28 10:37:19', '2028-01-17 00:37:19'),
(14, 4, 'd', 'active', '2017-01-28 10:37:23', '2028-01-17 00:37:23'),
(15, 1, 'e', 'active', '2017-01-28 10:39:16', '2028-01-17 00:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_type` enum('1','2','3','4') COLLATE utf8_bin NOT NULL COMMENT '''1''=>''user'',''2''=>''subuser'',''3''=>''admin'',''4''=>''superadmin''',
  `status` enum('active','inactive','delete') COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL,
  `contactno` int(255) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `fname`, `lname`, `email`, `user_type`, `status`, `last_login`, `contactno`, `password`, `updated_on`, `created_on`) VALUES
(14, 'demooq', 'Gupta1', 'rajat@yopmail.com', '4', 'active', '0000-00-00 00:00:00', 2147483, 'e10adc3949ba59abbe56e057f20f883e', '2017-01-28 00:21:46', '2017-01-17 11:45:43'),
(15, 'Vernon', 'Patton', 'boropifa@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 1234567891, 'e10adc3949ba59abbe56e057f20f883e', '2017-01-28 00:21:39', '2014-01-17 11:55:38'),
(16, 'Keane', 'Fuentes', 'lazanatam@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 1234567891, 'e10adc3949ba59abbe56e057f20f883e', '2017-01-28 00:21:35', '2018-01-17 12:06:54'),
(17, 'Rajat', 'Gupta', 'rajat.guptakr2@gmail.com', '4', 'active', '2017-01-30 04:02:29', 2147483647, 'e10adc3949ba59abbe56e057f20f883e', '2017-01-30 20:32:29', '2027-01-17 14:00:10'),
(18, 'Vladimir', 'Lacey', 'zazocyji@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-28 00:21:32', '2015-01-17 00:33:59'),
(19, 'Tanek', 'Rowan', 'sibizama@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-28 00:21:29', '2015-01-17 00:35:18'),
(20, 'Rajat', 'Gupta', 'dovafapac-1390@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-28 00:21:26', '2015-01-17 00:48:25'),
(21, 'sdsd', 'sddsds', 'aaarajat.guptakr2@gmail.com', '1', 'inactive', '2017-01-27 07:30:56', 2147483647, 'e10adc3949ba59abbe56e057f20f883e', '2017-01-28 00:01:14', '2027-01-17 14:01:14'),
(22, 'Rajat', 'Gupta', 'rajadddd@yopmail.com', '1', 'inactive', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-27 22:08:26', '2027-01-17 12:08:26'),
(23, 'Rajat', 'Gupta', 'rerererr@gmail.com', '4', 'inactive', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-15 10:51:19', '2015-01-17 00:51:19'),
(24, 'Rajat', 'Gupta', 'llllll@gmail.com', '3', 'inactive', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-15 10:51:50', '2015-01-17 00:51:50'),
(25, 'Rajat', 'Gupta', 'rajat.guptaaaakr2@gmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-18 22:08:01', '2018-01-17 12:08:01'),
(26, 'Rajathjgkjhgjhg', 'jhgjhgjgjhgjh', 'r44545ajat.guptakr2@gmail.com', '4', 'active', '0000-00-00 00:00:00', 1234567891, NULL, '2017-01-28 00:21:43', '2018-01-17 12:10:36'),
(27, 'hjgjg', 'jhgjhgjg', 'gjfgfghf@yopmail.com', '4', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-18 22:11:41', '2018-01-17 12:11:41'),
(28, 'Rajat', 'Gupta', 'gjfgfghfs@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-18 22:18:01', '2018-01-17 12:18:01'),
(29, 'Rajat', 'Gupta', 'gjfgfghfsa@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-18 22:23:57', '2018-01-17 12:23:57'),
(30, 'Leonard', 'sdfsdf', 'nadok@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 1234567891, NULL, '2017-01-27 22:24:04', '2027-01-17 12:24:04'),
(31, 'Rajat', 'Gupta', 'hjgjgj@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-27 22:54:49', '2027-01-17 12:54:49'),
(34, 'Rajat', 'Gupta', 'login@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-30 22:18:09', '2030-01-17 12:18:09'),
(35, 'Rajat', 'Gupta', 'dfgh@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, NULL, '2017-01-30 22:39:07', '2030-01-17 12:39:07'),
(36, 'Rajat', 'Gupta', 'aqwer@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-30 23:00:08', '2030-01-17 13:00:08'),
(37, 'Rajat', 'Gupta', 'aqwerq@yopmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-30 23:04:39', '2030-01-17 13:04:39'),
(38, 'Shweta', 'Verma', 'shwet', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-30 23:06:29', '2030-01-17 13:06:29'),
(39, 'Shweta', 'Verma', 'shwetaverma.3792@gmail.com', '1', 'active', '0000-00-00 00:00:00', 2147483647, 'd41d8cd98f00b204e9800998ecf8427e', '2017-01-30 23:06:53', '2030-01-17 13:06:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lz_menu`
--
ALTER TABLE `lz_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `lz_sets`
--
ALTER TABLE `lz_sets`
  ADD PRIMARY KEY (`set_id`);

--
-- Indexes for table `lz_submenu`
--
ALTER TABLE `lz_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lz_menu`
--
ALTER TABLE `lz_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lz_sets`
--
ALTER TABLE `lz_sets`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lz_submenu`
--
ALTER TABLE `lz_submenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
