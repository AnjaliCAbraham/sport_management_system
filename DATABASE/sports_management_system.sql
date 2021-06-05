-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 05:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

CREATE TABLE `auto_number` (
  `auto_id` int(11) NOT NULL,
  `auto_start` int(11) NOT NULL,
  `auto_end` int(11) NOT NULL,
  `auto_increment` int(11) NOT NULL,
  `auto_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`auto_id`, `auto_start`, `auto_end`, `auto_increment`, `auto_desc`) VALUES
(1, 100, 71, 1, 'MATCH'),
(2, 100, 61, 1, 'PLYR'),
(3, 200, 43, 1, 'SY'),
(4, 1000, 9, 1, 'SCHL'),
(5, 100, 5, 1, 'SPORT'),
(6, 100, 3, 1, 'EQUIP'),
(7, 200, 5, 1, 'CCH'),
(8, 100, 6, 1, 'TEAMA'),
(9, 100, 0, 1, 'TEAMB'),
(10, 200, 14, 1, 'FCLTR'),
(11, 100, 4, 1, 'REF'),
(12, 100, 1, 1, 'VEN'),
(13, 100, 4, 1, 'TYPE'),
(14, 100, 2, 1, 'AWD'),
(15, 100, 2, 1, 'STYPE'),
(16, 100, 11, 1, 'MODE'),
(17, 100, 6, 1, 'TOUR'),
(18, 100, 78, 1, 'RESULT'),
(19, 100, 0, 1, 'TOUR-TYPE');

-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE `facilitator` (
  `facilitator_id` int(11) NOT NULL,
  `facilitator_name` varchar(30) NOT NULL,
  `facilitator_gender` varchar(30) NOT NULL,
  `facilitator_address` text NOT NULL,
  `facilitator_contact` varchar(80) DEFAULT NULL,
  `facilitator_status` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilitator`
--

INSERT INTO `facilitator` (`facilitator_id`, `facilitator_name`, `facilitator_gender`, `facilitator_address`, `facilitator_contact`, `facilitator_status`, `facilitator_code`) VALUES
(12, 'Anilect Jose', 'Male', 'Kanjirathinkal', '+914447854556', 'Unavailable', 'FCLTR-209'),
(13, 'Jomeesh Jose', 'Male', 'Varadimoola', '99999999', 'Available', 'PLYR-161'),
(14, 'Joice John', 'Male', 'kartikulqm', '99999999', 'Available', 'PLYR-161'),
(15, 'AAkshay Murali', 'Male', '456 Santhom Hostel', '999', 'Available', 'FCLTR-212'),
(16, 'Anjali', 'Female', 'chirapurayidathil', '7736432222', 'Available', 'FCLTR-213');

-- --------------------------------------------------------

--
-- Table structure for table `game_result`
--

CREATE TABLE `game_result` (
  `game_result_id` int(11) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `final_score` varchar(30) NOT NULL,
  `position_code` varchar(30) NOT NULL,
  `game_result_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game_result_position`
--

CREATE TABLE `game_result_position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(30) NOT NULL,
  `position_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game_type`
--

CREATE TABLE `game_type` (
  `game_type_id` int(11) NOT NULL,
  `type_of_game` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `number_of_scoring` int(11) NOT NULL,
  `game_type_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_type`
--

INSERT INTO `game_type` (`game_type_id`, `type_of_game`, `sport_type_code`, `number_of_scoring`, `game_type_code`) VALUES
(10, 'JUDO', 'STYPE-101', 3, 'TYPE-103');

-- --------------------------------------------------------

--
-- Table structure for table `game_type_mode`
--

CREATE TABLE `game_type_mode` (
  `mode_id` int(11) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `mode_name` varchar(30) NOT NULL,
  `mode_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_type_mode`
--

INSERT INTO `game_type_mode` (`mode_id`, `game_type_code`, `mode_name`, `mode_code`) VALUES
(19, 'TYPE-103', 'A-55', 'MODE-110');

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE `match_schedule` (
  `match_id` int(11) NOT NULL,
  `type_code` varchar(30) NOT NULL,
  `tour_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL,
  `match_date` text NOT NULL,
  `match_time` text NOT NULL,
  `time_end` varchar(30) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `player_code` varchar(30) NOT NULL,
  `Is_have_result` varchar(11) NOT NULL,
  `match_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `Status` varchar(30) NOT NULL DEFAULT 'UNREAD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `MessageGuid` text DEFAULT NULL,
  `MessageInfo` text DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageGuid` text DEFAULT NULL,
  `MessageInfo` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(30) NOT NULL,
  `player_age` int(11) NOT NULL,
  `player_course` varchar(30) NOT NULL,
  `player_address` text NOT NULL,
  `player_gender` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `contact` varchar(80) DEFAULT NULL,
  `player_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `school_address` text NOT NULL,
  `school_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `sy_id` int(11) NOT NULL,
  `school_year` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(30) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `no_of_player` int(11) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sports_type`
--

CREATE TABLE `sports_type` (
  `sport_type_id` int(11) NOT NULL,
  `sport_type_code` varchar(30) NOT NULL,
  `sport_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_type`
--

INSERT INTO `sports_type` (`sport_type_id`, `sport_type_code`, `sport_type`) VALUES
(4, 'STYPE-101', 'Interior');

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(300) NOT NULL,
  `tour_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_type`
--

CREATE TABLE `tournament_type` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `type_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `user_type`) VALUES
(1, 'angel jude', 'jude@yahoo.com', 'akshay', 'Admin'),
(2, 'kristel joy', 'kristyl@yahoo.com', 'ani', 'Encoder'),
(3, 'angel jude suarez', 'angeljude@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Encoder');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `place` text NOT NULL,
  `venue_status` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `place`, `venue_status`, `venue_code`) VALUES
(1, 'Chmsc Basketball Court', 'Available', 'chmscbc'),
(2, 'Chmsc Quadrangle', 'Available', 'chmscquad'),
(3, 'Chmsc Convention Hall', 'Unavailable', 'chmscch'),
(4, 'Chmsc Field', 'Available', 'chmscf'),
(5, 'Chmsc Front of Basketball Court', 'Available', 'chmscfbc'),
(6, 'Chmsc Front of Room1', 'Available', 'chmscfr1'),
(7, 'Binalbagan Covered Court', 'Available', 'VEN-100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`facilitator_id`),
  ADD UNIQUE KEY `facilitator_name` (`facilitator_name`);

--
-- Indexes for table `game_result`
--
ALTER TABLE `game_result`
  ADD PRIMARY KEY (`game_result_id`);

--
-- Indexes for table `game_result_position`
--
ALTER TABLE `game_result_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `game_type`
--
ALTER TABLE `game_type`
  ADD PRIMARY KEY (`game_type_id`),
  ADD UNIQUE KEY `type_of_game` (`type_of_game`);

--
-- Indexes for table `game_type_mode`
--
ALTER TABLE `game_type_mode`
  ADD PRIMARY KEY (`mode_id`);

--
-- Indexes for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_name` (`player_name`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `school_name` (`school_name`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`sy_id`),
  ADD UNIQUE KEY `school_year` (`school_year`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`),
  ADD UNIQUE KEY `sport_name` (`sport_name`);

--
-- Indexes for table `sports_type`
--
ALTER TABLE `sports_type`
  ADD PRIMARY KEY (`sport_type_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `tournament_type`
--
ALTER TABLE `tournament_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_number`
--
ALTER TABLE `auto_number`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `facilitator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `game_result`
--
ALTER TABLE `game_result`
  MODIFY `game_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `game_result_position`
--
ALTER TABLE `game_result_position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `game_type`
--
ALTER TABLE `game_type`
  MODIFY `game_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `game_type_mode`
--
ALTER TABLE `game_type_mode`
  MODIFY `mode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `match_schedule`
--
ALTER TABLE `match_schedule`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sports_type`
--
ALTER TABLE `sports_type`
  MODIFY `sport_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tournament_type`
--
ALTER TABLE `tournament_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
