-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2021 at 06:05 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techinstinct`
--

-- --------------------------------------------------------

--
-- Table structure for table `east_standings`
--

CREATE TABLE `east_standings` (
  `team` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `win_percent` decimal(4,3) DEFAULT NULL,
  `streak` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(11) NOT NULL,
  `fact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facts`
--

INSERT INTO `facts` (`id`, `fact`) VALUES
(1, 'Major League Baseball umpires are required to wear black underwear while on the job in case they split their pants.'),
(2, 'At one point in August 1971, the Pittsburgh Pirates became the first professional team to field nine players who were either black or Latino. Coincidentally, this was the same year they won the World Series.'),
(3, 'Steve Young is a great-great-great-grandson of Brigham Young of The Church of Jesus Christ of Latter-day Saints for whom Brigham Young University is named.'),
(4, 'The silhouette on the NBA logo is Hall of Fame Laker Jerry West.'),
(5, 'The referee tossed a jump ball after every basket in basketball until 1937.'),
(6, 'In July of 1934, Babe Ruth paid a fan $20 for the return of the baseball he hit for his 700th career home run.'),
(7, 'Kareem Abdul-Jabbar, the NBAs all time leading scorer, collects rugs.'),
(8, 'After his jerseys were stolen from the visitors locker room when the team was on the road against the Orlando Magic, Jordan had to wear a No. 12 jersey.'),
(9, 'The average life span of an MLB baseball is five to seven pitches.'),
(10, 'Track athletes are surprisingly most likely to break records late in the day, with body temperatures at their highest.'),
(11, 'Pittsburgh is the only American city with three sports teams that wear the same colors.'),
(12, 'It takes 3,000 cows to supply the NFL with enough leather for a years supply of footballs.'),
(13, 'Golf balls can reach speeds of 170 miles an hour.'),
(14, 'The actual playing time in an MLB game is nine minutes and 55 seconds, despite routinely finishing at around three hours.'),
(15, 'Babe Ruth wore a cabbage leaf under his cap to keep him cool and changed it every two innings.'),
(16, 'There are more than 350 dimples on a golf ball.'),
(17, 'In 1910, an incomplete forward pass earned teams a 15-yard penalty.'),
(18, 'The household wrench was invented by boxing heavyweight champion Jack Johnson in 1922.'),
(19, 'Tug of war was an Olympic event between 1900 and 1920.'),
(20, 'Michael Jordan was once one of the best high school pitchers in North Carolina.'),
(21, 'At 120 miles per hour, a Formula One car generates so much downforce that it can drive upside down on the roof of a tunnel.'),
(22, 'A microwaved baseball will fly farther than a frozen baseball.'),
(23, 'When pitched, the average MLB baseball rotates 15 times before being hit.'),
(24, 'Three consecutive strikes in bowling is called a turkey.'),
(25, 'Table tennis balls can travel off the paddle at 105.6 miles per hour.'),
(26, 'The original Stanley Cup was only seven-and-a-half inches high.'),
(27, 'The first baseball caps were made of straw.'),
(28, 'In the NFL, the home team must provide 36 footballs for outdoor games and 24 for indoor games.'),
(29, 'Prior to 1900, prize fights lasted up to 100 rounds.'),
(30, 'In 1935 Jesse Owens broke four world records in 45 minutes.'),
(31, 'No high jumper has ever been able to stay off the ground for more than one second.'),
(32, 'Most NASCAR teams use nitrogen in their tires instead of air.');

-- --------------------------------------------------------

--
-- Table structure for table `mlbstandings`
--

CREATE TABLE `mlbstandings` (
  `id` int(11) NOT NULL,
  `teamname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wins` int(11) DEFAULT 0,
  `losses` int(11) DEFAULT 0,
  `pct` decimal(4,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mlbstandings`
--

INSERT INTO `mlbstandings` (`id`, `teamname`, `division`, `wins`, `losses`, `pct`) VALUES
(1, 'Rays', 'AL East', 100, 62, '0.62'),
(2, 'Red Sox', 'AL East', 92, 70, '0.57'),
(3, 'Yankees', 'AL East', 92, 70, '0.57'),
(4, 'Blue Jays', 'AL East', 91, 71, '0.56'),
(5, 'Orioles', 'AL East', 52, 110, '0.32'),
(6, 'White Sox', 'AL Central', 93, 69, '0.57'),
(7, 'Indians', 'AL Central', 80, 82, '0.49'),
(8, 'Tigers', 'AL Central', 77, 85, '0.48'),
(9, 'Royals', 'AL Central', 74, 88, '0.46'),
(10, 'Twins', 'AL Central', 73, 89, '0.45'),
(11, 'Astros', 'AL West', 95, 67, '0.59'),
(12, 'Mariners', 'AL West', 90, 72, '0.56'),
(13, 'Athletics', 'AL West', 86, 76, '0.53'),
(14, 'Angels', 'AL West', 77, 85, '0.48'),
(15, 'Rangers', 'AL West', 60, 102, '0.37'),
(16, 'Braves', 'NL East', 88, 73, '0.55'),
(17, 'Phillies', 'NL East', 82, 80, '0.51'),
(18, 'Mets', 'NL East', 77, 85, '0.48'),
(19, 'Marlins', 'NL East', 67, 97, '0.41'),
(20, 'Nationals', 'NL East', 65, 97, '0.40'),
(21, 'Brewers', 'NL Central', 95, 67, '0.59'),
(22, 'Cardinals', 'NL Central', 90, 72, '0.56'),
(23, 'Reds', 'NL Central', 83, 79, '0.51'),
(24, 'Cubs', 'NL Central', 71, 91, '0.44'),
(25, 'Pirates', 'NL Central', 61, 101, '0.38'),
(26, 'Giants', 'NL West', 107, 55, '0.66'),
(27, 'Dodgers', 'NL West', 106, 56, '0.65'),
(28, 'Padres', 'NL West', 79, 83, '0.49'),
(29, 'Rockies', 'NL West', 74, 87, '0.46'),
(30, 'Diamondbacks', 'NL West', 52, 110, '0.32');

-- --------------------------------------------------------

--
-- Table structure for table `nbastandings`
--

CREATE TABLE `nbastandings` (
  `id` int(11) NOT NULL,
  `teamname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wins` int(11) DEFAULT 0,
  `losses` int(11) DEFAULT 0,
  `pct` decimal(4,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nbastandings`
--

INSERT INTO `nbastandings` (`id`, `teamname`, `division`, `wins`, `losses`, `pct`) VALUES
(1, 'Nets', 'Eastern', 15, 6, '0.71'),
(2, 'Wizards', 'Eastern', 14, 8, '0.64'),
(3, 'Bucks', 'Eastern', 14, 8, '0.64'),
(4, 'Bulls', 'Eastern', 14, 8, '0.64'),
(5, 'Heat', 'Eastern', 13, 9, '0.59'),
(6, 'Cavaliers', 'Eastern', 12, 10, '0.55'),
(7, 'Hawks', 'Eastern', 12, 10, '0.55'),
(8, 'Celtics', 'Eastern', 12, 10, '0.55'),
(9, 'Hornets', 'Eastern', 14, 8, '0.54'),
(10, 'Knicks', 'Eastern', 14, 8, '0.52'),
(11, '76ers', 'Eastern', 14, 8, '0.50'),
(12, 'Raptors', 'Eastern', 14, 8, '0.41'),
(13, 'Pacers', 'Eastern', 14, 8, '0.38'),
(14, 'Magic', 'Eastern', 14, 8, '0.22'),
(15, 'Pistons', 'Eastern', 14, 8, '0.19'),
(16, 'Suns', 'Western', 18, 3, '0.86'),
(17, 'Warriors', 'Western', 18, 3, '0.86'),
(18, 'Jazz', 'Western', 14, 7, '0.67'),
(19, 'Mavericks', 'Western', 11, 9, '0.55'),
(20, 'Grizzlies', 'Western', 11, 10, '0.52'),
(21, 'Lakers', 'Western', 12, 11, '0.52'),
(22, 'Clippers', 'Western', 11, 11, '0.50'),
(23, 'Blazers', 'Western', 11, 11, '0.50'),
(24, 'Timberwolves', 'Western', 11, 11, '0.50'),
(25, 'Nuggets', 'Western', 10, 11, '0.48'),
(26, 'Kings', 'Western', 9, 14, '0.39'),
(27, 'Spurs', 'Western', 6, 13, '0.32'),
(28, 'Thunder', 'Western', 6, 15, '0.29'),
(29, 'Pelicans', 'Western', 6, 18, '0.25'),
(30, 'Rockets', 'Western', 5, 16, '0.24'),
(31, 'Nets', 'Eastern', 15, 6, '0.71'),
(32, 'Wizards', 'Eastern', 14, 8, '0.64'),
(33, 'Bucks', 'Eastern', 14, 8, '0.64'),
(34, 'Bulls', 'Eastern', 14, 8, '0.64'),
(35, 'Heat', 'Eastern', 13, 9, '0.59'),
(36, 'Cavaliers', 'Eastern', 12, 10, '0.55'),
(37, 'Hawks', 'Eastern', 12, 10, '0.55'),
(38, 'Celtics', 'Eastern', 12, 10, '0.55'),
(39, 'Hornets', 'Eastern', 14, 8, '0.54'),
(40, 'Knicks', 'Eastern', 14, 8, '0.52'),
(41, '76ers', 'Eastern', 14, 8, '0.50'),
(42, 'Raptors', 'Eastern', 14, 8, '0.41'),
(43, 'Pacers', 'Eastern', 14, 8, '0.38'),
(44, 'Magic', 'Eastern', 14, 8, '0.22'),
(45, 'Pistons', 'Eastern', 14, 8, '0.19'),
(46, 'Suns', 'Western', 18, 3, '0.86'),
(47, 'Warriors', 'Western', 18, 3, '0.86'),
(48, 'Jazz', 'Western', 14, 7, '0.67'),
(49, 'Mavericks', 'Western', 11, 9, '0.55'),
(50, 'Grizzlies', 'Western', 11, 10, '0.52'),
(51, 'Lakers', 'Western', 12, 11, '0.52'),
(52, 'Clippers', 'Western', 11, 11, '0.50'),
(53, 'Blazers', 'Western', 11, 11, '0.50'),
(54, 'Timberwolves', 'Western', 11, 11, '0.50'),
(55, 'Nuggets', 'Western', 10, 11, '0.48'),
(56, 'Kings', 'Western', 9, 14, '0.39'),
(57, 'Spurs', 'Western', 6, 13, '0.32'),
(58, 'Thunder', 'Western', 6, 15, '0.29'),
(59, 'Pelicans', 'Western', 6, 18, '0.25'),
(60, 'Rockets', 'Western', 5, 16, '0.24');

-- --------------------------------------------------------

--
-- Table structure for table `nflstandings`
--

CREATE TABLE `nflstandings` (
  `id` int(11) NOT NULL,
  `teamname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wins` int(11) DEFAULT 0,
  `losses` int(11) DEFAULT 0,
  `ties` int(11) DEFAULT 0,
  `pct` decimal(4,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nflstandings`
--

INSERT INTO `nflstandings` (`id`, `teamname`, `division`, `wins`, `losses`, `ties`, `pct`) VALUES
(1, 'Patriots', 'AFC East', 8, 4, 0, '0.67'),
(2, 'Bills', 'AFC East', 7, 4, 0, '0.64'),
(3, 'Dolphins', 'AFC East', 5, 7, 0, '0.42'),
(4, 'Jets', 'AFC East', 3, 8, 0, '0.27'),
(5, 'Chiefs', 'AFC West', 7, 4, 0, '0.64'),
(6, 'Chargers', 'AFC West', 6, 5, 0, '0.55'),
(7, 'Raiders', 'AFC West', 6, 5, 0, '0.55'),
(8, 'Broncos', 'AFC West', 5, 6, 0, '0.55'),
(9, 'Ravens', 'AFC North', 8, 3, 0, '0.73'),
(10, 'Bengals', 'AFC North', 7, 4, 0, '0.64'),
(11, 'Steelers', 'AFC North', 5, 5, 1, '0.50'),
(12, 'Browns', 'AFC North', 6, 6, 0, '0.50'),
(13, 'Titans', 'AFC South', 8, 4, 0, '0.67'),
(14, 'Colts', 'AFC South', 6, 6, 0, '0.50'),
(15, 'Texans', 'AFC South', 2, 9, 0, '0.18'),
(16, 'Jaguars', 'AFC South', 2, 9, 0, '0.18');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `playerID` int(11) NOT NULL,
  `team` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `position` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `name` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'test', '$2y$10$ZNdOEN/bzt2PsrfCQtmpZO6VFvMQKGKqpVpXFX1HmAxQNU3k2ARZy', 'test@test.com'),
(2, 'johndoe', '$2y$10$83U/40tgxRiwHJb0y4X2yelYoK6DefOvjCXGu5hGadz6XHKs7.usK', 'johndoe@radford.edu'),
(3, 'test1', '098f6bcd4621d373cade4e832627b4f6', 'test1@test.com'),
(4, 'testing', 'ae2b1fca515949e5d54fb22b8ed95575', 'test@test1.com');

-- --------------------------------------------------------

--
-- Table structure for table `userstandings`
--

CREATE TABLE `userstandings` (
  `id` int(11) NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teamname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userstandings`
--

INSERT INTO `userstandings` (`id`, `owner`, `teamname`, `wins`, `losses`) VALUES
(5, 'test1', 'team1', 15, 6),
(14, 'test1', 'team2', 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `west_standings`
--

CREATE TABLE `west_standings` (
  `team` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `win_percent` decimal(4,3) DEFAULT NULL,
  `streak` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `east_standings`
--
ALTER TABLE `east_standings`
  ADD PRIMARY KEY (`team`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mlbstandings`
--
ALTER TABLE `mlbstandings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nbastandings`
--
ALTER TABLE `nbastandings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nflstandings`
--
ALTER TABLE `nflstandings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerID`),
  ADD KEY `team` (`team`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `userstandings`
--
ALTER TABLE `userstandings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `west_standings`
--
ALTER TABLE `west_standings`
  ADD PRIMARY KEY (`team`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `mlbstandings`
--
ALTER TABLE `mlbstandings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nbastandings`
--
ALTER TABLE `nbastandings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `nflstandings`
--
ALTER TABLE `nflstandings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userstandings`
--
ALTER TABLE `userstandings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `east_standings`
--
ALTER TABLE `east_standings`
  ADD CONSTRAINT `east_standings_ibfk_1` FOREIGN KEY (`team`) REFERENCES `teams` (`name`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`team`) REFERENCES `teams` (`name`);

--
-- Constraints for table `west_standings`
--
ALTER TABLE `west_standings`
  ADD CONSTRAINT `west_standings_ibfk_1` FOREIGN KEY (`team`) REFERENCES `teams` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
