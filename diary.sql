-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 12:16 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`FirstName`, `LastName`, `Email`, `Password`) VALUES
('Shivanee', 'Jaiswal', 'shivanee.j@somaiya.edu', 'shivanee'),
('S', 'J', 'shivaneej02@gmail.com', 'shiv');

-- --------------------------------------------------------

--
-- Table structure for table `usernote`
--

CREATE TABLE `usernote` (
  `noteID` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uploadDate` datetime NOT NULL,
  `title` varchar(60) NOT NULL,
  `noteBody` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usernote`
--

INSERT INTO `usernote` (`noteID`, `email`, `uploadDate`, `title`, `noteBody`) VALUES
(1, 'shivanee.j@somaiya.edu', '2019-04-23 00:00:00', 'My First Note', 'This is my first test note.'),
(2, 'shivanee.j@somaiya.edu', '2019-04-23 00:00:00', 'My Second Note', 'This is my second test note.'),
(14, 'shivanee.j@somaiya.edu', '2019-04-24 00:12:00', 'Flowers', '<span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">A&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">flower</span><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">, sometimes known as a&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">bloom</span><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;or&nbsp;</span><span style=\"box-sizing: border-box; font-weight: bolder; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><a href=\"https://en.wikipedia.org/wiki/Blossom\" title=\"Blossom\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none;\">blossom</a></span><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">, is the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Reproduction\" title=\"Reproduction\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">reproductive</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;structure found in&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Flowering_plant\" title=\"Flowering plant\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">flowering plants</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;(plants of the division&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Magnoliophyta\" class=\"mw-redirect\" title=\"Magnoliophyta\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">Magnoliophyta</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Diaspore_(botany)\" title=\"Diaspore (botany)\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">diaspores</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;without fertilization (</span><a href=\"https://en.wikipedia.org/wiki/Parthenocarpy\" title=\"Parthenocarpy\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">parthenocarpy</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">). Flowers contain&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Sporangium\" title=\"Sporangium\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">sporangia</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;and are the site where&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Gametophyte\" title=\"Gametophyte\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">gametophytes</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Pollen\" title=\"Pollen\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">pollen</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">. After fertilization, the&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Ovary_(botany)\" title=\"Ovary (botany)\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">ovary</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;of the flower develops into&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Fruit\" title=\"Fruit\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">fruit</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;containing&nbsp;</span><a href=\"https://en.wikipedia.org/wiki/Seed\" title=\"Seed\" style=\"box-sizing: border-box; color: rgb(11, 0, 128); text-decoration-line: none; background: none rgb(255, 255, 255); text-align: center; font-family: sans-serif; font-size: 14px;\">seeds</a><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">.</span><div><span style=\"box-sizing: border-box; text-align: center; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"https://res.cloudinary.com/prestige-gifting/image/fetch/fl_progressive,q_95,e_sharpen:50,w_480/e_saturation:05/https://www.prestigeflowers.co.uk/images/NF1018.jpg\"></span></div>'),
(15, 'shivaneej02@gmail.com', '2019-04-24 00:15:00', 'To - Do', '1. Buy books<div>2. Complete Assignments</div>'),
(16, 'shivaneej02@gmail.com', '2019-04-24 00:16:00', 'Grocery List', '1. Milk<div>2. Chocolate</div><div>3. Medicine</div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `usernote`
--
ALTER TABLE `usernote`
  ADD PRIMARY KEY (`noteID`),
  ADD KEY `usernote` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usernote`
--
ALTER TABLE `usernote`
  MODIFY `noteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usernote`
--
ALTER TABLE `usernote`
  ADD CONSTRAINT `usernote` FOREIGN KEY (`email`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
