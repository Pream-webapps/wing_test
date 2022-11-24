-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2022 at 03:36 PM
-- Server version: 10.5.15-MariaDB-0+deb11u1
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wing_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_assistant_type`
--

CREATE TABLE `business_assistant_type` (
  `id` int(11) NOT NULL,
  `assistant_type_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_assistant_type`
--

INSERT INTO `business_assistant_type` (`id`, `assistant_type_name`) VALUES
(1, 'VA'),
(2, 'Senior Captain'),
(3, 'Captain');

-- --------------------------------------------------------

--
-- Table structure for table `business_master`
--

CREATE TABLE `business_master` (
  `id` int(11) NOT NULL,
  `business_name` varchar(250) NOT NULL,
  `business_type` int(5) NOT NULL,
  `business_region` int(5) NOT NULL,
  `business_start_date` date NOT NULL,
  `business_assistant_type` int(5) NOT NULL,
  `business_subscibed_plan` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_master`
--

INSERT INTO `business_master` (`id`, `business_name`, `business_type`, `business_region`, `business_start_date`, `business_assistant_type`, `business_subscibed_plan`, `created_on`, `updated_on`) VALUES
(1, 'Busioness 1', 2, 2, '2022-11-24', 1, 1, '2022-11-24 15:08:29', '2022-11-24 15:08:29'),
(2, 'Busioness 2', 2, 2, '2022-11-24', 3, 4, '2022-11-24 15:08:29', '2022-11-24 15:08:29'),
(3, 'Busioness 3', 5, 2, '2022-11-24', 2, 2, '2022-11-24 15:08:29', '2022-11-24 15:08:29'),
(4, 'Busioness 4', 1, 2, '2022-11-24', 2, 3, '2022-11-24 15:08:29', '2022-11-24 15:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `business_region`
--

CREATE TABLE `business_region` (
  `id` int(11) NOT NULL,
  `region_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_region`
--

INSERT INTO `business_region` (`id`, `region_name`) VALUES
(1, 'India'),
(2, 'Philippines'),
(3, 'Latin America'),
(4, 'United States of America');

-- --------------------------------------------------------

--
-- Table structure for table `business_types`
--

CREATE TABLE `business_types` (
  `id` int(11) NOT NULL,
  `business_type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_types`
--

INSERT INTO `business_types` (`id`, `business_type_name`) VALUES
(1, 'Real State'),
(2, 'Medical Services'),
(3, 'eCommerce'),
(4, 'Business Consultant'),
(5, 'Financial Services');

-- --------------------------------------------------------

--
-- Table structure for table `plan_subscribed`
--

CREATE TABLE `plan_subscribed` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(200) NOT NULL,
  `plan_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan_subscribed`
--

INSERT INTO `plan_subscribed` (`id`, `plan_name`, `plan_amount`) VALUES
(1, 'Plan 1', 199),
(2, 'Plan 2', 399),
(3, 'Plan 1', 799),
(4, 'Plan 2', 999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_assistant_type`
--
ALTER TABLE `business_assistant_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_master`
--
ALTER TABLE `business_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_region`
--
ALTER TABLE `business_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_types`
--
ALTER TABLE `business_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_subscribed`
--
ALTER TABLE `plan_subscribed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_assistant_type`
--
ALTER TABLE `business_assistant_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `business_master`
--
ALTER TABLE `business_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `business_region`
--
ALTER TABLE `business_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `business_types`
--
ALTER TABLE `business_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plan_subscribed`
--
ALTER TABLE `plan_subscribed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
