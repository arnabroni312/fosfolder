-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 09:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin user', 'admin', 7894561238, 'test@gmail.com', 'd121b51b6cb53b5ee16798f535bd57c0', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2019-04-05 10:36:01'),
(4, 'Thai', '2019-04-05 10:36:25'),
(5, 'South Indian', '2019-04-05 10:36:35'),
(6, 'North Indian', '2019-04-05 10:36:47'),
(7, 'Desserts', '2019-04-05 10:43:13'),
(8, 'Starters', '2019-04-05 10:43:45'),
(9, 'Chinease', '2019-04-24 05:43:08'),
(10, 'Test Food ', '2019-05-06 16:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbldeli`
--

CREATE TABLE `tbldeli` (
  `ID` int(15) NOT NULL,
  `NAME` varchar(150) DEFAULT NULL,
  `ADDRESS` varchar(150) DEFAULT NULL,
  `PHONE` varchar(150) DEFAULT NULL,
  `user_id` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldeli`
--

INSERT INTO `tbldeli` (`ID`, `NAME`, `ADDRESS`, `PHONE`, `user_id`, `password`) VALUES
(1, 'ARNAB ROY', 'KUDGHAT                       ', '9874991140', NULL, NULL),
(2, 'DEBASISH KANTAL', 'BEHALA  ', '7603055280', 'roni_1234', '1234'),
(3, 'RATAN MRIDHA', '              GUTIARY SHARIF                                      ', '9748552434', 'rat_1990', '1990'),
(4, 'SANTU PATHAK', 'THAKURPUKUR                                                    ', '7603055181', NULL, NULL),
(5, 'roni roy', 'sahapara                                                    ', '704411328', 'royroni@56', 'Roni@1234'),
(6, 'roni', '    iyuouo                                                ', '1236547', 'duserid', 'dpassw'),
(7, 'ronu', '                          kiougugo                          ', '1233', 'duserid', 'dpassw'),
(8, 'roni', 'sahapara                                                    ', '7603055280', 'roni_1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL,
  `quanti` int(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`, `quanti`) VALUES
(1, 'Italian', 'Corn Pizza', '180', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Medium', NULL),
(2, 'Italian', 'Corn Pizza', '120', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Regular', NULL),
(3, 'Italian', 'Corn Pizza', '220', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Large', NULL),
(4, 'Italian', 'Veg Extravaganza Pizza', '450', 'Veg ExtravaganzaA pizza that decidedly staggers', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium', NULL),
(5, 'Italian', 'Veg Extravaganza Pizza', '440', 'Veg ExtravaganzaA pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions', '9ed5c4756f56317810d7e364ca7f1634.jpg', 'Large', NULL),
(6, 'North Indian', 'Chana Masala', '120', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full', NULL),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '63d50ef58f33ec97cf928c05deb8ccd3.jpg', 'Full', NULL),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'd984b4a23552203107391bc98dd0e4dc.jpg', 'Regular', NULL),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '0cbe727a2529cc6cd8dcbd40ee53fe2c.jpg', '2 pcs', NULL),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '2 pcs', NULL),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'da41d10bb09c6cfac8168435164ff0b3.jpg', '2 pcs', NULL),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces', NULL),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces', NULL),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces', NULL),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full', NULL),
(16, 'Chinese', 'Veg Chowmin', '120', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full', NULL),
(17, 'South Indian', 'dsgvsfds', '2323', '                   51151515115                                 ', 'bf17934885c638c1c32d491cc6dbaad6.png', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '783218118', 'Restaurant Closed.', 'Order Cancelled', '2019-05-05 16:07:35', NULL),
(6, '448858080', 'I want  to cancel this order', 'Order Cancelled', '2019-05-05 17:33:42', 1),
(7, '270156472', 'Order confiremed', 'Order Confirmed', '2019-05-06 16:30:38', NULL),
(8, '270156472', 'Food is preparing.', 'Food being Prepared', '2019-05-06 16:31:08', NULL),
(9, '270156472', 'Food on the way', 'Food Pickup', '2019-05-06 16:31:42', NULL),
(10, '270156472', 'Food is delivired', 'Food Delivered', '2019-05-06 16:35:27', NULL),
(11, '201712648', 'order Cancelled', 'Order Cancelled', '2019-05-06 16:41:55', NULL),
(12, '922310021', 'done', 'Order Confirmed', '2020-04-12 16:21:41', NULL),
(13, '922310021', 'fyfyyfiulll', 'Food Pickup', '2020-04-12 16:22:03', NULL),
(14, '922310021', 'knippninip', 'Food being Prepared', '2020-04-12 16:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblodrdeli`
--

CREATE TABLE `tblodrdeli` (
  `id` int(150) NOT NULL,
  `deli_id` int(150) DEFAULT NULL,
  `ode_id` int(150) DEFAULT NULL,
  `deliv_status` varchar(150) DEFAULT NULL,
  `ode_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblodrdeli`
--

INSERT INTO `tblodrdeli` (`id`, `deli_id`, `ode_id`, `deliv_status`, `ode_time`) VALUES
(1, 5, 170244505, 'COMPLETED', '2020-04-15 18:59:24'),
(2, 3, 270156472, 'COMPLETED', '2020-04-15 18:59:24'),
(3, 1, 448858080, 'COMPLETED', '2020-04-15 18:59:24'),
(7, 3, 170244505, 'COMPLETED', '2020-04-15 18:59:24'),
(8, 3, 270156472, 'COMPLETED', '2020-04-15 18:59:24'),
(9, 3, 270156472, 'COMPLETED', '2020-04-15 18:59:24'),
(10, 3, 646143938, 'COMPLETED', '2020-04-15 18:59:24'),
(11, 3, 646143938, 'COMPLETED', '2020-04-15 18:59:24'),
(12, 3, 170244505, 'COMPLETED', '2020-04-15 18:59:24'),
(13, 3, 993209949, 'COMPLETED', '2020-04-15 18:59:24'),
(14, 3, 922310021, 'COMPLETED', '2020-04-15 18:59:24'),
(15, 5, 922310021, 'COMPLETED', '2020-04-15 18:59:24'),
(16, 1, 904284260, NULL, '2020-04-15 18:59:24'),
(17, 5, 665546494, NULL, '2020-04-15 19:00:12'),
(18, 3, 464814463, NULL, '2020-04-15 19:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL,
  `pincodes` int(150) DEFAULT NULL,
  `latit` float DEFAULT NULL,
  `longit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`, `pincodes`, `latit`, `longit`) VALUES
(1, '1', '783218118', 'Hno 546', 'Gali No10', 'New Delhi', 'NA', 'Delhi', '2019-05-05 16:03:28', 'Order Cancelled', NULL, NULL, NULL),
(2, '1', '448858080', 'Flat 12A', 'ABC', 'XYZ', 'ABCDEF', 'New Delhi', '2019-05-05 17:01:58', 'Order Cancelled', NULL, NULL, NULL),
(3, '2', '201712648', 'A-10', 'HK pg house', 'Mayur Vihar', 'Near Reliance Fresh', 'New Delhi', '2019-05-06 06:27:28', 'Order Cancelled', NULL, NULL, NULL),
(4, '5', '270156472', 'Flat no 123', 'ABC Street', 'XYZ Area', 'NA', 'New Delhi', '2019-05-06 16:28:18', 'Food Delivered', NULL, NULL, NULL),
(5, '6', '170244505', '45', 'jhhfjjjk', '626', 'jbljjbl', 'jbkjjbkjbl', '2020-04-07 08:01:24', NULL, NULL, NULL, NULL),
(6, '6', '771269800', '45', '96,school road,purba putiary,kolkata-700093', 'ddtuut', 'west bengal', 'kolkata', '2020-04-11 15:12:37', NULL, NULL, NULL, NULL),
(7, '6', '464814463', '45', '96,school road,purba putiary,kolkata-700093', '626', 'west bengal', 'kolkata', '2020-04-11 15:12:50', NULL, NULL, NULL, NULL),
(8, '6', '217838635', '45', '96,school road,purba putiary,kolkata-700093', '626', 'west bengal', 'kolkata', '2020-04-11 15:35:16', NULL, NULL, NULL, NULL),
(9, '6', '324513651', '45', '96,school road,purba putiary,kolkata-700093', '5561', 'west bengal', 'kolkata', '2020-04-11 15:40:00', NULL, NULL, NULL, NULL),
(10, '6', '624880374', '45', '96,school road,purba putiary,kolkata-700093', 'frfdh', 'west bengal', 'kolkata', '2020-04-11 15:58:37', NULL, NULL, NULL, NULL),
(11, '6', '904284260', 'gxf', 'gdz', 'gzd', 'gdz', 'gzd', '2020-04-11 15:59:24', NULL, NULL, NULL, NULL),
(12, '6', '665546494', '45', '96,school road,purba putiary,kolkata-700093', 'jo', 'west bengal', 'kolkata', '2020-04-11 16:14:25', NULL, 700093, NULL, NULL),
(13, '6', '947891866', '55666', '96,school road,purba putiary,kolkata-700093', '626', 'west bengal', 'kolkata', '2020-04-11 16:15:09', NULL, 700093, NULL, NULL),
(14, '6', '993209949', '45', '96,school road,purba putiary,kolkata-700093', 'frfdh', 'west bengal', 'kolkata', '2020-04-11 16:17:15', NULL, 700093, NULL, NULL),
(15, '6', '646143938', '45', '96,school road,purba putiary,kolkata-700093', 'gzd', 'west bengal', 'kolkata', '2020-04-11 16:17:44', NULL, 700093, NULL, NULL),
(16, '3', '922310021', '6', '96,school road,purba putiary,kolkata-700093', 'ddtuut', 'west bengal', 'kolkata', '2020-04-12 11:04:52', 'Food being Prepared', NULL, NULL, NULL),
(17, '7', '994275664', '6', 'school road', 'purba putiary', 'west bengal', 'kolkata', '2020-04-27 14:13:21', NULL, NULL, NULL, NULL),
(18, '7', '373119418', '96', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 14:21:15', NULL, 700093, NULL, NULL),
(19, '7', '437889352', '96', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 14:36:03', NULL, 700093, 0, 0),
(20, '7', '100246344', '96', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 14:37:59', NULL, 700093, 22, 88),
(21, '7', '108191577', '96', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 14:55:37', NULL, 700093, 22, 88),
(22, '7', '126662428', '45', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 14:59:52', NULL, 700093, 22, 88),
(23, '7', '422874378', '96', 'school road', 'purba putiary', 'pragati sangha', 'kolkata', '2020-04-27 15:12:53', NULL, 700093, 22.4749, 88.3456);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `Quantity` int(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`, `Quantity`) VALUES
(1, '1', '8', 1, '783218118', NULL),
(2, '1', '4', 1, '783218118', NULL),
(3, '1', '1', 1, '448858080', NULL),
(4, '1', '5', 1, '448858080', NULL),
(5, '2', '4', 1, '201712648', NULL),
(6, '2', '8', NULL, NULL, NULL),
(7, '5', '6', 1, '270156472', NULL),
(8, '5', '13', 1, '270156472', NULL),
(9, '6', '1', 1, '170244505', NULL),
(10, '6', '2', 1, '170244505', NULL),
(11, '6', '1', 1, '170244505', NULL),
(12, '6', '1', 1, '170244505', NULL),
(13, '6', '8', 1, '170244505', NULL),
(14, '6', '9', 1, '170244505', NULL),
(15, '6', '8', 1, '170244505', NULL),
(16, '6', '8', 1, '170244505', NULL),
(17, '6', '10', 1, '170244505', NULL),
(18, '3', '2', 1, '922310021', NULL),
(19, '3', '8', 1, '922310021', NULL),
(20, '3', '8', 1, '922310021', NULL),
(21, '3', '8', 1, '922310021', NULL),
(22, '3', '8', 1, '922310021', NULL),
(23, '3', '8', 1, '922310021', NULL),
(24, '6', '8', 1, '771269800', NULL),
(25, '6', '8', 1, '771269800', NULL),
(26, '6', '8', 1, '771269800', NULL),
(27, '6', '9', 1, '771269800', NULL),
(28, '6', '8', 1, '771269800', NULL),
(29, '6', '9', 1, '771269800', NULL),
(30, '6', '10', 1, '771269800', NULL),
(31, NULL, NULL, NULL, NULL, 2),
(32, NULL, NULL, NULL, NULL, 3),
(33, NULL, NULL, NULL, NULL, 4),
(34, NULL, NULL, NULL, NULL, 5),
(35, NULL, NULL, NULL, NULL, 2),
(36, NULL, NULL, NULL, NULL, 3),
(37, NULL, NULL, NULL, NULL, 4),
(38, NULL, NULL, NULL, NULL, 5),
(39, '6', '8', 1, '771269800', NULL),
(40, NULL, NULL, NULL, NULL, 2),
(41, NULL, NULL, NULL, NULL, 3),
(42, NULL, NULL, NULL, NULL, 4),
(43, NULL, NULL, NULL, NULL, 5),
(44, NULL, NULL, NULL, NULL, 2),
(45, NULL, NULL, NULL, NULL, 3),
(46, NULL, NULL, NULL, NULL, 4),
(47, NULL, NULL, NULL, NULL, 5),
(48, '6', '9', 1, '771269800', NULL),
(49, NULL, NULL, NULL, NULL, 2),
(50, NULL, NULL, NULL, NULL, 3),
(51, NULL, NULL, NULL, NULL, 4),
(52, NULL, NULL, NULL, NULL, 5),
(53, NULL, NULL, NULL, NULL, 2),
(54, NULL, NULL, NULL, NULL, 3),
(55, NULL, NULL, NULL, NULL, 4),
(56, NULL, NULL, NULL, NULL, 5),
(57, '6', '10', 1, '771269800', NULL),
(58, NULL, NULL, NULL, NULL, 2),
(59, NULL, NULL, NULL, NULL, 3),
(60, NULL, NULL, NULL, NULL, 4),
(61, NULL, NULL, NULL, NULL, 5),
(62, NULL, NULL, NULL, NULL, 2),
(63, NULL, NULL, NULL, NULL, 3),
(64, NULL, NULL, NULL, NULL, 4),
(65, NULL, NULL, NULL, NULL, 5),
(66, '6', '8', 1, '771269800', NULL),
(67, NULL, NULL, NULL, NULL, 2),
(68, NULL, NULL, NULL, NULL, 3),
(69, NULL, NULL, NULL, NULL, 4),
(70, NULL, NULL, NULL, NULL, 5),
(71, NULL, NULL, NULL, NULL, 2),
(72, NULL, NULL, NULL, NULL, 3),
(73, NULL, NULL, NULL, NULL, 4),
(74, NULL, NULL, NULL, NULL, 5),
(75, '6', '8', 1, '771269800', NULL),
(76, NULL, NULL, NULL, NULL, 2),
(77, NULL, NULL, NULL, NULL, 3),
(78, NULL, NULL, NULL, NULL, 4),
(79, NULL, NULL, NULL, NULL, 5),
(80, NULL, NULL, NULL, NULL, 2),
(81, NULL, NULL, NULL, NULL, 3),
(82, NULL, NULL, NULL, NULL, 4),
(83, NULL, NULL, NULL, NULL, 5),
(84, '6', '8', 1, '771269800', NULL),
(85, '6', '', 1, '771269800', NULL),
(86, '6', '', 1, '771269800', NULL),
(87, '6', '', 1, '771269800', NULL),
(88, '6', '', 1, '771269800', NULL),
(89, '6', '', 1, '771269800', NULL),
(90, '6', '', 1, '771269800', NULL),
(91, '6', '1', 1, '217838635', NULL),
(92, '6', '2', 1, '217838635', NULL),
(93, '6', '4', 1, '904284260', NULL),
(94, '6', '2', 1, '904284260', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Pankaj', 'Shahu', 'testuser@gmail.com', 7894561236, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:41:22'),
(2, 'Rakesh', 'Chandra', 'rakesh@gmail.com', 7656234589, '202cb962ac59075b964b07152d234b70', '2019-04-08 07:43:28'),
(3, 'Yogesh', 'Chandra', 'y@gmail.com', 8989898989, '202cb962ac59075b964b07152d234b70', '2019-04-24 07:04:02'),
(4, 'Yogesh', 'Shah', 'Test1@gmail.com', 8975895698, '202cb962ac59075b964b07152d234b70', '2019-05-06 09:09:05'),
(5, 'Test demo', 'User', 'testuser123@gmail.com', 1234567890, '7ec66345281b134a33f784bcd06d7ea5', '2019-05-06 16:26:40'),
(6, 'ARNAB', 'ROY', 'arnabroni312@gmail.com', 9874991140, 'd5c186983b52c4551ee00f72316c6eaa', '2020-04-03 10:02:35'),
(7, 'PARTHA', 'BAIDYA', 'roni@fw.com', 7603055280, '81dc9bdb52d04dc20036dbd8313ed055', '2020-04-27 08:29:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldeli`
--
ALTER TABLE `tbldeli`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblodrdeli`
--
ALTER TABLE `tblodrdeli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deli_id` (`deli_id`,`ode_id`) USING BTREE;

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbldeli`
--
ALTER TABLE `tbldeli`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblodrdeli`
--
ALTER TABLE `tblodrdeli`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
