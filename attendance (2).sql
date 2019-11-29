-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 05:45 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(100) NOT NULL,
  `admin_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_user_name`, `admin_password`) VALUES
(1, 'admin', '$2y$10$D74Zy1qMkATvmGRoVeq7hed4ajWof2aqDGnEaD3yPHABA.p.e7f4u');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attendance_status` enum('Present','Absent') NOT NULL,
  `attendance_date` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `student_id`, `attendance_status`, `attendance_date`, `teacher_id`) VALUES
(1, 7, 'Present', '2019-05-01', 3),
(2, 8, 'Present', '2019-05-01', 3),
(3, 9, 'Absent', '2019-05-01', 3),
(4, 10, 'Present', '2019-05-01', 3),
(5, 11, 'Present', '2019-05-01', 3),
(6, 7, 'Absent', '2019-05-02', 3),
(7, 8, 'Present', '2019-05-02', 3),
(8, 9, 'Present', '2019-05-02', 3),
(9, 10, 'Present', '2019-05-02', 3),
(10, 11, 'Absent', '2019-05-02', 3),
(11, 1, 'Present', '2019-05-01', 2),
(12, 3, 'Present', '2019-05-01', 2),
(13, 4, 'Present', '2019-05-01', 2),
(14, 5, 'Present', '2019-05-01', 2),
(15, 6, 'Present', '2019-05-01', 2),
(16, 1, 'Present', '2019-05-02', 2),
(17, 3, 'Absent', '2019-05-02', 2),
(18, 4, 'Present', '2019-05-02', 2),
(19, 5, 'Absent', '2019-05-02', 5),
(20, 6, 'Present', '2019-05-02', 5),
(21, 1, 'Present', '2019-05-03', 2),
(22, 3, 'Present', '2019-05-03', 5),
(23, 4, 'Absent', '2019-05-03', 5),
(24, 5, 'Present', '2019-05-03', 2),
(25, 6, 'Present', '2019-05-03', 2),
(26, 1, 'Absent', '2019-05-04', 2),
(27, 3, 'Present', '2019-05-04', 2),
(28, 4, 'Present', '2019-05-04', 2),
(29, 5, 'Present', '2019-05-04', 2),
(30, 6, 'Present', '2019-05-04', 2),
(31, 1, 'Present', '2019-05-06', 2),
(32, 3, 'Present', '2019-05-06', 2),
(33, 4, 'Present', '2019-05-06', 2),
(34, 5, 'Present', '2019-05-06', 2),
(35, 6, 'Present', '2019-05-06', 2),
(36, 1, 'Present', '2019-05-07', 2),
(37, 3, 'Present', '2019-05-07', 2),
(38, 4, 'Present', '2019-05-07', 2),
(39, 5, 'Present', '2019-05-07', 2),
(40, 6, 'Absent', '2019-05-07', 2),
(41, 1, 'Present', '2019-05-08', 2),
(42, 3, 'Present', '2019-05-08', 2),
(43, 4, 'Present', '2019-05-08', 2),
(44, 5, 'Absent', '2019-05-08', 2),
(45, 6, 'Present', '2019-05-08', 2),
(46, 1, 'Present', '2019-05-09', 2),
(47, 3, 'Present', '2019-05-09', 2),
(48, 4, 'Present', '2019-05-09', 2),
(49, 5, 'Present', '2019-05-09', 2),
(50, 6, 'Present', '2019-05-09', 2),
(51, 1, 'Present', '2019-05-10', 2),
(52, 3, 'Absent', '2019-05-10', 2),
(53, 4, 'Absent', '2019-05-10', 2),
(54, 5, 'Present', '2019-05-10', 2),
(55, 6, 'Absent', '2019-05-10', 2),
(56, 1, 'Present', '2019-05-11', 2),
(57, 3, 'Present', '2019-05-11', 2),
(58, 4, 'Absent', '2019-05-11', 2),
(59, 5, 'Present', '2019-05-11', 2),
(60, 6, 'Absent', '2019-05-11', 2),
(61, 7, 'Present', '2019-05-03', 3),
(62, 8, 'Present', '2019-05-03', 3),
(63, 9, 'Present', '2019-05-03', 3),
(64, 10, 'Present', '2019-05-03', 3),
(65, 11, 'Present', '2019-05-03', 3),
(66, 7, 'Absent', '2019-05-04', 3),
(67, 8, 'Present', '2019-05-04', 3),
(68, 9, 'Absent', '2019-05-04', 3),
(69, 10, 'Present', '2019-05-04', 3),
(70, 11, 'Absent', '2019-05-04', 3),
(71, 7, 'Present', '2019-05-06', 3),
(72, 8, 'Present', '2019-05-06', 3),
(73, 9, 'Absent', '2019-05-06', 3),
(74, 10, 'Present', '2019-05-06', 3),
(75, 11, 'Present', '2019-05-06', 3),
(76, 7, 'Present', '2019-05-07', 3),
(77, 8, 'Present', '2019-05-07', 3),
(78, 9, 'Present', '2019-05-07', 3),
(79, 10, 'Present', '2019-05-07', 3),
(80, 11, 'Present', '2019-05-07', 3),
(81, 7, 'Present', '2019-05-08', 3),
(82, 8, 'Present', '2019-05-08', 3),
(83, 9, 'Present', '2019-05-08', 3),
(84, 10, 'Absent', '2019-05-08', 3),
(85, 11, 'Absent', '2019-05-08', 3),
(86, 7, 'Present', '2019-05-09', 3),
(87, 8, 'Present', '2019-05-09', 3),
(88, 9, 'Absent', '2019-05-09', 3),
(89, 10, 'Present', '2019-05-09', 3),
(90, 11, 'Present', '2019-05-09', 3),
(91, 7, 'Absent', '2019-05-10', 3),
(92, 8, 'Present', '2019-05-10', 3),
(93, 9, 'Present', '2019-05-10', 3),
(94, 10, 'Present', '2019-05-10', 3),
(95, 11, 'Absent', '2019-05-10', 3),
(96, 7, 'Present', '2019-05-11', 3),
(97, 8, 'Present', '2019-05-11', 3),
(98, 9, 'Present', '2019-05-11', 3),
(99, 10, 'Absent', '2019-05-11', 3),
(100, 11, 'Present', '2019-05-11', 3),
(101, 12, 'Present', '2019-05-01', 4),
(102, 13, 'Present', '2019-05-01', 4),
(103, 14, 'Present', '2019-05-01', 4),
(104, 15, 'Present', '2019-05-01', 4),
(105, 16, 'Present', '2019-05-01', 4),
(106, 12, 'Present', '2019-05-02', 4),
(107, 13, 'Absent', '2019-05-02', 4),
(108, 14, 'Present', '2019-05-02', 4),
(109, 15, 'Absent', '2019-05-02', 4),
(110, 16, 'Present', '2019-05-02', 4),
(111, 12, 'Present', '2019-05-03', 4),
(112, 13, 'Present', '2019-05-03', 4),
(113, 14, 'Present', '2019-05-03', 4),
(114, 15, 'Absent', '2019-05-03', 4),
(115, 16, 'Present', '2019-05-03', 4),
(116, 12, 'Present', '2019-05-04', 4),
(117, 13, 'Present', '2019-05-04', 4),
(118, 14, 'Present', '2019-05-04', 4),
(119, 15, 'Present', '2019-05-04', 4),
(120, 16, 'Present', '2019-05-04', 4),
(121, 12, 'Present', '2019-05-06', 4),
(122, 13, 'Absent', '2019-05-06', 4),
(123, 14, 'Absent', '2019-05-06', 4),
(124, 15, 'Present', '2019-05-06', 4),
(125, 16, 'Present', '2019-05-06', 4),
(126, 12, 'Absent', '2019-05-07', 4),
(127, 13, 'Present', '2019-05-07', 4),
(128, 14, 'Present', '2019-05-07', 4),
(129, 15, 'Present', '2019-05-07', 4),
(130, 16, 'Absent', '2019-05-07', 4),
(131, 12, 'Present', '2019-05-08', 4),
(132, 13, 'Absent', '2019-05-08', 4),
(133, 14, 'Present', '2019-05-08', 4),
(134, 15, 'Present', '2019-05-08', 4),
(135, 16, 'Present', '2019-05-08', 4),
(136, 12, 'Present', '2019-05-09', 4),
(137, 13, 'Present', '2019-05-09', 4),
(138, 14, 'Present', '2019-05-09', 4),
(139, 15, 'Present', '2019-05-09', 4),
(140, 16, 'Absent', '2019-05-09', 4),
(141, 12, 'Present', '2019-05-10', 4),
(142, 13, 'Absent', '2019-05-10', 4),
(143, 14, 'Present', '2019-05-10', 4),
(144, 15, 'Present', '2019-05-10', 4),
(145, 16, 'Absent', '2019-05-10', 4),
(146, 12, 'Present', '2019-05-11', 4),
(147, 13, 'Present', '2019-05-11', 4),
(148, 14, 'Present', '2019-05-11', 4),
(149, 15, 'Present', '2019-05-11', 4),
(150, 16, 'Present', '2019-05-11', 4),
(151, 17, 'Present', '2019-05-01', 5),
(152, 18, 'Present', '2019-05-01', 5),
(153, 19, 'Present', '2019-05-01', 5),
(154, 20, 'Absent', '2019-05-01', 5),
(155, 21, 'Absent', '2019-05-01', 5),
(156, 17, 'Present', '2019-05-02', 5),
(157, 18, 'Present', '2019-05-02', 5),
(158, 19, 'Present', '2019-05-02', 5),
(159, 20, 'Present', '2019-05-02', 5),
(160, 21, 'Present', '2019-05-02', 5),
(161, 17, 'Present', '2019-05-03', 5),
(162, 18, 'Present', '2019-05-03', 5),
(163, 19, 'Present', '2019-05-03', 5),
(164, 20, 'Present', '2019-05-03', 5),
(165, 21, 'Absent', '2019-05-03', 5),
(166, 17, 'Present', '2019-05-04', 5),
(167, 18, 'Present', '2019-05-04', 5),
(168, 19, 'Absent', '2019-05-04', 5),
(169, 20, 'Present', '2019-05-04', 5),
(170, 21, 'Present', '2019-05-04', 5),
(171, 17, 'Present', '2019-05-06', 5),
(172, 18, 'Present', '2019-05-06', 5),
(173, 19, 'Present', '2019-05-06', 5),
(174, 20, 'Present', '2019-05-06', 5),
(175, 21, 'Present', '2019-05-06', 5),
(176, 17, 'Present', '2019-05-07', 5),
(177, 18, 'Present', '2019-05-07', 5),
(178, 19, 'Present', '2019-05-07', 5),
(179, 20, 'Present', '2019-05-07', 5),
(180, 21, 'Absent', '2019-05-07', 5),
(181, 17, 'Present', '2019-05-08', 5),
(182, 18, 'Present', '2019-05-08', 5),
(183, 19, 'Present', '2019-05-08', 5),
(184, 20, 'Absent', '2019-05-08', 5),
(185, 21, 'Present', '2019-05-08', 5),
(186, 17, 'Present', '2019-05-09', 5),
(187, 18, 'Present', '2019-05-09', 5),
(188, 19, 'Absent', '2019-05-09', 5),
(189, 20, 'Absent', '2019-05-09', 5),
(190, 21, 'Present', '2019-05-09', 5),
(191, 17, 'Absent', '2019-05-10', 5),
(192, 18, 'Present', '2019-05-10', 5),
(193, 19, 'Present', '2019-05-10', 5),
(194, 20, 'Present', '2019-05-10', 5),
(195, 21, 'Present', '2019-05-10', 5),
(196, 17, 'Present', '2019-05-11', 5),
(197, 18, 'Present', '2019-05-11', 5),
(198, 19, 'Present', '2019-05-11', 5),
(199, 20, 'Absent', '2019-05-11', 5),
(200, 21, 'Present', '2019-05-11', 5),
(201, 7, 'Present', '2019-05-13', 3),
(202, 8, 'Present', '2019-05-13', 3),
(203, 9, 'Present', '2019-05-13', 3),
(204, 10, 'Absent', '2019-05-13', 3),
(205, 11, 'Present', '2019-05-13', 3),
(206, 7, 'Present', '2019-05-14', 3),
(207, 8, 'Present', '2019-05-14', 3),
(208, 9, 'Absent', '2019-05-14', 3),
(209, 10, 'Present', '2019-05-14', 3),
(210, 11, 'Present', '2019-05-14', 3),
(211, 1, 'Absent', '2019-09-10', 2),
(212, 3, 'Absent', '2019-09-10', 2),
(213, 4, 'Absent', '2019-09-10', 2),
(214, 5, 'Absent', '2019-09-10', 2),
(215, 6, 'Absent', '2019-09-10', 2),
(216, 4, 'Present', '2019-10-10', 5),
(217, 33, 'Present', '2019-10-09', 9),
(218, 33, 'Absent', '2019-10-24', 9),
(219, 33, 'Present', '2019-10-10', 9),
(220, 8, 'Absent', '2019-10-02', 11),
(221, 30, 'Present', '2019-10-02', 11),
(222, 34, 'Present', '2019-10-17', 10),
(223, 36, 'Present', '2019-10-17', 10),
(224, 33, 'Present', '2019-10-11', 9),
(225, 35, 'Present', '2019-10-11', 9),
(226, 33, 'Present', '2019-10-12', 9),
(227, 35, 'Present', '2019-10-12', 9),
(228, 33, 'Absent', '2019-10-19', 9),
(229, 35, 'Absent', '2019-10-19', 9),
(230, 34, 'Absent', '2019-10-15', 10),
(231, 36, 'Absent', '2019-10-15', 10),
(232, 33, 'Present', '2019-11-06', 9),
(233, 35, 'Present', '2019-11-06', 9),
(234, 38, 'Absent', '2019-11-06', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `grade_id` int(50) NOT NULL,
  `grade_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_grade`
--

INSERT INTO `tbl_grade` (`grade_id`, `grade_name`) VALUES
(503, 'telecommunications networks1 - 3 credit units'),
(509, 'Engineering management and enterprises - 2 credit units'),
(511, 'Reliability and maintainability - 2 credit units'),
(535, 'Communication theory and systems - 2credit units'),
(555, 'networking fundamentals - 2 credit units');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(150) NOT NULL,
  `student_roll_number` varchar(255) NOT NULL,
  `student_dob` date NOT NULL,
  `student_grade_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_roll_number`, `student_dob`, `student_grade_id`) VALUES
(8, 'Richard Smith', '2', '2002-12-19', '509'),
(11, 'Minnie Morris', '5', '2003-06-18', '2'),
(12, 'Lisa Ochoa', '1', '2002-05-01', '3'),
(14, 'Ernesto Arnold', '3', '2002-10-12', '3'),
(18, 'Mary Floyd', '2', '2002-09-18', '4'),
(20, 'Cleo Phillips', '4', '2002-01-14', '4'),
(21, 'Rafael Royal', '5', '2002-12-05', '4'),
(22, 'Jeremy Breawer', '1', '2002-04-11', '5'),
(23, 'verr faeren', '9900', '2019-09-12', '1'),
(24, 'ndubisi ozokoye', '0', '2019-09-18', '1'),
(25, 'istifanus nandi', '1', '2010-02-19', '1'),
(26, 'ehindero rapheal', '21', '2010-08-24', '2'),
(27, 'dashan kenshak sylvester', '49', '2010-08-18', '5'),
(30, 'nguher verr', 'uj2014en0086', '2019-09-06', '509'),
(32, 'yafa', 'uj2016en0090', '2019-09-05', '535'),
(33, 'obinna okeke', 'uj2014en0105', '2020-02-14', '555'),
(34, 'rapheal ehindero', 'uj2014en0021', '2019-08-19', '511'),
(35, 'patrick mbai', 'uj2014en0087', '2019-10-11', '555'),
(36, 'maxwell ikechukwu', 'uj2014en0008', '2019-12-23', '511'),
(37, 'ndubisi ozokoye david', 'uj2014en0002', '2019-10-11', '535'),
(38, 'kenshak dashan', 'uj2014en0049', '1997-07-20', '555'),
(39, 'Rasheed muyideen', 'uj2015en0081', '2019-08-19', '535');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_detail`
--

CREATE TABLE `tbl_student_detail` (
  `student_id` varchar(50) NOT NULL,
  `student_name` text NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_matric_number` varchar(255) NOT NULL,
  `student_level` int(50) NOT NULL,
  `department` text NOT NULL,
  `student_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(150) NOT NULL,
  `teacher_address` text NOT NULL,
  `teacher_emailid` varchar(100) NOT NULL,
  `teacher_password` varchar(100) NOT NULL,
  `teacher_qualification` varchar(100) NOT NULL,
  `teacher_doj` date NOT NULL,
  `teacher_image` varchar(100) NOT NULL,
  `teacher_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_id`, `teacher_name`, `teacher_address`, `teacher_emailid`, `teacher_password`, `teacher_qualification`, `teacher_doj`, `teacher_image`, `teacher_grade_id`) VALUES
(8, 'Eng. miriam', 'josnig', 'chim@gmail.com', '$2y$10$.7pPqsG7TQ0rEVdHvi44lOUPwnlsQG/.5gMdjIaPPRTrLyNd.snTy', 'B.Eng, M.s.c', '2019-09-26', '5dc2b6b851d1f.jpg', 535),
(9, 'Eng. Momoh Izuagbe', 'Rayfield, Jos, Nigeria.', 'momoh@gmail.com', '$2y$10$F2GcMLFHPqSNzIoG0f8HBewZk5NweZok0SIPK2hPc05h6hK9sEK9a', 'B.eng', '2019-10-29', '5dc2b60a2d121.jpg', 555),
(10, 'Eng. Cinfwat Kishak', 'jos,nigeria', 'cinfwatk@gmail.com', '$2y$10$coKQ960kv7r7n00f0ozHv.AM/steiQ/hDy7hx2OVGMzNWUFOC27k6', 'B.Eng', '2019-10-07', '5dc2b5d93c348.jpg', 511),
(11, 'Eng. Akut', 'Jos, Nigeria', 'akut@gmail.com', '$2y$10$ITNXA0..dGkuhqiAN69Xo.h4zFuUHyFiaFphiuK9xDtqs53uKTxz2', 'B.Eng', '2019-10-07', '5da54334590db.jpg', 509),
(13, 'Engr. Patrick Julius', 'Rayfield,Jos,Nigeria.', 'patrick@gmail.com', '$2y$10$j9Wigigbp9Ncccq1C16Bm./hQ4x6q7KWZqp/A9N8cHOrmQIIni7wK', 'B.Eng, M.s.c. ', '2019-10-22', '5dc2b8d82ab8a.png', 511),
(14, 'Dr. Dajab Danjuma', 'Jos, Nigeria', 'dajab@gmail.com', '$2y$10$OcvJg2xQ60FERyU/Dt9SneT26vFGHfBkYvsRnJc1SlMrxQDPg4z8W', 'B.Eng, M.s.c, P.H.D.', '2019-10-22', '5dc2b79818c09.jpg', 535),
(15, 'Eng. Felix Iheanacho .E', 'Jos, Nigeria', 'felix@gmail.com', '$2y$10$0OIi6K7rFnkztJYezPOBQeubnxrjV1aWntMqnC9nKD01XtUvR4kuu', 'B.Eng, M.s.c', '2019-09-26', '5dc2b802c2ca7.png', 535);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `grade_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
