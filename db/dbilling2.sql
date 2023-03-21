-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2023 at 11:42 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbilling2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(9) DEFAULT NULL,
  `city` varchar(11) DEFAULT NULL,
  `address` varchar(9) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` mediumint(9) DEFAULT NULL,
  `type` varchar(9) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created` varchar(10) DEFAULT NULL,
  `lasltlogin` varchar(10) DEFAULT NULL,
  `attempts` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `city`, `address`, `phone`, `email`, `username`, `password`, `type`, `status`, `created`, `lasltlogin`, `attempts`) VALUES
(1, 'admin', 'rajahmundry', 'main road', '7416280997', 'admin@gmail.com', 'admin', 1, 'admin', 1, '2018-04-09', '2018-04-09', 0),
(3, 'Retail', NULL, NULL, NULL, NULL, 'retail', 1, 'moderator', 1, '2023-01-28', NULL, 0),
(4, 'Wholesale', NULL, NULL, NULL, NULL, 'wholesale', 1, 'moderator', 1, '2023-01-28', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`) VALUES
(58, 'OPPO', 1),
(59, 'SAMSUNG', 1),
(60, 'VIVO', 1),
(61, 'Rice', 1),
(62, 'testing category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` tinyint(4) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `credit` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `mobile`, `credit`) VALUES
(1, '7660832211', 0),
(2, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `mobile` text,
  `name` text,
  `address` text,
  `gst` text,
  `state` text NOT NULL,
  `pincode` text NOT NULL,
  `city` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `mobile`, `name`, `address`, `gst`, `state`, `pincode`, `city`) VALUES
(15, '7416280997', 'Venkata Avinash', 'kk road', 'gst1231', 'Ap', '599875', 'KKd'),
(16, '6300034255', 'Surya Raju', 'Anaparthi', '', 'Andhra Pradesh', '532104', 'Anaparthi'),
(17, '6300034252', 'Vulli Sai Pradeep', 'Gadala', 'HFDAI384738', 'Andhra Pradesh', '533102', 'Rajahmundry');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` varchar(0) DEFAULT NULL,
  `drivername` varchar(0) DEFAULT NULL,
  `driverno` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invoicehead`
--

CREATE TABLE `invoicehead` (
  `id` tinyint(4) DEFAULT NULL,
  `invoicehead` text,
  `invoicefoot` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicehead`
--

INSERT INTO `invoicehead` (`id`, `invoicehead`, `invoicefoot`) VALUES
(1, 's:3621:\"<table align=\"left\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"width:33%\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\n			<td style=\"text-align:center; width:33%\"><strong><span style=\"font-size:20px\">TAX INVOICE</span></strong></td>\n			<td style=\"text-align:right; width:33%\">(DUPLICATE FOR TRANSPORTER)</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<table align=\"left\" border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"text-align:left; width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"vertical-align:top\"><strong>SAI RAM ENTERPRISES</strong><br />\n			S.No: 495/4A &amp; 495/5A<br />\n			PLOT NO 1B, GOLLAPUDI<br />\n			VIJAYAWADA-AP<br />\n			GSTIN/UIN: 37ACIFS6230L1ZQ<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</td>\n			<td colspan=\"1\" rowspan=\"3\" style=\"vertical-align:top\">\n			<table border=\"1\" cellpadding=\"5\" cellspacing=\"0\" style=\"width:100%\">\n				<tbody>\n					<tr>\n						<td style=\"vertical-align:top\">\n						<table border=\"0\" cellpadding=\"1\" style=\"width:100%\">\n							<tbody>\n								<tr>\n									<td style=\"vertical-align:top\">Invoice No.\n									<div id=\"invoiceNumber\">3251</div>\n									</td>\n									<td style=\"text-align:right; vertical-align:top\">e-Way Bill No.\n									<div id=\"invoiceewaybillNumber\">161576148090</div>\n									</td>\n								</tr>\n							</tbody>\n						</table>\n\n						<p>&nbsp;</p>\n						</td>\n						<td style=\"vertical-align:top\">Dated\n						<div id=\"billDateIs\">28-Dec-22</div>\n						</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Delivery Note</td>\n						<td style=\"vertical-align:top\">Mode/Terms of Payment</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Reference No. &amp; Date.</td>\n						<td style=\"vertical-align:top\">Other References</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Buyer&#39;s Order No.</td>\n						<td style=\"vertical-align:top\">Dated</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Dispatch Doc No.<br />\n						<strong>3251</strong></td>\n						<td style=\"vertical-align:top\">Delivery Note Date</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Dispatched through<br />\n						BY ROAD</td>\n						<td style=\"vertical-align:top\">Destination<br />\n						RAJAHMUNDRY</td>\n					</tr>\n					<tr>\n						<td style=\"vertical-align:top\">Bill of Lading/LR-RR No.</td>\n						<td style=\"vertical-align:top\">Motor Vehicle No.<br />\n						AP39TV4779</td>\n					</tr>\n					<tr>\n						<td colspan=\"2\" style=\"vertical-align:top\">Terms of Delivery</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"vertical-align:top\">Consignee (Ship to)<br />\n			<strong>JVK ENTERPRISES</strong>\n			<div id=\"consigneeAddress\">SVG Market D No 14-302/5<br />\n			RS NO 310 Morampudi Road<br />\n			37BDGPJ5829J1Z6<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</div>\n			</td>\n		</tr>\n		<tr>\n			<td style=\"vertical-align:top\">Buyer (Bill to)<br />\n			<strong>JVK ENTERPRISES</strong>\n			<div id=\"consigneeAddress\">SVG Market D No 14-302/5<br />\n			RS NO 310 Morampudi Road</div>\n			&nbsp; Rajahmundry GSTIN/UIN : 37BDGPJ5829J1Z6<br />\n			State Name: Andhra Pradesh, Code: <strong>37</strong><br />\n			&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:center\">D.No.34-6-5/1 NEAR BHARATHA BOMMALU, MANGALAVARAUPETA&nbsp; RAJAMAHENDRAVARAM, E.G.Dist., Andhra Pradesh - State Code 37</p>\n\";', 's:1585:\"<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"vertical-align:top\"><span style=\"font-size:12px\"><strong>Terms &amp; Conditions:</strong><br />\n			1.&nbsp;Transport Damages are not our responsibility.<br />\n			2.&nbsp;Goods once sold Cannot be taken back or Exchanged.<br />\n			3.&nbsp;All the disputes are subject to Rajamahendravaram Jurisdiction only.<br />\n			4.&nbsp;We are not collecting any GST Taxes.</span></td>\n			<td style=\"vertical-align:top\">\n			<p><span style=\"font-size:12px\">Bank Details: STATE BANK OF INDIA<br />\n			Thadi Thota Branch, Rajamahendravaram - 533104<br />\n			Bank Account No. 6666666666<br />\n			IFSC: SBIN0004609</span></p>\n\n			<p style=\"text-align:right\"><span style=\"font-size:12px\"><strong>Receiver&#39;s Signature&nbsp;</strong></span></p>\n			</td>\n			<td style=\"vertical-align:top\">\n			<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%\">\n				<tbody>\n					<tr>\n						<td colspan=\"2\" style=\"text-align:center\"><span style=\"font-size:12px\">Certified that the particulars given above are true and correct</span></td>\n					</tr>\n					<tr>\n						<td style=\"text-align:center\"><span style=\"font-size:12px\">(Common Seal)</span></td>\n						<td>\n						<p style=\"text-align:center\"><span style=\"font-size:12px\"><strong>For RR Mobiles</strong></span></p>\n\n						<p>&nbsp;</p>\n\n						<p style=\"text-align:center\"><span style=\"font-size:12px\">Authorised Signatory</span></p>\n						</td>\n					</tr>\n				</tbody>\n			</table>\n\n			<p>&nbsp;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\";');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer` text,
  `customerid` text NOT NULL,
  `mobile` text,
  `state` text NOT NULL,
  `city` text NOT NULL,
  `address` text NOT NULL,
  `pin` text NOT NULL,
  `gst` text NOT NULL,
  `dispatchThrough` text NOT NULL,
  `vehicle` text NOT NULL,
  `transaction` text NOT NULL,
  `openingBalance` text NOT NULL,
  `info` text,
  `total` text,
  `qty` text,
  `finaltotal` text,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `login` text NOT NULL,
  `fullPayment` text NOT NULL,
  `partialPayment` text NOT NULL,
  `refId` int(11) NOT NULL,
  `clearanceStatus` int(11) NOT NULL,
  `returnStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer`, `customerid`, `mobile`, `state`, `city`, `address`, `pin`, `gst`, `dispatchThrough`, `vehicle`, `transaction`, `openingBalance`, `info`, `total`, `qty`, `finaltotal`, `date`, `status`, `login`, `fullPayment`, `partialPayment`, `refId`, `clearanceStatus`, `returnStatus`) VALUES
(147, 'Venkata Avinash', '', '7416280997', 'Ap', 'KKd', 'kk road', '599875', 'gst1231', 'By Road', '', 'In', '0', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:4:\"1000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '1', '1000', '2023-02-27', 1, 'admin', 'Full', '', 0, 0, 0),
(148, 'Venkata Avinash', '', '7416280997', 'Ap', 'KKd', 'kk road', '599875', 'gst1231', 'By Road', '', 'In', '1000', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"5000.00\";i:6;s:7:\"5000.00\";i:7;N;i:8;s:7:\"5000.00\";i:9;s:4:\"5000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '5000', '1', '5000', '2023-02-27', 1, 'admin', 'Full', '', 0, 0, 0),
(149, 'Venkata Avinash', '', '7416280997', 'Ap', 'KKd', 'kk road', '599875', 'gst1231', 'By Road', '', 'In', '6000', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"2000.00\";i:6;s:7:\"2000.00\";i:7;N;i:8;s:7:\"2000.00\";i:9;s:4:\"2000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '2000', '1', '2000', '2023-02-27', 1, 'admin', 'Partial', '1000', 0, 1, 0),
(156, NULL, '', NULL, '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '1000', '2023-02-27', 1, 'admin', '', '500', 149, 0, 0),
(157, NULL, '', NULL, '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '1500', '2023-02-27', 1, 'admin', '', '100', 149, 0, 0),
(158, NULL, '', NULL, '', '', '', '', '', '', '', 'In', '', NULL, NULL, NULL, '1600', '2023-02-27', 1, 'admin', '', '400', 149, 0, 0),
(160, 'Venkata Avinash', '', '7416280997', 'Ap', 'KKd', 'kk road', '599875', 'gst1231', 'By Road', '', 'In', '8000', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:4:\"1000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '1', '1000', '2023-02-27', 1, 'admin', 'Partial', '500', 0, 0, 0),
(161, 'Avinash', '', '07416280997', 'AndhraÂ Pradesh', 'Rajahmundry', 'quarry market kk road', '533101', '', 'By Road', 'asdf', 'In', '8500', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:17:\"1000 ML CONTAINER\";i:3;s:3:\"124\";i:4;s:1:\"1\";i:5;s:6:\"500.00\";i:6;s:6:\"500.00\";i:7;N;i:8;s:6:\"500.00\";i:9;s:3:\"500\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '500', '1', '500', '2023-03-01', 1, 'admin', 'Full', '', 0, 0, 0),
(167, 'Venkata Avinash', '15', '7416280997', 'Ap', 'KKd', 'kk road', '599875', 'gst1231', 'By Road', '', 'In', '9000', 'a:2:{i:0;N;i:1;a:12:{i:0;i:0;i:1;i:0;i:2;s:13:\"4.4 CARA BOWL\";i:3;s:3:\"114\";i:4;s:1:\"1\";i:5;s:7:\"1000.00\";i:6;s:7:\"1000.00\";i:7;N;i:8;s:7:\"1000.00\";i:9;s:4:\"1000\";i:10;s:1:\"0\";i:11;s:0:\"\";}}', '1000', '1', '1000', '2023-03-01', 1, 'admin', 'Partial', '500', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `openingbalance`
--

CREATE TABLE `openingbalance` (
  `id` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `openingbalance`
--

INSERT INTO `openingbalance` (`id`, `balance`) VALUES
(1, 9500);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` tinyint(4) DEFAULT NULL,
  `barcode` varchar(0) DEFAULT NULL,
  `hsn` varchar(8) DEFAULT NULL,
  `category` tinyint(4) DEFAULT NULL,
  `name` varchar(23) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL,
  `mrpprice` mediumint(9) DEFAULT NULL,
  `actualprice` decimal(7,2) DEFAULT NULL,
  `gsttype` tinyint(4) DEFAULT NULL,
  `gst` tinyint(4) DEFAULT NULL,
  `gstprice` decimal(6,2) DEFAULT NULL,
  `date` smallint(6) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `vendor` varchar(34) DEFAULT NULL,
  `location` varchar(12) DEFAULT NULL,
  `invoice` varchar(6) DEFAULT NULL,
  `dateofpurchase` varchar(11) DEFAULT NULL,
  `individualnetprice` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `barcode`, `hsn`, `category`, `name`, `qty`, `mrpprice`, `actualprice`, `gsttype`, `gst`, `gstprice`, `date`, `status`, `vendor`, `location`, `invoice`, `dateofpurchase`, `individualnetprice`) VALUES
(20, '', 'hsn10', 59, 'Mobile x10', '10', 1500, '1271.19', 1, 18, '228.81', 1998, 1, 'swapna stores', 'kakinada', 'inv10', '10-10-2018', ''),
(21, '', 'hsn10', 59, 'Mobile x10', '10', 1500, '1271.19', 1, 18, '228.81', 1998, 1, 'swapna stores', 'kakinada', 'inv10', '10-10-2018', ''),
(22, '', 'hsn101', 59, 'Samsung x10 series', '15', 23000, '19491.53', 1, 18, '3508.47', 2016, 1, 'Shafi Stores', 'kovvur', '500', '0-01-2019', ''),
(23, '', 'hsn10000', 61, 'Maharani Rice pack 25kg', '50', 50000, '52500.00', 2, 5, '2500.00', 2007, 1, 'Srinivasa Wholesale Rice', 'Kolamuru', '10000', '2019-03-08', ''),
(24, '', 'sasd', 61, 'adas', 'asa', 5000, '5000.00', 2, 0, '0.00', 2007, 1, 'asda', 'sasasd', 'asdasd', 'asds', ''),
(25, '', 'hsn10002', 61, 'Sainik 25kg  pack', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'Venkataramana Rice Store', 'Dawaleswaram', '10002', '2019-03-09', ''),
(26, '', 'hsn10004', 61, 'superb rice 25kb pack', '50', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, 'Venkata rama Rice Store whole sale', 'Boorugupudi', '10004', '2019-03-05', '952.38'),
(27, '', 'hsn10005', 61, 'raju 25kg rice pack', '50', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, 'Rajahmundry whole sale', 'rajahmundry', '10005', '2019-03-04', '952.38'),
(28, '', 'hsn10006', 61, 'raju 25kg rice pack', '20', 20000, '19047.62', 1, 5, '952.38', 2007, 1, 'avinash', 'bommuru', '10006', '22019-01-01', '952.38'),
(29, '', '', 61, 'test rice pack 25kg', '100', 90000, '85714.29', 1, 5, '4285.71', 2007, 1, '', '', '', '', '857.14'),
(30, '', '', 61, 'test rice bag 30kg', '100', 90000, '85714.29', 1, 5, '4285.71', 2007, 1, '', '', '', '', '857.14'),
(31, '', '', 61, 'test rice bag 30kg	', '50', 45000, '42857.14', 1, 5, '2142.86', 2007, 1, '', '', '', '', '857.14'),
(32, '', '', 61, 'test rice bag 30kg', '5', 4500, '4285.71', 1, 5, '214.29', 2007, 1, '', '', '', '', '857.14'),
(33, '', '', 61, 'test rice bag 30kg	', '55', 10000, '9523.81', 1, 5, '476.19', 2007, 1, '', '', '', '', '173.16'),
(34, '', '', 61, 'test rice bag 30kg	', '10', 50000, '47619.05', 1, 5, '2380.95', 2007, 1, '', '', '', '', '4761.91'),
(35, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(36, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(37, '', '', 61, 'aaa aslkdj ', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'asjkasjk', 'rajahmundry', '56465', '2019-02-02', ''),
(38, '', '', 61, 'aaaa', '5', 500, '476.19', 1, 5, '23.81', 2007, 1, '', '', '', '', ''),
(39, '', '', 61, 'asds', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(40, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(41, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(42, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(43, '', '', 61, 'asdsd', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(44, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(45, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(46, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(47, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(48, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(49, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(50, '', '', 61, 'asds', '1', 5000, '4761.90', 1, 5, '238.10', 2007, 1, '', '', '', '', ''),
(51, '', '', 61, 'aaaaa', '5', 5000, '4761.90', 1, 5, '238.10', 2007, 1, 'avinash', 'asdlkj', 'asdlkj', '01-01-2018', '952.38');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `quantity` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `quantity`, `status`) VALUES
(13, 'Box', 1),
(14, '100 Box', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(11) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('admin', 6),
('categories', 62),
('invoicehead', 1),
('trackers', 226),
('vehicles', 3),
('drivers', 6),
('invoices', 67),
('customers', 8),
('credits', 2),
('purchases', 51),
('stock', 186);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `name` text,
  `qty` text NOT NULL,
  `actualprice` text,
  `date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `qty`, `actualprice`, `date`, `status`) VALUES
(19, 'Plastic Glass', 'Box', '150', '0000-00-00', 1),
(20, 'Paper Glass', 'Box', '150', '0000-00-00', 1),
(21, 'BUFFY GREEN', '', '', '0000-00-00', 1),
(22, 'BUFFY MULTY ROUND', '', '', '0000-00-00', 1),
(23, 'BUFFY SILVER ROUND', '', '', '0000-00-00', 1),
(24, 'BUFFY MULTY SQUARE', '', '', '0000-00-00', 1),
(25, 'SITTING MULTY SMALL', '', '', '0000-00-00', 1),
(26, 'SITTING MULTY BIG', '', '', '0000-00-00', 1),
(27, 'SITTING FLOWER MULTY', '', '', '0000-00-00', 1),
(28, 'TEA GLASS 65ML', '', '', '0000-00-00', 1),
(29, 'TEA GLASS 65ML PRINT', '', '', '0000-00-00', 1),
(30, 'TEA GLASS 75ML', '', '', '0000-00-00', 1),
(31, 'TEA GLASS 75ML PRINT', '', '', '0000-00-00', 1),
(32, 'TEA GLASS 100ML', '', '', '0000-00-00', 1),
(33, 'TEA GLASS 85ML', '', '', '0000-00-00', 1),
(34, 'TEA GLASS 110ML', '', '', '0000-00-00', 1),
(35, 'TEA GLASS 150ML NESCAFE', '', '', '0000-00-00', 1),
(36, 'PAPER GLASS 210ML', '', '', '0000-00-00', 1),
(37, 'PAPER GLASS 250ML', '', '', '0000-00-00', 1),
(38, 'PAPER GLASS 300ML', '', '', '0000-00-00', 1),
(39, 'PAPER GLASS 150ML SUGARCANE', '', '', '0000-00-00', 1),
(40, 'CLOTH DCUT', '', '', '0000-00-00', 1),
(41, 'CLOTH PACKET 9012', '', '', '0000-00-00', 1),
(42, 'CLOTH PACKET13.16', '', '', '0000-00-00', 1),
(43, 'CLOTH PACKET 16.20', '', '', '0000-00-00', 1),
(44, 'CLOTH KG WHITE', '', '', '0000-00-00', 1),
(45, 'DARAM KG', '', '', '0000-00-00', 1),
(46, 'DARAM CONESSMALL', '', '', '0000-00-00', 1),
(47, 'DARAM CONE BIG', '', '', '0000-00-00', 1),
(48, 'DARAM REELS BALU', '', '', '0000-00-00', 1),
(49, 'TIFFIN PLATES 10', '', '', '0000-00-00', 1),
(50, 'TIFFIN PLATES 9', '', '', '0000-00-00', 1),
(51, 'TIFFIN PLATES 8', '', '', '0000-00-00', 1),
(52, 'TIFFIN PLATES 7', '', '', '0000-00-00', 1),
(53, 'TIFIFIN PLATES SILVER 10', '', '', '0000-00-00', 1),
(54, 'TIFFIN PLATES SILVER 9', '', '', '0000-00-00', 1),
(55, 'TIFFIN PLATES SILVER 8', '', '', '0000-00-00', 1),
(56, 'TIFFIN PLATES SILVER 7', '', '', '0000-00-00', 1),
(57, 'TIFFIN PLATES SILVER 12', '', '', '0000-00-00', 1),
(58, 'TIFFIN BUFFY GREEN', '', '', '0000-00-00', 1),
(59, 'WOODEN SPOON ', '', '', '0000-00-00', 1),
(60, 'WOODEN FORK', '', '', '0000-00-00', 1),
(61, 'BIG SPOON', '', '', '0000-00-00', 1),
(62, 'BIG FORK', '', '', '0000-00-00', 1),
(63, 'SMALL SPOON', '', '', '0000-00-00', 1),
(64, 'SMALL FORK', '', '', '0000-00-00', 1),
(65, 'IVERRY SPOON', '', '', '0000-00-00', 1),
(66, 'PINK SPOON', '', '', '0000-00-00', 1),
(67, 'PINK FALOODA SPOON', '', '', '0000-00-00', 1),
(68, 'FRUIT FORK', '', '', '0000-00-00', 1),
(69, 'ICECREAM CUP PINK', '', '', '0000-00-00', 1),
(70, 'ICECREAM CUP PAPER', '', '', '0000-00-00', 1),
(71, 'ICE CREAM CUP GOLD', '', '', '0000-00-00', 1),
(72, 'KANGAROO PIN', '', '', '0000-00-00', 1),
(73, 'STAPLER', '', '', '0000-00-00', 1),
(74, 'DUSTBIN COVER SMALL', '', '', '0000-00-00', 1),
(75, 'DUSTBIN COVER MEDIUM', '', '', '0000-00-00', 1),
(76, 'DUSTBIN COVER LARGE', '', '', '0000-00-00', 1),
(77, 'DUSTBIN COVER EXLARGE', '', '', '0000-00-00', 1),
(78, 'STRETCH FILM', '', '', '0000-00-00', 1),
(79, 'PAPER ROLL BUTTER', '', '', '0000-00-00', 1),
(80, 'PAPER ROLL BUTTER SMALL', '', '', '0000-00-00', 1),
(81, '9.12 DLX', '', '', '0000-00-00', 1),
(82, '13.16 DLX', '', '', '0000-00-00', 1),
(83, '16.20 DLX', '', '', '0000-00-00', 1),
(84, 'INT HIGH COUNT', '', '', '0000-00-00', 1),
(85, 'MILKY WHITE 40 MICRON', '', '', '0000-00-00', 1),
(86, 'TISSUES 27.30', '', '', '0000-00-00', 1),
(87, 'TISSUES 25.25', '', '', '0000-00-00', 1),
(88, 'TISSUES 40.40', '', '', '0000-00-00', 1),
(89, 'SEALING MACHINE', '', '', '0000-00-00', 1),
(90, 'THUMSUP GLASS', '', '', '0000-00-00', 1),
(91, 'JUMBO GLASS', '', '', '0000-00-00', 1),
(92, 'MINI WINE', '', '', '0000-00-00', 1),
(93, '300 FANCY', '', '', '0000-00-00', 1),
(94, '350 FANCY', '', '', '0000-00-00', 1),
(95, '80 DIA LID', '', '', '0000-00-00', 1),
(96, '85 DIA LID', '', '', '0000-00-00', 1),
(97, '600 CC PET CONTAINER', '', '', '0000-00-00', 1),
(98, '250 PET CONTAINER', '', '', '0000-00-00', 1),
(99, '375 CONTAINER', '', '', '0000-00-00', 1),
(100, 'TIFFIN PLATE FANCY 10', '', '', '0000-00-00', 1),
(101, 'TIFFIN PLATE FANCY 9', '', '', '0000-00-00', 1),
(102, 'TIFFIN PLATE FANCY 8', '', '', '0000-00-00', 1),
(103, 'TIFFIN PLATE FANCY 7', '', '', '0000-00-00', 1),
(104, 'SUGARCANE 120 ML', '', '', '0000-00-00', 1),
(105, 'SUGAR CANE 180 ML', '', 'SUGAR CANE 360 ML', '0000-00-00', 1),
(106, 'SUGAR CANE 360 ML', '', '', '0000-00-00', 1),
(107, 'SUGAR CANE 9', '', '', '0000-00-00', 1),
(108, 'SUGAR CANE 7', '', '', '0000-00-00', 1),
(109, 'SUGAR CANE 10', '', '', '0000-00-00', 1),
(110, 'SUGAR CANE 12', '', '', '0000-00-00', 1),
(111, 'CORN BOWL SMALL', '', '', '0000-00-00', 1),
(112, 'CORN BOWL BIG', '', '', '0000-00-00', 1),
(113, 'CORN BOWL MEDIUM', '', '', '0000-00-00', 1),
(114, '4.4 CARA BOWL', '', '', '0000-00-00', 1),
(115, '5.5 CARA BOWL', '', '', '0000-00-00', 1),
(116, '4 CARA BOWL', '', '', '0000-00-00', 1),
(117, '6 CARA BOWL', '', '', '0000-00-00', 1),
(118, 'PAPER STRAW 8 MM', '', '', '0000-00-00', 1),
(120, 'PAPERSTRAW 6MM', '', '', '0000-00-00', 1),
(121, 'BENDSTRAW', '', '', '0000-00-00', 1),
(122, '150 ML HANDLE CUP', '', '', '0000-00-00', 1),
(123, 'NO.1 SPONGE', '', '', '0000-00-00', 1),
(124, '1000 ML CONTAINER', '', '', '0000-00-00', 1),
(125, '750 ML CONTAINER', '', '', '0000-00-00', 1),
(126, '500 ML CONTAINER', '', '', '0000-00-00', 1),
(127, '400 ML CONTAINER', '', '', '0000-00-00', 1),
(128, '250 ML CONTAINER', '', '', '0000-00-00', 1),
(129, '1000 ML RECTANGULAR', '', '', '0000-00-00', 1),
(130, '750 ML RECTANGULAR', '', '', '0000-00-00', 1),
(131, '500 ML RECTANGULAR', '', '', '0000-00-00', 1),
(132, 'CLEAN WRAP 600 MTS', '', '', '0000-00-00', 1),
(133, 'CLEAN WRAP 100 MTS', '', '', '0000-00-00', 1),
(134, 'SILVER COIL NO 72', '', '', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trackers`
--

CREATE TABLE `trackers` (
  `id` smallint(6) DEFAULT NULL,
  `invoice` tinyint(4) DEFAULT NULL,
  `product` varchar(3) DEFAULT NULL,
  `qty` varchar(2) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trackers`
--

INSERT INTO `trackers` (`id`, `invoice`, `product`, `qty`, `date`) VALUES
(1, 10, '4', '1', '2018-04-11'),
(2, 11, '4', '2', '2018-04-11'),
(3, 12, '4', '1', '2018-04-11'),
(4, 12, '4', '2', '2018-04-11'),
(5, 13, '5', '2', '2018-04-19'),
(6, 14, '7', '2', '2018-04-27'),
(7, 15, '9', '1', '2018-04-29'),
(8, 15, '8', '1', '2018-04-29'),
(9, 16, '9', '5', '2018-04-29'),
(10, 16, '8', '10', '2018-04-29'),
(11, 17, '10', '1', '2018-04-30'),
(12, 19, '8', '1', '2018-05-03'),
(13, 20, '9', '1', '2018-05-03'),
(14, 21, '10', '1', '2018-05-03'),
(15, 22, '8', '1', '2018-05-03'),
(16, 22, '8', '1', '2018-05-03'),
(17, 22, '9', '1', '2018-05-03'),
(18, 22, '9', '1', '2018-05-03'),
(19, 22, '10', '1', '2018-05-03'),
(20, 22, '8', '1', '2018-05-03'),
(21, 22, '8', '1', '2018-05-03'),
(22, 22, '9', '1', '2018-05-03'),
(23, 22, '8', '1', '2018-05-03'),
(24, 22, '10', '1', '2018-05-03'),
(25, 23, '8', '1', '2018-05-05'),
(26, 23, '8', '1', '2018-05-05'),
(27, 23, '10', '1', '2018-05-05'),
(28, 23, '9', '1', '2018-05-05'),
(29, 23, '10', '1', '2018-05-05'),
(30, 23, '8', '1', '2018-05-05'),
(31, 23, '9', '1', '2018-05-05'),
(32, 23, '8', '1', '2018-05-05'),
(33, 23, '10', '1', '2018-05-05'),
(34, 23, '8', '1', '2018-05-05'),
(35, 23, '8', '1', '2018-05-05'),
(36, 24, '8', '1', '2018-05-10'),
(37, 25, '8', '1', '2018-05-10'),
(38, 25, '9', '1', '2018-05-10'),
(39, 25, '9', '1', '2018-05-10'),
(40, 25, '9', '1', '2018-05-10'),
(41, 25, '9', '1', '2018-05-10'),
(42, 25, '9', '1', '2018-05-10'),
(43, 25, '9', '1', '2018-05-10'),
(44, 25, '8', '1', '2018-05-10'),
(45, 25, '9', '1', '2018-05-10'),
(46, 25, '10', '1', '2018-05-10'),
(47, 25, '8', '1', '2018-05-10'),
(48, 25, '9', '1', '2018-05-10'),
(49, 25, '10', '1', '2018-05-10'),
(50, 25, '8', '1', '2018-05-10'),
(51, 25, '9', '1', '2018-05-10'),
(52, 25, '10', '1', '2018-05-10'),
(53, 25, '8', '1', '2018-05-10'),
(54, 25, '10', '1', '2018-05-10'),
(55, 25, '8', '1', '2018-05-10'),
(56, 25, '9', '1', '2018-05-10'),
(57, 25, '10', '1', '2018-05-10'),
(58, 25, '8', '1', '2018-05-10'),
(59, 25, '9', '1', '2018-05-10'),
(60, 25, '9', '1', '2018-05-10'),
(61, 25, '10', '1', '2018-05-10'),
(62, 25, '9', '1', '2018-05-10'),
(63, 25, '8', '1', '2018-05-10'),
(64, 25, '8', '1', '2018-05-10'),
(65, 25, '9', '1', '2018-05-10'),
(66, 25, '9', '1', '2018-05-10'),
(67, 25, '9', '1', '2018-05-10'),
(68, 25, '9', '1', '2018-05-10'),
(69, 25, '9', '1', '2018-05-10'),
(70, 25, '9', '1', '2018-05-10'),
(71, 25, '8', '1', '2018-05-10'),
(72, 25, '9', '1', '2018-05-10'),
(73, 25, '10', '1', '2018-05-10'),
(74, 25, '8', '1', '2018-05-10'),
(75, 25, '9', '1', '2018-05-10'),
(76, 25, '10', '1', '2018-05-10'),
(77, 25, '8', '1', '2018-05-10'),
(78, 25, '9', '1', '2018-05-10'),
(79, 25, '10', '1', '2018-05-10'),
(80, 25, '8', '1', '2018-05-10'),
(81, 25, '10', '1', '2018-05-10'),
(82, 25, '8', '1', '2018-05-10'),
(83, 25, '9', '1', '2018-05-10'),
(84, 25, '10', '1', '2018-05-10'),
(85, 25, '8', '1', '2018-05-10'),
(86, 25, '9', '1', '2018-05-10'),
(87, 25, '9', '1', '2018-05-10'),
(88, 25, '10', '1', '2018-05-10'),
(89, 25, '9', '1', '2018-05-10'),
(90, 25, '8', '1', '2018-05-10'),
(91, 27, '8', '1', '2018-05-10'),
(92, 27, '8', '1', '2018-05-10'),
(93, 28, '8', '2', '2018-05-10'),
(94, 28, '8', '2', '2018-05-10'),
(95, 29, '8', '2', '2018-05-10'),
(96, 29, '8', '5', '2018-05-10'),
(97, 29, '10', '2', '2018-05-10'),
(98, 30, '11', '1', '2018-05-10'),
(99, 30, '11', '1', '2018-05-10'),
(100, 30, '11', '1', '2018-05-10'),
(101, 30, '11', '1', '2018-05-10'),
(102, 30, '11', '1', '2018-05-10'),
(103, 30, '11', '1', '2018-05-10'),
(104, 30, '11', '1', '2018-05-10'),
(105, 30, '11', '1', '2018-05-10'),
(106, 30, '11', '1', '2018-05-10'),
(107, 30, '11', '1', '2018-05-10'),
(108, 30, '11', '1', '2018-05-10'),
(109, 30, '11', '1', '2018-05-10'),
(110, 30, '11', '1', '2018-05-10'),
(111, 30, '11', '1', '2018-05-10'),
(112, 30, '11', '1', '2018-05-10'),
(113, 30, '11', '1', '2018-05-10'),
(114, 30, '11', '1', '2018-05-10'),
(115, 30, '11', '1', '2018-05-10'),
(116, 30, '11', '1', '2018-05-10'),
(117, 30, '11', '1', '2018-05-10'),
(118, 30, '11', '1', '2018-05-10'),
(119, 30, '11', '1', '2018-05-10'),
(120, 30, '11', '1', '2018-05-10'),
(121, 30, '11', '1', '2018-05-10'),
(122, 30, '11', '1', '2018-05-10'),
(123, 30, '11', '1', '2018-05-10'),
(124, 30, '11', '1', '2018-05-10'),
(125, 30, '11', '1', '2018-05-10'),
(126, 30, '11', '1', '2018-05-10'),
(127, 30, '11', '1', '2018-05-10'),
(128, 30, '11', '1', '2018-05-10'),
(129, 30, '11', '1', '2018-05-10'),
(130, 30, '11', '1', '2018-05-10'),
(131, 30, '11', '1', '2018-05-10'),
(132, 30, '11', '1', '2018-05-10'),
(133, 30, '11', '1', '2018-05-10'),
(134, 30, '11', '1', '2018-05-10'),
(135, 30, '11', '1', '2018-05-10'),
(136, 30, '11', '1', '2018-05-10'),
(137, 30, '11', '1', '2018-05-10'),
(138, 30, '11', '1', '2018-05-10'),
(139, 30, '11', '1', '2018-05-10'),
(140, 30, '11', '1', '2018-05-10'),
(141, 30, '11', '1', '2018-05-10'),
(142, 30, '11', '1', '2018-05-10'),
(143, 30, '11', '1', '2018-05-10'),
(144, 30, '11', '1', '2018-05-10'),
(145, 30, '11', '1', '2018-05-10'),
(146, 30, '11', '1', '2018-05-10'),
(147, 30, '11', '1', '2018-05-10'),
(148, 30, '11', '1', '2018-05-10'),
(149, 30, '11', '1', '2018-05-10'),
(150, 30, '11', '1', '2018-05-10'),
(151, 30, '11', '1', '2018-05-10'),
(152, 31, '11', '1', '2018-05-10'),
(153, 32, '11', '5', '2018-05-10'),
(154, 32, '12', '5', '2018-05-10'),
(155, 34, '46', '1', '2018-05-14'),
(156, 36, '145', '1', '2018-05-15'),
(157, 37, '50', '1', '2018-05-15'),
(158, 38, '8', '1', '2018-06-02'),
(159, 38, '8', '1', '2018-06-02'),
(160, 40, '114', '1', '2018-06-05'),
(161, 41, '155', '1', '2018-06-05'),
(162, 41, '155', '1', '2018-06-05'),
(163, 41, '155', '1', '2018-06-05'),
(164, 41, '155', '1', '2018-06-05'),
(165, 41, '155', '1', '2018-06-05'),
(166, 41, '155', '1', '2018-06-05'),
(167, 41, '155', '1', '2018-06-05'),
(168, 41, '155', '1', '2018-06-05'),
(169, 41, '155', '1', '2018-06-05'),
(170, 41, '155', '1', '2018-06-05'),
(171, 41, '155', '1', '2018-06-05'),
(172, 41, '155', '1', '2018-06-05'),
(173, 41, '155', '1', '2018-06-05'),
(174, 41, '155', '1', '2018-06-05'),
(175, 41, '155', '1', '2018-06-05'),
(176, 41, '155', '1', '2018-06-05'),
(177, 41, '155', '1', '2018-06-05'),
(178, 41, '155', '1', '2018-06-05'),
(179, 41, '155', '1', '2018-06-05'),
(180, 41, '155', '1', '2018-06-05'),
(181, 41, '155', '1', '2018-06-05'),
(182, 41, '155', '1', '2018-06-05'),
(183, 41, '155', '1', '2018-06-05'),
(184, 41, '155', '1', '2018-06-05'),
(185, 41, '155', '1', '2018-06-05'),
(186, 42, '55', '1', '2018-07-05'),
(187, 43, '155', '1', '2018-07-11'),
(188, 44, '156', '1', '2018-07-11'),
(189, 45, '155', '1', '2018-07-11'),
(190, 46, '155', '1', '2018-07-11'),
(191, 47, '158', '1', '2018-07-11'),
(192, 48, '161', '1', '2018-07-11'),
(193, 48, '162', '1', '2018-07-11'),
(194, 49, '161', '1', '2018-07-13'),
(195, 50, '163', '1', '2018-07-20'),
(196, 51, '165', '1', '2018-07-20'),
(197, 51, '166', '1', '2018-07-20'),
(198, 51, '165', '2', '2018-07-20'),
(199, 52, '173', '1', '2019-01-21'),
(200, 53, '173', '1', '2019-01-21'),
(201, 53, '173', '1', '2019-01-21'),
(202, 53, '173', '1', '2019-01-21'),
(203, 54, '173', '1', '2019-01-21'),
(204, 54, '173', '1', '2019-01-21'),
(205, 54, '173', '1', '2019-01-21'),
(206, 55, '173', '1', '2019-01-21'),
(207, 55, '173', '1', '2019-01-21'),
(208, 55, '173', '1', '2019-01-21'),
(209, 56, '173', '2', '2019-01-22'),
(210, 56, '173', '2', '2019-01-22'),
(211, 57, '174', '2', '2019-02-01'),
(212, 58, '174', '1', '2019-02-01'),
(213, 59, '174', '2', '2019-02-01'),
(214, 60, '174', '1', '2019-02-01'),
(215, 60, '174', '1', '2019-02-01'),
(216, 61, '174', '2', '2019-02-01'),
(217, 61, '174', '2', '2019-02-01'),
(218, 62, '186', '1', '2019-03-09'),
(219, 62, '186', '1', '2019-03-09'),
(220, 62, '186', '1', '2019-03-09'),
(221, 63, '186', '2', '2019-03-09'),
(222, 64, '186', '2', '2019-03-09'),
(223, 64, '186', '3', '2019-03-09'),
(224, 66, '173', '1', '2019-03-25'),
(225, 67, '175', '1', '2019-03-30'),
(226, 67, '', '', '2019-03-30'),
(NULL, 5, '19', '2', '2023-01-26'),
(NULL, 6, '19', '1', '2023-01-28'),
(NULL, 8, '19', '1', '2023-01-28'),
(NULL, 10, '19', '1', '2023-01-28'),
(NULL, 11, '19', '1', '2023-01-28'),
(NULL, 13, '19', '2', '2023-01-28'),
(NULL, 14, '19', '3', '2023-01-28'),
(NULL, 15, '20', '3', '2023-01-28'),
(NULL, 16, '19', '1', '2023-01-28'),
(NULL, 17, '20', '2', '2023-01-28'),
(NULL, 18, '20', '2', '2023-01-28'),
(NULL, 19, '19', '1', '2023-01-28'),
(NULL, 20, '20', '1', '2023-01-28'),
(NULL, 21, '19', '1', '2023-01-28'),
(NULL, 22, '19', '1', '2023-01-28'),
(NULL, 23, '20', '2', '2023-01-28'),
(NULL, 24, '20', '2', '2023-01-28'),
(NULL, 25, '19', '1', '2023-01-28'),
(NULL, 27, '19', '1', '2023-01-28'),
(NULL, 28, '20', '1', '2023-01-28'),
(NULL, 29, '20', '1', '2023-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` varchar(0) DEFAULT NULL,
  `vehicleno` varchar(0) DEFAULT NULL,
  `vehiclename` varchar(0) DEFAULT NULL,
  `description` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openingbalance`
--
ALTER TABLE `openingbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `openingbalance`
--
ALTER TABLE `openingbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
