-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2026 at 05:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kids_food_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`) VALUES
(1, 'milk powder', 100),
(2, 'Burger', 80),
(3, 'bread', 50),
(4, 'Ice Cream', 60),
(5, 'lemon rice', 80),
(6, 'cornflacks', 50),
(7, 'vegetable rice', 40);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('Pending','Delivered','Failed') DEFAULT 'Pending',
  `order_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food_name`, `quantity`, `status`, `order_time`) VALUES
(1, 'Ice Cream', 1, 'Failed', '2026-01-23 09:11:06'),
(2, 'Ice Cream', 1, 'Failed', '2026-01-23 09:30:33'),
(3, 'Milk Powder', 1, 'Failed', '2026-01-23 10:08:43'),
(4, 'Bread', 1, 'Delivered', '2026-01-23 10:08:51'),
(5, 'Ice Cream', 1, 'Delivered', '2026-01-23 10:21:03'),
(6, 'Burger', 1, 'Failed', '2026-01-23 13:47:30'),
(7, 'Milk Powder', 1, 'Failed', '2026-01-23 13:49:29'),
(8, 'Burger', 1, 'Failed', '2026-01-23 15:36:48'),
(9, 'Cornflakes', 1, 'Delivered', '2026-01-23 15:38:14'),
(10, 'Bread', 1, 'Failed', '2026-01-23 15:49:20'),
(11, 'Milk Powder', 1, 'Failed', '2026-01-23 16:16:36'),
(12, 'Ice Cream', 1, 'Delivered', '2026-01-23 16:17:44'),
(13, 'Ice Cream', 20, 'Delivered', '2026-01-24 03:27:00'),
(14, 'Burger', 1, 'Delivered', '2026-01-24 03:28:46'),
(15, 'Bread', 1, 'Delivered', '2026-01-24 03:28:56'),
(16, 'Bread', 1, 'Failed', '2026-01-24 03:29:03'),
(17, 'Bread', 1, 'Failed', '2026-01-24 03:30:18'),
(18, 'Burger', 1, 'Delivered', '2026-01-24 03:37:33'),
(19, 'Burger', 1, 'Delivered', '2026-01-24 03:37:38'),
(20, 'Burger', 1, 'Failed', '2026-01-24 03:37:44'),
(21, 'Burger', 1, 'Failed', '2026-01-24 03:47:14'),
(22, 'Ice Cream', 1, 'Delivered', '2026-01-24 03:59:31'),
(23, 'Ice Cream', 1, 'Delivered', '2026-01-24 03:59:45'),
(24, 'Ice Cream', 1, 'Delivered', '2026-01-24 10:05:06'),
(25, 'Ice Cream', 1, 'Failed', '2026-01-24 10:05:07'),
(26, 'Burger', 1, 'Delivered', '2026-01-24 10:20:12'),
(27, 'Bread', 1, 'Failed', '2026-01-24 10:20:17'),
(28, 'Burger', 1, 'Failed', '2026-01-27 09:52:33'),
(29, 'Burger', 1, 'Failed', '2026-01-27 09:52:35'),
(30, 'Milk Powder', 1, 'Failed', '2026-01-27 10:16:42'),
(31, 'Milk Powder', 1, 'Delivered', '2026-01-27 10:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
