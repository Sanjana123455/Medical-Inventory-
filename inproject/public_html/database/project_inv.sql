-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 06:22 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'C Bactum', '1'),
(13, 'H Clox', '1'),
(14, 'Z-Butol', '1'),
(15, 'N-Dip', '1'),
(16, 'HAZ', '1'),
(17, 'A Fresh', '1'),
(18, 'zemdri', '1');


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, '0', 'General Sales list', '1'
(2, '0', 'Pharmacy Medicines', '1'
(3, '0', 'Prescription only medicines', '1'
(4, '1', 'Tablets', '1'),
(5, '2', 'Syrup', '1'),
(6, '1', 'Drops', '1'),
(7, '3', 'Inhaler', '1'),
(8, '3', 'Injection', '1'),
(9, '2', 'Capsules', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(24, 'Sanjana', '2020-11-02', 4450, 80, 50, 475, 300, 175, 'Cash'),
(25, 'Twinkle', '2020-09-08', 4000, 200, 100, 70300, 4100, 4100, 'Cash'),
(26, 'sanah', '2020-11-09', 2737, 341, 100, 2978, 2978, 0, 'Cash'),
(27, 'Karan ', '2020-09-14', 105, 20, 0, 125, 125, 0, 'Cash'),
(28, 'Mahira', '2020-08-12', 451, 50, 20, 481, 481, 0, 'Cash'),
(29, 'Vedanth', '2018-10-15', 4000, 500, 100, 4400, 4400, 0, 'Cash'),
(30, 'Varsha', '2018-06-05', 4070, 500, 100, 4470, 4470, 0, 'Cash'),
(31, 'Tejas', '2018-01-16', 35, 20, 0, 55, 55, 0, 'Cash'),
(32, 'Siraj', '2017-12-19', 50, 25, 0, 75, 75, 0, 'Cash'),
(33, 'Ajay', '2018-01-24', 175, 70, 0, 245, 245, 0, 'Cash'),
(34, 'Vishal', '2018-01-03', 451, 50, 0, 501, 501, 0, 'Cash'),
(35, 'Bhoomika', '2017-12-11', 4035, 500, 100, 4445, 4445, 0, 'Cash'),
(36, 'Neha', '2020-10-12', 200, 50, 0, 250, 250, 0, 'Cash'),
(37, 'Smitha', '2018-03-07', 250, 50, 0, 300, 300, 0, 'Cash'),
(38, 'Amritha', '2018-02-21', 486, 70, 0, 556, 556, 0, 'Cash'),
(39, 'Shoaib', '2018-04-11', 4175, 100, 50, 4225, 4225, 0, 'Cash'),
(40, 'Adriel', '2017-11-07', 105, 20, 0, 125, 125, 0, 'Cash'),
(41, 'Shantaram', '2019-05-15', 902, 50, 0, 952, 952, 0, 'Cash'),
(42, 'Bhani', '2019-03-10', 175, 50, 0, 225, 225, 0, 'Cash'),
(43, 'Kabeer', '2018-03-14', 2807, 100, 50, 2857, 2857, 0, 'Cash'),
(44, 'Asmitha', '2018-09-13', 270, 35, 0, 305, 305, 0, 'Cash'),
(45, 'Reena', '2018-03-15', 4451, 70, 60, 4461, 4461, 0, 'Cash'),
(46, 'Shantanu', '2020-06-11', 2772, 60, 0, 2832, 2832, 0, 'Cash'),
(47, 'Rocky', '2020-08-20', 4050, 100, 50, 4100, 4100, 0, 'Cash'),
(48, 'Firas', '2020-05-19', 295, 60, 0, 355, 355, 0, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(1, 25, 'Iressa', 4000, 1),
(2, 28, 'Cytozen Injection', 50, 5),
(3, 29, 'Aspirin tablet', 451, 1),
(4, 30, 'Atazor-200 capsule', 200, 1),
(5, 31, 'Deflezacort Syrup', 70, 1),
(6, 32, 'Flockin eyedrops', 35, 1),
(7, 33, 'Foracort Inhaler', 175, 1),
(8, 34, 'Plazomicin Injection', 2737, 1),
(9, 34, 'Flockin eyedrops', 35 , 1),
(10, 34, 'Iressa', 4000, 1),
(11, 35, 'Cytozen Injection', 50, 1),
(12, 35, 'Foracort Inhaler', 175, 1),
(13, 35, 'Iressa', 4000, 1),
(14, 36, 'Flockin eyedrops', 35, 1),
(15, 36, 'Deflezacort Syrup', 70, 1),
(16, 36, 'Foracort Inhaler', 175, 1),
(17, 36, 'Plazomicin Injection', 2737, 1),
(18, 37, 'Atazor-200 capsule', 200, 1),
(10, 34, 'Iressa', 4000, 1),
(19, 37, 'Plazomicin Injection', 2737, 1),
(20, 37, 'Aspirin tablet', 451, 2),
(21, 38, 'Flockin eyedrops', 35, 1),
(22, 38, 'Foracort Inhaler', 175, 1),
(23, 38, 'Iressa', 4000, 1),
(24, 39, 'Plazomicin Injection', 2737, 1),
(25, 39, 'Aspirin tablet', 451, 1),
(25, 39, 'Foracort Inhaler', 175, 1),
(26, 39, 'Atazor-200 capsule', 200, 1),
(27, 40, 'Flockin eyedrops', 35, 1),
(28, 40, 'Deflezacort Syrup', 70, 1),
(29, 41, 'Plazomicin Injection', 2737, 1),
(30, 41, 'Foracort Inhaler', 175, 1),
(31, 42, 'Aspirin tablet', 451, 1),
(32, 42, 'Plazomicin Injection', 2737, 1),
(33, 43, 'Iressa', 4000, 1),
(34, 43, 'Cytozen Injection', 50, 1),
(35, 43, 'Deflezacort Syrup', 70, 1),
(36, 44, 'Plazomicin Injection', 29000, 5),
(37, 44, 'Iressa', 4000, 2),
(38, 45, 'Aspirin tablet', 451, 2),
(39, 45, 'Cytozen Injection', 50, 2);
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(15, 1, 1, 'Iressa tablet', 4000, 984, '2020-11-08', '1'),
(16, 1, 14, 'Aspirin tablet', 451, 4984, '2020-11-08', '1'),
(17, 3, 17, 'Floracort Inhaler', 175, 1192, '2020-11-09', '1'),
(18, 3, 18, 'Plazomicin Injection', 2737, 2989, '2020-11-09', '1'),
(19, 3, 18, 'Cytoxan Injection', 50, 3000, '2020-11-09', '1'),
(20, 2, 13, 'Atazor-200', 200, 1000, '2020-11-10', '1'),
(21, 2, 15, 'Deflezacort Syrup',70, 800, '2020-11-10', '1'),
(22, 1, 16, 'Flokcin Eyedrops', 35, 2000, '2020-11-10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--
INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(1, 'Sanjana', 'sanjana@gmail.com', 'skh@123', 'Admin', '2017-12-23', '2018-03-01 04:03:17', ''),
(2, 'Amritha', 'amritha1@gmail.com', 'dghf123', 'Admin', '2017-12-23', '2017-12-24 11:12:57', ''),
(3, 'Bhoomika', 'Bhoomika234@gmail.com', 'wreg34', 'Admin', '2017-12-24', '2017-12-26 05:12:07', ''),
(4, 'Neha', 'neha@gmail.com', 'shg156', 'Admin', '2017-12-24', '2017-12-25 06:12:18', ''),
(5, 'Varsha', 'varsha2@gmail.com', '123456wer', 'Admin', '2017-12-25', '2017-12-25 00:00:00', ''),
(6, 'Siraj', 'siraj23@gmail.com', 'sfgd123', 'Admin', '2017-12-26', '2018-01-15 08:01:14', ''),
(7, 'Twinkle', 'twinkle123@gmail.com', 'mynameistwinkle3#', 'Admin', '2018-02-16', '2018-02-16 05:02:41', ''),
(8, 'Reena', 'reena457@gmail.com', 'rhdg287', 'Admin', '2020-11-07', '2020-11-07 00:00:00', ''),
(9, 'Bhani', 'bhani234@gmail.com', 'djjsg345', 'Admin', '2020-11-07', '2020-11-08 12:11:51,''),
(10, 'Tejas', 'tejashegde@gmail.com', 'dhfgc123#', 'Admin', '2020-11-08', '2020-11-08 02:11:01,''),
(11, 'Mahira', 'mahirakhanna@gmail.com', 'Mha2030#', 'Admin', '2020-11-08', 2020-11-09 05:11:35,'');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
