-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2022 at 12:19 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_acal`
--

INSERT INTO `tbl_acal` (`acal_id`, `acal_file`, `added_on`, `session`) VALUES
(4, '936Government Polytechnic.pdf', '2022-06-02 11:18:44', '2022-23');

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
(2, 'ravi2611gupta@gmail.com', '$hivn@th5');

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
(2, 'title -1', '113Government Polytechnic.pdf', '2022-05-29 11:24:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_alumni`
--

INSERT INTO `tbl_alumni` (`id`, `name`, `enrollment`, `fname`, `branch`, `year`, `mob`, `email`, `marks`, `company`, `designation`, `feedback`, `about`, `pic`, `cv`, `date`, `status`) VALUES
(5, 'Ravi Gupta', 'E18273735500009', 'Mr. Shivnath Gupta', 'Computer Science and Engineering', '2021', '8299167077', 'ravi2611gupta@gmail.com', '82', 'Softpro India, Lucknow', 'Junior Software Engineer', 'Very helpful faculty', 'I completed my diploma in 2021', 'Ravi Gupta249profile_pic.jpg', 'Ravi Gupta426Ravi_CV.pdf', '2022-06-05', 'N'),
(8, 'Vikash SIngh', 'E35534524526252', 'father name', 'Electrical Engineering', '2021', '7777777777', 'vikash@gmail.com', '75', 'Company Name', 'Designation', 'great feedback', 'I am vikash', 'Vikash SIngh7049.jpg', 'Vikash SIngh359Government Polytechnic.pdf', '2022-06-05', 'N');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`con_id`, `fname`, `lname`, `email`, `mobile`, `message`, `date`) VALUES
(6, 'Akash ', 'Verma', 'akash@gmail.com', '0000000000', 'test message', '2022-06-05 16:13:30'),
(2, 'Shiva', 'Goyal', 'shiva@gmail.com', '8299167077', 'This is message', '2022-05-24 14:27:52'),
(5, 'shiva', 'goyal', 'shiva@gmail.com', '8299167077', 'message', '2022-05-31 13:01:25'),
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dept_id`, `dept_name`, `date`) VALUES
(1, 'Computer Science and Engineering', '2022-05-28 20:37:18'),
(2, 'Civil Engineering', '2022-05-28 20:34:31'),
(3, 'Electrical Engineering', '2022-05-28 20:34:48'),
(5, 'N/A', '2022-05-31 21:12:40');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gal_id`, `text1`, `text2`, `pic`, `type`, `date`) VALUES
(6, 'gallery 1', 'Gallery 1', 'gallery779gal1.jpeg', 'gallery', '2022-06-02 11:15:00'),
(7, 'Galley 2', 'Gallery 2', 'gallery143gal2.jpeg', 'gallery', '2022-06-02 11:15:30'),
(8, 'Gallery 3 ', 'Gallery 3', 'gallery704gal4.jpeg', 'gallery', '2022-06-02 11:15:54'),
(9, 'Gallery 4', 'Gallery 4', 'gallery853gal3.jpeg', 'gallery', '2022-06-02 11:16:27'),
(10, 'Sports 1', 'Sports 1', 'sports378gal5.jpeg', 'sports', '2022-06-02 11:16:53'),
(11, 'Sports 2', 'Sports 2', 'sports823gal3.jpeg', 'sports', '2022-06-02 11:17:14'),
(12, 'Seminar 1', 'Seminar 1', 'seminar582gal1.jpeg', 'seminar', '2022-06-02 11:17:34'),
(13, 'Function 1', 'Function 1', 'annual939gal4.jpeg', 'annual', '2022-06-02 11:17:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_grievance`
--

INSERT INTO `tbl_grievance` (`g_id`, `stu_name`, `enroll_no`, `mobile`, `email`, `subject`, `msg`, `status`, `date`) VALUES
(2, 'Ravi Gupta', 'E18273735500009', '8299167077', 'ravi2611gupta@gmail.com', 'This is subject', 'This is message', 'Y', '2022-05-24 12:57:09'),
(8, 'Shiva Goyal', 'E44411554525255', '0000000000', 'shiva@gmail.com', 'test subject', 'test message\n', 'N', '2022-06-05 16:25:55'),
(10, 'akash verma', 'E345342563636363', '1111111111', 'akash@gmail.com', 'test subject 1', 'test message1', 'N', '2022-06-05 16:27:39'),
(12, 'prateek gaur', 'E5456536363663563', '2222222222', 'prateek@gmail.com', 'test subject 3', 'test message 3', 'N', '2022-06-05 16:30:12'),
(13, 'aman shukla', 'e344565636363653', '3333333333', 'aman@gmail.com', 'test subject', 'test message', 'N', '2022-06-05 16:34:33'),
(14, 'Vikash Singh', 'E353526266365', '6666666666', 'vikash@gmail.com', 'test subject ', 'test message', 'N', '2022-06-05 16:44:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mou`
--

INSERT INTO `tbl_mou` (`doc_id`, `company`, `title`, `file`, `date`) VALUES
(3, 'Company Name -1', 'Title -1', '582Government Polytechnic.pdf', '2022-06-02 11:01:21');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`file_id`, `notice`, `file_name`, `date`) VALUES
(7, 'notice will be uploaded soon!', '748Government Polytechnic.pdf', '2022-06-02 11:00:03'),
(8, 'notice yet to be uploaded !', '804Government Polytechnic.pdf', '2022-06-02 11:00:20');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rag`
--

INSERT INTO `tbl_rag` (`rag_id`, `stu_name`, `enroll_no`, `gen`, `parent_name`, `stu_email`, `stu_mob`, `parent_mob`, `course`, `year`, `address`, `complaint`, `status`, `date`) VALUES
(2, 'stuti srivastava', 'E56563636356363	', 'female', 'rakesh srivastava', 'stuti@gmail.com', '8299167077', '8299167077', 'Computer Science and Engineering', 'second', 'nirmal nagar', 'message', 'Y', '2022-05-31'),
(3, 'Shiva Goyal', 'E56563636356363', 'male', 'Shivam Goyal', 'shiva@gmail.com', '9999999999', '8888888888', 'Computer Science and Engineering', 'second', 'Haderabad', 'test message', 'N', '2022-06-05');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`res_id`, `link`, `date`) VALUES
(3, 'https://www.trainingatsoftpro.com/', '2022-06-04 18:33:26'),
(2, 'https://softproetp.in/', '2022-05-30 22:17:19');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `text1`, `text2`, `pic`, `date`) VALUES
(2, 'College labs', 'Students get practical knowledge form the labs.', '715slider2-min.jpg', '2022-06-02 10:47:20'),
(3, 'Government Polytechnic, Mohammadi Kheri', 'Affiliated to : Uttar Pradesh Board of Technical Education', '487slider1-min.jpg', '2022-06-02 10:47:46');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`tech_id`, `name`, `dob`, `fname`, `gender`, `mobile`, `email`, `dept_id`, `designation`, `qualification`, `address`, `pic`, `dor`) VALUES
(1, 'teacher name', '2022-05-30', 'father name', 'male', '0000000000', 'xxxx@gmail.com', '4', 'teacher', 'Test Qualification', 'Address', 'teacher name140profile_pic.jpg', '2022-05-30 12:42:54'),
(4, 'Anup Kumar Patel', '1980-01-01', 'N/A', 'male', '6393087227', 'patel_anup2010@rediffmail.com', '1', 'Head of Department', 'M.Tech', 'N/A', 'Anup Kumar Patel419anoop_kr_patel.jpeg', '2022-06-02 11:09:46'),
(5, '    Naveen Kumar', '1980-01-01', 'N/A', 'male', '8765830206', 'ernaveen.eegp@gmail.com', '3', 'Lecturer EE', 'M-Tech (Power  System)', 'N/A', '   Naveen Kumar342naveen_sir.jpeg', '2022-06-02 11:12:09');

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
(3, 'title -1', '2', 'third', 'demo video', '2022-05-30 14:09:39', 'https://youtu.be/89WD4YxM5ho');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`t_id`, `time_table_file`, `type`, `date`, `added_on`, `session`) VALUES
(5, 'holiday400Government Polytechnic.pdf', 'holiday', '2022-06-02', '2022-06-02 11:19:45', '2020-21'),
(4, 'time table279Government Polytechnic.pdf', 'time table', '2022-06-03', '2022-06-02 11:19:24', '2020-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
