-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 09:53 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `Blog_id` int(11) NOT NULL,
  `Blog_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Blog_Description` text COLLATE utf8_unicode_ci,
  `Blog_Type` enum('الترفيهية','الثقافية','الدينية','الشاطئية','التأمل','المغامرات') COLLATE utf8_unicode_ci DEFAULT NULL,
  `Blog_User_id` int(11) DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`Blog_id`, `Blog_Name`, `Blog_Description`, `Blog_Type`, `Blog_User_id`, `City_id`) VALUES
(1, 'مدونة المدينة ', 'هي مدونة سفر سياحية', 'الترفيهية', 1, 1),
(2, 'مدونة ترفية', 'هي مدونة ترفية', 'الشاطئية', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_Id` int(11) NOT NULL,
  `City_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_Id`, `City_Name`) VALUES
(1, 'المدينة المنورة'),
(2, 'الرياض'),
(3, 'مكة');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Comment_id` int(11) NOT NULL,
  `Comment_Content` text COLLATE utf8_unicode_ci,
  `Comment_User_id` int(11) DEFAULT NULL,
  `Blog_id` int(11) DEFAULT NULL,
  `Monuments_Important_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`Comment_id`, `Comment_Content`, `Comment_User_id`, `Blog_id`, `Monuments_Important_Id`) VALUES
(1, 'انه رائعة جدا جدا', 1, 1, NULL),
(2, 'ممتاز جدا المكان هذا ', 2, 2, NULL),
(3, 'العبادة', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `Media_id` int(11) NOT NULL,
  `Media_File` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Blog_id` int(11) DEFAULT NULL,
  `Monuments_Important_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`Media_id`, `Media_File`, `Blog_id`, `Monuments_Important_Id`) VALUES
(1, 'لنلانلل\\اعااه.png', 1, NULL),
(2, 'اقلاق\\ثابعهثباثابز.jpg', 2, NULL),
(3, 'fwehgiu\\hgehf.png', NULL, 2),
(4, 'hiugiwu\\efef.png', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `monuments_important`
--

CREATE TABLE `monuments_important` (
  `Monuments_Important_Id` int(11) NOT NULL,
  `Monuments_Important_Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Monuments_Important_Description` text COLLATE utf8_unicode_ci,
  `Monuments_Important_Type` enum('الترفيهية','الثقافية','الدينية','الشاطئية','التأمل','المغامرات') COLLATE utf8_unicode_ci DEFAULT NULL,
  `Monuments_Important_Location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Monuments_Important_User_Id` int(11) DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monuments_important`
--

INSERT INTO `monuments_important` (`Monuments_Important_Id`, `Monuments_Important_Name`, `Monuments_Important_Description`, `Monuments_Important_Type`, `Monuments_Important_Location`, `Monuments_Important_User_Id`, `City_id`) VALUES
(1, 'المسجد النبوي', 'المسجد النبوي هو ثاني أقدس مسجد في الإسلام بعد المسجد الحرام، يقع في المدينة المنورة في المملكة العربية السعودية. تم بناؤه في الأصل من قبل النبي محمد صلى الله عليه وسلم في السنة الأولى للهجرة، ويتميز بقبته الخضراء التي تعلو الروضة الشريفة، حيث يوجد قبر النبي وصاحبيه أبو بكر الصديق وعمر بن الخطاب. المسجد يُعتبر وجهة هامة للحجاج والمعتمرين ويتميز بتصميمه المعماري الواسع والتطورات التقنية الحديثة التي تسهل استيعاب ملايين المصلين والزوار.', 'الدينية', 'المدينة المنورة', 1, 1),
(2, 'مكة المكرمة', 'هي  مكة المكرمة', 'الدينية', 'مكة', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Rating_id` int(11) NOT NULL,
  `Rating_Value` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Blog_id` int(11) DEFAULT NULL,
  `Monuments_Important_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`Rating_id`, `Rating_Value`, `User_id`, `Blog_id`, `Monuments_Important_Id`) VALUES
(1, 3, 1, 1, NULL),
(2, 4, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `User_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_phone` int(11) DEFAULT NULL,
  `User_Date_birth` date DEFAULT NULL,
  `User_National` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_City` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `User_name`, `User_Email`, `User_password`, `User_phone`, `User_Date_birth`, `User_National`, `User_City`) VALUES
(1, 'rawabi', 'rwabi903@gmail.com', '123', 56456456, '2018-10-05', 'سعودي', 'المدينة '),
(2, 'دانة', 'd@gmail.com', '123', 535664564, '2014-10-09', 'سعودي', 'المدينة');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`Blog_id`),
  ADD KEY `Blog_User_id` (`Blog_User_id`),
  ADD KEY `City_id` (`City_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_Id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Comment_id`),
  ADD KEY `Comment_User_id` (`Comment_User_id`),
  ADD KEY `Blog_id` (`Blog_id`),
  ADD KEY `Monuments_Important_Id` (`Monuments_Important_Id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`Media_id`),
  ADD KEY `Blog_id` (`Blog_id`),
  ADD KEY `Monuments_Important_Id` (`Monuments_Important_Id`);

--
-- Indexes for table `monuments_important`
--
ALTER TABLE `monuments_important`
  ADD PRIMARY KEY (`Monuments_Important_Id`),
  ADD KEY `Monuments_Important_User_Id` (`Monuments_Important_User_Id`),
  ADD KEY `City_id` (`City_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`Rating_id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Blog_id` (`Blog_id`),
  ADD KEY `Monuments_Important_Id` (`Monuments_Important_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `Blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `Media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `monuments_important`
--
ALTER TABLE `monuments_important`
  MODIFY `Monuments_Important_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `Rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`Blog_User_id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`City_id`) REFERENCES `city` (`city_Id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Comment_User_id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`Blog_id`) REFERENCES `blogs` (`Blog_id`),
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`Monuments_Important_Id`) REFERENCES `monuments_important` (`Monuments_Important_Id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`Blog_id`) REFERENCES `blogs` (`Blog_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`Monuments_Important_Id`) REFERENCES `monuments_important` (`Monuments_Important_Id`);

--
-- Constraints for table `monuments_important`
--
ALTER TABLE `monuments_important`
  ADD CONSTRAINT `monuments_important_ibfk_1` FOREIGN KEY (`Monuments_Important_User_Id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `monuments_important_ibfk_2` FOREIGN KEY (`City_id`) REFERENCES `city` (`city_Id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `users` (`User_id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`Blog_id`) REFERENCES `blogs` (`Blog_id`),
  ADD CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`Monuments_Important_Id`) REFERENCES `monuments_important` (`Monuments_Important_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
