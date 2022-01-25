-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 03:02 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_contact_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_contact_no`) VALUES
(1, 'Sneharup Mukherjee', 'mukherjee.sneharup@gmail.com', 'sneharup', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `customer_complaint`
--

CREATE TABLE `customer_complaint` (
  `cumtomer_complaint_id` int(11) NOT NULL,
  `complaint` varchar(256) NOT NULL,
  `taken_by` varchar(60) NOT NULL,
  `cumtomer_complaint_status` varchar(30) NOT NULL DEFAULT 'In_Process',
  `time` varchar(30) NOT NULL,
  `complaint_by` varchar(60) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_complaint`
--

INSERT INTO `customer_complaint` (`cumtomer_complaint_id`, `complaint`, `taken_by`, `cumtomer_complaint_status`, `time`, `complaint_by`, `room_no`) VALUES
(1, 'bed is not perfect', 'Sneharup Mukherjee', 'In_Process', '8:30 PM 24-12-2021', 'Mr. MK Dhani', 16),
(2, 'food quality not good', 'Sneharup Mukherjee', 'Solved', '24-12-21 08:56:54', 'Shyam Kumar Das', 17);

-- --------------------------------------------------------

--
-- Table structure for table `daily_activity`
--

CREATE TABLE `daily_activity` (
  `daily_activity_id` int(11) NOT NULL,
  `daily_activity` varchar(255) NOT NULL,
  `daily_activity_date` varchar(50) NOT NULL DEFAULT '00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_activity`
--

INSERT INTO `daily_activity` (`daily_activity_id`, `daily_activity`, `daily_activity_date`) VALUES
(5, 'All flooring was swept/vacuumed', '211231'),
(6, 'Mirrors/pictures were free from dust and smudges', '00000000'),
(7, 'Lamps, bulbs, shades and switches were free from dust, hair, streaks and fingerprints.', '00000000'),
(8, 'No items were removed from the guest room unless placed in the trash basket.', '00000000'),
(9, 'All bulbs, TV, Hair Dryer, Ipad / Ipod / Mobile Docking station were functional.', '00000000'),
(10, 'Newspapers and magazines were stacked and left in plain view.', '00000000'),
(11, ' Guest clothing found on the bed or floor were folded and placed on bed or chair, clothing left on furniture was folded and left in place.', '00000000'),
(12, ' Shoes were paired and placed to the side.', '00000000'),
(13, ' All stationery and supplies restocked to par levels', '00000000'),
(14, 'All trash cans were emptied.', '00000000'),
(15, ' Tub and shower cleaned, no debris, dust, spots, stains or hair.', '00000000'),
(16, 'Toilet cleaned, no debris, dust, spots, stains or hair.', '00000000');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `id` int(11) NOT NULL,
  `floor_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `floor_name`) VALUES
(9, '1ST FLOOR'),
(10, '2ND FLOOR'),
(11, '3RD FLOOR'),
(12, '4TH FLOORS'),
(13, '5TH FLOOR');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_type_id` int(11) NOT NULL,
  `food` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_type_id`, `food`) VALUES
(4, 7, 'Rice'),
(5, 7, 'Mutton'),
(6, 7, 'Chicken Kosha');

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `food_order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `order_taken_by` varchar(30) NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'Under-Cooking',
  `order_id` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`food_order_id`, `room_id`, `order_taken_by`, `order_status`, `order_id`, `date`) VALUES
(0, 16, 'Sneharup Mukherjee', 'Under-Cooking', '973296', '30-12-21 05:03:00'),
(0, 16, 'Sneharup Mukherjee', 'Under-Cooking', '744244', '31-12-21 06:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `food_quentity`
--

CREATE TABLE `food_quentity` (
  `food_quentity_id` int(11) NOT NULL,
  `food_quentity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_quentity`
--

INSERT INTO `food_quentity` (`food_quentity_id`, `food_quentity`) VALUES
(4, '1 Plate'),
(5, '1'),
(6, '2'),
(7, '1 Bottle'),
(8, '1 Scube');

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `food_type_id` int(11) NOT NULL,
  `food_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_type`
--

INSERT INTO `food_type` (`food_type_id`, `food_type`) VALUES
(7, 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `housekeeper_status`
--

CREATE TABLE `housekeeper_status` (
  `housekeeper_status_id` int(11) NOT NULL,
  `housekeeper_status` varchar(10) NOT NULL DEFAULT 'Available',
  `housekeeper_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housekeeper_status`
--

INSERT INTO `housekeeper_status` (`housekeeper_status_id`, `housekeeper_status`, `housekeeper_id`) VALUES
(12, 'Occupied', 15),
(13, 'Available', 16),
(14, 'Available', 17),
(15, 'Available', 18),
(16, 'Occupied', 19),
(17, 'Occupied', 20),
(18, 'Available', 21),
(19, 'Available', 22);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_roster`
--

CREATE TABLE `monthly_roster` (
  `monthly_roster_id` int(11) NOT NULL,
  `staff_type_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date_from` varchar(12) NOT NULL,
  `date_to` varchar(12) NOT NULL,
  `time_from` varchar(12) NOT NULL,
  `time_to` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monthly_roster`
--

INSERT INTO `monthly_roster` (`monthly_roster_id`, `staff_type_id`, `staff_id`, `date_from`, `date_to`, `time_from`, `time_to`) VALUES
(1, 3, 14, '2021-03-20', '2022-02-03 ', '06:00', '12:00'),
(3, 4, 15, '2021-02-21', '2022-02-03', '12:00', '18:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_list_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_quentity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `floor_id` int(11) NOT NULL,
  `room_name` varchar(30) NOT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `floor_id`, `room_name`, `room_type_id`) VALUES
(16, 9, 'A001', 5),
(17, 9, 'A002', 5),
(18, 9, 'A003', 5),
(19, 9, 'A004', 6),
(20, 9, 'A005', 6),
(21, 10, 'B001', 5),
(22, 10, 'B002', 7),
(23, 10, 'B010', 6),
(24, 11, 'C100', 8),
(25, 11, 'C200', 9),
(26, 12, 'D450', 10),
(27, 13, 'E451', 7),
(28, 12, 'D401', 6),
(29, 13, 'E500', 10);

-- --------------------------------------------------------

--
-- Table structure for table `room_service`
--

CREATE TABLE `room_service` (
  `room_service_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_quentity_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `order_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_status`
--

CREATE TABLE `room_status` (
  `room_status_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `housekeeper_id` int(11) DEFAULT NULL,
  `room_status` varchar(20) NOT NULL DEFAULT 'Active',
  `room_admin_note` varchar(255) DEFAULT 'None',
  `room_housekeper_note` varchar(255) DEFAULT 'None',
  `inspection_status` varchar(10) NOT NULL DEFAULT 'Clean',
  `occupancy` varchar(20) NOT NULL DEFAULT 'Vacant',
  `reservation_info` varchar(20) NOT NULL DEFAULT 'None',
  `update_by` varchar(50) NOT NULL,
  `update_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_status`
--

INSERT INTO `room_status` (`room_status_id`, `room_id`, `room_type_id`, `housekeeper_id`, `room_status`, `room_admin_note`, `room_housekeper_note`, `inspection_status`, `occupancy`, `reservation_info`, `update_by`, `update_date`) VALUES
(4, 16, 5, 15, 'Out-Of-Service', 'Clean It Quick', 'None', 'Dirty', 'Vacant', 'None', 'Sneharup Mukherjee', '24-12-21 07:34:53'),
(5, 17, 5, NULL, 'Active', 'None', 'None', 'Clean', 'Occupied', 'Checked-In', 'Sneharup Mukherjee', '2021-12-15 00:30:41'),
(6, 18, 5, 20, 'Out-Of-Inventory', 'Add Food', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:30:52'),
(7, 19, 6, 19, 'Out-Of-Order', 'Window Broken ', 'None', 'Dirty', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:31:06'),
(8, 20, 6, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:31:23'),
(9, 21, 5, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:31:39'),
(10, 22, 7, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:31:51'),
(11, 23, 6, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:32:21'),
(12, 24, 8, NULL, 'Active', 'None', 'None', 'Clean', 'Occupied', 'Checked-In', 'Sneharup Mukherjee', '2021-12-15 00:32:35'),
(13, 25, 9, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:32:50'),
(14, 26, 10, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:33:05'),
(15, 27, 7, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:33:31'),
(16, 28, 6, NULL, 'Active', 'None', 'None', 'Clean', 'Occupied', 'Checked-In', 'Sneharup Mukherjee', '2021-12-15 00:34:02'),
(17, 29, 10, NULL, 'Active', 'None', 'None', 'Clean', 'Vacant', 'None', 'Sneharup Mukherjee', '2021-12-15 00:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `room_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `room_type`) VALUES
(5, 'SINGLE'),
(6, 'DOUBLE'),
(7, 'TRIPLE'),
(8, 'KING'),
(9, 'QUEEN'),
(10, 'SWEET');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(40) NOT NULL,
  `staff_email` varchar(40) NOT NULL,
  `staff_contact_no` varchar(15) NOT NULL,
  `staff_password` varchar(50) NOT NULL,
  `staff_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_email`, `staff_contact_no`, `staff_password`, `staff_type`) VALUES
(14, 'George M. Morris', 'gm@mail.com', '84594989494', '213141', 3),
(15, 'Jacqueline J. Scott', 'JacquelineJScott@teleworm.us', '5444433243324', '681168', 4),
(16, 'Kevin J. Brewton', 'KevinJBrewton@dayrep.com', '5445443535', '845180', 4),
(17, 'Mildred H. Whittle', 'MildredHWhittle@teleworm.us', '343434343', '358935', 4),
(18, 'Ma R. Davidson', 'Ma R. Davidson', '34343455453', '411994', 4),
(19, 'Priscilla D. Larrabee', 'PriscillaDLarrabee@dayrep.com', '5345346363534', '801112', 4),
(20, 'Thomas L. Scott', 'ThomasLScott@dayrep.com', '4323423453', '667066', 4),
(21, 'Raymond T. Dixon', 'RaymondTDixon@dayrep.com', '3535334323', '828894', 4),
(22, 'Kathleen J. Redd', 'KathleenJRedd@teleworm.us', '343435333', '738263', 4);

-- --------------------------------------------------------

--
-- Table structure for table `staff_type`
--

CREATE TABLE `staff_type` (
  `staff_type_id` int(11) NOT NULL,
  `staff_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_type`
--

INSERT INTO `staff_type` (`staff_type_id`, `staff_type`) VALUES
(3, 'Executive Housekeeper'),
(4, 'Housekeeper');

-- --------------------------------------------------------

--
-- Table structure for table `submit_daily_activity`
--

CREATE TABLE `submit_daily_activity` (
  `id` int(11) NOT NULL,
  `daily_activity_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submit_daily_activity`
--

INSERT INTO `submit_daily_activity` (`id`, `daily_activity_id`, `date`) VALUES
(4, 5, '24-12-21 07:34:22'),
(5, 5, '30-12-21 05:14:22'),
(6, 5, '31-12-21 06:55:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer_complaint`
--
ALTER TABLE `customer_complaint`
  ADD PRIMARY KEY (`cumtomer_complaint_id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `daily_activity`
--
ALTER TABLE `daily_activity`
  ADD PRIMARY KEY (`daily_activity_id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `food_type_id` (`food_type_id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `food_quentity`
--
ALTER TABLE `food_quentity`
  ADD PRIMARY KEY (`food_quentity_id`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`food_type_id`);

--
-- Indexes for table `housekeeper_status`
--
ALTER TABLE `housekeeper_status`
  ADD PRIMARY KEY (`housekeeper_status_id`),
  ADD KEY `housekeeper_id` (`housekeeper_id`);

--
-- Indexes for table `monthly_roster`
--
ALTER TABLE `monthly_roster`
  ADD PRIMARY KEY (`monthly_roster_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_list_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `food_quentity_id` (`food_quentity_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `floor_id` (`floor_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_service`
--
ALTER TABLE `room_service`
  ADD PRIMARY KEY (`room_service_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `food_quentity_id` (`food_quentity_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `room_status`
--
ALTER TABLE `room_status`
  ADD PRIMARY KEY (`room_status_id`),
  ADD KEY `room_status_ibfk_1` (`housekeeper_id`),
  ADD KEY `room_status_ibfk_2` (`room_id`),
  ADD KEY `room_status_ibfk_3` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `staff_ibfk_1` (`staff_type`);

--
-- Indexes for table `staff_type`
--
ALTER TABLE `staff_type`
  ADD PRIMARY KEY (`staff_type_id`);

--
-- Indexes for table `submit_daily_activity`
--
ALTER TABLE `submit_daily_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_activity_id` (`daily_activity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_complaint`
--
ALTER TABLE `customer_complaint`
  MODIFY `cumtomer_complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily_activity`
--
ALTER TABLE `daily_activity`
  MODIFY `daily_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food_quentity`
--
ALTER TABLE `food_quentity`
  MODIFY `food_quentity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `food_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `housekeeper_status`
--
ALTER TABLE `housekeeper_status`
  MODIFY `housekeeper_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `monthly_roster`
--
ALTER TABLE `monthly_roster`
  MODIFY `monthly_roster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room_service`
--
ALTER TABLE `room_service`
  MODIFY `room_service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `room_status`
--
ALTER TABLE `room_status`
  MODIFY `room_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `staff_type`
--
ALTER TABLE `staff_type`
  MODIFY `staff_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submit_daily_activity`
--
ALTER TABLE `submit_daily_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_complaint`
--
ALTER TABLE `customer_complaint`
  ADD CONSTRAINT `customer_complaint_ibfk_1` FOREIGN KEY (`room_no`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_2` FOREIGN KEY (`food_type_id`) REFERENCES `food_type` (`food_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `housekeeper_status`
--
ALTER TABLE `housekeeper_status`
  ADD CONSTRAINT `housekeeper_status_ibfk_1` FOREIGN KEY (`housekeeper_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`food_quentity_id`) REFERENCES `food_quentity` (`food_quentity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_service`
--
ALTER TABLE `room_service`
  ADD CONSTRAINT `room_service_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_service_ibfk_2` FOREIGN KEY (`food_quentity_id`) REFERENCES `food_quentity` (`food_quentity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_service_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_status`
--
ALTER TABLE `room_status`
  ADD CONSTRAINT `room_status_ibfk_1` FOREIGN KEY (`housekeeper_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_status_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_status_ibfk_3` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`staff_type`) REFERENCES `staff_type` (`staff_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submit_daily_activity`
--
ALTER TABLE `submit_daily_activity`
  ADD CONSTRAINT `submit_daily_activity_ibfk_1` FOREIGN KEY (`daily_activity_id`) REFERENCES `daily_activity` (`daily_activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
