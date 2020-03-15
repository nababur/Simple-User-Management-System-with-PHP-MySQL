-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 07:00 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `email`, `password`, `mobile`, `roleid`, `isActive`, `created_at`, `updated_at`) VALUES
(7, 'Nababur', 'Nababurbd', 'nababurbd@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 1, 0, '2020-03-12 16:23:01', '2020-03-12 16:23:01'),
(12, 'Rayhan', 'Rayhan', 'rayhankabir@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 2, 0, '2020-03-12 18:20:24', '2020-03-12 18:20:24'),
(15, 'Sanjia Akther', 'Sanjida', 'sanjida@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 2, 0, '2020-03-12 19:32:27', '2020-03-12 19:32:27'),
(16, 'Abid Ali', 'Abid', 'abid@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 3, 0, '2020-03-13 05:08:26', '2020-03-13 05:08:26'),
(17, 'Abdur Rouf', 'Rouf', 'rouf@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 2, 0, '2020-03-13 05:08:53', '2020-03-13 05:08:53'),
(18, 'Maruf Jaman', 'Maruf', 'maruf@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 2, 0, '2020-03-13 05:09:18', '2020-03-13 05:09:18'),
(19, 'Humayun ', 'Munna', 'munna@gmail.com', '66c3241204bea40578eb993f41f7c4b1ab982dab', '01717090233', 3, 0, '2020-03-13 05:09:49', '2020-03-13 05:09:49'),
(20, 'Rased ', 'Rashed', 'rashed@gmail.com', '188000e1f0fb4075ae1c659697b96296f982cdc4', '01717090233', 2, 1, '2020-03-13 05:10:24', '2020-03-13 05:10:24'),
(21, 'Millon ', 'Millon', 'millon@gmail.com', '05c19fb114728eabf85f47c858914ca42ddd2dae', '01717090233', 1, 1, '2020-03-13 05:11:02', '2020-03-13 05:11:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
