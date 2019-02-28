-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2018 at 06:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloghere`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(6000) NOT NULL,
  `author` varchar(200) NOT NULL,
  `images` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `images`) VALUES
(1, 'title 1', '<p>content1</p>\r\n', '', ''),
(3, 'tatle 2', '<p>content 2</p>\r\n', '', ''),
(4, 'A Cup of Jo', '<p>A Cup of Jo is one of the most successful&nbsp;<a href=\"https://firstsiteguide.com/best-lifestyle-blogs/\" target=\"_blank\">lifestyle blogs</a>&nbsp;that covers travel, fashion, food, design, relationship advice, and motherhood stories and tips. Founded by&nbsp;<a href=\"https://twitter.com/joannagoddard\" target=\"_blank\">Joanna Goddard</a>, this blog served as her hobby at first, but it quickly transformed into quite an attractive website that enables her to earn money round the clock.</p>\r\n', '', ''),
(5, 'The Department of Wandering', '<p>The Department of Wandering is a lifestyle and travel blog founded by&nbsp;<a href=\"https://twitter.com/deptofwandering\" target=\"_blank\">Rachel Bale</a>, who started the blog when she was living in Berlin with the goal of helping people make the most out of their travel adventures. She provides information and advice on finding the true&nbsp;</p>\r\n', '', ''),
(6, 'Borders of Adventure', '<p>Borders of Adventure is yet another one of the best blogs about travel experiences and culture. Founded by&nbsp;<a href=\"https://twitter.com/BordersofAdv\" target=\"_blank\">Becki Enright</a>, a British Travel Press award-winning writer, this blog is an amazing inspiration for travelers, helping them discover the secrets of the most beautiful places on the planet.</p>\r\n', '', ''),
(7, 'Cari Cole', '<p>Cari Cole is a blog for inspiring and empowering artists, helping them make brave and wise choices to reach the success they strive. The founder of the blog,&nbsp;<a href=\"https://twitter.com/CariCole\" target=\"_blank\">Cari Cole</a>, is a vocalist and songwriter, whose goal is to provide other singers and songwriters with advice on pursuing&nbsp;</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES
(0, 'jery@gmail.com', 'jery', '$2y$10$Kkz4DAFRasZwWaXdGgEIQuM9AAaXqweym05waIpIVk2RdA/EBv8qK'),
(0, 'ami@gmail.com', 'ami', '$2y$10$n9pIazKjGI8fldSf9ytbYe97X10hz.A0ZVjnV4IE0WrTfA8SGBp9q'),
(0, 'tab@gmail.com', 'tab', '$2y$10$OVoSRY9Oo2W8TPPpIpi2h.J71voRID8X3wXzZ1yl.asD.sdtk8RF6'),
(0, 'letu@gmail.com', 'letu', '$2y$10$dc4IS5b3S2xEVaMoDAk.rurlcLmQX/hv6kBVivNgAhlLKxLiCHBDC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
