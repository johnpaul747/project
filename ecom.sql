-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2024 at 10:57 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'JOHNPAUL', 'PESCADOR123', 0, 'JOHNPAUL097@gmail.com', '12345678910', 1),
(2, 'Marc Caoile', '123', 1, 'marc@gmail.com', '123456789', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'John cris', 'Johncris@gmail.com', '095648573', 'Hi gumatang nk man', '2024-11-28 10:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

DROP TABLE IF EXISTS `coupon_master`;
CREATE TABLE IF NOT EXISTS `coupon_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'FOODGRAINS , OILS AND GHEE', 60, 'Percentage', 567, 0),
(2, 'FLOUR and GRAINS', 25, 'Percentage', 125, 1),
(3, 'PACKAGED FOODS', 30, 'Rupee', 500, 1),
(4, 'FIRST 50', 20, 'Rupee', 1000, 0),
(5, 'SPECIAL OFFER', 50, 'Percentage', 2000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `categories`, `status`) VALUES
(1, 'FRUITS & VEGETABLES', 1),
(2, 'FOODGRAINS, OIL & MASALA', 1),
(3, 'BAKERY, CAKES & DAIRY', 1),
(4, 'BEVERAGES', 1),
(5, 'SNACKS & BRANDED FOODS', 1),
(6, 'EGGS , MEAT & FISH', 0),
(7, 'GOURMET & WORLD FOOD', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'Marc Caoile', '123', 'marc@gmail.com', '2024-11-28 10:53:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
