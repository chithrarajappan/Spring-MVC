-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2018 at 04:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fifacup`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubreg`
--

CREATE TABLE `clubreg` (
  `id` int(11) NOT NULL,
  `clubname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(75) NOT NULL,
  `history` varchar(500) NOT NULL,
  `stadium` varchar(100) NOT NULL,
  `headcoach` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubreg`
--

INSERT INTO `clubreg` (`id`, `clubname`, `email`, `location`, `history`, `stadium`, `headcoach`, `director`, `manager`, `username`, `status`) VALUES
(1, 'Man United', 'lionsman@gmail.com', 'asfgh', 'man united devleoped by joy in 1990.dsgdfdfxzfs', 'piug', 'lionsman', 'david', 'joy', 'lionsman', 0),
(2, 'Chelsa', 'chelsa@gmail.com', 'qwert', 'Chelsa developed by james joseph in 2013,xdsgfs.zxvdssd.sdfsd.dsfewxzv.zxcsfrt.xzfstre.vffwecxz', 'qwertyu', 'sunny joy', 'james joseph', 'alen francis', 'alenfrancis', 1),
(3, 'Roma', 'Roma@gmail.com', 'eterye', 'Since 1997 Remo Joy was  organisied club Remo.feweyf.cndfwerw.dwurewr.bcxzvds.wqeuqw', 'hfgjgjfg', 'riyaskhan', 'Remo joy', 'vikas ray', 'vikasray', 0),
(4, 'F C Basel', 'fcbasel@gmail.com', 'argentina', 'qwertty 1989 bbnnmklo pgghju,\r\nrvvfb ddrggh nhhn mkkiol puytghbv uillppjuh', 'basel', 'aaa', 'basel', 'fcbasel', 'fcbasel', 0),
(5, 'Barcelona', 'barcelona@gmail.com', 'brassil', 'csdgdfb 1898 sdhncv fgyioiuouyjgfs xstdxc sfstsx', 'barcelona home', 'barce', 'bbb', 'barcel', 'bracel', 1),
(6, 'Real Madraid', 'realmadraid@gmail.com', 'uk', 'xzvxcfgut real madraid gjh1998 svdgdu\r\nhnbyhn hyyghnm 7876s mkkilopljhn vjbcsg nfsdjwefsf', 'madraidhouse', 'cccc', 'madraid', 'madhav ray', 'madhav', 1),
(7, 'Man city', 'mancity@gmail.com', 'citytown', 'sdfghjkb 1996 ertyun bvxcvbertyu ertyu czxcvasdf dfgbnb edrgyjm jrtyu  dvbn aasetyu', 'mancity town', 'avinash metta', 'eeee', 'alex joy', 'alexjoy', 0),
(8, 'Tottenham', 'tottenham@gmail.com', 'india', 'azxcvbnm,wertyu vbnmmyuiov vbn 1987 dfvbn edrtyu  vhbjnkmwerty bngyh', 'tottenstadium', 'totte', 'tttt', 'totter', 'tottenham', 1),
(9, 'Bayern', 'bayern@gmail.com', 'bayer', 'awsdfghbn batern ftbmmk,hhh developed bnb  1997 bggbh  nnkmnb bm,nbghjku', 'bayer town', 'hhhh', 'Babu Cherian', 'Cherian B N', 'cherianbn', 1),
(10, 'Liverpool', 'liverpool@gmail.com', 'bhuttan', 'qwdvbni rtyuiojnbcrfvb in 1987 yuiopkbn zxcvyhn weryuiosdfgh xcvn wedfvbzxfui uil vhikmrtyu', 'lverpooltown', 'lenan das', 'richard jose', 'laiser gus', 'liaser', 1),
(11, 'PSG', 'psg@gmail.com', 'Paris', 'zxcv eru sd zcvhnjhtguo dedgbnjnn 1998 bdsxcvhfv ffvbnirrtg frfghhk', 'psgworld', 'ppp', 'peter grace', 'imran yev', 'imran', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clubscore`
--

CREATE TABLE `clubscore` (
  `id` int(11) NOT NULL,
  `clubname` varchar(50) NOT NULL,
  `gameplayed` int(11) NOT NULL,
  `win` int(11) NOT NULL,
  `draw` int(11) NOT NULL,
  `loss` int(11) NOT NULL,
  `goalfor` int(11) NOT NULL,
  `goalagainst` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubscore`
--

INSERT INTO `clubscore` (`id`, `clubname`, `gameplayed`, `win`, `draw`, `loss`, `goalfor`, `goalagainst`, `score`) VALUES
(1, 'tottenham', 4, 3, 1, 1, 3, 2, 23),
(2, 'lionsman', 5, 3, 1, 2, 3, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `category` varchar(10) NOT NULL,
  `email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `category`, `email`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com'),
(2, 'alenfrancis', 'alen1234', 'club', 'chelsa@gmail.com'),
(3, 'matcher', 'matcher', 'match', 'matcher@gmail.com'),
(4, 'cristremo', 'cristremo', 'player', 'cristremo@gmail.com'),
(5, 'lionsman', 'lionsman', 'club', 'lionsman@gmail.com'),
(6, 'tottenham', 'tottenham', 'club', 'tottenham@gmail.com'),
(7, 'liaser', 'liaser', 'club', 'liverpool@gmail.com'),
(8, 'madhav', 'madhav', 'club', 'realmadraid@gmail.com'),
(9, 'cherianbn', 'cherianbn', 'club', 'bayern@gmail.com'),
(10, 'bracel', 'bracel', 'club', 'barcelona@gmail.com'),
(11, 'vikasray', 'vikasray', 'club', 'Roma@gmail.com'),
(12, 'fcbasel', 'fcbasel', 'club', 'fcbasel@gmail.com'),
(13, 'liverpool', 'liverpool', 'club', 'liverpool@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `matchclubs`
--

CREATE TABLE `matchclubs` (
  `id` int(11) NOT NULL,
  `matchname` varchar(50) NOT NULL,
  `matchdate` varchar(50) NOT NULL,
  `matchtime` varchar(50) NOT NULL,
  `club1` varchar(50) NOT NULL,
  `club2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matchclubs`
--

INSERT INTO `matchclubs` (`id`, `matchname`, `matchdate`, `matchtime`, `club1`, `club2`) VALUES
(1, 'fifa', '2018-10-24', '10.00pm', 'tottenham', 'ManUnited');

-- --------------------------------------------------------

--
-- Table structure for table `matchregister`
--

CREATE TABLE `matchregister` (
  `id` int(11) NOT NULL,
  `schedulename` varchar(50) NOT NULL,
  `scheduledate` varchar(50) NOT NULL,
  `clubname` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `no_players` int(11) NOT NULL,
  `no_attendmatch` int(11) NOT NULL,
  `win` int(11) NOT NULL,
  `goal` int(11) NOT NULL,
  `score_rank` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matchregister`
--

INSERT INTO `matchregister` (`id`, `schedulename`, `scheduledate`, `clubname`, `manager`, `email`, `phoneno`, `no_players`, `no_attendmatch`, `win`, `goal`, `score_rank`, `status`, `remark`) VALUES
(1, 'fifa', '24-10-2018', 'tottenham', 'totten', 'totter@gmail.com', '987654321', 13, 5, 4, 3, 23, 1, 'Your Match Registeration Accepted'),
(2, 'fifa', '2018-10-24', 'ManUnited', 'david', 'lionsman@gmail.com', '9834232234', 13, 5, 3, 3, 12, 1, 'Your Match Registeration Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phoneno` varchar(20) NOT NULL,
  `club` varchar(50) NOT NULL,
  `manager` varchar(50) NOT NULL,
  `gameposition` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `year_exp` int(11) NOT NULL,
  `no_match` int(11) NOT NULL,
  `no_win` int(11) NOT NULL,
  `no_loss` int(11) NOT NULL,
  `no_goal` int(11) NOT NULL,
  `no_assist` int(11) NOT NULL,
  `no_redcards` int(11) NOT NULL,
  `no_yellowcards` int(11) NOT NULL,
  `score_rank` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `firstname`, `lastname`, `email`, `address`, `age`, `dob`, `state`, `phoneno`, `club`, `manager`, `gameposition`, `height`, `weight`, `year_exp`, `no_match`, `no_win`, `no_loss`, `no_goal`, `no_assist`, `no_redcards`, `no_yellowcards`, `score_rank`, `username`, `password`, `status`) VALUES
(1, 'vijay', 'murali', 'vijaym@gmail.com', 'sasdfsdfs', 28, '1990-04-03', 'india', '987654321', 'Tottenham', 'alenfrancis', 'Forward', '176cm', '76kg', 5, 3, 2, 1, 1, 2, 0, 0, 12, 'vijay', 'vijay', 1),
(2, 'Crist', 'Remo', 'cristremo@gmail.com', 'dgfhrhdfbd', 30, '1988-05-23', 'America', '7765432900', 'Man United', 'lionsman', 'Midfielder', '168cm', '68kg', 7, 8, 6, 2, 5, 4, 1, 0, 5, 'cristremo', 'cristremo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playerscore`
--

CREATE TABLE `playerscore` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `club` varchar(50) NOT NULL,
  `win` int(11) NOT NULL,
  `loss` int(11) NOT NULL,
  `goal` int(11) NOT NULL,
  `assist` int(11) NOT NULL,
  `redcard` int(11) NOT NULL,
  `yellowcard` int(11) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playerscore`
--

INSERT INTO `playerscore` (`id`, `name`, `club`, `win`, `loss`, `goal`, `assist`, `redcard`, `yellowcard`, `rank`) VALUES
(1, 'cristremo', 'Man United', 6, 2, 5, 4, 1, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedulematch`
--

CREATE TABLE `schedulematch` (
  `id` int(11) NOT NULL,
  `schedulename` varchar(50) NOT NULL,
  `scheduledate` varchar(50) NOT NULL,
  `scheduletime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedulematch`
--

INSERT INTO `schedulematch` (`id`, `schedulename`, `scheduledate`, `scheduletime`) VALUES
(1, 'fifa', '2018-10-24', '10.00pm');

-- --------------------------------------------------------

--
-- Table structure for table `ticketbook`
--

CREATE TABLE `ticketbook` (
  `id` int(11) NOT NULL,
  `matchname` varchar(50) NOT NULL,
  `matchdate` varchar(50) NOT NULL,
  `matchtime` varchar(50) NOT NULL,
  `viewername` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `noseats` int(11) NOT NULL,
  `cashamount` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `accountno` int(20) NOT NULL,
  `status` int(11) NOT NULL,
  `remark` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticketbook`
--

INSERT INTO `ticketbook` (`id`, `matchname`, `matchdate`, `matchtime`, `viewername`, `email`, `contact`, `noseats`, `cashamount`, `bank`, `accountno`, `status`, `remark`) VALUES
(1, 'fifa', '2018-10-24', '10.00pm', 'chithra', 'chithra@gmail.com', '9485767648', 2, 1000, 'sbi', 1234512345, 0, 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubreg`
--
ALTER TABLE `clubreg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clubname` (`clubname`);

--
-- Indexes for table `clubscore`
--
ALTER TABLE `clubscore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchclubs`
--
ALTER TABLE `matchclubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matchregister`
--
ALTER TABLE `matchregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playerscore`
--
ALTER TABLE `playerscore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedulematch`
--
ALTER TABLE `schedulematch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketbook`
--
ALTER TABLE `ticketbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubreg`
--
ALTER TABLE `clubreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `clubscore`
--
ALTER TABLE `clubscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `matchclubs`
--
ALTER TABLE `matchclubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `matchregister`
--
ALTER TABLE `matchregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `playerscore`
--
ALTER TABLE `playerscore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `schedulematch`
--
ALTER TABLE `schedulematch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ticketbook`
--
ALTER TABLE `ticketbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
