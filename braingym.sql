-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2014 at 05:38 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `braingym`
--
CREATE DATABASE IF NOT EXISTS `braingym` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `braingym`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category`) VALUES
(1, 'General Knowledge'),
(2, 'Physics'),
(3, 'Integrated Science'),
(4, 'Biology'),
(5, 'Chemistry'),
(6, 'Mathematics'),
(7, 'Technology'),
(8, 'Social Science and Philosophy'),
(9, 'Earth Science'),
(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comid` int(11) NOT NULL AUTO_INCREMENT,
  `qzid` int(11) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comid`, `qzid`, `comment`) VALUES
(1, 4, 'pogi ni nathan');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `qzid` int(11) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `choiceA` varchar(50) NOT NULL,
  `choiceB` varchar(50) NOT NULL,
  `choiceC` varchar(50) NOT NULL,
  `choiceD` varchar(50) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `qzid`, `question`, `answer`, `choiceA`, `choiceB`, `choiceC`, `choiceD`, `image`) VALUES
(2, 5, 'is this a triangle', 'yes', ' no', 'maybe', 'kk', 'yes', 'C:/BrainGym/Quizzes/5/triangle.png'),
(3, 5, 'asda', 'kjghkj', 'kjkl', 'lkj', 'ytyty', 'fdxf', 'C:/BrainGym/Quizzes/5/spongebob-nobodycares.jpg'),
(4, 5, 'kjhk', 'jkjhkj', 'hcgf', 'crt', 'dtr', 'fdg', 'C:/BrainGym/Quizzes/5/meme.jpg'),
(5, 6, 'Best Dota Team', 'BHF', 'ABC', 'BHF', 'Alliance', 'NAVI', NULL),
(6, 11, 'abc', 'def', 'ghi', 'jkl', 'mno', 'def', NULL),
(7, 6, 'such', 'wow', 'doge', 'doge', 'doge', 'wow', NULL),
(8, 4, 'Pogi ba talaga ako?', 'oo', 'oo', 'false', 'oo naman', 'di ba halata?', 'C:/BrainGym/Quizzes/4/meme.jpg'),
(9, 4, 'Is this a triangle?', 'yes', 'yes', 'no', 'maybe', 'maybe not', 'C:/BrainGym/Quizzes/4/triangle.png'),
(10, 4, 'JJ adik sa dota 2', 'tinatanong pa ba yan?', 'nigga malamang', 'hello? duh?', 'tinatanong pa ba yan?', 'oo', 'C:/BrainGym/Quizzes/4/BHFLogo.jpg'),
(11, 49, 'maganda ba si jen', 'opcors', 'oo naman', 'tinatanong pa ba yan?', 'nigga malamang', 'opcors', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `qzid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`qzid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`qzid`, `catid`, `title`) VALUES
(4, 1, 'c'),
(5, 0, 'Triangles'),
(6, 0, 'magnets'),
(7, 0, 'Linear Equation'),
(8, 0, 'linear motion'),
(9, 0, 'likli'),
(10, 0, 'Natnat'),
(11, 0, 'buhuhuhu'),
(12, 0, 'potek'),
(14, 2, 'WOOOOOHOOOOOOO'),
(15, 1, 'La lang'),
(16, 2, 'Nat pogi'),
(17, 1, 'Muhahaha'),
(18, 1, 'yeah!'),
(19, 2, 'rocknroll'),
(20, 1, 'una'),
(21, 1, '2nd'),
(22, 2, 'huhu'),
(23, 4, 'Life as it is, buhuhuhu'),
(24, 8, 'Philosophy of Life'),
(25, 7, ''),
(26, 7, 'Life with technology'),
(27, 10, 'hahahhaha'),
(28, 1, 'Life Science'),
(29, 4, 'yxxxxxxxxy'),
(30, 4, 'z'),
(31, 1, 'fishes'),
(32, 1, 'abcd'),
(33, 6, 'Algebra'),
(34, 1, 'Anung problema? T_T'),
(35, 7, 'Lintech'),
(36, 7, 'Lintech'),
(37, 1, 'Lintech'),
(38, 4, 'bio'),
(39, 2, 'La'),
(40, 2, 'k,l'),
(41, 2, 'huhuhuhu'),
(42, 1, 'Huhuhuhu'),
(43, 8, 'Hi maam'),
(44, 1, 'K'),
(45, 9, 'Bow'),
(46, 1, 'buhuhuhuhu'),
(47, 9, 'hjkl'),
(48, 6, 'Ang pogi ko thanks'),
(49, 9, 'woooooooooo');

-- --------------------------------------------------------

--
-- Table structure for table `quiztag`
--

CREATE TABLE IF NOT EXISTS `quiztag` (
  `qztagid` int(11) NOT NULL AUTO_INCREMENT,
  `qzid` int(11) NOT NULL,
  `tagid` int(11) NOT NULL,
  PRIMARY KEY (`qztagid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `quiztag`
--

INSERT INTO `quiztag` (`qztagid`, `qzid`, `tagid`) VALUES
(1, 37, 3),
(2, 37, 4),
(3, 38, 5),
(4, 38, 6),
(5, 38, 7),
(6, 39, 8),
(7, 39, 9),
(8, 41, 10),
(9, 41, 11),
(10, 43, 15),
(11, 44, 5),
(12, 45, 17),
(13, 45, 5),
(14, 45, 6),
(16, 47, 22),
(17, 4, 24),
(18, 4, 25),
(19, 4, 26),
(20, 48, 27),
(21, 48, 5),
(22, 48, 6),
(23, 48, 28),
(24, 49, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tagid`, `tag`) VALUES
(3, 'computerscience'),
(4, 'technology'),
(5, 'k'),
(6, 'l'),
(7, 'm'),
(15, 'ssp'),
(16, 'jem'),
(17, 'j'),
(18, ''),
(19, 'tears'),
(20, 'asdfg'),
(21, 'qwer'),
(23, ' pogitalagaako'),
(24, 'a'),
(25, 'b'),
(26, 'c'),
(27, 'aw'),
(28, 'bhuhuhuhu'),
(29, 'jenmaganda');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
