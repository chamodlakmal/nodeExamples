-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 05:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcarsale`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(3, 'Toyota'),
(7, 'Corolla'),
(8, 'Mitsubishi'),
(9, 'lambogini');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `milage` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `condition` varchar(1) DEFAULT NULL,
  `description` text,
  `photo` varchar(255) DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `imp_count` int(11) DEFAULT NULL,
  `model_id` int(11) NOT NULL,
  `fuel_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `title`, `milage`, `year`, `price`, `condition`, `description`, `photo`, `sold`, `view_count`, `imp_count`, `model_id`, `fuel_type_id`, `user_id`) VALUES
(1, 'Toyota', 42000, 2005, 3600000, 'A', 'Hello', 'photo', 0, 10, 11, 2, 2, 1),
(2, 'jafjKLDA', 1200, 2000, 20000, 'U', 'NAFKLdmgksd dmfmld', 'HELLO PHOTO', 1, 1, 2, 3, 8, 1),
(3, 'My CAr hsh ', 8555, 2013, 4522, 'U', 'nfjkdf FDfad2100', 'LOGO.png', 1, 1, 2, 2, 6, 1),
(4, 'Toyota', 4522, 2000, 12222, 'U', 'sdjhsdsjddkls', 'Untitled-1.jpg', 1, 1, 2, 3, 8, 1),
(5, 'Mitsubishi', 455, 2000, 55454555, NULL, 'mgjsgf;h;hl', 'shopping-cart.png', 1, 1, 2, 1, 8, 1),
(6, 'Toyota', 45522, 1200, 355666, 'R', 'asdkasdsldsk', 'logo.png', 1, 1, 2, 2, 4, 1),
(7, 'Mitsubishi', 45632, 2100, 12255, 'R', 'dklfhdlgjsgRLGROJ', 'shopping-cart.png', 1, 1, 2, 2, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_type`
--

CREATE TABLE `fuel_type` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`id`, `name`) VALUES
(2, ''),
(4, 'fdjsgklSG'),
(5, 'abc'),
(6, 'dhjkfhAFH'),
(8, 'Petrol'),
(9, 'fuel');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`, `brand_id`) VALUES
(1, 'App', 3),
(2, 'Apple', 7),
(3, 'Cal', 7),
(4, 'lkjkflkdlgmw', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `role` varchar(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `reg_date`, `role`, `status`) VALUES
(1, 'Chamod', 'chamod@97', '0714954149', '202cb962ac59075b964b07152d234b70', '2019-02-24', 'a', 1),
(2, 'Kapila Kumara', 'kapila@', '0717865316', '123', '2019-03-10', 'm', 1),
(3, 'Udula Indunil', 'uduala@', '0717865316', '202cb962ac59075b964b07152d234b70', '2019-03-10', 'm', 1),
(7, 'chathuraaga', 'chathu@', '0717865316', '123', '2019-03-27', 'm', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_car_model1_idx` (`model_id`),
  ADD KEY `fk_car_fuel_type1_idx` (`fuel_type_id`),
  ADD KEY `fk_car_user1_idx` (`user_id`);

--
-- Indexes for table `fuel_type`
--
ALTER TABLE `fuel_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_model_brand_idx` (`brand_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fuel_type`
--
ALTER TABLE `fuel_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `fk_car_fuel_type1` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_car_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_car_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `fk_model_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
