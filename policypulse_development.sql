-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2010 at 08:38 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `policypulse_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `now_weight` double NOT NULL,
  `week_weight` double NOT NULL,
  `month_weight` double NOT NULL,
  `year_weight` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `now_weight`, `week_weight`, `month_weight`, `year_weight`) VALUES
(1, 'Environment', 1.5, 1, 1, 1),
(2, 'Economic', 3.6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE IF NOT EXISTS `ideas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `owner_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `title`, `description`, `created`, `owner_id`, `category_id`, `issue_id`, `tag_id`) VALUES
(1, 'Greatest Idea Ever Thought Up', 'Lorem ipsum dolor sit amet, maiores ornare ac fermentum, imperdiet ut vivamus a, nam lectus at nunc. Cum quam euismod sem, semper ut potenti pellentesque quisque. In eget sapien sed, sit duis vestibulum ultricies, placerat morbi amet vel, nullam in in lorem vel. In molestie elit dui dictum, praesent nascetur pulvinar sed, in dolor pede in aliquam, risus nec error quis pharetra. Eros metus quam augue suspendisse, metus rutrum risus erat in.  In ultrices quo ut lectus, etiam vestibulum urna a est, pretium luctus euismod nisl, pellentesque turpis hac ridiculus massa. Venenatis a taciti dolor platea, curabitur lorem platea urna odio, convallis sit pellentesque lacus proin. Et ipsum velit diam nulla, fringilla vel tincidunt vitae, elit turpis tellus vivamus, dictum adipiscing convallis magna id. Viverra eu amet sit, dignissim tincidunt volutpat nulla tincidunt, feugiat est erat dui tempor, fusce tortor auctor vestibulum. Venenatis praesent risus orci, ante nam volutpat erat. Cursus non mollis interdum maecenas, consequat imperdiet penatibus enim, tristique luctus tellus eos accumsan, ridiculus erat laoreet nunc.', '2010-06-17 13:46:13', 1, 1, 1, 1),
(2, 'Another Sweet Idea', 'You’ve already learned about scaffolding in CakePHP: a simple way to get up and running with only a database and some bare classes. CakePHP’s Bake console is another effort to get you up and running in CakePHP – fast. ', '2010-06-17 15:28:23', 1, 0, 0, 0),
(3, 'Another Sweet Idea', 'You’ve already learned about scaffolding in CakePHP: a simple way to get up and running with only a database and some bare classes. CakePHP’s Bake console is another effort to get you up and running in CakePHP – fast. ', '2010-06-17 15:28:30', 1, 1, 1, 1),
(4, 'Abolish School', 'Kids! Are you tired of homework, getting up early, and detention? Well now you don''t have to be. When you vote to abolish school, we end all that forever.', '2010-06-17 15:29:20', 1, 1, 1, 1),
(7, 'Abolish Slavery', 'Four score and seven years ago our fathers brought forth upon this continent a new nation, conceived in liberty, and dedicated to the proposition that all men are created equal.', '2010-06-17 15:29:22', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `now_weight` double NOT NULL,
  `week_weight` double NOT NULL,
  `month_weight` double NOT NULL,
  `year_weight` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `name`, `category_id`, `now_weight`, `week_weight`, `month_weight`, `year_weight`) VALUES
(1, 'deforestation', 1, 1, 1, 1, 1),
(2, 'Fish and Wildlife', 1, 2, 1, 1, 1),
(3, 'Budget', 2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `now_weight` double NOT NULL,
  `week_weight` double NOT NULL,
  `month_weight` double NOT NULL,
  `year_weight` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `issue_id`, `user_id`, `now_weight`, `week_weight`, `month_weight`, `year_weight`) VALUES
(1, 'Big old budget deficit', 3, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `bio`, `location`) VALUES
(1, 'Adam', 'Savitzky', 'I''m a pretty decent guy if you get to know me', 'Boston, MA');
