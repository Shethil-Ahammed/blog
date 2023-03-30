-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 11:06 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `paragraph` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `paragraph`) VALUES
(4, 'Bangladesh vs Ireland 1st T20I', 'Bangladesh are on a rampage at home and defeated England 3-0 in their last T20I series.\r\n\r\nChattogram: After picking up a brilliant win over Ireland in the ODI series, Bangladesh will be looking to continue their juggernaut in the T20I series. The hosts are on a rampage at home, beating some of the top teams. They recently defeated England 3-0 in a T20I series so Ireland will have to punch above their weight to beat Bangladesh in the series.\r\nBangladesh vs Ireland 1st T20I Date And Venue\r\n\r\nBangladesh vs Ireland 1st T20I will be played at the Zahur Ahmed Chowdhury Stadium, Chattogram on March 28th. The match will start at 1:30 PM IST.\r\nBangladesh v Ireland 1st T20I TV Channels And Live Streaming\r\n\r\nBangladesh vs Ireland 1st T20I can be watched on Fancode App. No TV channels are broadcasting the BAN vs IRE series in India.'),
(5, '20 Hajj pilgrims killed in Saudi Arabia accident', 'At least 20 Hajj pilgrims have been killed when a bus hit a bridge, overturned, and burst into flames in Saudi Arabia, the PTI reported, citing a Saudi state broadcaster.\r\n\r\nAnother 29 people were injured as the vehicle\'s brakes failed in the southwestern Asir province bordering Yemen on Monday, according to Al-Ekhbariya TV.\r\n\r\n\r\nAired footage showed the charred remains of the bus after the fiery crash.\r\n\r\nThe crash occurred during the first week of the ongoing Muslim holy month of Ramadan when many people travel to enjoy nightly feasts with family and friends after breaking their fast.'),
(6, 'Air pollution causes 20% of premature deaths in Bangladesh, says World Bank study', 'Air pollution is responsible for about 20 percent of the total premature deaths in Bangladesh and Dhaka is one of the world’s 10 worst cities in terms of air pollution, a World Bank report says.\r\n\r\nHowever, cost-effective solutions to achieve clean air in South Asia exist, but it will require countries to coordinate policies and investments, the World Bank said in a press conference in Dhaka on Tuesday.\r\n\r\nThe study, titled ‘Striving for Clean Air: Air Pollution and Public Health in South Asia’, says concentrations of fine particulate matter such as soot and small dust (PM2.5) in some of the region’s most densely populated and poor areas are up to 20 times higher than the WHO standard (5 µg/mᶾ).\r\n\r\nSouth Asia sees an estimated 2 million premature deaths each year and significant economic losses due to this issue, the World Bank said.\r\n\r\nSuch extreme air pollution can cause stunting and reduced cognitive development in children and other health issues such as respiratory disease and chronic conditions, the study said. In totality it drives up the cost of healthcare, reduces productivity, and leads to more lost working days.'),
(7, 'Jhenaidah road crash kills couple taking daughter to hospital', 'A couple in Jhenaidah’s Kaliganj Upazila has died in a road accident while taking their daughter to see a doctor.\r\n\r\nTheir sick daughter and their grandson were also injured in the accident, which occurred near the Mobarakganj Sugar Mill around 6 am on Tuesday, said Kaliganj Police Station chief Abdur Rahim Molla.\r\n\r\nThe dead were identified as Sabdar Ali, 55 and his wife Parveena Khatun, 45 from Bishoykhali village in Jhenaidah Sadar Upazila.\r\n\r\n\r\nSabdar and his family started on a battery-operated rickshaw van for Jashore to take their sick daughter Sathi Khatun to a doctor.\r\n\r\n“A fish-laden pickup truck hit the rickshaw van from behind near the Mobarakganj Sugar Mill. Parveena Khatun died on the spot, while the van driver and other passengers fell off the van and were injured,” the OC said.\r\n\r\nThe Fire Service and Civil Defence staff rescued Sabdar Ali, Sathi Khatun, Sabdar’s grandson and van driver Karim, and admitted them to the Kaliganj Upazila Health Complex.'),
(9, 'Lionel Messi surpasses 100-goal mark', 'Lionel Messi surpassed 100 career goals for Argentina with a hattrick in the first half of the World Cup champions\' 7-0 rout over Curacao Tuesday. \r\n\r\nThe 35-year-old Messi opened the scoring in the international friendly against the Caribbean team in the 20th minute with a right-foot shot from the edge of the box to reach the milestone 100.\r\n\r\nHe added his 101st for Argentina with a crossed shot to the right of the goalkeeper courtesy of Nico Gonzalez and 102nd after an easy run to score. ');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `postID` int(100) NOT NULL,
  `comment` text NOT NULL,
  `user` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `postID`, `comment`, `user`) VALUES
(33, 4, 'best of luck', 'user'),
(34, 4, 'best of luck', 'Shethil'),
(35, 6, 'ok', 'user'),
(36, 5, 'sad', 'Sakib');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(1, 'Shethil', 'Shethil'),
(2, 'Saf', '12345'),
(3, 'Sakib', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
