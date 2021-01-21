-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 09:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onetouchtracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `arrival`
--

CREATE TABLE `arrival` (
  `id` int(11) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL,
  `intime` varchar(35) NOT NULL,
  `outtime` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arrival`
--

INSERT INTO `arrival` (`id`, `pid`, `sid`, `sname`, `contact`, `date`, `intime`, `outtime`) VALUES
(30, 'zaini', '0004285555', 'Munirah ', '0133832025', '2021-01-12', '07:01', '12:01'),
(24, 'abc', '0013916268', 'Jyotsna D', '0174587487', '2021-01-12', '07:05', '12:50'),
(26, 'faiz', '0013919551', 'Siti Amina', '0134085058', '2021-01-12', '07:05', '12:10'),
(15, 'bae', '0013912245', 'Bae Suzy', '0111385118', '2021-01-12', '07:07', '12:01'),
(20, 'xyz', '0004287829', 'Puteri Aisha', '0113241591', '2021-01-12', '07:08', '12:00'),
(23, 'faiz', '0013917234', 'Danish Darwish', '0111181166', '2021-01-12', '07:20', '12:49'),
(22, 'pqr', '0004291336', 'Syed Ryan', '0134085058', '2021-01-12', '07:23', '12:13'),
(27, 'faiz', '0013917234', 'Danish Darwish', '0111181166', '2021-01-13', '07:04', '12:17'),
(29, 'khan', '0013914525', 'Raj Khan', '0164987451', '2021-01-13', '07:04', '12:01'),
(31, 'amirkhan', '0013971234', 'Faisal Khan', '0176685341', '2021-01-13', '07:06', '12:03'),
(32, 'lai', '0013916654', 'Adam Lai', '0111324159', '2021-01-13', '07:06', '12:06'),
(33, 'khan', '0013914526', 'Farhat Khan', '0164987451', '2021-01-13', '07:07', '12:07'),
(34, 'abc', '0013916268', 'Jyotsna D', '0174587487', '2021-01-13', '07:18', '12:08'),
(35, 'pqr', '0004291336', 'Syed Ryan', '0134085058', '2021-01-13', '07:20', '12:11'),
(50, 'khan', '0013914525', 'Raj Khan', '0164987451', '2021-01-14', '06:55', '12:05'),
(48, 'abc', '0013916268', 'Jyotsna D', '0174587487', '2021-01-14', '07:01', '12:10'),
(39, 'bae', '0013912245', 'Bae Suzy', '0111385118', '2021-01-14', '07:01', '12:45'),
(40, 'xyz', '0004287829', 'Puteri Aisha', '0113241591', '2021-01-14', '07:03', '12:24'),
(41, 'pqr', '0013913776', 'Kairul Anwar', '0134085058', '2021-01-14', '07:20', '12:23'),
(42, 'pqr', '0004291336', 'Syed Ryan', '0134085058', '2021-01-14', '07:32', '12:32'),
(43, 'faiz', '0013919551', 'Siti Amina', '0134085058', '2021-01-14', '07:32', '12:32'),
(44, 'faiz', '0013917234', 'Danish Darwish', '0111181166', '2021-01-14', '07:32', '12:32'),
(45, 'lai', '0013916654', 'Adam Lai', '0111324159', '2021-01-14', '07:33', '12:33'),
(52, 'khan', '0013914526', 'Farhat Khan', '0164987451', '2021-01-15', '06:57', '12:48'),
(56, 'khan', '0013914525', 'Raj Khan', '0164987451', '2021-01-15', '07:03', '13:03'),
(58, 'khan', '0013914526', 'Farhat Khan', '0164987451', '2021-01-16', '06:58', '12:44'),
(60, 'abc', '0013916268', 'Jyotsna D', '0174587487', '2021-01-16', '07:00', '12:01'),
(61, 'pqr', '0013914536', 'Syarifah Amira', '0134588418', '2021-01-16', '07:10', '12:34'),
(62, 'amirkhan', '0013971234', 'Faisal Khan', '0176685341', '2021-01-16', '07:18', '12:33'),
(63, 'faisal', '0013914554', 'Aminah', '0124928843', '2021-01-16', '07:18', '12:22'),
(64, 'khan', '0013914525', 'Raj Khan', '0164987451', '2021-01-16', '07:18', '12:19');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cid` int(10) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `grade`, `class`) VALUES
(1, 'One', 'A'),
(2, 'Two', 'A'),
(3, 'Three', 'A'),
(4, 'Four', 'A'),
(5, 'Five', 'A'),
(6, 'Six', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` varchar(50) NOT NULL,
  `eimage` varchar(50) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `eventdate` varchar(15) NOT NULL,
  `eventtime` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `eimage`, `eventname`, `eventdate`, `eventtime`) VALUES
('1', 'healthDay.jpg', 'Health Fair', '2021-01-30', '10:00AM - 12:00PM'),
('2', 'sportday.png', 'Sports Day', '2021-04-11', '08:00AM - 01:30PM'),
('3', 'cocuDay.png', 'Co-Curriculum Day', '2021-05-15', '08:30AM - 01:30PM'),
('4', 'codesForBeginner.png', 'Codes For Beginner', '2021-05-18', '10:00AM - 01:00PM'),
('5', 'canteenDay.png', 'Canteen Day', '2021-06-21', '10:00AM - 12:00PM'),
('6', 'colorFunRun.png', 'Color Fun Run', '2021-07-22', '08:00AM - 12:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `result` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examresult`
--

INSERT INTO `examresult` (`id`, `sname`, `sid`, `subject`, `result`) VALUES
(1, 'Jyotsna D', '0013916268', 'Malay', 'B'),
(2, 'Raj Khan', '0013914525', 'Maths', 'A'),
(3, 'Raj Khan', '0013914525', 'Arts', 'C'),
(4, 'Raj Khan', '0013914525', 'Science', 'A'),
(5, 'Raj Khan', '0013914525', 'Geography', 'A'),
(6, 'Farhat Khan', '0013914526', 'English', 'C'),
(7, 'Raj Khan', '0013914525', 'English', 'B'),
(8, 'Farhat Khan', '0013914526', 'Maths', 'B'),
(9, 'Farhat Khan', '0013914526', 'Science', 'B'),
(10, 'Farhat Khan', '0013914526', 'Arts', 'A'),
(11, 'Puteri Aisha', '0004287829', 'Arts', 'C'),
(12, 'Puteri Aisha', '0004287829', 'Science', 'B'),
(13, 'Puteri Aisha', '0004287829', 'Geography', 'C'),
(14, 'Puteri Aisha', '0004287829', 'English', 'A'),
(15, 'Puteri Aisha', '0004287829', 'Religious', 'A'),
(16, 'Puteri Aisha', '0004287829', 'Maths', 'B'),
(21, 'Jyotsna D', '0013916268', 'English', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `examsched`
--

CREATE TABLE `examsched` (
  `examid` varchar(50) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time_start` varchar(15) NOT NULL,
  `time_end` varchar(15) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `venue` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examsched`
--

INSERT INTO `examsched` (`examid`, `grade`, `date`, `time_start`, `time_end`, `subject`, `venue`) VALUES
('1', 'One', '2021-08-09', '7:00am', '8:00am', 'English', 'Classroom'),
('2', 'One', '2021-08-10', '7:00am', '8:00am', 'Malay', 'Examination Hall A'),
('3', 'Two', '2021-08-10', '10:00am', '11:30am', 'Maths', 'Examination Hall A'),
('4', 'Two', '2021-08-11', '9:00am', '10:00am', 'Religious', 'Classroom'),
('5', 'Two', '2021-08-10', '10:00am', '11:30am', 'English', 'Classroom'),
('6', 'Two', '2021-08-11', '10:00am', '11:30am', 'Maths', 'Examination Hall A'),
('7', 'Five', '2021-08-10', '10:00am', '11:30am', 'Science', 'Examination Hall A'),
('8', 'Five', '2021-08-11', '9:00am', '10:00am', 'English', 'Classroom'),
('9', 'Six', '2021-08-10', '10:00am', '11:30am', 'Geography', 'Classroom'),
('10', 'Six', '2021-08-11', '10:00am', '11:30am', 'Maths', 'Examination Hall A'),
('11', 'Three', '2021-01-20', '10.00am', '12.30pm', 'Science', 'Classroom'),
('12', 'Three', '2021-01-21', '10.00am', '12.30pm', 'English', 'Classroom');

-- --------------------------------------------------------

--
-- Table structure for table `ldetail`
--

CREATE TABLE `ldetail` (
  `id` int(11) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `ldetail` varchar(200) NOT NULL,
  `fdate` varchar(15) NOT NULL,
  `tdate` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldetail`
--

INSERT INTO `ldetail` (`id`, `sid`, `ldetail`, `fdate`, `tdate`, `date`, `image`) VALUES
(8, '0004285555', 'Emergency leave due to death in the family', '2021-01-06', '2021-01-08', '2021-01-05', 'munleave.png'),
(6, '0013914526', 'My son is not feeling well. Attach here is the application leave.', '2021-01-12', '2021-01-14', '2021-01-10', 'schoolLeave.png'),
(7, '0013912245', 'Chickenpox', '2021-01-06', '2021-01-15', '2021-01-10', 'baeLeave.png'),
(9, '0013916268', 'Stomach upset. Kindly find the attachment for your reference.', '2021-01-08', '2021-01-08', '2021-01-13', 'mc leave.png');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsid` varchar(50) NOT NULL,
  `newsimage` varchar(50) NOT NULL,
  `newstopic` varchar(100) NOT NULL,
  `newsdate` varchar(15) NOT NULL,
  `newsdesc` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsid`, `newsimage`, `newstopic`, `newsdate`, `newsdesc`) VALUES
('1', 'headmaster.png', 'Congratulations To Our Headmaster!', '2021-01-30', 'Mr. Albus Dumbledore, who just earned an award at the Ministry of Education for outstanding achievements throughout his career'),
('2', 'newspaper.png', 'Head Of Prefect Featured In The New Straits Times', '2021-01-11', 'Get the inspirations from our Head Prefect, Hermione Granger that lead her nominated best prefect in our district this year'),
('3', 'alumni.jpg', 'Alumni Success', '2021-02-15', 'Get inspires how our remarkable students success in continuing their studies in higher education.'),
('4', 'artwork.jpg', 'Student Artwork Shown In Youth Exhibit', '2021-03-11', 'Artwork by our 3rd Grade student is on the downtown of Youth Exhibit.'),
('5', 'spelling.jpg', '10 Students Qualify For Spelling Bee', '2021-04-21', 'Congrats to students qualifying for the school spelling bee!'),
('6', 'volunteer.png', 'Searching For Volunteers', '2021-05-10', 'Recreation Club is welcoming any volunteers for their new program.');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `pid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pname` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`pid`, `password`, `pname`) VALUES
('abc', 'abc', 'T desai'),
('bae', 'bae', 'Bae Tong'),
('xyz', 'xyz', 'P'),
('pqr', 'pqr', 'Abdullah'),
('faiz', 'faiz', 'Faizal M'),
('lai', 'lai', 'Cheong Lai'),
('khan', 'khan', 'Amir Khan'),
('amirkhan', 'amirkhan', 'Amir Khan'),
('zaini', 'zaini', 'Zaini Hashim'),
('zainihashim', 'zainihashim', 'Zaini'),
('ismail', 'amirismail', 'Amir Ismail'),
('hazim', 'hazim', 'Hazim'),
('faisal', 'faisal', 'Faisal'),
('rosli', 'rosli', 'Rosli'),
('azim', 'azim', 'Azim'),
('ravi', 'ravi', 'Ravi');

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE `sched` (
  `scid` varchar(50) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `day` varchar(50) NOT NULL,
  `time_start` varchar(15) NOT NULL,
  `time_end` varchar(15) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `teachername` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`scid`, `grade`, `class`, `day`, `time_start`, `time_end`, `subject`, `teachername`, `venue`) VALUES
('1', 'One', 'A', 'Monday', '8:00am', '9:00am', 'English', 'Mrs. Mei Li', 'Library'),
('2', 'One', 'A', 'Monday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('3', 'One', 'A', 'Monday', '11:00am', '12:30am', 'Science', 'Ms. Soo Yin', 'Lab 4'),
('4', 'One', 'A', 'Tuesday', '8:00am', '9:00am', 'Malay', 'Mr. Rosli', 'Classroom'),
('5', 'One', 'A', 'Tuesday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('6', 'One', 'A', 'Tuesday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('7', 'One', 'A', 'Wednesday', '8:00am', '9:00am', 'Geography', 'Mr. Zaidi', 'Classroom'),
('8', 'One', 'A', 'Wednesday', '9:00am', '10:30am', 'English', 'Ms. Anis', 'Art Classroom'),
('9', 'One', 'A', 'Wednesday', '11:00am', '12:30am', 'Science', 'Ms. Soo Yin', 'Lab 4'),
('10', 'One', 'A', 'Thursday', '8:00am', '9:00am', 'Malay', 'Mr. Rosli', 'Classroom'),
('11', 'One', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('12', 'One', 'A', 'Thursday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('13', 'One', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('14', 'One', 'A', 'Friday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('15', 'One', 'A', 'Friday', '11:00am', '12:00am', 'Civics', 'Mr. Kamarul', 'Library'),
('16', 'Two', 'A', 'Monday', '8:00am', '9:00am', 'Science', 'Mrs. Norliza', 'Classroom'),
('17', 'Two', 'A', 'Monday', '9:00am', '10:30am', 'Civis', 'Mr. Jamal', 'Classroom'),
('18', 'Two', 'A', 'Monday', '11:00am', '12:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('19', 'Two', 'A', 'Tuesday', '8:00am', '9:00am', 'Malay', 'Mr. Rosli', 'Classroom'),
('20', 'Two', 'A', 'Tuesday', '9:00am', '10:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('21', 'Two', 'A', 'Tuesday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('22', 'Two', 'A', 'Wednesday', '8:00am', '9:00am', 'History', 'Mr. Saiful', 'Classroom'),
('23', 'Two', 'A', 'Wednesday', '9:00am', '10:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('24', 'Two', 'A', 'Wednesday', '11:00am', '12:30am', 'Science', 'Ms. Soo Yin', 'Lab 4'),
('25', 'Two', 'A', 'Thursday', '8:00am', '9:00am', 'English', 'Mr. Rosli', 'Classroom'),
('26', 'Two', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('27', 'Two', 'A', 'Thursday', '11:00am', '12:30am', 'Malay', 'Ms. Alis', 'Classroom'),
('29', 'Two', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('30', 'Two', 'A', 'Friday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('31', 'Three', 'A', 'Friday', '11:00am', '12:00am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('32', 'Three', 'A', 'Monday', '8:00am', '9:00am', 'Art', 'Mrs. Norliza', 'Classroom'),
('33', 'Three', 'A', 'Monday', '9:00am', '10:30am', 'Civics', 'Mr. Kamarul', 'Library'),
('34', 'Three', 'A', 'Monday', '11:00am', '12:30am', 'Malay', 'Ms. Alis', 'Classroom'),
('35', 'Three', 'A', 'Tuesday', '8:00am', '9:00am', 'Malay', 'Mr. Rosli', 'Classroom'),
('36', 'Three', 'A', 'Tuesday', '9:00am', '10:30am', 'Math', 'Mr. Khairul', 'Library'),
('37', 'Three', 'A', 'Tuesday', '11:00am', '12:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('38', 'Three', 'A', 'Wednesday', '8:00am', '9:00am', 'ICT', 'Mr. Saiful', 'Library'),
('39', 'Three', 'A', 'Wednesday', '9:00am', '10:30am', 'English', 'Ms. Anis', 'Art Classroom'),
('40', 'Three', 'A', 'Wednesday', '11:00am', '12:30am', 'Science', 'Ms. Soo Yin', 'Lab 4'),
('41', 'Three', 'A', 'Thursday', '8:00am', '9:00am', 'Civics', 'Mr. Kamarul', 'Library'),
('42', 'Three', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('43', 'Three', 'A', 'Thursday', '11:00am', '12:30am', 'Math', 'Ms. Suzana', 'Classroom'),
('44', 'Three', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('45', 'Three', 'A', 'Friday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('46', 'Four', 'A', 'Friday', '11:00am', '12:00am', 'Art', 'Ms. Suzana', 'Classroom'),
('47', 'Four', 'A', 'Monday', '8:00am', '9:00am', 'Malay', 'Mrs. Norliza', 'Library'),
('48', 'Four', 'A', 'Monday', '9:00am', '10:30am', 'Civis', 'Mr. Jamal', 'Classroom'),
('49', 'Four', 'A', 'Monday', '11:00am', '12:30am', 'Malay', 'Mr. Azim', 'Lab 4'),
('50', 'Four', 'A', 'Tuesday', '8:00am', '9:00am', 'English', 'Mr. Rosli', 'Classroom'),
('51', 'Four', 'A', 'Tuesday', '9:00am', '10:30am', 'Math', 'Mr. Khairul', 'Library'),
('52', 'Four', 'A', 'Tuesday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('53', 'Four', 'A', 'Wednesday', '8:00am', '9:00am', 'Geography', 'Mr. Saiful', 'Classroom'),
('54', 'Four', 'A', 'Wednesday', '9:00am', '10:30am', 'English', 'Ms. Anis', 'Art Classroom'),
('55', 'Four', 'A', 'Wednesday', '11:00am', '12:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('56', 'Four', 'A', 'Thursday', '8:00am', '9:00am', 'English', 'Mr. Rosli', 'Classroom'),
('57', 'Four', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('58', 'Four', 'A', 'Thursday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('59', 'Four', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('60', 'Four', 'A', 'Friday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('61', 'Five', 'A', 'Friday', '11:00am', '12:00am', 'Art', 'Ms. Suzana', 'Classroom'),
('62', 'Five', 'A', 'Monday', '8:00am', '9:00am', 'Malay', 'Mrs. Norliza', 'Lab 5'),
('63', 'Five', 'A', 'Monday', '9:00am', '10:30am', 'Civis', 'Mr. Jamal', 'Classroom'),
('64', 'Five', 'A', 'Monday', '11:00am', '12:30am', 'Malay', 'Mr. Azim', 'Lab 4'),
('65', 'Five', 'A', 'Tuesday', '8:00am', '9:00am', 'English', 'Mr. Rosli', 'Classroom'),
('66', 'Five', 'A', 'Tuesday', '9:00am', '10:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('67', 'Five', 'A', 'Tuesday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('68', 'Five', 'A', 'Wednesday', '8:00am', '9:00am', 'Geography', 'Mr. Saiful', 'Classroom'),
('69', 'Five', 'A', 'Wednesday', '9:00am', '10:30am', 'Malay', 'Ms. Alis', 'Art Classroom'),
('70', 'Five', 'A', 'Wednesday', '11:00am', '12:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('71', 'Five', 'A', 'Thursday', '8:00am', '9:00am', 'English', 'Mr. Rosli', 'Classroom'),
('72', 'Five', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Kamarul', 'Library'),
('73', 'Five', 'A', 'Thursday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('74', 'Five', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('75', 'Five', 'A', 'Friday', '9:00am', '10:30am', 'Math', 'Mr. Jamal', 'Classroom'),
('76', 'Six', 'A', 'Friday', '11:00am', '12:00am', 'Art', 'Ms. Norsiah', 'Classroom'),
('77', 'Six', 'A', 'Monday', '8:00am', '9:00am', 'Malay', 'Mrs. Norliza', 'Library'),
('78', 'Six', 'A', 'Monday', '9:00am', '10:30am', 'Malay', 'Ms. Alis', 'Classroom'),
('79', 'Six', 'A', 'Monday', '11:00am', '12:30am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('80', 'Six', 'A', 'Tuesday', '8:00am', '9:00am', 'Civics', 'Mr. Kamarul', 'Library'),
('81', 'Six', 'A', 'Tuesday', '9:00am', '10:30am', 'Malay', 'Ms. Alis', 'Classroom'),
('82', 'Six', 'A', 'Tuesday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('83', 'Six', 'A', 'Wednesday', '8:00am', '9:00am', 'Geography', 'Mr. Saiful', 'Classroom'),
('84', 'Six', 'A', 'Wednesday', '9:00am', '10:30am', 'English', 'Ms. Anis', 'Art Classroom'),
('85', 'Six', 'A', 'Wednesday', '11:00am', '12:30am', 'Science', 'Ms. Soo Yin', 'Lab 4'),
('86', 'Six', 'A', 'Thursday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'Computer Lab'),
('87', 'Six', 'A', 'Thursday', '9:00am', '10:30am', 'Civics', 'Mr. Khairul', 'Library'),
('88', 'Six', 'A', 'Thursday', '11:00am', '12:30am', 'History', 'Ms. Suzana', 'Classroom'),
('89', 'Six', 'A', 'Friday', '8:00am', '9:00am', 'ICT', 'Mr. Khairul', 'ICT Lab'),
('90', 'Six', 'A', 'Friday', '9:00am', '10:30am', 'Civics', 'Mr. Kamarul', 'Classroom '),
('91', 'Six', 'A', 'Friday', '11.00am', '12:30pm', 'Mathematics', 'Ms. Sakinah', 'Classroom');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `image`, `grade`, `class`, `address`, `pid`, `pname`, `contact`, `email`, `username`, `password`) VALUES
('0013916268', 'Jyotsna D', 'student 1.png', 'One', 'A', 'Damansara', 'abc', 'T desai', '0174587487', 'abc@gmail.com', '', ''),
('0013914566', 'Kamilah', 'student 7.png', 'Two', 'A', 'Damansara', 'azim', 'Azim', '01114571438', 'azim@gmail.com', '', ''),
('0004287829', 'Puteri Aisha', 'student 2.png', 'Two', 'A', 'Shah Alam', 'xyz', 'Hayder Que', '0113241591', 'xyz@gmail.com', '', ''),
('0013913776', 'Kairul Anwar', 'student 6.png', 'Two', 'A', 'Gombak', 'pqr', 'Abdullah', '0134085058', 'pqr@gmail.com', '', ''),
('0004291336', 'Syed Ryan', 'student 3.png', 'Three', 'A', 'Gombak', 'pqr', 'Abdullah', '0134085058', 'pqr@gmail.com', '', ''),
('0013914554', 'Aminah', 'student 5.png', 'One', 'A', 'Gombak', 'faisal', 'Faisal', '0124928843', 'faisal@gmail.com', '', ''),
('0013917234', 'Danish Darwish', 'student 4.png', 'Four', 'A', 'Selayang', 'faiz', 'Ahmad Afendi', '01111811663', 'fendi@gmail.com', '', ''),
('0013916654', 'Adam Lai', 'student 8.png', 'Four', 'A', 'Damansara', 'lai', 'Cheong Lai', '01113241591', 'lai@gmail.com', '', ''),
('0013914525', 'Raj Khan', 'student 9.png', 'Five', 'A', 'Klang', 'khan', 'Amir Khan', '0164987451', 'khan@gmail.com', '', ''),
('0013914526', 'Farhat Khan', 'student 14.png', 'Six', 'A', 'Klang', 'khan', 'Amir Khan', '0164987451', 'khan@gmail.com', '', ''),
('0013971234', 'Faisal Khan', 'student 11.jpg', 'Five', 'A', 'Damansara', 'amirkhan', 'Amir Khan', '0176685341', 'amirkhan@gmail.com', '', ''),
('0013914573', 'Munirah', 'student 16.png', 'Three', 'A', 'Damansara', 'zainihashim', 'Zaini', '0133832025', 'zainihashim@gmail.com', '', ''),
('0013914536', 'Syarifah Amira', 'student 10.png', 'Three', 'A', 'Gomabk', 'pqr', 'Abdullah', '0134588418', 'pqr@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `examresult`
--
ALTER TABLE `examresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examsched`
--
ALTER TABLE `examsched`
  ADD PRIMARY KEY (`examid`);

--
-- Indexes for table `ldetail`
--
ALTER TABLE `ldetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sched`
--
ALTER TABLE `sched`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrival`
--
ALTER TABLE `arrival`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `examresult`
--
ALTER TABLE `examresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ldetail`
--
ALTER TABLE `ldetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
