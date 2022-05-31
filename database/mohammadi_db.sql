-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2022 at 08:46 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohammadi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acal`
--

DROP TABLE IF EXISTS `tbl_acal`;
CREATE TABLE IF NOT EXISTS `tbl_acal` (
  `acal_id` int(11) NOT NULL AUTO_INCREMENT,
  `acal_file` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL,
  `session` varchar(100) NOT NULL,
  PRIMARY KEY (`acal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_acal`
--

INSERT INTO `tbl_acal` (`acal_id`, `acal_file`, `added_on`, `session`) VALUES
(1, '378Government Polytechnic.pdf', '2022-05-29 00:01:44', '2022'),
(2, '945SRS Construction Project.pdf', '2022-05-29 19:40:03', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accreditation`
--

DROP TABLE IF EXISTS `tbl_accreditation`;
CREATE TABLE IF NOT EXISTS `tbl_accreditation` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(200) NOT NULL,
  `session` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `added_on` varchar(30) NOT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`adm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adm_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@123'),
(2, 'rohit@gmail.com', 'rohit@poly');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aicte`
--

DROP TABLE IF EXISTS `tbl_aicte`;
CREATE TABLE IF NOT EXISTS `tbl_aicte` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `file` varchar(60) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_aicte`
--

INSERT INTO `tbl_aicte` (`doc_id`, `title`, `file`, `date`) VALUES
(1, '', '128Government Polytechnic.pdf', '2022-05-29 11:23:29'),
(2, 'title', '808Government Polytechnic.pdf', '2022-05-29 11:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alumni`
--

DROP TABLE IF EXISTS `tbl_alumni`;
CREATE TABLE IF NOT EXISTS `tbl_alumni` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `enrollment` varchar(30) DEFAULT NULL,
  `fname` varchar(60) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `mob` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `marks` varchar(30) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `designation` varchar(60) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `pic` varchar(60) DEFAULT NULL,
  `cv` varchar(90) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_alumni`
--

INSERT INTO `tbl_alumni` (`id`, `name`, `enrollment`, `fname`, `branch`, `year`, `mob`, `email`, `marks`, `company`, `designation`, `feedback`, `about`, `pic`, `cv`, `date`, `status`) VALUES
(1, 'dsfadfadf', 'dsfasdfaf', 'fadfaf', 'Mechanical Engineering (Automobile)', '2332', 'dsfasdff', 'rafa@gamil.com', '344', 'dsfdf', 'adsfadf', 'faddfad', 'dcadfas', 'dsfadfadf256profile_pic.jpg', 'dsfadfadf385jmdpl-ssr_compressed.pdf', '2022-05-26', 'Y'),
(2, 'dsfadfadf', 'dsfasdfaf', 'fadfaf', 'Mechanical Engineering (Automobile)', '2332', 'dsfasdff', 'rafa@gamil.com', '344', 'dsfdf', 'adsfadf', 'faddfad', 'dcadfas', 'dsfadfadf971profile_pic.jpg', 'dsfadfadf308jmdpl-ssr_compressed.pdf', '2022-05-26', 'N'),
(3, 'dsfadfadf', 'dsfasdfaf', 'fadfaf', 'Mechanical Engineering (Automobile)', '2332', 'dsfasdff', 'rafa@gamil.com', '344', 'dsfdf', 'adsfadf', 'faddfad', 'dcadfas', 'dsfadfadf258profile_pic.jpg', 'dsfadfadf594jmdpl-ssr_compressed.pdf', '2022-05-26', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`con_id`, `fname`, `lname`, `email`, `mobile`, `message`, `date`) VALUES
(1, '', '', '', '', '', '2022-05-24 14:27:52'),
(2, 'Shiva', 'Goyal', 'shiva@gmail.com', '8299167077', 'This is message', '2022-05-24 14:27:52'),
(4, 'ravi ', 'gupta', 'ravi@gmail.com', '8299168077', 'Test message', '2022-05-24 14:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE IF NOT EXISTS `tbl_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`, `date`) VALUES
(1, 'Computer Science and Engineering', '2022-05-28 20:37:18'),
(2, 'Civil Engineering', '2022-05-28 20:34:31'),
(3, 'Electrical Engineering', '2022-05-28 20:34:48'),
(4, 'N/A', '2022-05-28 20:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE IF NOT EXISTS `tbl_gallery` (
  `gal_id` int(11) NOT NULL AUTO_INCREMENT,
  `text1` varchar(100) NOT NULL,
  `text2` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `type` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`gal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gal_id`, `text1`, `text2`, `pic`, `type`, `date`) VALUES
(1, 'gal 1', 'gal 2', 'sports543profile_pic.jpg', 'sports', '2022-05-29 19:38:06'),
(2, 'gal2', 'gal2', 'sports403stuti.jpeg', 'sports', '2022-05-29 21:12:47'),
(3, 'gal 3', 'gal 3', 'sports419stuti.jpeg', 'sports', '2022-05-29 21:14:48'),
(4, 'sldier 1', 'slider 2', '242mern_hero.png', '', '2022-05-29 21:23:54'),
(5, 'slider 1', 'slider 2', '578mern_hero.png', '', '2022-05-29 21:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grievance`
--

DROP TABLE IF EXISTS `tbl_grievance`;
CREATE TABLE IF NOT EXISTS `tbl_grievance` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(60) NOT NULL,
  `enroll_no` varchar(60) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `status` varchar(60) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_grievance`
--

INSERT INTO `tbl_grievance` (`g_id`, `stu_name`, `enroll_no`, `mobile`, `email`, `subject`, `msg`, `status`, `date`) VALUES
(1, '', '', '', '', '', '', 'N', '2022-05-24 12:57:09'),
(2, 'Ravi Gupta', 'E18273735500009', '8299167077', 'ravi2611gupta@gmail.com', 'This is subject', 'This is message', 'N', '2022-05-24 12:57:09'),
(3, '', '', '', '', '', '', 'N', '2022-05-24 16:41:51'),
(4, 'ravi gupta', '34413441', '8299167077', 'dfdada@gamil.com', 'subject', 'message', 'N', '2022-05-24 16:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mou`
--

DROP TABLE IF EXISTS `tbl_mou`;
CREATE TABLE IF NOT EXISTS `tbl_mou` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(200) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file` varchar(60) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mou`
--

INSERT INTO `tbl_mou` (`doc_id`, `company`, `title`, `file`, `date`) VALUES
(1, 'company', 'title', '980Government Polytechnic.pdf', '2022-05-29 23:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

DROP TABLE IF EXISTS `tbl_notice`;
CREATE TABLE IF NOT EXISTS `tbl_notice` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice` varchar(200) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`file_id`, `notice`, `file_name`, `date`) VALUES
(1, 'Title', '975Government Polytechnic.pdf', '2022-05-28 11:45:05'),
(2, 'new notice', '201Government Polytechnic.pdf', '2022-05-28 15:28:54'),
(3, 'Test', '388Government Polytechnic.pdf', '2022-05-28 17:48:59'),
(4, 'New Test', '851Government Polytechnic.pdf', '2022-05-28 17:50:01'),
(5, 'etset', '896Government Polytechnic.pdf', '2022-05-28 17:51:17'),
(6, 'test 2', '446Government Polytechnic.pdf', '2022-05-28 17:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_placement`
--

DROP TABLE IF EXISTS `tbl_placement`;
CREATE TABLE IF NOT EXISTS `tbl_placement` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(60) NOT NULL,
  `branch` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `session` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rag`
--

DROP TABLE IF EXISTS `tbl_rag`;
CREATE TABLE IF NOT EXISTS `tbl_rag` (
  `rag_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(60) NOT NULL,
  `enroll_no` varchar(60) NOT NULL,
  `gen` varchar(10) NOT NULL,
  `parent_name` varchar(60) NOT NULL,
  `stu_email` varchar(60) NOT NULL,
  `stu_mob` varchar(10) NOT NULL,
  `parent_mob` varchar(10) NOT NULL,
  `course` varchar(60) NOT NULL,
  `year` varchar(60) NOT NULL,
  `address` varchar(200) NOT NULL,
  `complaint` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`rag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

DROP TABLE IF EXISTS `tbl_result`;
CREATE TABLE IF NOT EXISTS `tbl_result` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`res_id`, `link`, `date`) VALUES
(1, 'softproindia.in', '2022-05-30 00:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rti`
--

DROP TABLE IF EXISTS `tbl_rti`;
CREATE TABLE IF NOT EXISTS `tbl_rti` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `file` varchar(60) DEFAULT NULL,
  `date` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `text1` varchar(100) NOT NULL,
  `text2` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `text1`, `text2`, `pic`, `date`) VALUES
(1, 'sldier 1', 'slider 2', '260mern_hero.png', '2022-05-29 21:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE IF NOT EXISTS `tbl_teacher` (
  `tech_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(80) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `dor` varchar(20) NOT NULL,
  PRIMARY KEY (`tech_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`tech_id`, `name`, `dob`, `fname`, `gender`, `mobile`, `email`, `dept_id`, `designation`, `qualification`, `address`, `pic`, `dor`) VALUES
(1, 'teacher name', '2022-05-30', 'father name', 'male', '0000000000', 'xxxx@gmail.com', '4', 'teacher', 'Test Qualification', 'Address', 'teacher name140profile_pic.jpg', '2022-05-30 12:42:54'),
(2, 'Shiva', '2022-05-18', 'shiva goyal', 'male', '8299167077', 'shiva@gmail.com', '1', 'teacher', 'B.tech', 'address', 'Shiva462profile_pic.jpg', '2022-05-30 12:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE IF NOT EXISTS `tbl_video` (
  `v_id` int(30) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `branch` varchar(60) NOT NULL,
  `year` varchar(60) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`v_id`, `title`, `branch`, `year`, `subject`, `date`, `url`) VALUES
(2, 'title', '2', 'third', 'demo video', '2022-05-30 14:08:28', 'https://youtu.be/89WD4YxM5ho'),
(3, 'title', '2', 'third', 'demo video', '2022-05-30 14:09:39', 'https://youtu.be/89WD4YxM5ho');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
CREATE TABLE IF NOT EXISTS `time_table` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_table_file` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `added_on` datetime NOT NULL,
  `session` varchar(100) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`t_id`, `time_table_file`, `type`, `date`, `added_on`, `session`) VALUES
(1, 'time table379Government Polytechnic.pdf', 'time table', '2022-05-24', '2022-05-30 00:58:08', '2022');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
