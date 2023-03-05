-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 05, 2023 at 06:11 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RateARestaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(1, 'Hammond', 'Pratt', 'hpratt33@geemail.com', '7335555318'),
(2, 'Wendi', 'Derichs', 'wd1981@geemail.com', '4055557509'),
(3, 'Jonah', 'Quinn', 'quinnjonah10@geemail.com', '2495550853');

-- --------------------------------------------------------

--
-- Table structure for table `follower`
--

CREATE TABLE `follower` (
  `follow_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `follower`
--

INSERT INTO `follower` (`follow_id`, `member_id`, `rest_id`, `admin_id`) VALUES
(1, 1, 2, NULL),
(2, 1, 4, NULL),
(3, 2, 1, NULL),
(4, 3, 4, NULL),
(5, 3, 5, NULL),
(6, 4, 2, NULL),
(7, 5, 1, NULL),
(8, 6, 1, NULL),
(9, 6, 2, NULL),
(10, 7, 3, NULL),
(11, 7, 5, NULL),
(12, 8, 1, NULL),
(13, 9, 3, NULL),
(14, 10, 2, NULL),
(15, 10, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`food_id`, `food_name`) VALUES
(1, 'Croqueta'),
(2, 'Pizza'),
(3, 'Salad'),
(4, 'Gelato');

-- --------------------------------------------------------

--
-- Table structure for table `food_rest`
--

CREATE TABLE `food_rest` (
  `food_rest_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_rest`
--

INSERT INTO `food_rest` (`food_rest_id`, `rest_id`, `food_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 4),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 3),
(8, 4, 1),
(9, 4, 2),
(10, 4, 3),
(11, 4, 4),
(12, 5, 1),
(13, 5, 2),
(14, 5, 3),
(15, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `first_name`, `last_name`, `user_name`, `password`, `email`, `phone`) VALUES
(1, 'Mabel', 'Sherman', 'mabel204', '92qh83r', 'mabel204@geemail.com', '3535559124'),
(2, 'Elijah', 'Patterson', 'elijahm54', 'jc98234', 'elijahm54@geemail.com', '4415559942'),
(3, 'Guy', 'Abney', 'guy2113', '05a394j', 'guy2113@geemail.com', '4415551044'),
(4, 'Kimberly', 'Tyson', 'ktyson002', '029urcqr', 'ktyson002@geemail', '6415550804'),
(5, 'Coy', 'McNeill', 'coymcneill77', '9382af43', 'coymcneill77@geemail.com', '8215556120'),
(6, 'Sonia', 'Xu', 'sonia1414', '9a3ir4ta', 'sonia1414@geemail.com', '3535554847'),
(7, 'Bob', 'Maguire', 'bobmag6', '58ahh4ua', 'bobmag6@geemail.com', '7335551300'),
(8, 'Alan', 'Bandini', 'alanba5', '2938qba', 'alanba5@geemail.com', '3535552211'),
(9, 'Jill', 'Glover', 'jg1996', '983a25nv', 'jg1996@geemail.com', '4055558331'),
(10, 'Hannah', 'Gomez', 'gomezhan1738', 'mfai2934', 'gomezhan1738@geemail.com', '8695552788');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `fee_amount` smallint(6) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `rest_id` int(10) NOT NULL,
  `rest_name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `premium_member` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`rest_id`, `rest_name`, `address`, `phone`, `email`, `owner_name`, `premium_member`) VALUES
(1, 'Best Burgers', '1234 Burger Ave', '8005551111', 'bestburgers@gmail.com', 'Doe John', 'Y'),
(2, 'Pizza Paradise', '999 Trastevere St', '4445550099', 'pizzaparadise88@gmail.com', 'Dwight Schrute', 'Y'),
(3, 'Nifty Noodles', '321 Pesto Ln', '8004441234', 'niftynoodle16@gmail.com', 'Gordon Ramsay', 'N'),
(4, 'Sandwich Sanctuary', '4321 Crescenzio Ave', '8885550303', 'ssanctuary@gmail.com', 'Saul Goodman', 'Y'),
(5, 'Spaghetti House', '747 Forum Dr', '9995552468', 'spaghethouse11@gmail.com', 'Michael Scott', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `rating_score` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `member_id`, `rest_id`, `food_id`, `admin_id`, `rating_score`) VALUES
(1, 1, 2, 2, NULL, '5'),
(2, 1, 2, 4, NULL, '2'),
(3, 1, 4, 1, NULL, '4'),
(4, 2, 1, 2, NULL, '1'),
(5, 2, 1, 3, NULL, '4'),
(6, 3, 4, 1, NULL, '1'),
(7, 3, 4, 3, NULL, '3'),
(8, 3, 5, 1, NULL, '5'),
(9, 3, 5, 2, NULL, '1'),
(10, 4, 2, 4, NULL, '3'),
(11, 5, 1, 2, NULL, '5'),
(12, 5, 1, 3, NULL, '5'),
(13, 5, 1, 4, NULL, '4'),
(14, 6, 1, 2, NULL, '3'),
(15, 6, 1, 4, NULL, '2'),
(16, 6, 2, 2, NULL, '4'),
(17, 6, 2, 3, NULL, '4'),
(18, 7, 3, 3, NULL, '5'),
(19, 7, 5, 1, NULL, '2'),
(20, 9, 3, 3, NULL, '5'),
(21, 10, 4, 1, NULL, '1'),
(22, 10, 4, 4, NULL, '3');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `sub_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `month_fee` smallint(6) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`sub_id`, `rest_id`, `admin_id`, `month_fee`, `payment_method`) VALUES
(1, 1, NULL, 300, 'Check'),
(2, 2, NULL, 300, 'Credit'),
(3, 4, NULL, 300, 'Debit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`follow_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `rest_id` (`rest_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `food_rest`
--
ALTER TABLE `food_rest`
  ADD PRIMARY KEY (`food_rest_id`),
  ADD KEY `rest_id` (`rest_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`rest_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `rest_id` (`rest_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `rest_id` (`rest_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `follower`
--
ALTER TABLE `follower`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `food_item`
--
ALTER TABLE `food_item`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food_rest`
--
ALTER TABLE `food_rest`
  MODIFY `food_rest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `rest_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follower`
--
ALTER TABLE `follower`
  ADD CONSTRAINT `follower_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `follower_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`),
  ADD CONSTRAINT `follower_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

--
-- Constraints for table `food_rest`
--
ALTER TABLE `food_rest`
  ADD CONSTRAINT `food_rest_ibfk_1` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`),
  ADD CONSTRAINT `food_rest_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`food_id`) REFERENCES `food_item` (`food_id`),
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  ADD CONSTRAINT `review_ibfk_4` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`);

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`rest_id`) REFERENCES `restaurants` (`rest_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
