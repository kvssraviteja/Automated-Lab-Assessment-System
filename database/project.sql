-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 01:50 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b_tech`
--
CREATE DATABASE IF NOT EXISTS `b_tech` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `b_tech`;

-- --------------------------------------------------------

--
-- Table structure for table `13a`
--

CREATE TABLE `13a` (
  `s_name` varchar(10) NOT NULL,
  `regd_no` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `13a`
--

INSERT INTO `13a` (`s_name`, `regd_no`) VALUES
('cccc', '05'),
('bannu', '04'),
('swthi', '03'),
('vysh', '02'),
('jayanthi', '01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `13a`
--
ALTER TABLE `13a`
  ADD PRIMARY KEY (`regd_no`);
--
-- Database: `course_db`
--
CREATE DATABASE IF NOT EXISTS `course_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `course_db`;

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `semester` varchar(10) NOT NULL,
  `lab_name` varchar(20) NOT NULL,
  `no_of_labs` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`semester`, `lab_name`, `no_of_labs`) VALUES
('1-1', 'C', 10),
('1-2', 'CPLUS', 10),
('2-1', 'DS', 10),
('2-2', 'ADS', 10),
('3-1', 'OS', 10),
('3-1', 'CD', 10),
('3-1', 'DBMS', 10),
('3-1', 'LINUX', 10),
('3-2', 'CN', 10),
('3-2', 'WT', 10),
('3-2', 'SE', 10),
('4-1', 'MAD', 10),
('4-1', 'UML/DP', 10),
('4-1', 'ST', 10),
('4-1', 'HADOOP', 10);
--
-- Database: `faculty_db`
--
CREATE DATABASE IF NOT EXISTS `faculty_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `faculty_db`;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_table`
--

CREATE TABLE `faculty_table` (
  `faculty_id` varchar(20) NOT NULL,
  `faculty_name` varchar(20) NOT NULL,
  `faculty_pwd` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_table`
--

INSERT INTO `faculty_table` (`faculty_id`, `faculty_name`, `faculty_pwd`) VALUES
('02', 'veera ', 'jayanthi'),
('03', 'jaya', 'jayanthi'),
('01', 'Vamsi krishna', 'jayanthi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty_table`
--
ALTER TABLE `faculty_table`
  ADD PRIMARY KEY (`faculty_id`);
--
-- Database: `files_db`
--
CREATE DATABASE IF NOT EXISTS `files_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `files_db`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `regd_no` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac01`
--

INSERT INTO `1311ac01` (`regd_no`, `description`, `file_name`) VALUES
('13331A0545', '2 outputs', '13331A0545.txt');

-- --------------------------------------------------------

--
-- Table structure for table `1311ac10`
--

CREATE TABLE `1311ac10` (
  `regd_no` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `regd_no` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `regd_no` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1311ac01`
--
ALTER TABLE `1311ac01`
  ADD PRIMARY KEY (`regd_no`);

--
-- Indexes for table `1311ac10`
--
ALTER TABLE `1311ac10`
  ADD PRIMARY KEY (`regd_no`);

--
-- Indexes for table `1311ac100`
--
ALTER TABLE `1311ac100`
  ADD PRIMARY KEY (`regd_no`);

--
-- Indexes for table `1311ast1`
--
ALTER TABLE `1311ast1`
  ADD PRIMARY KEY (`regd_no`);
--
-- Database: `forum_db`
--
CREATE DATABASE IF NOT EXISTS `forum_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forum_db`;

-- --------------------------------------------------------

--
-- Table structure for table `qusn_list`
--

CREATE TABLE `qusn_list` (
  `question_id` varchar(10) DEFAULT NULL,
  `question` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `lab_db`
--
CREATE DATABASE IF NOT EXISTS `lab_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab_db`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `regd_no` varchar(20) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `system_no` int(10) DEFAULT NULL,
  `execution_marks` varchar(20) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL,
  `total_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac01`
--

INSERT INTO `1311ac01` (`regd_no`, `s_name`, `system_no`, `execution_marks`, `viva_marks`, `record_marks`, `total_marks`) VALUES
('0', '0', 0, '0', '0', '0', '0'),
('13331A0545', 'jayanthi', 1, '4', '0', '10', '14');

-- --------------------------------------------------------

--
-- Table structure for table `1311ac10`
--

CREATE TABLE `1311ac10` (
  `regd_no` varchar(20) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `system_no` int(10) DEFAULT NULL,
  `execution_marks` varchar(20) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL,
  `total_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac10`
--

INSERT INTO `1311ac10` (`regd_no`, `s_name`, `system_no`, `execution_marks`, `viva_marks`, `record_marks`, `total_marks`) VALUES
('0', '0', 0, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `regd_no` varchar(20) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `system_no` int(10) DEFAULT NULL,
  `execution_marks` varchar(20) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL,
  `total_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac100`
--

INSERT INTO `1311ac100` (`regd_no`, `s_name`, `system_no`, `execution_marks`, `viva_marks`, `record_marks`, `total_marks`) VALUES
('0', '0', 0, '0', '0', '0', '0'),
('13331A0545', 'Jayanthi', 1, '0', '10', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `regd_no` varchar(20) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `system_no` int(10) DEFAULT NULL,
  `execution_marks` varchar(20) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL,
  `total_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ast1`
--

INSERT INTO `1311ast1` (`regd_no`, `s_name`, `system_no`, `execution_marks`, `viva_marks`, `record_marks`, `total_marks`) VALUES
('0', '0', 0, '0', '0', '0', '0'),
('13331A0545', 'daisy', 1, '0', '0', '0', '0'),
('13331A0546', 'jayanthi', 2, '0', '1', '0', '0'),
('13331A0544', 'xyz', 3, '0', '8', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `lab_list`
--

CREATE TABLE `lab_list` (
  `year` varchar(10) NOT NULL,
  `semester` int(6) NOT NULL,
  `section` varchar(6) NOT NULL,
  `lab_name` varchar(10) NOT NULL,
  `lab_no` int(6) NOT NULL,
  `lab_date` date NOT NULL,
  `lab_time` time(6) NOT NULL,
  `lab_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab_list`
--

INSERT INTO `lab_list` (`year`, `semester`, `section`, `lab_name`, `lab_no`, `lab_date`, `lab_time`, `lab_id`) VALUES
('13', 11, 'A', 'ST', 1, '2017-03-31', '06:03:00.000000', '1311AST1'),
('13', 11, 'A', 'C', 10, '2017-03-28', '14:03:00.000000', '1311AC10'),
('13', 11, 'A', 'C', 100, '2017-03-27', '18:03:00.000000', '1311AC100'),
('13', 11, 'A', 'C', 1, '2017-03-27', '18:03:00.000000', '1311AC01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_list`
--
ALTER TABLE `lab_list`
  ADD UNIQUE KEY `lab_id` (`lab_id`);
--
-- Database: `lab_questions_db`
--
CREATE DATABASE IF NOT EXISTS `lab_questions_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab_questions_db`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac01`
--

INSERT INTO `1311ac01` (`description`, `file_name`) VALUES
('assessment-1', 'final.docx');

-- --------------------------------------------------------

--
-- Table structure for table `1311ac10`
--

CREATE TABLE `1311ac10` (
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac100`
--

INSERT INTO `1311ac100` (`description`, `file_name`) VALUES
('assessment-1', 'followup.docx');

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `description` varchar(30) NOT NULL,
  `file_name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1311ac01`
--
ALTER TABLE `1311ac01`
  ADD UNIQUE KEY `file_name` (`file_name`);

--
-- Indexes for table `1311ac10`
--
ALTER TABLE `1311ac10`
  ADD UNIQUE KEY `file_name` (`file_name`);

--
-- Indexes for table `1311ac100`
--
ALTER TABLE `1311ac100`
  ADD UNIQUE KEY `file_name` (`file_name`);

--
-- Indexes for table `1311ast1`
--
ALTER TABLE `1311ast1`
  ADD UNIQUE KEY `file_name` (`file_name`);
--
-- Database: `noq`
--
CREATE DATABASE IF NOT EXISTS `noq` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `noq`;

-- --------------------------------------------------------

--
-- Table structure for table `noqtable`
--

CREATE TABLE `noqtable` (
  `lab_id` varchar(200) NOT NULL,
  `noq` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noqtable`
--

INSERT INTO `noqtable` (`lab_id`, `noq`) VALUES
('1311AST1', 3),
('1311AC100', 1),
('1311AC01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noqtable`
--
ALTER TABLE `noqtable`
  ADD UNIQUE KEY `lab_id` (`lab_id`);
--
-- Database: `question_bank`
--
CREATE DATABASE IF NOT EXISTS `question_bank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `question_bank`;

-- --------------------------------------------------------

--
-- Table structure for table `c_01`
--

CREATE TABLE `c_01` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_01`
--

INSERT INTO `c_01` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'father of c', 'dennis ', 'gandhi', 'babbage', 'einstein', 1);

-- --------------------------------------------------------

--
-- Table structure for table `c_10`
--

CREATE TABLE `c_10` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_100`
--

CREATE TABLE `c_100` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_100`
--

INSERT INTO `c_100` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'number of keywords in c', '32', '33', '34', '31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `st_1`
--

CREATE TABLE `st_1` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_1`
--

INSERT INTO `st_1` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'hc;sfasf;asffalasklnakascasnki', ';lasffask', 'b', 'b', 'b', 1),
(2, 'dkndanafnas', 'l2d', 'zxz', 'fafa', 'asfassf', 2),
(3, 'fasf', 'kf', 'vh', 'l', 'lv', 3),
(4, 'kg', 'kjv', 'k', 'gj', 'lg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_01`
--
ALTER TABLE `c_01`
  ADD UNIQUE KEY `q_no` (`q_no`);

--
-- Indexes for table `c_10`
--
ALTER TABLE `c_10`
  ADD UNIQUE KEY `q_no` (`q_no`);

--
-- Indexes for table `c_100`
--
ALTER TABLE `c_100`
  ADD UNIQUE KEY `q_no` (`q_no`);

--
-- Indexes for table `st_1`
--
ALTER TABLE `st_1`
  ADD UNIQUE KEY `q_no` (`q_no`);
--
-- Database: `student_db`
--
CREATE DATABASE IF NOT EXISTS `student_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student_db`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `regd_no` varchar(20) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `system_no` int(11) DEFAULT NULL,
  `lab_id` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac01`
--

INSERT INTO `1311ac01` (`regd_no`, `s_name`, `system_no`, `lab_id`) VALUES
('13331A0545', 'jayanthi', 1, '1311AC01');

-- --------------------------------------------------------

--
-- Table structure for table `1311ac10`
--

CREATE TABLE `1311ac10` (
  `regd_no` varchar(20) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `system_no` int(11) DEFAULT NULL,
  `lab_id` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `regd_no` varchar(20) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `system_no` int(11) DEFAULT NULL,
  `lab_id` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac100`
--

INSERT INTO `1311ac100` (`regd_no`, `s_name`, `system_no`, `lab_id`) VALUES
('13331A0545', 'Jayanthi', 1, '1311AC100');

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `regd_no` varchar(20) NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `system_no` int(11) DEFAULT NULL,
  `lab_id` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ast1`
--

INSERT INTO `1311ast1` (`regd_no`, `s_name`, `system_no`, `lab_id`) VALUES
('13331A0545', 'daisy', 1, '1311AST1'),
('13331A0546', 'jayanthi', 2, '1311AST1'),
('13331A0544', 'xyz', 3, '1311AST1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1311ac01`
--
ALTER TABLE `1311ac01`
  ADD PRIMARY KEY (`regd_no`),
  ADD UNIQUE KEY `system_no` (`system_no`);

--
-- Indexes for table `1311ac10`
--
ALTER TABLE `1311ac10`
  ADD PRIMARY KEY (`regd_no`),
  ADD UNIQUE KEY `system_no` (`system_no`);

--
-- Indexes for table `1311ac100`
--
ALTER TABLE `1311ac100`
  ADD PRIMARY KEY (`regd_no`),
  ADD UNIQUE KEY `system_no` (`system_no`);

--
-- Indexes for table `1311ast1`
--
ALTER TABLE `1311ast1`
  ADD PRIMARY KEY (`regd_no`),
  ADD UNIQUE KEY `system_no` (`system_no`);
--
-- Database: `student_viva`
--
CREATE DATABASE IF NOT EXISTS `student_viva` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student_viva`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac01`
--

INSERT INTO `1311ac01` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'father of c', 'dennis ', 'gandhi', 'babbage', 'einstein', 1);

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac100`
--

INSERT INTO `1311ac100` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'number of keywords in c', '32', '33', '34', '31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `q_no` int(11) DEFAULT NULL,
  `question` varchar(30) NOT NULL,
  `a1` varchar(20) DEFAULT NULL,
  `a2` varchar(20) DEFAULT NULL,
  `a3` varchar(20) DEFAULT NULL,
  `a4` varchar(20) DEFAULT NULL,
  `correct_answer` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ast1`
--

INSERT INTO `1311ast1` (`q_no`, `question`, `a1`, `a2`, `a3`, `a4`, `correct_answer`) VALUES
(1, 'hc;sfasf;asffalasklnakascasnki', ';lasffask', 'b', 'b', 'b', 1),
(2, 'dkndanafnas', 'l2d', 'zxz', 'fafa', 'asfassf', 2),
(3, 'fasf', 'kf', 'vh', 'l', 'lv', 3),
(4, 'kg', 'kjv', 'k', 'gj', 'lg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1311ac01`
--
ALTER TABLE `1311ac01`
  ADD UNIQUE KEY `q_no` (`q_no`);

--
-- Indexes for table `1311ac100`
--
ALTER TABLE `1311ac100`
  ADD UNIQUE KEY `q_no` (`q_no`);

--
-- Indexes for table `1311ast1`
--
ALTER TABLE `1311ast1`
  ADD UNIQUE KEY `q_no` (`q_no`);
--
-- Database: `viva`
--
CREATE DATABASE IF NOT EXISTS `viva` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `viva`;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac01`
--

CREATE TABLE `1311ac01` (
  `regd_no` varchar(30) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac10`
--

CREATE TABLE `1311ac10` (
  `regd_no` varchar(30) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1311ac100`
--

CREATE TABLE `1311ac100` (
  `regd_no` varchar(30) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ac100`
--

INSERT INTO `1311ac100` (`regd_no`, `viva_marks`, `record_marks`) VALUES
('13331A0545', '10', '10');

-- --------------------------------------------------------

--
-- Table structure for table `1311ast1`
--

CREATE TABLE `1311ast1` (
  `regd_no` varchar(30) DEFAULT NULL,
  `viva_marks` varchar(20) DEFAULT NULL,
  `record_marks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1311ast1`
--

INSERT INTO `1311ast1` (`regd_no`, `viva_marks`, `record_marks`) VALUES
('13331A0544', '8', '8'),
('13331A0546', '8', '8'),
('13331A0546', '0', '0'),
('13331A0546', '0', '0'),
('13331A0546', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
