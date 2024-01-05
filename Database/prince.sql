-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2020 at 07:33 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prince`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Keyboard'),
(1, 'Mouse'),
(2, 'Monitor'),
(3, 'Motherboard'),
(4, 'Processor'),
(5, 'Headset'),
(6, 'Laptop'),
(7, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(1, 'Sai prakash', 'V', '09394566543'),
(2, 'Naveen', 'S', '9874563215'),
(3, 'Sreedhar', 'G', '09781633451'),
(4, 'Vinith', 'Reddy', '09956288467'),
(5, 'Vanusha', 'Pearl', '09891344576');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'admin', 'panel', 'Male', 'admin@gmail.com', '9124033805', 1, '2020-08-10', 113),
(2, 'navya', 'B R', 'Female', 'navya@gmail.com', '9091245761', 2, '2020-09-20', 156),
(3, 'vaishnavi', 'G', 'Female', 'vaishu@gmail.com', '09123357105', 1, '2020-09-23', 158);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'India', 'Delhi'),
(112, 'Maharastra', 'Mumbai'),
(113, 'Karnataka', 'Bangalore'),
(114, 'Tamilnadu', 'Chennai'),
(115, 'Maharastra', 'Mumbai'),
(116, 'Karnataka', 'Bangalore'),
(126, 'Karnataka', 'Bangalore'),
(130, 'Telangana', 'Hyderabad'),
(131, 'Telangana', 'Hyderabad'),
(132, 'Tamilnadu', 'Chennai'),
(133, 'Tamilnadu', 'Chennai'),
(134, 'Tamilnadu', 'Chennai'),
(135, 'Maharastra', 'Mumbai'),
(136, 'Maharastra', 'Mumbai'),
(137, 'Karnataka', 'Bangalore'),
(138, 'Karnataka', 'Bangalore'),
(139, 'Maharastra', 'Mumbai'),
(140, 'Telangana', 'Hyderabad'),
(141, 'Maharastra', 'Mumbai'),
(142, 'Tamilnadu', 'Chennai'),
(143, 'Karnataka', 'Bangalore'),
(144, 'Karnataka', 'Bangalore'),
(145, 'Karnataka', 'Bangalore'),
(146, 'Maharastra', 'Mumbai'),
(147, 'Maharastra', 'Mumbai'),
(148, 'Karnataka', 'Bangalore'),
(149, 'Karnataka', 'Bangalore'),
(150, 'Karnataka', 'Bangalore'),
(151, 'Karnataka', 'Bangalore'),
(152, 'Tamilnadu', 'Chennai'),
(153, 'Tamilnadu', 'Chennai'),
(154, 'Tamilnadu', 'Chennai'),
(155, 'Karnataka', 'Bangalore'),
(156, 'Karnataka', 'Bangalore'),
(157, 'Karnataka', 'Bangalore'),
(158, 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Prasad', 'Kumar', 113, 'PK@gmail.com', '09124033805'),
('Balasubramaniyam', 'AV', 116, 'AV@gmail.com', '09123346576'),
('Natesh', 'gowda', 115, 'natesh@gmail.com','0987456315'),
('Kumar', 'S', 111, 'kumar@gmail.com', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(1, '20201001', 'Lenovo ideapad  ', 'Windows 10', 1, 1, 32999, 6, 15, '2020-11-02'),
(2, '20201006', 'Gigabyte B250,ATX',  'Motherboard',5,5,4500,3,14, '2020-11-14'),
(3, '20201003', 'Predator Helios 300 Gaming Laptop', 'Windows 10 Home\r\nIntelÂ® Coreâ„¢ i7-8750H processor Hexa-core 2.20 GHz\r\n15.6\" Full HD (1920 x 1080) ', 1, 1, 77850, 6, 15, '2020-11-02'),
(4, '20201002', 'Logitech K340', 'Keyboard', 1, 1, 550, 0, 11, '2020-11-03'),
(5, '20201002', 'Logitech K340', 'Keyboard', 1, 1, 550, 0, 11, '2020-11-03'),
(6, '20201002', 'Logitech K340', 'Keyboard', 1, 1, 550, 0, 11, '2020-11-04'),
(8, '20201002', 'Logitech K340', 'Keyboard', 1, 1, 550, 0, 11, '2020-11-05'),
(9, '20201002', 'Logitech K340', 'Keyboard', 1, 1, 550, 0, 11, '2020-11-05'),
(10, '20201004', 'FPX', 'Wireless Trip Flex Bluetooth Headset',  1, 1, 859, 5, 13, '2020-11-08'),
(11, '20201004', 'FPX', 'Wireless Trip Flex Bluetooth Headset', 1, 1, 859, 5, 13, '2020-11-08'),
(12, '20201004', 'FPX', 'Wireless Trip Flex Bluetooth Headset', 1, 1, 859, 5, 13, '2020-11-08'),
(13, '20201004', 'FPX', 'Wireless Trip Flex Bluetooth Headset', 1, 1, 859, 5, 13, '2020-11-18'),
(14, '20201002', 'Logitech K340', 'keyboard', 1, 1, 550, 0, 14, '2020-11-09'),
(15, '20201002', 'Logitech K340', 'keyboard', 1, 1, 550, 0, 14, '2020-11-09'),
(16, '20201002', 'Dell PowerEdgeT30', 'Processor', 1, 1, 80000, 4, 15, '2020-11-10'),
(17, '20201002', 'Dell PowerEdgeT30', 'Processor', 1, 1, 80000, 4, 15, '2020-11-12'),
(18, '20201007', 'Acer LED', 'Monitor', 1, 1, 4000, 2, 14, '2020-11-13'),
(19, '20201007', 'Acer LED', 'Monitor', 1, 1, 4000, 2, 14, '2020-11-13'),
(20, '20201007', 'Acer LED', 'Monitor', 1, 1, 550, 2, 16, '2020-11-06'),
(21, '20201007', 'Acer LED', 'Monitor', 1, 1, 550, 2, 16, '2020-11-06'),
(22, '20201001', 'Lenovo ideapad', 'Windows 10', 1, 1, 32999, 6, 12, '2020-11-11'),
(23, '20201001', 'Lenovo ideapad', 'Windows 10', 1, 1, 32999, 6, 12, '2020-11-11'),
(24, '20201001', 'Lenovo ideapad', 'Windows 10', 1, 1, 32999, 6, 12, '2020-11-11'),
(25, '20201001', 'Lenovo ideapad', 'Windows 10', 1, 1, 32999, 6, 12, '2020-11-11'),
(26, '20201001', 'Lenovo ideapad', 'Windows 10', 1, 1, 32999, 6, 12, '2020-11-11'),
(27, '20201005', 'Wireless H-454', 'normal mouse', 5,5, 280, 1, 16, '2020-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(11, 'Samsen Technologies', 114, '09457488521'),
(12, 'Laptops Garage', 115, '09635877412'),
(13, 'ISH KUMAR AND CO LLP', 111, '09587855685'),
(14, 'Kalpendra Computer', 115, '09854763215'),
(15, 'Eshine Technology', 116, '09124033805'),
(16, 'Asera Enterprises', 155, '09775673257');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`) VALUES
(3, 5, '3', '456,928.00', '48,962.36', '407,965.64', '48,962.36', '456,928.00', '500000', '2020-12-02', '0318160336'),
(4, 2, '2', '1,940.00', '210.75', '1,729.25', '210.75', '1,850.00', '2000', '2020-12-02', '0318160622'),
(5, 3, '1', '550.00', '58.93', '491.07', '58.93', '550.00', '550', '2020-12-02', '0318170309'),
(6, 4, '1', '77,850.00', '8,341.07', '69,508.93', '8,341.07', '77,850.00', '80000', '2020-12-02', '0318170352'),
(7, 5, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2020-12-05', '0318170511'),
(8, 5, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2020-12-06', '0318170524'),
(9, 3, '1', '1,718.00', '184.07', '1,533.93', '184.07', '1,718.00', '2000', '2020-12-06', '0318170551'),
(10, 2, '1', '280.00', '30.96', '249.04', '30.96', '280.00', '300', '2020-12-07', '0318170624'),
(11, 1, '2', '1,139.00', '123.00', '1,016.00', '123.00', '1,139.00', '2000', '2020-12-10', '0318170825'),
(12, 1, '1', '5,500.00', '589.29', '4,910.71', '589.29', '5,500.00', '6000', '2020-12-15', '0318194016');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Lenovo ideapad ', '2', '32999', 'admin', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 'Prasad', 'Manager'),
(9, '0318160336', 'Wireless H-454', '6', '280', 'Prasad', 'Manager'),
(10, '0318160622', 'Logitech K340', '2', '550', 'Prasad', 'Manager'),
(11, '0318160622', 'Wireless H-454', '3', '280', 'Prasad', 'Manager'),
(12, '0318170309', 'Logitech K340', '1', '550', 'Prasad', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 'Prasad', 'Manager'),
(14, '0318170511', 'FPX', '2', '859', 'Prasad', 'Manager'),
(15, '0318170524', 'FPX', '2', '859', 'Prasad', 'Manager'),
(16, '0318170551', 'FPX', '2', '859', 'Prasad', 'Manager'),
(17, '0318170624', 'Wireless H-454', '1', '280', 'Prasad', 'Manager'),
(18, '0318170825', 'Wireless H-454', '1', '280', 'Prasad', 'Manager'),
(19, '0318170825', 'FPX', '1', '859', 'Prasad', 'Manager'),
(20, '0318194016', 'Logitech K340', '10', '550', 'Krishna', 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(7, 2, 'navya', '0abd0df55eb02d47bf2d3e301d3310c4d084e10b', 2),
(9, 3, 'vaishnavi', '8cb2237d0679ca88db6464eac60da96345513964', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
