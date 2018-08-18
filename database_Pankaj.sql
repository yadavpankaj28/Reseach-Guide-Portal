-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2018 at 02:56 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chats`
--
CREATE DATABASE IF NOT EXISTS `chats`;
USE `chats`;
-- --------------------------------------------------------

--
-- Table structure for table `current`
--

DROP TABLE IF EXISTS `current`;
CREATE TABLE IF NOT EXISTS `current` (
  `r_id` int(8) NOT NULL AUTO_INCREMENT,
  `student_rollno` varchar(20) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `research_topic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`r_id`, `student_rollno`, `student_name`, `teacher_name`, `research_topic`) VALUES
(1, '801731008', 'Pankaj Yadav', 'Dr.Inderveer Chana', 'Cloud Computing');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL UNIQUE,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'student', 'student', 'student'),
(3, 'teacher', 'teacher', 'teacher'),
(4, 'yadavpankaj28@gmail.com', 'pankaj', 'student'),
(5, 'aa@us.net', '111111', 'student'),
(8, 'swati.kumari@thapar.edu', 'swati', 'teacher'),
(9, 'sukhchandan@thapar.edu', 'sukhchandan', 'teacher'),
(10, 'kartikjaitly203@gmail.com', 'kartik', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `msgfrom` varchar(30) NOT NULL,
  `msgto` varchar(30) NOT NULL,
  `msgTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msgType` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `description`, `msgfrom`, `msgto`, `msgTime`, `msgType`) VALUES
(1, 'hello', 'yadavpankaj28@gmail.com', 'swati.kumari@thapar.edu', '2018-04-14 17:21:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `stu_email` varchar(30) DEFAULT NULL,
  `teacher_id` int(10) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`stu_email`, `teacher_id`, `timestamp`, `status`) VALUES
('yadavpankaj28@gmail.com', 4, 'Sat Apr 14 12:50:05 IST 2018', 'accepted');


-- --------------------------------------------------------

--
-- Table structure for table `research`
--

DROP TABLE IF EXISTS `research`;
CREATE TABLE IF NOT EXISTS `research` (
  `r_id` int(8) NOT NULL AUTO_INCREMENT,
  `topic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`r_id`, `topic`) VALUES
(1, 'Cloud Computing'),
(2, 'Big Data'),
(3, 'Internet of Things');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `rollno` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL UNIQUE,
  `password` varchar(100) DEFAULT NULL,
  `stream` varchar(60) DEFAULT NULL,
  `qualification` varchar(60) DEFAULT NULL,
  `interests` varchar(100) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `exp` varchar(50) DEFAULT NULL,
  `gate` varchar(100) DEFAULT NULL,
  `research_details` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `name`, `gender`, `email`, `password`, `stream`, `qualification`, `interests`, `mob`, `exp`, `gate`, `research_details`) VALUES
(801731004, 'Kartik', 'Male', 'kartikjaitly203@gmail.com', 'kartik', 'Software Engineering', 'B.Tech', 'Cloud Computing', '9717050878', 'No', 'No', 'NA'),
(801731008, 'Pankaj', 'Male', 'yadavpankaj28@gmail.com', 'pankaj', 'Computer Science Engineering', 'Computer Science Engineering', 'null', '9910897943', 'null', 'null', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `t_id` int(10) DEFAULT NULL UNIQUE,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(40) DEFAULT NULL,
  `stream` varchar(50) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(100) ,
  `mob` varchar(30) DEFAULT NULL,
  `exp` varchar(100) DEFAULT NULL,
  `profile_link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `name`, `designation`, `stream`, `specialization`, `gender`, `email`, `mob`, `exp`, `profile_link`) VALUES
(1, 'Dr. Maninder Singh', 'Professor and Head', 'Computer Science Engineering', 'Network Security, Software Engineering, Parallel and Distributed Computing', 'Male', 'msingh@thapar.edu', 'N/A', 'No', 'http://www.thapar.edu/academics/depfaculty/Dr.-Maninder-Singh/MTM2/ZmFjdWx0eTQ=\r\n'),
(2, 'Vaibav Agarwal', 'Lecturer', 'Civil Engineering', 'Computer', 'Male', 'vaibhav.agarwal@thapar.edu', '8125310621', NULL, 'http://www.thapar.edu/academics/depfaculty/Vaibhav-Agarwal/Mzkz/ZmFjdWx0eTQ=\r\n'),
(3, 'Tarunpreet Bhatia', 'Lecturer', 'Computer Science Engineering', 'Wireless Networks, Sensor Networks, Network Routing and Security', 'Female', 'tarunpreet@thapar.edu', '8053302014', NULL, 'http://www.thapar.edu/academics/depfaculty/Tarunpreet-Bhatia/MzYz/ZmFjdWx0eTQ=\r\n'),
(4, 'Swati Kumari', 'Lecturer', 'Computer Science Engineering', 'Cloud', 'Female', 'swati.kumari@thapar.edu', '9097244060', NULL, 'http://www.thapar.edu/academics/depfaculty/Swati-Kumari/MzYx/ZmFjdWx0eTQ=\r\n'),
(5, 'Sukhnandan Kaur', 'Lecturer', 'Computer Science Engineering', 'Artificial Intelligence, Natural Language Processing, Software Engineering', 'Female', 'sukhnandan.kaur@thapar.edu', '9872545489', NULL, 'http://www.thapar.edu/academics/depfaculty/Sukhnandan-Kaur/NDA0/ZmFjdWx0eTQ=\r\n'),
(6, 'Sukhchandan Randhawa', 'Lecturer', 'Computer Science Engineering', 'Computer Networks, Information Management Systems and Algorithms', 'Female', 'sukhchandan@thapar.edu', '9646011842', NULL, 'http://www.thapar.edu/academics/depfaculty/Sukhchandan-Randhawa/MzM4/ZmFjdWx0eTQ=\r\n'),
(7, 'Shanky Goel', 'Lecturer', 'Computer Science Engineering', 'Natural Language Processing\r\n', 'Male', 'shanky.goel@thapar.edu', '9803415203', NULL, 'http://www.thapar.edu/academics/depfaculty/Shanky-Goel/Mzk3/ZmFjdWx0eTQ=\r\n'),
(8, 'Shatrughan Modi', 'Lecturer', 'Computer Science Engineering ', 'Software Engineering', 'Male', 'shatrughan.modi@thapar.edu', '7696819814', NULL, 'http://www.thapar.edu/academics/depfaculty/Shatrughan-Modi/Mzcw/ZmFjdWx0eTQ=\r\n'),
(9, 'Smita Agarwal', 'Lecturer', 'Computer Science Engineerin', 'Computer Science', 'Female', 'smita.agrawal@thapar.edu', '8604083841', NULL, 'http://www.thapar.edu/academics/depfaculty/Smita-Agrawal/Mzk2/ZmFjdWx0eTQ=\r\n'),
(10, 'Sanjeev Rao', 'Lecturer', 'Computer Science Engineering', 'Databases and Data Mining', 'Male', 'sanjeev.rao@thapar.edu', '9888280270', NULL, 'http://www.thapar.edu/academics/depfaculty/Smita-Agrawal/Mzk2/ZmFjdWx0eTQ=\r\n'),
(11, 'Rupinderdeep Kaur', 'Lecturer', 'Computer Science Engineering', 'Artificial Intelligence, Natural Language Processing', 'Female', 'rupinderdeep@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Rupinderdeep-Kaur/MzYw/ZmFjdWx0eTQ=\r\n'),
(12, 'Rajanpreet Kaur Chahal', 'Lecturer', 'Computer Science Engineering', 'Cloud Computing, Distributed Systems, Security and Trust Evaluation in Distributed Systems', 'Female', 'rajanpreet@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Rajanpreet-Kaur-Chahal/MzY0/ZmFjdWx0eTQ=\r\n'),
(13, 'Prabhleen Juneja', 'Lecturer', 'Computer Science Engineering', 'Software Engineering, Big Data', 'Female', 'prabhleen.juneja@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Prabhleen-Juneja/NDAw/ZmFjdWx0eTQ=\r\n'),
(14, 'Parmpreet Singh', 'Lecturer', 'Computer Science Engineering', 'Computer Networks and Network Security', 'Male', 'parmpreet.singh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Parmpreet-Singh/NDAx/ZmFjdWx0eTQ=\r\n'),
(15, 'Palika Chopra', 'Lecturer', 'Computer Science Engineering', 'System Administration, Application Developement, Database Administration and Computer Networks', 'Female', 'palika.chopra@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Palika-Chopra/MzUy/ZmFjdWx0eTQ=\r\n'),
(16, 'Nitin Saxena', 'Lecturer', 'Computer Science Engineering', 'Nature Inspired Optimization Techniques, Digital Image Watermarking', 'Male', 'nitin.saxena@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Nitin-Saxena/MzU5/ZmFjdWx0eTQ=\r\n'),
(17, 'Navneet Kaur Kaleka', 'Lecturer', 'Computer Science Engineering', 'Natural Language Processing, Machine Learning', 'Female', 'navneet.kalra@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Navneet-Kaur-Kaleka/NDAz/ZmFjdWx0eTQ=\r\n'),
(18, 'Gaganpreet Kaur', 'Lecturer', 'Computer Science Engineering', 'Wireless Sensor Network', 'Female', 'gaganpreet.kaur@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Ms.-Gaganpreet-Kaur/Mjkw/ZmFjdWx0eTQ=\r\n'),
(19, 'Lov Kumar', 'Lecturer', 'Computer Science Engineering', 'Software Engineering, Software Quality, Software Metrics, Application of AI Techniques in Softwarwe ', 'Male', 'lov.kumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Lov-Kumar/NDEy/ZmFjdWx0eTQ=\r\n'),
(20, 'Hemant Kumar Gianey', 'Lecturer', 'Computer Science Engineering', 'Big Data and Big Data Analytics, Machine Learning', 'Male', 'hemant.k@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Hemant-Kumar-Gianey/NDEx/ZmFjdWx0eTQ=\r\n'),
(21, 'Harpreet Singh', 'Lecturer', 'Computer Science Engineering', 'Machine Learning and Data Analytics', 'Male', 'harpreet.s@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Harpreet-Singh/NDA1/ZmFjdWx0eTQ=\r\n'),
(22, 'Harkiran Kaur', 'Lecturer', 'Computer Science Engineering', 'Software Engineering, Cultural Computing, Intelligent Databases, Information Retrievel Systems and M', 'Female', 'harkiran.kaur@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Harkiran-Kaur/MzY4/ZmFjdWx0eTQ=\r\n'),
(23, 'Gurpal Singh Chhabra', 'Lecturer', 'Computer Science Engineering', 'Cyber Forensics, Big Data and Network Security', 'Male', 'gurpal.singh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Gurpal-Singh-Chhabra/MzU2/ZmFjdWx0eTQ=\r\n'),
(24, 'Dr. Vinay Gautam', 'Lecturer', 'Computer Science Engineering', 'Data Warehouse', 'Male', 'vinay.gautam@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Vinay-Gautam/MzU3/ZmFjdWx0eTQ=\r\n'),
(25, 'Dr. Sukhpal Singh Gill', 'Lecturer', 'Computer Science Engineering', 'Cloud Computing, Software Engineering, Big Data, Internet of Things and Fog Computing', 'Male', 'ssgill@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Sukhpal-Singh-Gill/MzU0/ZmFjdWx0eTQ=\r\n'),
(26, 'Dr. Seemu Sharma', 'Lecturer', 'Computer Science Engineering', 'Cultural Computing, Human Centered Computing', 'Female', 'seemu.sharma@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Seemu-Sharma/MzU4/ZmFjdWx0eTQ=\r\n'),
(27, 'Dr. Nidhi Kalra', 'Lecturer', 'Computer Science Engineering', 'Theoretical Computer Science, Smartphone Sensors and Application of formal grammar in Biology', 'Female', 'nidhi.kalra@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Nidhi-Kalra/NDAy/ZmFjdWx0eTQ=\r\n'),
(28, 'Dr. Husanbir Singh Pannu', 'Lecturer', 'Computer Science Engineering', 'Computer Science', 'Male', 'hspannu@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Husanbir-Singh-Pannu/MzYy/ZmFjdWx0eTQ=\r\n'),
(29, 'Dr. Anjali Anand', 'Lecturer', 'Computer Science Engineering', 'Mobile Ad hoc Networks', 'Female', 'anajali.anand@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Anjali-Anand/Mzg3/ZmFjdWx0eTQ=\r\n'),
(30, 'Divya Sahgal', 'Lecturer', 'Computer Science Engineering', 'Artificial Intelligence', 'Female', 'divya.sahgal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Divya-Sahgal/NDA5/ZmFjdWx0eTQ=\r\n'),
(31, 'Deep Mann', 'Lecturer', 'Computer Science Engineering', 'Cloud Computing', 'Male', 'deep.mann@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Deep-Mann/NDEz/ZmFjdWx0eTQ=\r\n'),
(32, 'Ashutosh Aggarwal', 'Lecturer', 'Computer Science Engineering', 'Image and Video Processing', 'Male', 'ashutosh.aggarwal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Ashutosh-Aggarwal/MzM5/ZmFjdWx0eTQ=\r\n'),
(33, 'Ashish Girdhar', 'Lecturer', 'Computer Science Engineering', 'Image Processing', 'Male', 'ashish.girdhar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Ashish-Girdhar/MzY2/ZmFjdWx0eTQ=\r\n'),
(34, 'Anoop Jacob Thomas', 'Lecturer', 'Computer Science Engineering', 'Medical Image Processing, Machine Learning, Data Analysis', 'Male', 'anoop.thomas@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Anoop-Jacob-Thomas/NDA4/ZmFjdWx0eTQ=\r\n'),
(35, 'Anika', 'Lecturer', 'Computer Science Engineering', 'Data Structure, Algorithms, Database Management Systems, Technology Enabled Learning, Recommender Sy', 'Female', 'anika@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Anika/MzY5/ZmFjdWx0eTQ=\r\n'),
(36, 'Abhishek Jain', 'Lecturer', 'Computer Science Engineering', 'Computer Networks, Network Security, Operating Systems and Software Project Management', 'Male', 'abhishek.jain@chitkara.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Abhishek-Jain/NDA3/ZmFjdWx0eTQ=\r\n'),
(37, 'Dr. Manju', 'Visiting Assistant Professor', 'Computer Science Engineering', 'Wireless Sensor Networks', 'Female', 'manju.khurana@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Manju/NDEw/ZmFjdWx0eTQ=\r\n'),
(38, 'Vinod Kumar Bhalla', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering, Semantic Web', 'Male', 'vkbhalla@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Vinod-Kumar-Bhalla/MzE4/ZmFjdWx0eTQ=\r\n'),
(39, 'Vineeta Bassi', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering', 'Female', 'vbassi@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Vineeta-Bassi/MTU2/ZmFjdWx0eTQ=\r\n'),
(40, 'Vinay Arora', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering', 'Male', 'vinay.arora@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Vinay-Arora/MzMw/ZmFjdWx0eTQ=\r\n'),
(41, 'Sunita Garhwal', 'Assistant Professor', 'Computer Science Engineering', 'Automata Theory, Software Engineering', 'Female', 'sgarwal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Sunita-Garhwal/MzA5/ZmFjdWx0eTQ=\r\n'),
(42, 'Sumit Miglani', 'Assistant Professor', 'Computer Science Engineering', 'Operating System, Wireless Communication and Computing', 'Male', 'smighal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Sumit-Miglani/MzI2/ZmFjdWx0eTQ=\r\n'),
(43, 'Santosh Singh Rathore', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering, Software Quality Assurance, Software Fault Prediction, Object Oriented Metrics', 'Male', 'santosh.singh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Santosh-Singh-Rathore/MzY1/ZmFjdWx0eTQ=\r\n'),
(44, 'Rajkumar Tekchandani', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering and Data Mining', 'Male', 'rtekchandani@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Rajkumar-Tekchandani/MzI5/ZmFjdWx0eTQ=\r\n'),
(45, 'Mohd. Naseem', 'Assistant Professor', 'Computer Science Engineering', 'Computer Networks', 'Male', 'mohd.naseem@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Mohd.-Naseem/MzQz/ZmFjdWx0eTQ=\r\n'),
(46, 'Karun Verma', 'Assistant Professor', 'Computer Science Engineering', 'Machine Learning, Natural Language Processing, Human Computer Interfaces, Entrepreneurial Research', 'Male', 'karun.verma@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Karun-Verma/MzI1/ZmFjdWx0eTQ=\r\n'),
(47, 'Dr. Vinay Kumar', 'Assistant Professor', 'Computer Science Engineering', 'Meraheuristic Techniques, Data Clustering', 'Male', 'vinay_kumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Vijay-Kumar/MzQ0/ZmFjdWx0eTQ=\r\n'),
(48, 'Dr. Sushma Jain', 'Assistant Professor', 'Computer Science Engineering', 'Networking, Data Analytics, Machine Learning', 'Female', 'sjain@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Sushma-Jain/MzIw/ZmFjdWx0eTQ=\r\n'),
(49, 'Dr. Singara Singh', 'Assistant Professor', 'Computer Science Engineering', 'Digital Image Processing, Information Security', 'Male', 'singara@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Singara-Singh/MTU1/ZmFjdWx0eTQ=\r\n'),
(50, 'Dr. Shreelekha Pandey', 'Assistant Professor', 'Computer Science Engineering', NULL, 'Female', 'shreelekha.pandey@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Shreelekha-Pandey/MzQ4/ZmFjdWx0eTQ=\r\n'),
(51, 'Dr. Shivendra Shivani', 'Assistant Professor', 'Computer Science Engineering', 'Multimedia Processing', 'Male', 'shivendra.shivani@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Shivendra-Shivani/MzQ2/ZmFjdWx0eTQ=\r\n'),
(52, 'Dr. Sharad Saxena', 'Assistant Professor', 'Computer Science Engineering', 'Wireless Sensor Networks, IOT, Ad-hoc Networks', 'Male', 'sharad.saxena@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Sharad-Saxena/MzE1/ZmFjdWx0eTQ=\r\n'),
(53, 'Dr. Shailendra Tiwari', 'Assistant Professor', 'Computer Science Engineering', 'Bio-Medical Engineering, Image Processing', 'Male', 'shailendra.tiwari@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Shailendra-tiwari/MzU1/ZmFjdWx0eTQ=\r\n'),
(54, 'Dr. Sanmeet Kaur', 'Assistant Professor', 'Computer Science Engineering', 'Network Security, IoT, Software Engineering', 'Female', 'sanmeet.bhatia@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Sanmeet-Kaur/MTU3/ZmFjdWx0eTQ=\r\n'),
(55, 'Dr. Sangita Roy', 'Assistant Professor', 'Computer Science Engineering', 'Network Security, Cryptography, Steganography, IoT, Image Processing', 'Female', 'sangita.roy@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Sangita-Roy/MzQy/ZmFjdWx0eTQ=\r\n'),
(56, 'Dr. Rupali Bhardwaj', 'Assistant Professor', 'Computer Science Engineering', 'Cellular Automata, Cryptography, Data Mining', 'Female', 'rupali.bharadwaj@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Rupali-Bhardwaj/MzEz/ZmFjdWx0eTQ=\r\n'),
(57, 'Dr. Ravinder Kumar', 'Assistant Professor', 'Computer Science Engineering', 'Machine Learning', 'Male', 'ravinder@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Ravinder-Kumar/MzIz/ZmFjdWx0eTQ=\r\n'),
(58, 'Dr. Raman Singh', 'Assistant Professor', 'Computer Science Engineering', 'Intrusion Detection System, Cloud Data Security, Cyber Physical System, Autonomous Driving, Machine ', 'Male', 'raman.singh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Raman-Singh/MzQ1/ZmFjdWx0eTQ=\r\n'),
(59, 'Dr. Raman Kumar Goyal', 'Assistant Professor', 'Computer Science Engineering', 'Wireless Networks', 'Male', 'ramankumar.goyal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Raman-Kumar-Goyal/NDA2/ZmFjdWx0eTQ=\r\n'),
(60, 'Dr. Rajiv Kumar', 'Assistant Professor', 'Computer Science Engineering', 'Image Processing, Algorithms(Design and Analysis), Segmentation', 'Male', 'rkumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Rajiv-Kumar/MzA0/ZmFjdWx0eTQ=\r\n'),
(61, 'Dr. Rajesh Mehta', 'Assistant Professor', 'Computer Science Engineering', 'Image Processing and Machine Learning Algorithms', 'Male', 'rajesh.mehta@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Rajesh-Mehta/Mzk5/ZmFjdWx0eTQ=\r\n'),
(62, 'Dr. Prashanr S Rana', 'Assistant Professor', 'Computer Science Engineering', 'Machine Learning and Data Mining, Modelling and Simulation, Parallel Algorithms, Machine Learning, O', 'Male', 'prashant.singh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Prashant-S-Rana/MzQx/ZmFjdWx0eTQ=\r\n'),
(63, 'Dr. Maninder Kaur', 'Assistant Professor', 'Computer Science Engineering', 'Computer Engineering', 'Female', 'manindersohal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Maninder-Kaur/MTU0/ZmFjdWx0eTQ=\r\n'),
(64, 'Dr. Karamjit Kaur', 'Assistant Professor', 'Computer Science Engineering', 'MySQL Databases and Big Data', 'Female', 'karamjit.kaur@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Karamjit-Kaur/MzQ5/ZmFjdWx0eTQ=\r\n'),
(65, 'Dr. Jhilik Bhattacharya', 'Assistant Professor', 'Computer Science Engineering', 'Image Enhancement, Camera Calibration, Feature Detection, Face Recognition, Robot Trajectory Logging', 'Female', 'jhilik@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Jhilik-Bhattacharya/MzM1/ZmFjdWx0eTQ=\r\n'),
(66, 'Dr. Geeta Kasana', 'Assistant Professor', 'Computer Science Engineering', 'Image Processing and Information Security', 'Female', 'gkasana@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Geeta-Kasana/MzUx/ZmFjdWx0eTQ=\r\n'),
(67, 'Dr. Avleen Kaur Malhi', 'Assistant Professor', 'Computer Science Engineering', 'Information Secuirty and VANETs', 'Female', 'avleen@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Avleen-Kaur-Malhi/MzQw/ZmFjdWx0eTQ=\r\n'),
(68, 'Dr. Ashutosh Mishra', 'Assistant Professor', 'Computer Science Engineering', 'Software Engineering, Intelligent Computing Methods, Big Data, Computational BioInformatics', 'Male', 'ashutosh.mishra@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Ashutosh-Mishra/MzMx/ZmFjdWx0eTQ=\r\n'),
(69, 'Dr. Ashima Singh', 'Assistant Professor', 'Computer Science Engineering', 'DevOps, Data Mining and Machine Intelligence, Software Engineering, Software Components and Reuse', 'Female', 'ashima@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Ashima-Singh/MzIy/ZmFjdWx0eTQ=\r\n'),
(70, 'Dr. Anju Bala', 'Assistant Professor', 'Computer Science Engineering', 'Theoritical Computer Science and Software Testing', 'Female', 'anjubala@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Anju-Bala/MzI3/ZmFjdWx0eTQ=\r\n'),
(71, 'Dr. Ajay Kumar', 'Assistant Professor', 'Computer Science Engineering', 'Theoritical Computer Science and Software Testing', 'Male', 'ajaykumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Ajay-Kumar/MzI0/ZmFjdWx0eTQ=\r\n'),
(72, 'Ashish Aggarwal', 'Assistant Professor', 'Computer Science Engineering', 'Computer Networks, DBMS, System Analysis and Design, Computer System Architecture, Databases, Networ', 'Male', 'ashish.aggarwal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Ashish-Aggarwal/MzI4/ZmFjdWx0eTQ=\n\n'),
(73, 'Anil Vashisht', 'Assistant Professor', 'Computer Science Engineering', 'Computer Networks, DBMS, System Analysis and Design, Computer System Architecture, Databases, Networ', 'Male', 'avashisht@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Anil-Vashisht/MzE2/ZmFjdWx0eTQ=\r\n'),
(74, 'Dr. V.P. Singh', 'Associate Professor', 'Computer Science Engineering', 'Computing, Computer Networks, Computer Forensics and Cyber Law', 'Male', 'vpsingh@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-V.-P.-Singh/MTUz/ZmFjdWx0eTQ=\r\n'),
(75, 'Dr. Shalini Batra', 'Associate Professor', 'Computer Science Engineering', 'Computer Science Engineering', 'Female', 'sbatra@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Shalini-Batra/MzAz/ZmFjdWx0eTQ=\r\n'),
(76, 'Dr. Rinkle Rani', 'Associate Professor', 'Computer Science Engineering', 'Big Data Mining and Analysis, Algorithms', 'Female', 'raggarwal@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Rinkle-Rani/MzAw/ZmFjdWx0eTQ=\r\n'),
(77, 'Dr. Parteek Bhatia', 'Associate Professor', 'Computer Science Engineering', 'NLP, Machine Learning and Human Computer Interface for Education of Hearing Impaired People', 'Male', 'parteek.bhatia@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Parteek-Bhatia/MTUy/ZmFjdWx0eTQ=\r\n'),
(78, 'Dr. Neeraj Kumar', 'Associate Professor', 'Computer Science Engineering', 'Networks and Cryptography', 'Male', 'neeraj.kumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Neeraj-Kumar/MTUx/ZmFjdWx0eTQ=\r\n'),
(79, 'Dr. Seema Bawa', 'Professor', 'Computer Science Engineering', 'Cloud Computing, Big Data Analytics and Machine Learning', 'Female', 'seema@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Seema-Bawa/MTUw/ZmFjdWx0eTQ=\r\n'),
(80, 'Dr. Rajesh Kumar', 'Professor', 'Computer Science Engineering', 'Computer Networks, Cloud Computing, Software Engineering', 'Male', 'rakumar@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Rajesh-Kumar/MjU0/ZmFjdWx0eTQ=\r\n'),
(81, 'Dr. R.K. Sharma', 'Professor', 'Computer Science Engineering', 'Machine Learning, Statistical Methods in Computer Science and NLP', 'Male', 'rksharma@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-R.-K.-Sharma/MjQ1/ZmFjdWx0eTQ=\r\n'),
(82, 'Dr. Inderveer Chana', 'Professor', 'Computer Science Engineering', 'Cloud Computing, Big Data and IoT, Software Engineering and Software Project Management', 'Female', 'inderveer@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Inderveer-Chana/MjU1/ZmFjdWx0eTQ=\r\n'),
(83, 'Dr. Anil Kumar Verma', 'Professor', 'Computer Science Engineering', 'Computer Networks, Security, Mobile and Wireless Networks', 'Male', 'akverma@thapar.edu', NULL, NULL, 'http://www.thapar.edu/academics/depfaculty/Dr.-Anil-Kumar-Verma/MjU4/ZmFjdWx0eTQ=\r\n'),
(84, 'Utkarsha Singh', 'Associate Professor', 'Computer Science Engineering', 'Cloud Computing', 'Male', 'singhutkarsha243@gmail.com', '9599222606', 'Yes', '#');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
