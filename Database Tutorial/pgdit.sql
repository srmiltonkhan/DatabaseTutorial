-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2021 at 09:31 AM
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
-- Database: `pgdit`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_code` char(15) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`) VALUES
(1, 'Introduction to IT and Programming', 'PGDIT-101'),
(2, 'Operating System Concept', 'PGDIT-102'),
(3, 'Data Structure & Algorithm', 'PGDIT-103'),
(4, 'Database Management System', 'PGDIT-104');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_email` varchar(150) NOT NULL,
  `student_mobile` char(15) NOT NULL,
  `student_gender` varchar(6) NOT NULL,
  `student_age` int(3) NOT NULL,
  `student_address` varchar(200) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `course_id`, `student_roll`, `student_name`, `student_email`, `student_mobile`, `student_gender`, `student_age`, `student_address`) VALUES
(1, 4, 21213, 'Arfan Khan', 'srmiltonkhan@gmail.com', '01621000361', 'Male', 25, 'Sirajganj'),
(2, 1, 21212, 'Rokshana Khatun', 'rokshana@gmail.com', '01727637452', 'Female', 26, 'Dhaka'),
(3, 2, 21213, 'Arifin Hossain', 'arifin@gmail.com', '01724526385', 'Male', 30, 'Sylhet'),
(4, 2, 21218, 'Anick Khan', 'anick@gmail.com', '014545865457', 'Male', 22, 'Bogram'),
(5, 3, 21218, 'Tasif Ahmed', 'tasif@gmail.com', '0157586575454', 'Male', 21, '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `student_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
