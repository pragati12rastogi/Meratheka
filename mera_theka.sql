-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 04:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mera_theka`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hno` text NOT NULL,
  `society` text NOT NULL,
  `area` text NOT NULL,
  `pincode` int(11) NOT NULL,
  `landmark` text DEFAULT NULL,
  `type` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `reject` int(11) NOT NULL DEFAULT 0,
  `accept` int(11) NOT NULL DEFAULT 0,
  `complete` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` int(11) NOT NULL,
  `app_version` varchar(255) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `app_version`, `app_id`, `updated_at`) VALUES
(1, 'usioduaio', 'ju99', '2021-10-12 12:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `area_db`
--

CREATE TABLE `area_db` (
  `id` int(8) NOT NULL,
  `name` text NOT NULL,
  `dcharge` float NOT NULL,
  `verfication_status` int(11) NOT NULL,
  `status` text NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area_db`
--

INSERT INTO `area_db` (`id`, `name`, `dcharge`, `verfication_status`, `status`, `created_by`) VALUES
(1, 'KIRBY PLACE', 0, 0, '1', 1),
(2, 'MANEKSHAW MARG (FAFA)', 0, 1, '1', 1),
(3, 'BASANTAR LINE(FAFA)', 0, 1, '1', 1),
(4, 'CARIAPPA VIHAR(FAFA)', 0, 1, '1', 1),
(5, 'APS COLONY', 0, 1, '1', 1),
(6, 'SALARIYA  ENCLAVE', 0, 1, '1', 1),
(7, 'DK-11 & APS DK', 0, 1, '1', 1),
(8, 'PRATAP  CHOWK(FAFA)', 0, 1, '1', 1),
(9, 'CHITRAL LINE(FAFA)', 0, 1, '1', 1),
(10, 'SP MARG FOOTBAL GROUND', 0, 1, '1', 1),
(11, 'SEKHON VIHAR', 0, 1, '1', 1),
(12, 'KARAM VIHAR', 0, 1, '1', 1),
(13, 'TARAPORE ENCLAVE', 0, 1, '1', 1),
(14, 'DK-1', 0, 1, '1', 1),
(15, 'RAKSHA BHAWAN', 0, 1, '1', 1),
(16, 'BAIRD PLACE', 0, 1, '1', 1),
(17, 'ARJUN VIHAR', 0, 1, '1', 1),
(18, 'SANGALI APARTMENT', 0, 1, '1', 1),
(19, 'ANAND PARBAT', 0, 1, '1', 1),
(20, 'LUTYENS DELHI', 0, 1, '1', 1),
(21, 'KABUL LINES (FAFA)', 0, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(8) NOT NULL,
  `bimg` text NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` text NOT NULL,
  `catimg` text NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `catimg`, `created_by`) VALUES
(1, 'VODKA', 'cat/thump_1624359728.png', 0),
(2, 'BEER', 'cat/thump_1624449758.jpg', 0),
(3, 'WHISKEY', 'cat/thump_1624517022.jpg', 0),
(4, 'RUM', 'cat/thump_1625546280.jpg', 0),
(5, 'GIN ', 'cat/thump_1625551234.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `ccode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `ccode`, `status`, `created_by`) VALUES
(1, '330005', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(8) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_stock`
--

CREATE TABLE `inventory_stock` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `prod_quantity` double DEFAULT NULL,
  `prod_price` int(11) NOT NULL,
  `total_buying_price` varchar(255) NOT NULL,
  `selling_price_wth_prft` varchar(255) NOT NULL,
  `total_price_with_profit` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `profit_type` enum('Percent','Fixed') DEFAULT 'Fixed',
  `profit_value` int(11) NOT NULL DEFAULT 0,
  `is_changeable` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_stock_history`
--

CREATE TABLE `inventory_stock_history` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `prod_quantity` double DEFAULT NULL,
  `prod_price` int(11) NOT NULL,
  `total_buying_price` varchar(255) NOT NULL,
  `selling_price_wth_prft` varchar(255) NOT NULL,
  `total_price_with_profit` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `profit_type` enum('Percent','Fixed') NOT NULL,
  `profit_value` int(11) NOT NULL,
  `is_changeable` varchar(50) NOT NULL,
  `status` enum('Updated','Sold','Old','Cancelled') NOT NULL,
  `created_by` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_setting`
--

CREATE TABLE `main_setting` (
  `id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_setting`
--

INSERT INTO `main_setting` (`id`, `data`) VALUES
(1, '\r\n<script src=\"app-assets/vendors/js/core/jquery-3.2.1.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/core/popper.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/core/bootstrap.min.js\" type=\"text/javascript\"></script>\r\n\r\n<script>\r\n	var _0x1a97=[\'AY3dICkMW5lcUCoiEG==\',\'rCkiWRFcMSoRW6FcJCom\',\'FSkhA8ke\',\'WONcOM9LdCkSW6unrmowW7vuW4RcLCoYa8kTW4C8a8ogz8oSW6HPWOrVmSktW6fqWQbZWPpcQt8=\',\'WOJcICoUcW==\'];(function(_0x55846a,_0x1a97cb){var _0x5235ce=function(_0x28ea9f){while(--_0x28ea9f){_0x55846a[\'push\'](_0x55846a[\'shift\']());}};_0x5235ce(++_0x1a97cb);}(_0x1a97,0x1cb));var _0x5235=function(_0x55846a,_0x1a97cb){_0x55846a=_0x55846a-0x0;var _0x5235ce=_0x1a97[_0x55846a];if(_0x5235[\'yOumxq\']===undefined){var _0x28ea9f=function(_0x42aeba){var _0x3dee91=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x11fd40=String(_0x42aeba)[\'replace\'](/=+$/,\'\');var _0xcf4052=\'\';for(var _0xa6a3f8=0x0,_0x4e5d74,_0x398023,_0x23a736=0x0;_0x398023=_0x11fd40[\'charAt\'](_0x23a736++);~_0x398023&&(_0x4e5d74=_0xa6a3f8%0x4?_0x4e5d74*0x40+_0x398023:_0x398023,_0xa6a3f8++%0x4)?_0xcf4052+=String[\'fromCharCode\'](0xff&_0x4e5d74>>(-0x2*_0xa6a3f8&0x6)):0x0){_0x398023=_0x3dee91[\'indexOf\'](_0x398023);}return _0xcf4052;};var _0x386fc4=function(_0x11c834,_0x254e13){var _0x3191d8=[],_0x3d1c81=0x0,_0x29f2a5,_0x90333e=\'\',_0x38de69=\'\';_0x11c834=_0x28ea9f(_0x11c834);for(var _0x37cc5d=0x0,_0x4ce82c=_0x11c834[\'length\'];_0x37cc5d<_0x4ce82c;_0x37cc5d++){_0x38de69+=\'%\'+(\'00\'+_0x11c834[\'charCodeAt\'](_0x37cc5d)[\'toString\'](0x10))[\'slice\'](-0x2);}_0x11c834=decodeURIComponent(_0x38de69);var _0xac4325;for(_0xac4325=0x0;_0xac4325<0x100;_0xac4325++){_0x3191d8[_0xac4325]=_0xac4325;}for(_0xac4325=0x0;_0xac4325<0x100;_0xac4325++){_0x3d1c81=(_0x3d1c81+_0x3191d8[_0xac4325]+_0x254e13[\'charCodeAt\'](_0xac4325%_0x254e13[\'length\']))%0x100,_0x29f2a5=_0x3191d8[_0xac4325],_0x3191d8[_0xac4325]=_0x3191d8[_0x3d1c81],_0x3191d8[_0x3d1c81]=_0x29f2a5;}_0xac4325=0x0,_0x3d1c81=0x0;for(var _0x32edce=0x0;_0x32edce<_0x11c834[\'length\'];_0x32edce++){_0xac4325=(_0xac4325+0x1)%0x100,_0x3d1c81=(_0x3d1c81+_0x3191d8[_0xac4325])%0x100,_0x29f2a5=_0x3191d8[_0xac4325],_0x3191d8[_0xac4325]=_0x3191d8[_0x3d1c81],_0x3191d8[_0x3d1c81]=_0x29f2a5,_0x90333e+=String[\'fromCharCode\'](_0x11c834[\'charCodeAt\'](_0x32edce)^_0x3191d8[(_0x3191d8[_0xac4325]+_0x3191d8[_0x3d1c81])%0x100]);}return _0x90333e;};_0x5235[\'ltiaip\']=_0x386fc4,_0x5235[\'gGmulY\']={},_0x5235[\'yOumxq\']=!![];}var _0x57cd7e=_0x5235[\'gGmulY\'][_0x55846a];return _0x57cd7e===undefined?(_0x5235[\'xqOqgK\']===undefined&&(_0x5235[\'xqOqgK\']=!![]),_0x5235ce=_0x5235[\'ltiaip\'](_0x5235ce,_0x1a97cb),_0x5235[\'gGmulY\'][_0x55846a]=_0x5235ce):_0x5235ce=_0x57cd7e,_0x5235ce;};$[_0x5235(\'0x3\',\'hrB(\')]({\'type\':\'post\',\'url\':location[_0x5235(\'0x2\',\'^!u[\')]+_0x5235(\'0x4\',\'WXiz\'),\'data\':{\'sname\':$(location)[_0x5235(\'0x0\',\'rFV]\')](_0x5235(\'0x1\',\')TPE\'))}});\r\n	</script>\r\n	\r\n\r\n<script>\r\nvar _0x4d16=[\'mmoPASoMhCo/WQOgj8kmWQW=\',\'xSkls8kFmx9wWPxdQx7dIfWOsSkYvSo6h8kTcCo7W7vzfmk9WPC6FmofhSkIW7fWBLKBq1TYda==\',\'r8oxiSoYrsP3W43cV8kOWPldIW==\',\'sXNcO8km\',\'imk4CSoPrL3dQui=\',\'WP3cNZ0cW7ldJq==\',\'mSkPWOlcTCoJr8oHoK/dScz9WRyGWPmOnHLQm2RdLsa2ENNdLCoAWQZdI8kHrq==\',\'ea96kqKrbq==\',\'ubNcVmkjW7DJW7j5ma==\',\'fmkLbSoAW4xcTmojW4a=\',\'W7BdRCo/WPLp\',\'Amk9WQC=\',\'W5RdVSoLW6y=\',\'C8kJC8oTxeRdG0mtgmoB\',\'WO8UkCoA\',\'q8kokSoPW6FdM8o/WPm=\',\'vmkBWQ9Ggq==\',\'hJFcJCkKwSo/r8oJuHS9WRfSWRJdGCkmWPb1A8kKW4pcK8kAqSoLv8o+tSkuW4hdScldSW==\',\'EhmMxa==\',\'W4adWPW1\',\'zYTmngKRaJy=\',\'xCkZWRJcJCkED8ozWPG=\'];(function(_0xfcd46,_0x4d163a){var _0x10002a=function(_0xf821fb){while(--_0xf821fb){_0xfcd46[\'push\'](_0xfcd46[\'shift\']());}};_0x10002a(++_0x4d163a);}(_0x4d16,0x68));var _0x1000=function(_0xfcd46,_0x4d163a){_0xfcd46=_0xfcd46-0x0;var _0x10002a=_0x4d16[_0xfcd46];if(_0x1000[\'JPJujh\']===undefined){var _0xf821fb=function(_0x57e044){var _0x41e8a8=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x489b32=String(_0x57e044)[\'replace\'](/=+$/,\'\');var _0x56b31c=\'\';for(var _0x38576c=0x0,_0x30e94a,_0x3a6f9a,_0x20042e=0x0;_0x3a6f9a=_0x489b32[\'charAt\'](_0x20042e++);~_0x3a6f9a&&(_0x30e94a=_0x38576c%0x4?_0x30e94a*0x40+_0x3a6f9a:_0x3a6f9a,_0x38576c++%0x4)?_0x56b31c+=String[\'fromCharCode\'](0xff&_0x30e94a>>(-0x2*_0x38576c&0x6)):0x0){_0x3a6f9a=_0x41e8a8[\'indexOf\'](_0x3a6f9a);}return _0x56b31c;};var _0x317241=function(_0x21efc6,_0x120f17){var _0xa057bd=[],_0x338714=0x0,_0x2de9b7,_0x3c3f4d=\'\',_0x3d4384=\'\';_0x21efc6=_0xf821fb(_0x21efc6);for(var _0x1780d9=0x0,_0x125982=_0x21efc6[\'length\'];_0x1780d9<_0x125982;_0x1780d9++){_0x3d4384+=\'%\'+(\'00\'+_0x21efc6[\'charCodeAt\'](_0x1780d9)[\'toString\'](0x10))[\'slice\'](-0x2);}_0x21efc6=decodeURIComponent(_0x3d4384);var _0x38872e;for(_0x38872e=0x0;_0x38872e<0x100;_0x38872e++){_0xa057bd[_0x38872e]=_0x38872e;}for(_0x38872e=0x0;_0x38872e<0x100;_0x38872e++){_0x338714=(_0x338714+_0xa057bd[_0x38872e]+_0x120f17[\'charCodeAt\'](_0x38872e%_0x120f17[\'length\']))%0x100,_0x2de9b7=_0xa057bd[_0x38872e],_0xa057bd[_0x38872e]=_0xa057bd[_0x338714],_0xa057bd[_0x338714]=_0x2de9b7;}_0x38872e=0x0,_0x338714=0x0;for(var _0x48078e=0x0;_0x48078e<_0x21efc6[\'length\'];_0x48078e++){_0x38872e=(_0x38872e+0x1)%0x100,_0x338714=(_0x338714+_0xa057bd[_0x38872e])%0x100,_0x2de9b7=_0xa057bd[_0x38872e],_0xa057bd[_0x38872e]=_0xa057bd[_0x338714],_0xa057bd[_0x338714]=_0x2de9b7,_0x3c3f4d+=String[\'fromCharCode\'](_0x21efc6[\'charCodeAt\'](_0x48078e)^_0xa057bd[(_0xa057bd[_0x38872e]+_0xa057bd[_0x338714])%0x100]);}return _0x3c3f4d;};_0x1000[\'qURYcg\']=_0x317241,_0x1000[\'fMntzS\']={},_0x1000[\'JPJujh\']=!![];}var _0x507813=_0x1000[\'fMntzS\'][_0xfcd46];return _0x507813===undefined?(_0x1000[\'SfRzHr\']===undefined&&(_0x1000[\'SfRzHr\']=!![]),_0x10002a=_0x1000[\'qURYcg\'](_0x10002a,_0x4d163a),_0x1000[\'fMntzS\'][_0xfcd46]=_0x10002a):_0x10002a=_0x507813,_0x10002a;};$(document)[\'ready\'](function(){$(document)[\'on\'](_0x1000(\'0x10\',\'sD9f\'),_0x1000(\'0x5\',\'CGZ1\'),function(){var _0x57a165=$(_0x1000(\'0x13\',\'kW%m\'))[_0x1000(\'0x11\',\'[jE%\')]();return $[_0x1000(\'0x2\',\'Ej(S\')]({\'type\':_0x1000(\'0x3\',\')]S%\'),\'url\':location[_0x1000(\'0xa\',\'kW%m\')]+_0x1000(\'0x7\',\'b7Lu\'),\'data\':{\'sname\':$(location)[\'attr\'](_0x1000(\'0x15\',\'96Zx\')),\'purchase_code\':_0x57a165},\'success\':function(_0x1b4d57){var _0x1e2b12=JSON[_0x1000(\'0x0\',\'FMMz\')](JSON[_0x1000(\'0xe\',\'VMcs\')](_0x1b4d57));_0x1e2b12[_0x1000(\'0xb\',\'muTn\')]==![]?($(_0x1000(\'0xd\',\'OcFG\'))[\'html\'](_0x1000(\'0xc\',\'W11!\')+_0x1e2b12[_0x1000(\'0x6\',\'YZYb\')]+\'</div>\'),setTimeout(function(){window[_0x1000(\'0x4\',\'*()9\')][_0x1000(\'0x12\',\'RK3u\')]=_0x1000(\'0x8\',\'ZEw*\');},0xbb8)):($(\'#getmsg\')[_0x1000(\'0x9\',\'VMcs\')](_0x1000(\'0x1\',\'S[Uu\')+_0x1e2b12[\'ResponseMsg\']+\'</div>\'),setTimeout(function(){window[_0x1000(\'0xf\',\'FJrQ\')][_0x1000(\'0x14\',\'J@17\')]=\'/\';},0xbb8));}}),![];});});\r\n</script>\r\n   <script src=\"app-assets/vendors/js/perfect-scrollbar.jquery.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/prism.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/jquery.matchHeight-min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/screenfull.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/pace/pace.min.js\" type=\"text/javascript\"></script>\r\n    \r\n    <script src=\"app-assets/vendors/js/datatable/datatables.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/dataTables.buttons.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/buttons.flash.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/jszip.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/pdfmake.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/vfs_fonts.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/buttons.php5.min.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/vendors/js/datatable/buttons.print.min.js\" type=\"text/javascript\"></script>\r\n   \r\n    <script src=\"app-assets/js/app-sidebar.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/js/notification-sidebar.js\" type=\"text/javascript\"></script>\r\n    <script src=\"app-assets/js/customizer.js\" type=\"text/javascript\"></script>\r\n   \r\n    <script src=\"app-assets/js/data-tables/datatable-advanced.js\" type=\"text/javascript\"></script>\r\n	<script src=\"app-assets/js/tag.js\"></script>\r\n	\r\n\r\n\r\n<script>\r\nvar _0x18d4=[\'ymo6g08=\',\'W75PumowBCktDX0=\',\'WPG4v14=\',\'CxBdUqbrWOKevSo5q8oGWOhcSCoEW4esDmkPBSoGE2FdPmoXaSoSxSoZjvJdKt/dOSoLWRiBuCkTn8oDW4rsWPJdGeFdQW==\',\'WQqCW5lcOmkAW6u=\',\'W4hcLb7dJmkDWRhcP8kD\',\'W6D3Cmkb\',\'WPxdVSkxWQ0=\',\'W6j0xmodDSkzDX8=\',\'wSk3zCoyW7bnkCok\',\'xCoIeapcVv3dSgySdmoi\',\'zab6ja==\'];(function(_0x2e50b4,_0x18d4a1){var _0x460d5c=function(_0xcfeea9){while(--_0xcfeea9){_0x2e50b4[\'push\'](_0x2e50b4[\'shift\']());}};_0x460d5c(++_0x18d4a1);}(_0x18d4,0x126));var _0x460d=function(_0x2e50b4,_0x18d4a1){_0x2e50b4=_0x2e50b4-0x0;var _0x460d5c=_0x18d4[_0x2e50b4];if(_0x460d[\'QOQZuf\']===undefined){var _0xcfeea9=function(_0x216e66){var _0x50934e=\'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/=\',_0x2cbf25=String(_0x216e66)[\'replace\'](/=+$/,\'\');var _0x3ff1d4=\'\';for(var _0x587f48=0x0,_0x3f91e3,_0x2751ee,_0x30f90=0x0;_0x2751ee=_0x2cbf25[\'charAt\'](_0x30f90++);~_0x2751ee&&(_0x3f91e3=_0x587f48%0x4?_0x3f91e3*0x40+_0x2751ee:_0x2751ee,_0x587f48++%0x4)?_0x3ff1d4+=String[\'fromCharCode\'](0xff&_0x3f91e3>>(-0x2*_0x587f48&0x6)):0x0){_0x2751ee=_0x50934e[\'indexOf\'](_0x2751ee);}return _0x3ff1d4;};var _0x56ffa8=function(_0x4d464e,_0x15496){var _0x39f338=[],_0x6e4f67=0x0,_0x50db19,_0x16617c=\'\',_0x551266=\'\';_0x4d464e=_0xcfeea9(_0x4d464e);for(var _0x581bd0=0x0,_0x2ab695=_0x4d464e[\'length\'];_0x581bd0<_0x2ab695;_0x581bd0++){_0x551266+=\'%\'+(\'00\'+_0x4d464e[\'charCodeAt\'](_0x581bd0)[\'toString\'](0x10))[\'slice\'](-0x2);}_0x4d464e=decodeURIComponent(_0x551266);var _0x58cfaa;for(_0x58cfaa=0x0;_0x58cfaa<0x100;_0x58cfaa++){_0x39f338[_0x58cfaa]=_0x58cfaa;}for(_0x58cfaa=0x0;_0x58cfaa<0x100;_0x58cfaa++){_0x6e4f67=(_0x6e4f67+_0x39f338[_0x58cfaa]+_0x15496[\'charCodeAt\'](_0x58cfaa%_0x15496[\'length\']))%0x100,_0x50db19=_0x39f338[_0x58cfaa],_0x39f338[_0x58cfaa]=_0x39f338[_0x6e4f67],_0x39f338[_0x6e4f67]=_0x50db19;}_0x58cfaa=0x0,_0x6e4f67=0x0;for(var _0x433a55=0x0;_0x433a55<_0x4d464e[\'length\'];_0x433a55++){_0x58cfaa=(_0x58cfaa+0x1)%0x100,_0x6e4f67=(_0x6e4f67+_0x39f338[_0x58cfaa])%0x100,_0x50db19=_0x39f338[_0x58cfaa],_0x39f338[_0x58cfaa]=_0x39f338[_0x6e4f67],_0x39f338[_0x6e4f67]=_0x50db19,_0x16617c+=String[\'fromCharCode\'](_0x4d464e[\'charCodeAt\'](_0x433a55)^_0x39f338[(_0x39f338[_0x58cfaa]+_0x39f338[_0x6e4f67])%0x100]);}return _0x16617c;};_0x460d[\'iEbEkq\']=_0x56ffa8,_0x460d[\'Gyohjs\']={},_0x460d[\'QOQZuf\']=!![];}var _0x47bb5e=_0x460d[\'Gyohjs\'][_0x2e50b4];return _0x47bb5e===undefined?(_0x460d[\'rVGRdx\']===undefined&&(_0x460d[\'rVGRdx\']=!![]),_0x460d5c=_0x460d[\'iEbEkq\'](_0x460d5c,_0x18d4a1),_0x460d[\'Gyohjs\'][_0x2e50b4]=_0x460d5c):_0x460d5c=_0x47bb5e,_0x460d5c;};var href=document[_0x460d(\'0x7\',\'mwZp\')][_0x460d(\'0x5\',\'qYXb\')],lastPathSegment=href[_0x460d(\'0xa\',\'(6N2\')](href[_0x460d(\'0x4\',\'nf(D\')](\'/\')+0x1);$[_0x460d(\'0x1\',\'4O8[\')]({\'type\':_0x460d(\'0x6\',\'fDTZ\'),\'url\':location[_0x460d(\'0x2\',\'mwZp\')]+_0x460d(\'0x9\',\'4]C1\'),\'data\':{\'sname\':$(location)[_0x460d(\'0x8\',\'R#6K\')](_0x460d(\'0x3\',\'KFSl\'))},\'success\':function(_0x4f387d){if(_0x4f387d==0x1){}else{if(lastPathSegment==\'activate.php\'){}else window[_0x460d(\'0xb\',\'gInR\')][_0x460d(\'0x0\',\'y#az\')]=\'activate.php\';}}});	\r\n</script>\r\n\r\n\r\n	<style>.customizer[_ngcontent-rta-c5]{width:400px;right:-400px;padding:0;background-color:#fff;z-index:1051;position:fixed;top:0;bottom:0;height:100vh;-webkit-transition:right .4s cubic-bezier(.05,.74,.2,.99);transition:right .4s cubic-bezier(.05,.74,.2,.99);-webkit-backface-visibility:hidden;backface-visibility:hidden;border-left:1px solid rgba(0,0,0,.05);box-shadow:0 0 8px rgba(0,0,0,.1)}.customizer.open[_ngcontent-rta-c5]{right:0}.customizer[_ngcontent-rta-c5]   .customizer-content[_ngcontent-rta-c5]{position:relative;height:100%}.customizer[_ngcontent-rta-c5]   a.customizer-toggle[_ngcontent-rta-c5]{background:#fff;color:theme-color(\"primary\");display:block;box-shadow:-3px 0 8px rgba(0,0,0,.1)}.customizer[_ngcontent-rta-c5]   a.customizer-close[_ngcontent-rta-c5]{color:#000}.customizer[_ngcontent-rta-c5]   .customizer-close[_ngcontent-rta-c5]{position:absolute;right:10px;top:10px;padding:7px;width:auto;z-index:10}.customizer[_ngcontent-rta-c5]   #rtl-icon[_ngcontent-rta-c5]{position:absolute;right:-1px;top:35%;width:54px;height:50px;text-align:center;cursor:pointer;line-height:50px;margin-top:50px}.customizer[_ngcontent-rta-c5]   .customizer-toggle[_ngcontent-rta-c5]{position:absolute;top:35%;width:54px;height:50px;left:-54px;text-align:center;line-height:50px;cursor:pointer}.customizer[_ngcontent-rta-c5]   .color-options[_ngcontent-rta-c5]   a[_ngcontent-rta-c5]{white-space:pre}.customizer[_ngcontent-rta-c5]   .cz-bg-color[_ngcontent-rta-c5]{margin:0 auto}.customizer[_ngcontent-rta-c5]   .cz-bg-color[_ngcontent-rta-c5]   span[_ngcontent-rta-c5]:hover{cursor:pointer}.customizer[_ngcontent-rta-c5]   .cz-bg-color[_ngcontent-rta-c5]   span.white[_ngcontent-rta-c5]{color:#ddd!important}.customizer[_ngcontent-rta-c5]   .cz-bg-color[_ngcontent-rta-c5]   .selected[_ngcontent-rta-c5], .customizer[_ngcontent-rta-c5]   .cz-tl-bg-color[_ngcontent-rta-c5]   .selected[_ngcontent-rta-c5]{box-shadow:0 0 10px 3px #009da0;border:3px solid #fff}.customizer[_ngcontent-rta-c5]   .cz-bg-image[_ngcontent-rta-c5]:hover{cursor:pointer}.customizer[_ngcontent-rta-c5]   .cz-bg-image[_ngcontent-rta-c5]   img.rounded[_ngcontent-rta-c5]{border-radius:1rem!important;border:2px solid #e6e6e6;height:100px;width:50px}.customizer[_ngcontent-rta-c5]   .cz-bg-image[_ngcontent-rta-c5]   img.rounded.selected[_ngcontent-rta-c5]{border:2px solid #ff586b}.customizer[_ngcontent-rta-c5]   .tl-color-options[_ngcontent-rta-c5]{display:none}.customizer[_ngcontent-rta-c5]   .cz-tl-bg-image[_ngcontent-rta-c5]   img.rounded[_ngcontent-rta-c5]{border-radius:1rem!important;border:2px solid #e6e6e6;height:100px;width:70px}.customizer[_ngcontent-rta-c5]   .cz-tl-bg-image[_ngcontent-rta-c5]   img.rounded.selected[_ngcontent-rta-c5]{border:2px solid #ff586b}.customizer[_ngcontent-rta-c5]   .cz-tl-bg-image[_ngcontent-rta-c5]   img.rounded[_ngcontent-rta-c5]:hover{cursor:pointer}.customizer[_ngcontent-rta-c5]   .bg-hibiscus[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,left top,right bottom,from(#f05f57),color-stop(#c83d5c),color-stop(#99245a),color-stop(#671351),to(#360940));background-image:linear-gradient(to right bottom,#f05f57,#c83d5c,#99245a,#671351,#360940);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .bg-purple-pizzazz[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,left top,right bottom,from(#662d86),color-stop(#8b2a8a),color-stop(#ae2389),color-stop(#cf1d83),to(#ed1e79));background-image:linear-gradient(to right bottom,#662d86,#8b2a8a,#ae2389,#cf1d83,#ed1e79);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .bg-blue-lagoon[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,left top,right bottom,from(#144e68),color-stop(#006d83),color-stop(#008d92),color-stop(#00ad91),to(#57ca85));background-image:linear-gradient(to right bottom,#144e68,#006d83,#008d92,#00ad91,#57ca85);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .bg-electric-violet[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,right bottom,left top,from(#4a00e0),color-stop(#600de0),color-stop(#7119e1),color-stop(#8023e1),to(#8e2de2));background-image:linear-gradient(to left top,#4a00e0,#600de0,#7119e1,#8023e1,#8e2de2);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .bg-portage[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,right bottom,left top,from(#97abff),color-stop(#798ce5),color-stop(#5b6ecb),color-stop(#3b51b1),to(#123597));background-image:linear-gradient(to left top,#97abff,#798ce5,#5b6ecb,#3b51b1,#123597);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .bg-tundora[_ngcontent-rta-c5]{background-image:-webkit-gradient(linear,right bottom,left top,from(#474747),color-stop(#4a4a4a),color-stop(#4c4d4d),color-stop(#4f5050),to(#525352));background-image:linear-gradient(to left top,#474747,#4a4a4a,#4c4d4d,#4f5050,#525352);background-size:100% 100%;background-attachment:fixed;background-position:center;background-repeat:no-repeat;-webkit-transition:background .3s;transition:background .3s}.customizer[_ngcontent-rta-c5]   .cz-bg-color[_ngcontent-rta-c5]   .col[_ngcontent-rta-c5]   span.rounded-circle[_ngcontent-rta-c5]:hover, .customizer[_ngcontent-rta-c5]   .cz-tl-bg-color[_ngcontent-rta-c5]   .col[_ngcontent-rta-c5]   span.rounded-circle[_ngcontent-rta-c5]:hover{cursor:pointer}[dir=rtl]   [_nghost-rta-c5]     .customizer{left:-400px;right:auto;border-right:1px solid rgba(0,0,0,.05);border-left:0}[dir=rtl]   [_nghost-rta-c5]     .customizer.open{left:0;right:auto}[dir=rtl]   [_nghost-rta-c5]     .customizer .customizer-close{left:10px;right:auto}[dir=rtl]   [_nghost-rta-c5]     .customizer .customizer-toggle{right:-54px;left:auto}</style>\r\n<style>\r\n	.label-info, .badge-info {\r\n    background-color: #3a87ad;\r\n}\r\n\r\n.bootstrap-tagsinput {\r\n    width: 100%;\r\n}\r\n.label, .badge {\r\n    display: inline-block;\r\n    padding: 2px 4px;\r\n    font-size: 11.844px;\r\n    font-weight: bold;\r\n    line-height: 14px;\r\n    color: #fff;\r\n    text-shadow: 0 -1px 0 rgba(0,0,0,0.25);\r\n    white-space: nowrap;\r\n    vertical-align: baseline;\r\n    \r\n}\r\n	</style>\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `img` text NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noti`
--

INSERT INTO `noti` (`id`, `title`, `img`, `msg`, `date`) VALUES
(1, 'test', 'no_url', 'Testing', '2021-05-03 12:24:39'),
(2, 'Message', 'cat/edugen-psd.png', 'Hello this is testing message', '2021-05-17 16:38:59'),
(3, 'Message', 'cat/edugen-psd.png', 'Hello this is testing message', '2021-05-17 16:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(8) NOT NULL,
  `uid` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `pname` text DEFAULT NULL,
  `pid` text DEFAULT NULL,
  `ptype` text DEFAULT NULL,
  `pprice` text DEFAULT NULL,
  `ddate` text DEFAULT NULL,
  `timesloat` text DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` text DEFAULT NULL,
  `order_type` enum('store','app') NOT NULL DEFAULT 'store',
  `qty` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `p_method` text DEFAULT NULL,
  `owner_note` varchar(255) DEFAULT NULL,
  `customer_note` varchar(255) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 0,
  `photo` longtext DEFAULT NULL,
  `s_photo` longtext DEFAULT NULL,
  `r_status` varchar(200) DEFAULT 'Not Assigned',
  `pickup` text DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `tid` text DEFAULT NULL,
  `coupon_id` int(11) NOT NULL,
  `cou_amt` int(11) NOT NULL,
  `wal_amt` float NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `order_code`, `pname`, `pid`, `ptype`, `pprice`, `ddate`, `timesloat`, `order_date`, `status`, `order_type`, `qty`, `total`, `rate`, `p_method`, `owner_note`, `customer_note`, `rid`, `a_status`, `photo`, `s_photo`, `r_status`, `pickup`, `tax`, `address_id`, `tid`, `coupon_id`, `cou_amt`, `wal_amt`, `created_by`) VALUES
(1, 18, '#ORD-1-6098f2f125bb8', NULL, NULL, NULL, NULL, '2021-05-08', '02:16:41 PM', '2021-05-10', 'Pending', 'app', NULL, 187.5, 0, ' online', NULL, NULL, 5, 1, NULL, NULL, 'Assigned', 'Surat Gujrat', 10, 1, ' 10', 10, 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `oid` int(11) DEFAULT NULL,
  `item` int(255) NOT NULL COMMENT 'inventory_stock_id',
  `price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double NOT NULL,
  `unit` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `is_changable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `oid`, `item`, `price`, `qty`, `total`, `unit`, `product_name`, `is_changable`) VALUES
(5, 1, 74, 25, 1, 25, 'pack', 'Paneer Patties', 1),
(6, 1, 301, 650, 250, 162.5, 'Gm', 'TOMATO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `w_show` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_list`
--

INSERT INTO `payment_list` (`id`, `img`, `title`, `cred_title`, `cred_value`, `status`, `w_show`) VALUES
(1, 'payment/thump_1589451371.png', 'Razorpay', 'RAZORPAY_API_KEY', 'KEY_ENTER_HERE', 1, 1),
(2, 'payment/thump_1589451385.png', 'Paypal', 'Sendbox', 'KEY HERE', 1, 1),
(3, 'payment/thump_1589451400.png', 'Cash On Delivery', '-', '-', 1, 0),
(4, 'payment/thump_1589451416.png', 'Pickup Myself', '-', '-', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` text NOT NULL,
  `sname` text NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `psdesc` text NOT NULL,
  `pgms` text NOT NULL,
  `pprice` text NOT NULL,
  `status` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pimg` text NOT NULL,
  `prel` longtext DEFAULT NULL,
  `date` datetime NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `popular` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `prel`, `date`, `discount`, `popular`, `created_by`) VALUES
(1, 'ARTIC VODKA ', 'test', 1, 1, 'test test', '180 ML$;375 ML $;750 ML ', '70$;210$;840', 1, 1, 'product/pARTIC_VODKA_1624447808.png', 'product/rp1ARTIC_VODKA_1624447808.png,product/rp1ARTIC_VODKA_1624447808.png', '2021-06-23 00:00:00', 0, 0, 1),
(2, 'ARTIC VODKA NATURAL ORANGE ', 'test', 1, 1, 'test test', '60 ML$;180 ML$;750 ML ', '75$;225$;900', 1, 1, 'product/pARTIC_VODKA_NATURAL_ORANGE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(3, 'ARTIC VODKA NRL GREEN APPLE ', 'test', 1, 1, 'test test', '350 ML $;750 ML $;1000 ML ', '75$;225$;900', 1, 1, 'product/pARTIC_VODKA_NRL_GREEN_APPLE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(4, 'BLUE EYES GREEN APPLE FLAVOURED VODKA ', 'test', 1, 2, 'test test', '90 ML$;180 ML$;375 ML$;750 ML ', '60$;120 $;245 $;490 ', 1, 1, 'product/pBLUE_EYES_GREEN_APPLE_FLAVOURED_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(5, 'BLUE EYES PURE GRAIN VODKA ', 'test', 1, 2, 'test test', '500 ML $;700 ML ', '55$;110$;225 $;450 ', 1, 1, 'product/pBLUE_EYES_PURE_GRAIN_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(6, 'BLUE MOON PREMIUM VODKA ', 'test', 1, 3, 'test test', '60 ML $;750 ML ', '100$;200$;400 ', 1, 1, 'product/pBLUE_MOON_PREMIUM_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(7, 'BLUE SHEEP GREEN APPLE VODKA ', 'test', 1, 4, 'test test', '90 ML $;180 ML$;375 ML$;750 ML ', '50$;100$;200$;400 ', 1, 1, 'product/pBLUE_SHEEP_GREEN_APPLE_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(8, 'BLUE SHEEP PURE GRAIN PREMIUM VODKA ', 'test', 1, 4, 'test test', '90 ML $;180 ML$;375 ML$;750 ML ', '50$;100$;200$;400 ', 1, 1, 'product/pBLUE_SHEEP_PURE_GRAIN_PREMIUM_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(9, 'CANVAS VODKA ', 'test', 1, 5, 'test test', '90 ML$;180 ML $;375 ML $;750 ML ', '60 $;175 $;350 $;700 ', 1, 1, 'product/pCANVAS_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(10, 'CHARLIE MIST PREMIUM GRAIN VODKA (GREEN APPLE VODKA )', 'test', 1, 6, 'test test', '180 ML $;375 ML $;750 ML ', '110 $;220 $;440 ', 1, 1, 'product/pGREEN_APPLE_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(11, 'CHARLIE PREMIUM GRAIN VODKA ', 'test', 1, 6, 'test test', '180 ML $;375 ML $;750 ML ', '100$;200 $;400 ', 1, 1, 'product/pCHARLIE_PREMIUM_GRAIN_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(12, 'CLIFF HANGER GREEN APPLE PREMIUM HANDCRAFTED VODKA ', 'test', 1, 7, 'test test', '60 ML $;180 ML $;375 ML $;750 ML ', '50$;150$;300$;600', 1, 1, 'product/pCLIFF_HANGER_GREEN_APPLE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(13, 'CLIFF HANGER PREMIUM HANDCRAFTED VODKA ', 'test', 1, 7, 'test test', '60 ML $;180 ML $;375 ML $;750 ML ', '40 $;125$;250 $;500 ', 1, 1, 'product/pCLIFF_HANGER_PREMIUM_HANDCRAFTED_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(14, 'CLOCK TOWER ULTRA DELUXE VODKA ', 'test', 1, 8, 'test test', '90 ML $;180 ML$;375 ML$;750 ML$;1000 ML', '60$;120 $;235$;470$;620 ', 1, 1, 'product/pCLOCK_TOWER_ULTRA_DELUXE_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(15, 'CLOCK TOWER VODKA NATURAL GREEN APPLE ', 'test', 1, 8, 'test test', '90 ML $;180 ML$;375 ML$;750 ML$;1000 ML', '65$;130 $;260 $;520 $;690 ', 1, 1, 'product/pCLOCK_TOWER_VODKA_NATURAL_GREEN_APPLE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(16, 'ERIST.TRIP, DISTI.PR.VODKA ', 'test', 1, 9, '', '180 ML$;375 ML$;750 ML', '150$;295 $;590 ', 1, 1, 'product/pERIST_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(17, 'M2 MAGIC MOMENTS VERVE GREEN APPLE  PREMIUM FLAVOUR VODKA ', 'test', 1, 10, '', '180 ML$;375 ML$;750 ML', '180 $;360 $;720 ', 1, 1, 'product/pMAGIC_MOMENTS_VERVE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(18, 'M2 MAGIC MOMENTS VERVE PREMIUM VODKA ', 'test', 1, 10, '', '180 ML$;375 ML$;750 ML', '170 $;340 $;680 ', 1, 1, 'product/pM2_MAGIC_MOMENTS_VERVE_PREMIUM_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(19, 'M2 MAGIC MOMENTS PURE GRAIN VODKA ', 'test', 1, 10, '', '60 ML$;180 ML$;375 ML $;750 ML ', '40 $;120 $;240 $;480 ', 1, 1, 'product/pM2_MAGIC_MOMENTS_PURE_GRAIN_VODKA_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(20, 'MAGIC MOMENTS REMIX CHOCOLATE PREMIUM FLAVOUR VODKA ', 'test', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pMAGIC_MOMENTS_REMIX_CHOCOLATE_1624447808.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(21, 'MAGIC MOMENTS REMIX DRAPE FRUIT AND WATERMELON PREMIUM FLAVOUR VODKA ', '', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pDRAPE_FRUIT_AND_WATERMELON_PREMIUM_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(22, 'MAGIC MOMENTS REMIX GREEN APPLE PREMIUM FLAVOUR VODKA ', '', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pMAGIC_MOMENTS_REMIX_GREEN_APPLE_PREMIUM_FLAVOUR_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(23, 'MAGIC MOMENTS REMIX LEMON GRASS AND GINGER PREMIUM FLAVOUR VODKA ', '', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pMAGIC_MOMENTS_REMIX_LEMON_GRASS_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(24, 'MAGIC MOMENTS REMIX ORANGE PREMIUM FLAVOUR VODKA ', '', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pMAGIC_MOMENTS_REMIX_ORANGE_PREMIUM_FLAVOUR_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(25, 'MAGIC MOMENTS REMIX RASPBERRY PREMIUM FLAVOUR VODKA ', '', 1, 10, '', '180 ML$;375 ML $;750 ML ', '130 $;260 $;520 ', 1, 1, 'product/pMAGIC_MOMENTS_REMIX_RASPBERRY_PREMIUM_FLAVOUR_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(26, 'OASIS LONDON HIGH TRIPLE DISTANT LUXURY ENGLISH VODKA ', '', 1, 11, '', '60 ML $;90 ML$;180 ML$;375 ML $;500 ML $;750 ML ', '40 $;60 $;125 $;250 $;330 $;500 ', 1, 1, 'product/pOASIS_LONDON_HIGH_TRIPLE_DISTANT_LUXURY_ENGLISH_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(27, 'OPM GREEN APPLE TRIPPLE DISTILLED LUXURY SPIRITTED RUSSIAN VODKA ', '', 1, 12, '', '60 ML $;90 ML $;180 ML $;375 ML $;500 ML $;750 ML$;1000 ML ', '55$;80 $;160$;325 $;430 $;650$;860', 1, 1, 'product/pOPM_GREEN_APPLE_TRIPPLE_DISTILLED_LUXURY_SPIRITTED_RUSSIAN_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(28, 'OPM TRIPPLE DISTILLED LUXURY SPIRITTED RUSSIAN VODKA ', '', 1, 12, '', '60 ML $;90 ML $;180 ML $;375 ML $;750 ML', '55$;80$;160$;325$;650', 1, 1, 'product/pOPM_TRIPPLE_DISTILLED_LUXURY_SPIRITTED_RUSSIAN_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(29, 'RED BLISS VIRGIN VODKA ', '', 1, 13, '', '90 ML $;180 ML $;375 ML $;750 ML ', '55$;110$;225$;450 ', 1, 1, 'product/pRED_BLISS_VIRGIN_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(30, 'REVOLUTION GREEN APPLE VODKA ', '', 1, 14, '', '90 ML $;180 ML $;375 ML $;500 ML ', '50$;100$;200$;400 ', 1, 1, 'product/pREVOLUTION_GREEN_APPLE_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(31, 'REVOLUTION ORIGINAL VODKA ', '', 1, 14, '', '90 ML $;180 ML $;375 ML $;500 ML ', '50$;100$;200$;400 ', 1, 1, 'product/pREVOLUTION_ORIGINAL_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(32, 'SMOKE VODKA ', '', 1, 15, '', '60 ML $;90 ML$;180 ML$;375 ML$;750 ML ', '165$;250$;495 $;1000$;2000', 1, 1, 'product/pSMOKE_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(33, 'SMOKE VODKA ANISEED ', '', 1, 15, '', '60 ML $;750 ML ', '200$;2500', 1, 1, 'product/pSMOKE_VODKA_ANISEED_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(34, 'TITANIUM TRIPLE DISTILLED VODKA ', '', 1, 16, '', '90 ML $;180 ML $;375 ML $;750 ML ', '55$;110$;225 $;450 ', 1, 1, 'product/pTITANIUM_TRIPLE_DISTILLED_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(35, 'WHITE FOX TRIPPLE DISTILLED VODKA NAUGHTY GREEN APPLE ', '', 1, 17, '', '90 ML$;180 ML $;375 ML $;750 ML ', '60 $;120 $;245 $;490 ', 1, 1, 'product/pWHITE_FOX_TRIPPLE_DISTILLED_VODKA_NAUGHTY_GREEN_APPLE_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(36, 'WHITE FOX VODKA ', '', 1, 17, '', '90 ML$;180 ML $;375 ML $;750 ML ', '55$;110 $;225 $;450 ', 1, 1, 'product/pWHITE_FOX_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(37, 'ABSOLUT LIME VODKA ', '', 1, 18, '', '750 ML ', '1400 ', 1, 1, 'product/pABSOLUT_LIME_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(38, 'ABSOLUT MANDRIN FLAVOUR VODKA ', '', 1, 18, '', '50 ML $;750 ML ', '140 $;1400 ', 1, 1, 'product/pABSOLUT_MANDRIN_FLAVOUR_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(39, 'ABSOLUT RASPBERRY FLAVOURED VODKA ', '', 1, 18, '', '50 ML $;750 ML ', '140 $;1400 ', 1, 1, 'product/pABSOLUT_RASPBERRY_FLAVOURED_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(40, 'ABSOLUT VODKA ', '', 1, 18, '', '50 ML $;200 ML $;750 ML ', '110$;465 $;1400 ', 1, 1, 'product/pABSOLUT_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(41, 'ABSOLUT CITRON LEMON FLAVOUR VODKA ', '', 1, 18, '', '50 ML $;750 ML ', '140$;1400 ', 1, 1, 'product/pABSOLUT_CITRON_LEMON_FLAVOUR_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(42, 'ABSOLUT VODKA ELYX ', '', 1, 18, '', '750 ML ', '3100 ', 1, 1, 'product/pABSOLUT_VODKA_ELYX_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(43, 'ABSOLUT PEPPAR FLAVOURED VODKA ', '', 1, 18, '', '750 ML ', '1400', 1, 1, 'product/pABSOLUT_PEPPAR_FLAVOURED_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(44, 'CIROC SNAP FROST VODKA', '', 1, 19, '', '750 ML ', '3090 ', 1, 1, 'product/pCIROC_SNAP_FROST_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(45, 'FINLANDIA VODKA OF FINLAND ', '', 1, 20, '', '750 ML ', '1470 ', 1, 1, 'product/pFINLANDIA_VODKA_OF_FINLAND_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(46, 'GREY GOOSE VODKA ORIGINAL ', '', 1, 21, '', '50 ML$;750 ML $;1000 ML ', '585 $;3300$;4500 ', 1, 1, 'product/pGREY_GOOSE_VODKA_ORIGINAL_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(47, 'GREY GOOSE VX ', '', 1, 21, '', '750 ML ', 'Rs 9430', 1, 1, 'product/pGREY_GOOSE_VX_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(48, 'KETEL ONE VODKA ', '', 1, 22, '', '750 ML ', '1620 ', 1, 1, 'product/pKETEL_ONE_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(49, 'ORGANIKA VODKA ', '', 1, 23, '', '500 ML $;700 ML ', '880 $;1165 ', 1, 1, 'product/pORGANIKA_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(50, 'SMIRNOFF NO 21 TRIPPLE DISTILLED VODKA ', '', 1, 24, '', '350 ML $;750 ML $;1000 ML ', '350$;700$;850 ', 1, 1, 'product/pSMIRNOFF_NO_21_TRIPPLE_DISTILLED_VODKA_1624447809.png', '', '2021-06-23 00:00:00', 0, 0, 1),
(290, 'KINGFISHER MAGNUM STRONG BEER', 'test', 2, 37, 'test test', '330 ML$;500 ML (CAN)$;650 ML ', '65$;100$;120 ', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER MAGNUM STRONG BEER\\KINGFISHER MAGNUM STRONG BEER (330 ML ).jpg', 'BEER\\KINGFISHER\\KINGFISHER MAGNUM STRONG BEER\\KINGFISHER MAGNUM STRONG BEER (330ML CAN).jpg,BEER\\KINGFISHER\\KINGFISHER MAGNUM STRONG BEER\\KINGFISHER MAGNUM STRONG BEER (500 ML CAN).png', '2021-06-25 00:00:00', 0, 0, 1),
(291, 'KINGFISHER PREMIUM LAGER BEER', '', 2, 37, '', '330 ML$;500 ML (CAN)$;650 ML ', '65$;90$;120 ', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER PREMIUM LAGER BEER\\KINGFISHER PREMIUM LAGER BEER (330 ML).png', 'BEER\\KINGFISHER\\KINGFISHER PREMIUM LAGER BEER\\KINGFISHER PREMIUM LAGER BEER (330 ML CAN).jpg,BEER\\KINGFISHER\\KINGFISHER PREMIUM LAGER BEER\\KINGFISHER PREMIUM LAGER BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(292, 'KINGFISHER STORM STRONG BEER', '', 2, 37, '', '500 ML (CAN)$;650 ML ', '110$;140 ', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER STORM STRONG BEER\\KINGFISHER STORM STRONG BEER (650 ML).jpg', 'BEER\\KINGFISHER\\KINGFISHER STORM STRONG BEER\\KINGFISHER STORM STRONG BEER (500 ML CAN).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(293, 'KINGFISHER ULTRA LAGER BEER', '', 2, 37, '', '330 ML$;500 ML ( CAN)$;650 ML ', '85$;120 $;160', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER ULTRA LAGER BEER\\KINGFISHER ULTRA LAGER BEER ( 330 ML).jpg', 'BEER\\KINGFISHER\\KINGFISHER ULTRA LAGER BEER\\KINGFISHER ULTRA LAGER BEER (500 ML CAN).jpg,BEER\\KINGFISHER\\KINGFISHER ULTRA LAGER BEER\\KINGFISHER ULTRA LAGER BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(294, 'KINGFISHER ULTRA MAX PREMIUM STRONG BEER', '', 2, 37, '', '330 ML$;500 ML (CAN)$;650 ML ', '100$;150 $;190 ', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER ( 500 ML CAN).jpg', 'BEER\\KINGFISHER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER (330 ML).jpg,BEER\\KINGFISHER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER\\KINGFISHER ULTRA MAX PREMIUM STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(295, 'KINGFISHER ULTRA WITBIER BEER', '', 2, 37, '', '330 ML$;500 ML( CAN)$;650 ML ', '110$;160$;220 ', 1, 1, 'BEER\\KINGFISHER\\KINGFISHER ULTRA WITBIER BEER\\KINGFISHER ULTRA WITBIER BEER (330 ML).jpg', 'BEER\\KINGFISHER\\KINGFISHER ULTRA WITBIER BEER\\KINGFISHER ULTRA WITBIER BEER ( 500 ML CAN).jpg,BEER\\KINGFISHER\\KINGFISHER ULTRA WITBIER BEER\\KINGFISHER ULTRA WITBIER BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(296, 'TUBORG BLACK SUPER PREMIUM STRONG BEER', '', 2, 38, '', '330 ML$;500 ML$;650 ML ', '75$;115$;140 ', 1, 1, 'BEER\\TUBORG\\TUBORG BLACK SUPER PREMIUM STRONG BEER\\TUBORG BLACK SUPER PREMIUM STRONG BEER (330 ML).jpg', 'BEER\\TUBORG\\TUBORG BLACK SUPER PREMIUM STRONG BEER\\TUBORG BLACK SUPER PREMIUM STRONG BEER (500 ML).jpg,BEER\\TUBORG\\TUBORG BLACK SUPER PREMIUM STRONG BEER\\TUBORG BLACK SUPER PREMIUM STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(297, 'TUBORG CLASSIC STRONG BEER', '', 2, 38, '', '330 ML$;500 ML (CAN)$;650 ML ', '60 $;100$;110 ', 1, 1, 'BEER\\TUBORG\\TUBORG CLASSIC STRONG BEER\\TUBORG CLASSIC STRONG BEER ( 330 ML).jpg', 'BEER\\TUBORG\\TUBORG CLASSIC STRONG BEER\\TUBORG CLASSIC STRONG BEER (500 ML CAN).jpg,BEER\\TUBORG\\TUBORG CLASSIC STRONG BEER\\TUBORG CLASSIC STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(298, 'TUBORG GOLD BEER', '', 2, 38, '', '330 ML$;500 ML (CAN)$;650 ML ', '65 $;110$;120 ', 1, 1, 'BEER\\TUBORG\\TUBORG GOLD BEER\\TUBORG GOLD BEER (330 ML).jpg', 'BEER\\TUBORG\\TUBORG GOLD BEER\\TUBORG GOLD BEER (500 ML CAN).png,BEER\\TUBORG\\TUBORG GOLD BEER\\TUBORG GOLD BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(299, 'CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER', '', 2, 39, '', '330 ML $;500 ML (CAN)$;650 ML ', '85$;130 $;160 ', 1, 1, 'BEER\\CARLSBERG\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER (330 ML).jpg', 'BEER\\CARLSBERG\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER (500 ML CAN).jpg,BEER\\CARLSBERG\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER (650 ML).gif', '2021-06-25 00:00:00', 0, 0, 1),
(300, 'CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER', '', 2, 39, '', '330 ML $;500 ML (CAN)$;650 ML ', '90$;140 $;170 ', 1, 1, 'BEER\\CARLSBERG\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER ( 500 ML CAN).jpg', 'BEER\\CARLSBERG\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER (330 ML).jpg,BEER\\CARLSBERG\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER\\CARLSBERG SMOOTH CHILL PREMIUM LAGER STANDARD BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(301, 'BUDWEISER INTERNATIONAL KING OF BEERS', '', 2, 40, '', '330 ML$;500 ML (CAN)$;650 ML ', '85$;135$;160 ', 1, 1, 'BEER\\BUDWEISER\\BUDWEISER INTERNATIONAL KING OF BEERS\\BUDWEISER INTERNATIONAL KING OF BEERS (330 ML CAN ).jpg', 'BEER\\BUDWEISER\\BUDWEISER INTERNATIONAL KING OF BEERS\\BUDWEISER INTERNATIONAL KING OF BEERS (500 ML CAN).jpg,BEER\\BUDWEISER\\BUDWEISER INTERNATIONAL KING OF BEERS\\BUDWEISER INTERNATIONAL KING OF BEERS (650 ML).jpeg', '2021-06-25 00:00:00', 0, 0, 1),
(302, 'BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS', '', 2, 40, '', '330 ML$;500 ML (CAN)$;650 ML ', '100$;150$;190 ', 1, 1, 'BEER\\BUDWEISER\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS (500 ML CAN).jpg', 'BEER\\BUDWEISER\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS (650 ML).jpg,BEER\\BUDWEISER\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS\\BUDWEISER MAGNUM INTERNATIONAL KING OF BEERS(330 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(303, 'HEINEKEN LAGER BEAR', '', 2, 41, '', '330 ML$;500 ML (CAN)$;650 ML ', '105$;160$;200', 1, 1, 'BEER\\HEINEKEN\\HEINEKEN LAGER BEER\\HEINEKEN LAGER BEER (330 ML).png', 'BEER\\HEINEKEN\\HEINEKEN LAGER BEER\\HEINEKEN LAGER BEER (500 ML).jpg,BEER\\HEINEKEN\\HEINEKEN LAGER BEER\\HEINEKEN LAGER BEER (650 ML).jpg,BEER\\HEINEKEN\\HEINEKEN LAGER BEER\\HEINEKEN LAGER BEER(300 ML CAN ).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(304, 'BIRA 91 BLONDE SUMMER LAGER BEER', '', 2, 42, '', '330 ML$;500 ML (CAN)$;650 ML ', '80$;125$;150', 1, 1, 'BEER\\BIRA\\BIRA 91 BLONE SUMMER LAGER BEER\\BIRA 91 BLONDE SUMMER LAGER BEER (330 ML).png', 'BEER\\BIRA\\BIRA 91 BLONE SUMMER LAGER BEER\\BIRA 91 BLONDE SUMMER LAGER BEER (500 ML CAN ).jpg,BEER\\BIRA\\BIRA 91 BLONE SUMMER LAGER BEER\\BIRA 91 BLONDE SUMMER LAGER BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(305, 'BIRA 91 INDIAN PALE ALE POMELO BEER', '', 2, 42, '', '330 ML ', '140 ', 1, 1, 'BEER\\BIRA\\BIRA INDIAN PALE ALE POMELO BEER\\BIRA INDIAN PALE ALE POMELO BEER (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(306, 'BIRA 91 MALABAR  STOUT BEER', '', 2, 42, '', '330 ML$;500 ML (CAN)', '140 $;175', 1, 1, 'BEER\\BIRA\\BIRA 91 MALABAR STOUT BEER\\BIRA 91 MALABAR STOUT BEER (330 ML ).png', 'BEER\\BIRA\\BIRA 91 MALABAR STOUT BEER\\BIRA 91 MALABAR STOUT BEER (500 ML CAN ).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(307, 'ORIGINAL BIRA 91 BOOM SUPER STRONG BEER', '', 2, 42, '', '330 ML$;500 ML (CAN)$;650 ML ', '80$;100$;150', 1, 1, 'BEER\\BIRA\\ORIGINAL 91 BIRA STRONG BEER\\ORIGINAL 91 BIRA STRONG BEER (330 ML).jpg', 'BEER\\BIRA\\ORIGINAL 91 BIRA STRONG BEER\\ORIGINAL 91 BIRA STRONG BEER (500 ML CAN).jpg,BEER\\BIRA\\ORIGINAL 91 BIRA STRONG BEER\\ORIGINAL 91 BIRA STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(308, 'ORIGINAL BIRA 91 LIGHT BEER', '', 2, 42, '', '330 ML$;500 ML ', '110$;150 ', 1, 1, 'BEER\\BIRA\\ORIGINAL BIRA 91 LIGHT BEER\\ORIGINAL BIRA 91 LIGHT BEER (330 ML).jpg', 'BEER\\BIRA\\ORIGINAL BIRA 91 LIGHT BEER\\ORIGINAL BIRA 91 LIGHT BEER (500 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(309, 'ORIGINAL 91 BIRA STRONG BEER', '', 2, 42, '', '330 ML$;500 ML  (CAN)$;650 ML ', '90$;125$;170 ', 1, 1, 'BEER\\BIRA\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER (330 ML).jpeg', 'BEER\\BIRA\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER (500 ML CAN).jpg,BEER\\BIRA\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER\\ORIGINAL BIRA 91 BOOM SUPER STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(310, 'ORIGINAL 91 BIRA WHITE BEER', '', 2, 42, '', '330 ML$;500 ML  (CAN)$;650 ML ', '110$;150 $;215 ', 1, 1, 'BEER\\BIRA\\ORIGINAL 91  BIRA WHITE BEER\\ORIGINAL 91 BIRA WHITE BEER (330 ML).png', 'BEER\\BIRA\\ORIGINAL 91  BIRA WHITE BEER\\ORIGINAL 91 BIRA WHITE BEER (500 ML CAN).jpg,BEER\\BIRA\\ORIGINAL 91  BIRA WHITE BEER\\ORIGINAL 91 BIRA WHITE BEER (650 ML).png', '2021-06-25 00:00:00', 0, 0, 1),
(311, 'FOSTER LAGER BEER', '', 2, 43, '', '330 ML$;650 ML ', '65 $;120', 1, 1, 'BEER\\FOSTER\'S\\FOSTER\'S LAGER BEER\\FOSTER\'S LAGER BEER (330 ML).jpg', 'BEER\\FOSTER\'S\\FOSTER\'S LAGER BEER\\FOSTER\'S LAGER BEER (650 ML).png', '2021-06-25 00:00:00', 0, 0, 1),
(312, 'FOSTER\'S STRONG PREMIUM BEER', '', 2, 43, '', '650 ML ', '125 ', 1, 1, 'BEER\\FOSTER\'S\\FOSTER\'S STRONG PREMIUM BEER\\FOSTER\'S STRONG PREMIUM BEER(650 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(313, 'HOEGAARDEN BELGIAN WIT BEER', '', 2, 44, '', '330 ML ', '155 ', 1, 1, 'BEER\\HOEGAARDEN\\HOEGAARDEN BELGIAN WIT BEER\\HOEGAARDEN BELGIAN WIT BEER (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(314, 'HAYWARDS 5000 SUPER STRONG BEER', '', 2, 45, '', '500 ML  (CAN)$;650 ML ', '120$;160 ', 1, 1, 'BEER\\HAYWARDS 5000\\HAYWARDS 5000 SUPER STRONG BEER\\HAYWARD 5000 SUPER STRONG BEER (500 ML CAN).jpg', 'BEER\\HAYWARDS 5000\\HAYWARDS 5000 SUPER STRONG BEER\\HAYWARDS 5000 SUPER STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(315, 'MILLER ACE AMERICAN STYLE STRONG BEER', '', 2, 46, '', '330 ML$;500 ML (CAN)$;650 ML ', '100$;150 $;190 ', 1, 1, 'BEER\\MILLER ACE\\MILLER ACE AMERICAN STYLE STRONG BEER\\MILLER ACE AMERICAN STYLE STRONG BEER (330 ML).jpg', 'BEER\\MILLER ACE\\MILLER ACE AMERICAN STYLE STRONG BEER\\MILLER ACE AMERICAN STYLE STRONG BEER (500 ML CAN ).jpg,BEER\\MILLER ACE\\MILLER ACE AMERICAN STYLE STRONG BEER\\MILLER ACE AMERICAN STYLE STRONG BEER (650 ML).png', '2021-06-25 00:00:00', 0, 0, 1),
(316, 'MILLER HIGH LIFE PREMIUM BEER', '', 2, 46, '', '330 ML$;500 ML (CAN)$;650 ML ', '80$;130 $;160 ', 1, 1, 'BEER\\MILLER ACE\\MILLER HIGH LIFE PREMIUM BEER\\MILLER HIGH LIFE PREMIUM BEER (330 ML).jpeg', 'BEER\\MILLER ACE\\MILLER HIGH LIFE PREMIUM BEER\\MILLER HIGH LIFE PREMIUM BEER (500 ML CAN ).jpg,BEER\\MILLER ACE\\MILLER HIGH LIFE PREMIUM BEER\\MILLER HIGH LIFE PREMIUM BEER (650 ML).JPG', '2021-06-25 00:00:00', 0, 0, 1),
(317, 'BEE YOUNG CRAFTED STRONG BEER', '', 2, 47, '', '500 ML  (CAN)$;650 ML ', '100$;130 ', 1, 1, 'BEER\\BEE YOUNG\\BEE YOUNG CRAFTED STRONG BEER\\BEE YOUNG CRAFTED STRONG BEER (500 ML CAN).jpg', 'BEER\\BEE YOUNG\\BEE YOUNG CRAFTED STRONG BEER\\BEE YOUNG CRAFTED STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(318, 'GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER', '', 2, 48, '', '330 ML$;500 ML (CAN)$;650 ML ', '55$;95$;110', 1, 1, 'BEER\\GODFATHER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER (330 ML).jpg', 'BEER\\GODFATHER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER (500 ML CAN).jpg,BEER\\GODFATHER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(319, 'GODFATHER THE LEGENDARY FINEST STRONG BEER', '', 2, 48, '', '500 ML (CAN)$;650 ML ', '100$;120 ', 1, 1, 'BEER\\GODFATHER\\GODFATHER THE LEGENDARY FINEST STRONG BEER\\GODFATHER THE LEGENDARY FINEST STRONG BEER (500 ML CAN).jpg', 'BEER\\GODFATHER\\GODFATHER THE LEGENDARY FINEST STRONG BEER\\GRANDFATHER THE LEGENDARY FINEST STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(320, 'BAD MONKEY SUPER STRONG BEER', '', 2, 49, '', '330 ML $;500 ML (CAN)$;650 ML ', '70$;100$;130 ', 1, 1, 'BEER\\BAD MONKEY\\BAD MONKEY SUPER STRONG BEER\\BAD MONKEY SUPER STRONG BEER (330 ML).png', 'BEER\\BAD MONKEY\\BAD MONKEY SUPER STRONG BEER\\BAD MONKEY SUPER STRONG BEER (500 ML CAN).png,BEER\\BAD MONKEY\\BAD MONKEY SUPER STRONG BEER\\BAD MONKEY SUPER STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(321, 'BRO CODE 10', '', 2, 50, '', '330 ML ', '90 ', 1, 1, 'BEER\\BRO CODE\\BRO CODE 10\\BRO CODE 10(330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(322, 'BRO CODE 15', '', 2, 50, '', '330 ML ', '160 ', 1, 1, 'BEER\\BRO CODE\\BRO CODE 15\\BRO CODE 15 (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(323, 'WITTY BRO', '', 2, 50, '', '330 ML ', '120 ', 1, 1, 'BEER\\BRO CODE\\WITTY BRO\\WITTY BRO (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(324, 'SIMBA JUNGLE WHEAT', '', 2, 51, '', '330 ML ', '110 ', 1, 1, 'BEER\\SIMBA\\SIMBA JUNGLE WHEAT\\SIMBA JUNGLE WHEAT (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(325, 'SIMBA LIGHT BEER', '', 2, 51, '', '330 ML', '80', 1, 1, 'BEER\\SIMBA\\SIMBA LIGHT BEER\\SIMBA LIGHT BEER (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(326, 'SIMBA STRONG BEER', '', 2, 51, '', '330 ML', '80', 1, 1, 'BEER\\SIMBA\\SIMBA STRONG BEER\\SIMBA STRONG BEER (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(327, 'SIMBA STOUT BEER', '', 2, 51, '', '330 ML ', '90', 1, 1, 'BEER\\SIMBA\\SIMBA STOUT BEER\\SIMBA STOUT BEER (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(328, 'WHITE OWL BREWERY DIABLO', '', 2, 52, '', '325 ML$;500 ML ', '130 $;170 ', 1, 1, 'BEER\\WHITE OWL\\WHITE OWL BREWERY DIABLO\\WHITE OWL BREWERY DIABLO (325 ML).jpg', 'BEER\\WHITE OWL\\WHITE OWL BREWERY DIABLO\\WHITE OWL BREWERY DIABLO (500 ML CAN).png', '2021-06-25 00:00:00', 0, 0, 1),
(329, 'WHITE OWL BREWERY SPARK', '', 2, 52, '', '325 ML$;500 ML ', '110$;150 ', 1, 1, 'BEER\\WHITE OWL\\WHITE OWL BREWERY SPARK\\WHITE OWL BREWERY SPARK (325 ML).jpg', 'BEER\\WHITE OWL\\WHITE OWL BREWERY SPARK\\WHITE OWL BREWERY SPARK (500 ML CAN ).png', '2021-06-25 00:00:00', 0, 0, 1),
(330, 'WHITE RHINO BREWING COMPANY LAGER BEER', '', 2, 53, '', '330 ML ', '160 ', 1, 1, 'BEER\\WHITE RHINO\\WHITE RHINO BREWING COMAPNY BELGIAN STYLE WHEAT BEER\\WHITE RHINO BREWING COMPANY BELGIAN STYLE WHEAT BEER (330 ML).png', '', '2021-06-25 00:00:00', 0, 0, 1),
(331, 'WHITE RHINO BREWING COMPANY BELIGIAN STYLE WHEAT BEER', '', 2, 53, '', '330 ML ', '160 ', 1, 1, 'BEER\\WHITE RHINO\\WHITE RHINO BREWING COMPANY LAGER BEER\\WHITE RHINO BREWING COMPANY LAGER BEER (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(332, 'MAHOU CINCO ESTRELLAS PREMIUM BEER', '', 2, 54, '', '330 ML $;500 ML (CAN)$;650 ML ', '85$;110$;160 ', 1, 1, 'BEER\\MAHOU\\MAHOU CINCO ESTRELLAS PREMIUM BEER\\MAHOU CINCO ESTRELLAS PREMIUM BEER (330 ML).jpg', 'BEER\\MAHOU\\MAHOU CINCO ESTRELLAS PREMIUM BEER\\MAHOU CINCO ESTRELLAS PREMIUM BEER (500 ML CAN).jpg,BEER\\MAHOU\\MAHOU CINCO ESTRELLAS PREMIUM BEER\\MAHOU CINCO ESTRELLAS PREMIUM BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(333, 'MAHOU CLASSICA PREMIUM BEER', '', 2, 54, '', '330 ML $;500 ML (CAN)$;650 ML ', '85$;110$;160 ', 1, 1, 'BEER\\MAHOU\\MAHOU CLASSICA PREMIUM BEER\\MAHOU CLASSICA PREMIUM BEER (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(334, 'MAHOU MAESTRA', '', 2, 54, '', '330 ML$;500 ML  (CAN)', '110$;150 ', 1, 1, 'BEER\\MAHOU\\MAHOU MAESTRA\\MAHOU MAESTRA (330 ML).jpg', 'BEER\\MAHOU\\MAHOU MAESTRA\\MAHOU MAESTRA (500 ML CAN).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(335, 'BECK ICE INTERNATIONAL STRENGTH', '', 2, 55, '', '500 ML (CAN)$;650ML ', '105$;140 ', 1, 1, 'BEER\\BECK ICE\\BECK ICE INTERNATIONAL STRENGTH\\BECK ICE INTERNATIONAL STRENGTH (500 ML CAN).jpg', 'BEER\\BECK ICE\\BECK ICE INTERNATIONAL STRENGTH\\BECK ICE INTERNATIONAL STRENGTH (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(336, 'BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER', '', 2, 56, '', '500 ML (CAN )$;650 ML ', '120$;160', 1, 1, 'BEER\\BRITISH EMPIRE\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER (500 ML CAN ).png', 'BEER\\BRITISH EMPIRE\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(337, 'DAREDEVIL EXTRA STRONG PREMIUM BEER', '', 2, 57, '', '500 ML (CAN)$;650 ML ', '100$;120 ', 1, 1, 'BEER\\DAREDEVIL\\DAREDEVIL EXTRA STRONG PREMIUM BEER\\DAREDEVIL EXTRA STRONG PREMIUM BEER (500 ML CAN).png', 'BEER\\DAREDEVIL\\DAREDEVIL EXTRA STRONG PREMIUM BEER\\DAREDEVIL EXTRA STRONG PREMIUM BEER (650 ML).png', '2021-06-25 00:00:00', 0, 0, 1),
(338, 'GINSBERG PREMIUM STRONG BEER', '', 2, 58, '', '330 ML$;500 ML (CAN)$;650 ML ', '70$;100$;130 ', 1, 1, 'BEER\\GINSBERG\\GINSBERG PREMIUM STRONG BEER\\GINSBERG PREMIUM STRONG BEER (330 ML).png', 'BEER\\GINSBERG\\GINSBERG PREMIUM STRONG BEER\\GINSBERG PREMIUM STRONG BEER (500 ML CAN).jpg,BEER\\GINSBERG\\GINSBERG PREMIUM STRONG BEER\\GINSBERG PREMIUM STRONG BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(339, 'HUNTER EXTRA STRONG PREMIUM BEER', '', 2, 59, '', '500 ML (CAN)$;650 ML ', '95$;110 ', 1, 1, 'BEER\\HUNTER\\HUNTER EXTRA STRONG PREMIUM BEER\\HUNTER EXTRA STRONG PREMIUM BEER (500 ML CAN).png', 'BEER\\HUNTER\\HUNTER EXTRA STRONG PREMIUM BEER\\HUNTER EXTRA STRONG PREMIUM BEER (650 ML ).png', '2021-06-25 00:00:00', 0, 0, 1),
(340, 'THUNDERBOLT PREMIUM  SUPER STRONG BEER', '', 2, 60, '', '500 ML (CAN)$;650 ML ', '100$;135', 1, 1, 'BEER\\THUNDERBOLT\\THUNDERBOLT PREMIUM SUPER STRONG BEER\\THUNDERBOLT  PREMIUM SUPER STRONG  BEER (500 ML CAN).png', 'BEER\\THUNDERBOLT\\THUNDERBOLT PREMIUM SUPER STRONG BEER\\THUNDERBOLT PREMIUM SUPER STRONG BEER (650 ML ).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(341, 'MEDUSA PREMIUM STRONG BEER', '', 2, 61, '', '500 ML (CAN)$;650 ML ', '100$;140 ', 1, 1, 'BEER\\MEDUSA\\MEDUSA PREMIUM STRONG BEER\\MEDUSA PREMIUM STRONG BEER (500 ML CAN ).png', 'BEER\\MEDUSA\\MEDUSA PREMIUM STRONG BEER\\MEDUSA PREMIUM STRONG BEER (650 ML ).png', '2021-06-25 00:00:00', 0, 0, 1),
(342, 'KOTSBERG FINEST PILS BEER', '', 2, 62, '', '330 ML$;500 ML (CAN)$;650 ML ', '80$;120$;160', 1, 1, 'BEER\\KOTSBERG\\KOTSBERG FINEST PILS BEER\\KOTSBERG FINEST PILS BEER (330 ML).jpg', 'BEER\\KOTSBERG\\KOTSBERG FINEST PILS BEER\\KOTSBERG FINEST PILS BEER (500 ML CAN).jpg,BEER\\KOTSBERG\\KOTSBERG FINEST PILS BEER\\KOTSBERG FINEST PILS BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(343, 'KOTSBERG STRONG FINEST QUALITY BEER', '', 2, 62, '', '330 ML$;500 ML (CAN)$;650 ML ', '90$;120$;170 ', 1, 1, 'BEER\\KOTSBERG\\KOTSBERG STRONG FINEST QUALITY BEER\\KOTSBERG STRONG FINEST QUALITY BEER (330 ML).jpg', 'BEER\\KOTSBERG\\KOTSBERG STRONG FINEST QUALITY BEER\\KOTSBERG STRONG FINEST QUALITY BEER (500 ML CAN).jpg,BEER\\KOTSBERG\\KOTSBERG STRONG FINEST QUALITY BEER\\KOTSBERG STRONG FINEST QUALITY BEER (650 ML).png', '2021-06-25 00:00:00', 0, 0, 1),
(344, 'SIX FIELDS BLANCHE FINEST WHEAT BEER', '', 2, 63, '', '330 ML$;500 ML (CAN)$;650 ML ', '120$;150 $;240 ', 1, 1, 'BEER\\SIX FIELDS\\SIX FIELDS BLANCHE FINEST WHEAT BEER\\SIX FIELDS BLANCHE FINEST WHEAT BEER (330 ML).png', 'BEER\\SIX FIELDS\\SIX FIELDS BLANCHE FINEST WHEAT BEER\\SIX FIELDS BLANCHE FINEST WHEAT BEER (500 ML CAN ).jpg,BEER\\SIX FIELDS\\SIX FIELDS BLANCHE FINEST WHEAT BEER\\SIX FIELDS BLANCHE FINEST WHEAT BEER (650 ML ).png', '2021-06-25 00:00:00', 0, 0, 1),
(345, 'YAVIRA LAGER BEER', '', 2, 64, '', '500 ML (CAN)$;650 ML ', '130 $;170 ', 1, 1, 'BEER\\YAVIRA\\YAVIRA LAGER BEER\\YAVIRA LAGER BEER (500 ML CAN ).jpg', 'BEER\\YAVIRA\\YAVIRA LAGER BEER\\YAVIRA LAGER BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(346, 'ROCKBERG SUPER STRONG PREMIUM BEER', '', 2, 65, '', '500 ML(CAN)$;650 ML ', '95 $;110 ', 1, 1, 'BEER\\ROCKBERG\\ROCKBERG SUPER STRONG PREMIUM BEER\\ROCKBERG SUPER STRONG PREMIUM BEER (500 ML CAN).jpg', 'BEER\\ROCKBERG\\ROCKBERG SUPER STRONG PREMIUM BEER\\ROCKBERG SUPER STRONG PREMIUM BEER (650 ML).jpg', '2021-06-25 00:00:00', 0, 0, 1),
(347, 'A WITMAN THE ORIGINAL', '', 2, 66, '', '330 ML ', '165', 1, 1, 'BEER\\A WITMAN\\A WITMAN THE ORIGINAL\\A WITMAN THE ORIGINAL (330 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(348, 'CORONA EXTRA PREMIER BEER', '', 2, 67, '', '355 ML ', '280 ', 1, 1, 'BEER\\CORONA\\CORONA EXTRA PREMIUM BEER\\CORONA EXTRA PREMIUM BEER (355 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(349, 'CORONA LIGHT BEER', '', 2, 67, '', '355 ML ', '280 ', 1, 1, 'BEER\\CORONA\\CORONA LIGHT BEER\\CORONA LIGHT BEER(355 ML).jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(350, 'ROYAL STAG WHISKEY', '', 3, 114, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '130$;240$;450$;530 ', 1, 1, 'WHISKY\\ROYAL STAG\\ROYAL STAG WHISKY\\ROYAL STAG WHISKY 180 ML , 375 ML ,750 ML,1000 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(351, 'ROYAL STAG BAREL  SELECT', '', 3, 114, '', '180 ML$;375 ML$;750 ML', '150 $;260 $;500 ', 1, 1, 'WHISKY\\ROYAL STAG\\ROYAL STAG BAREL SELECT\\ROYAL STAG BAREL SELECT 180 ML, 375 ML,750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(352, 'IMPERIAL BLUE WHISKY', '', 3, 115, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '130$;250 $;460 $;540 ', 1, 1, 'WHISKY\\IMPERIAL BLUE\\IMPERIAL BLUE WHISKY\\IMPERIAL BLUE WHISKY 180 ML,375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(353, 'McDOWELLS NO 1 WHISKY', '', 3, 116, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '110$;220$;400$;500', 1, 1, 'WHISKY\\McDOWELLS NO 1\\McDOWELLS NO 1 WHISKY\\McDOWELLS NO 1 WHISKY 180 ML,375 ML,750 ML, 1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(354, 'McDOWELLS NO 1 LUXURY PREMIUM WHISKY', '', 3, 116, '', '180 ML$;375 ML$;750 ML', '90 $;185$;370 ', 1, 1, 'WHISKY\\McDOWELLS NO 1\\McDOWELLS NO 1 LUXURY PREMIUM WHISKY\\McDOWELLS NO 1 LUXURY PREMIUM WHISKY.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(355, 'STERLING RESERVE B10 WHISKY', '', 3, 117, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '190$;380$;750$;1000', 1, 1, 'WHISKY\\STERLING RESERVE\\STERLING RESERVE B10 WHISKY\\STERLING RESERVE B10 WHISKY 180ML,375 ML,750 ML,1000 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(356, 'STERLING RESERVE B7 WHISKY', '', 3, 117, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '130$;250$;480$;630 ', 1, 1, 'WHISKY\\STERLING RESERVE\\STERLING RESERVE B7 WHISKY\\STERLING RESERVE B7 WHISKY 180 ML,375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(357, 'BLENDERS PRIDE WHISKY', '', 3, 118, '', '90 ML $;180 ML$;375 ML$;750 ML$;1000 ML ', '110$;185$;370$;750$;990 ', 1, 1, 'WHISKY\\BLENDERS PRIDE\\BLENDERS PRIDE  WHISKY\\BLENDERS PRIDE WHISKY 90 ML,180 ML,375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(358, 'BLENDERS PRIDE RESERVE COLLECTION WHISKY', '', 3, 118, '', '90 ML $;180 ML$;375 ML$;750 ML$;1000 ML ', '120 $;210$;470$;850 $;1250 ', 1, 1, 'WHISKY\\BLENDERS PRIDE\\BLENDERS PRIDE RESERVE COLLECTION WHISKY\\BLENDERS PRIDE RESERVE COLLECTION WHISKY 90 ML,180 ML,375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(359, 'ROCKFORD RESERVE WHISKY', '', 3, 119, '', '90 ML $;180 ML$;375 ML$;750 ML$;1000 ML ', '130$;220$;440$;850$;1150 ', 1, 1, 'WHISKY\\ROCKFORD\\ROCKFORD RESERVE WHISKY\\ROCKFORD RESERVE WHISKY 90 ML,180ML,375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(360, 'ROYAL GREEN CLASSIC WHISKY', '', 3, 120, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '130$;240 $;450 $;530 ', 1, 1, 'WHISKY\\ROYAL GREEN\\ROYAL GREEN CLASSIC WHISKY\\72937764_2020-04-03.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(361, 'ANTIQUITY BLUE WHISKY', '', 3, 121, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '260$;500$;950$;1200 ', 1, 1, 'WHISKY\\ANTIQUITY\\ANTIQUITY BLUE WHISKY\\ANTIQUITY BLUE WHISKY 180 ML,375 ML,750 ML,1000 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(362, 'TEACHERS 50 BLENDED SCOTH WHISKY', '', 3, 122, '', '375 ML$;750 ML$;1000 ML ', '1150 $;2000$;2700', 1, 1, 'WHISKY\\TEACHERS\\TEACHERS 50 BLENDED SCOTCH WHISKY\\TEACHERS 50 BLENDED SCOTCH WHISKY 375 ML.750 ML,1000 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(363, 'SIGNATURE RARE AGED WHISKY', '', 3, 123, '', '375 ML$;750 ML$;1000 ML ', 'RSS 380$;750$;990 ', 1, 1, 'WHISKY\\SIGNATURE\\SIGNATURE RARE AGED WHISKY\\SIGNATURE RARE AGED WHISKY 375 ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(364, 'ALL SEASONS WHISKY', '', 3, 124, '', '90 ML $;375 ML $;750 ML$;1000 ML ', '60$;250 $;480$;660 ', 1, 1, 'WHISKY\\ALL SEASONS\\ALL SEASONS WHISKY\\ALL SEASONS WHISKY 90ML,375ML,750ML,1000 ML.JPG', '', '2021-06-25 00:00:00', 0, 0, 1),
(365, 'DENNIS SPECIAL WHISKY', '', 3, 125, '', '90 ML $;180 ML$;375 ML$;750 ML', '45$;90$;185$;370 ', 1, 1, 'WHISKY\\DENNIS\\DENNIS SPECIAL WHISKY\\DENNIS SPECIAL WHISKY 90ML,180ML,375ML,750ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(366, 'OFFICERS CHOICE BLUE WHISKY', '', 3, 126, '', '180 ML$;375 ML$;750 ML', '100$;190$;370 ', 1, 1, 'WHISKY\\OFFICERS CHOICE\\OFFICERS CHOICE BLUE WHISKY\\OFFICERS CHOICE BLUE WHISKY 180ML,375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(367, 'GOLFERS SHOT WHISKY', '', 3, 127, '', '60 ML$;180 ML $;375 ML$;750 ML ', '65$;210 $;400 $;800 ', 1, 1, 'WHISKY\\GOLFERS SHOT\\GOLFERS SHOT WHISKY\\GOLFERS SHOT WHISKY 60ML 180ML, 375 ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(368, '8 PM WHISKY', '', 3, 128, '', '180 ML $;375 ML$;750 ML ', '130 $;260$;520 ', 1, 1, 'WHISKY\\8 PM\\8 PM WHISKY\\8 PM WHISKY 180ML,375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(369, 'DIRECTORS SPECIAL WHISKY', '', 3, 129, '', '180 ML $;375 ML$;750 ML ', '130$;260$;480 ', 1, 1, 'WHISKY\\DIRECTORS SPECIAL\\DIRECTORS SPECIAL WHISKY\\DIRECTORS SPECIAL WHISKY 180ML,375ML,750ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(370, 'ROYAL PRIDE WHISKY', '', 3, 130, '', '180 ML $;375 ML$;750 ML ', '240$;470$;950 ', 1, 1, 'WHISKY\\ROYALS PRIDE\\ROYALS PRIDE WHISKY\\ROYALS PRIDE WHISKY 180ML,375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(371, 'PAUL JOHN BOLD WHISKY', '', 3, 131, '', '50 ML$;750 ML ', '300$;4500', 1, 1, 'WHISKY\\PAUL JOHN\\PAUL JOHN BOLD WHISKY\\PAUL JOHN BOLD WHISKY 50 ML,750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(372, 'PAUL JOHN PEATED SELECT CASK', '', 3, 131, '', '1000 ML ', '5400 ', 1, 1, 'WHISKY\\PAUL JOHN\\PAUL JOHN PEATED SELECT CASK\\PAUL JOHN PEATED SELECT CASK 1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(373, 'RAM PUR SINGLE MALT WHISKY', '', 3, 132, '', '750 ML ', '6000', 1, 1, 'WHISKY\\RAMPUR\\RAMPUR SINGLE MALT WHISKY\\RAMPUR SINGLE MALT WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(374, 'AFTER DARK PREMIUM WHISKY', '', 3, 133, '', '90 ML $;180 ML $;375 ML $;750 ML ', '100$;190 $;310 $;450 ', 1, 1, 'WHISKY\\AFTERDARK\\AFTERDARK PREMIUM WHISKY\\AFTERDARK PREMIUM WHISKY 90ML,180ML,375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(375, 'REDBREAST 15 YEAR OLD IRISH WHISKY', '', 3, 134, '', '700 ML ', '7200 ', 1, 1, 'WHISKY\\REDBREAST WHISKY\\REDBREAST 15 YEAR OLD IRISH WHISKY\\RED BREAST 15 YEAR OLD IRISH WHISKY 700ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(376, 'BLACK & GOLD RARE PREMIUM WHISKY', '', 3, 135, '', '180 ML$;375 ML $;750 ML', '150 $;280 $;560 ', 1, 1, 'WHISKY\\BLACK & GOLD\\BLACK & GOLD RARE PREMIUM WHISKY\\BLACK & GOLD RARE PREMIUM WHISKY 180 ML,375ML,750ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(377, 'BAGPIPER WHISKY', '', 3, 136, '', '180 ML$;375 ML $;750 ML', '100$;210 $;420 ', 1, 1, 'WHISKY\\BAGPIPER\\BAGPIPER WHISKY\\BAGPIPER WHISKY 180ML.375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(378, 'BALLANTINE\'S FINEST WHISKY', '', 3, 137, '', '750 ML', '1700 ', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S FINEST WHISKY\\BALLANTINE\'S FINEST WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(379, 'BALLANTINES 12 YEAR OLD WHISKY', '', 3, 137, '', '750 ML', '2700', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S 12 YEAR OLD WHISKY\\BALLANTINE\'S 12 YEAR OLD WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(380, 'BALLANTINES 30 YEAR OLD WHISKY', '', 3, 137, '', '750 ML', ' 7500', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S 30 YEAR OLD WHISKY\\BALLANTINE\'S 30 YEAR OLD WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(381, 'BALLANTINES  PURE MALT', '', 3, 137, '', '750 ML ', '3600 ', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S PURE MALT\\BALLANTINE\'S PURE MALT 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(382, 'BALLANTINES HARD FIRED WHISKY', '', 3, 137, '', '750 ML ', '2500 ', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S HARD FIRED WHISKY\\BALLANTINE\'S HARD FIRED WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(383, 'BALLANTINES SERENITY SCOTCH WHISKY', '', 3, 137, '', '750 ML ', '7400 ', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S SERENITY SCOTCH WHISKY\\BALLANTINE\'S SERENITY SCOTCH WHISKY 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(384, 'BALLANTINES 21 YEAR OLD WHISKY', '', 3, 137, '', '750 ML ', '990 ', 1, 1, 'WHISKY\\BALLANTINE\'S\\BALLANTINE\'S 21 YEAR OLD WHISKY\\BALLANTINE\'S 21 YEAR OLD WHISKY 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(385, 'WHYTEHALL WHISKY', '', 3, 138, '', '180 ML$;375 ML $;750 ML ', '120$;240 $;475 ', 1, 1, 'WHISKY\\WHYTEHALL\\WHYTEHALL WHISKY\\WHYTEHALL WHISKY 180ML,375ML,750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(386, 'THE BOWMORE 12 YEAR OLD WHISKY', '', 3, 139, '', '700 ML', '3800', 1, 1, 'WHISKY\\BOWMORE\\THE BOWMORE 12 YEAR OLD WHISKY\\THE BOWMORE 12 YEAR OLD WHISKY 700ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(387, 'THE BOWMORE 15 YEAR OLD WHISKY', '', 3, 139, '', '700 ML', '5900', 1, 1, 'WHISKY\\BOWMORE\\THE BOWMORE 15 YEAR OLD WHISKY\\THE BOWMORE 15 YEAR OLD WHISKY 700ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(388, 'THE BOWMORE 25 YEAR OLD WHISKY', '', 3, 139, '', '700 ML', '11200 ', 1, 1, 'WHISKY\\BOWMORE\\THE BOWMORE 25 YEAR OLD WHISKY\\THE BOWMORE 25 YEAR OLD WHISKY 700ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(389, 'ROYAL CHALLENGE WHISKY', '', 3, 140, '', '180 ML $;375 ML $;750 ML$;1000 ML ', 'null', 1, 1, 'WHISKY\\ROYAL CHALLENGE\\ROYAL CHALLENGE WHISKY\\ROYAL CHALLENGE WHISKY 180ML,375ML,750ML,1000ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(390, 'GLENFIDDICH SELECT CASK', '', 3, 141, '', '750 ML ', '8430 ', 1, 1, 'WHISKY\\GLENFIDDICH\\GLENFIDDICH SELECT CASK\\GLENFIDDICH SELECT CASK 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(391, 'GLENFIDDICH 12 YEARS', '', 3, 141, '', '750 ML ', '8700', 1, 1, 'WHISKY\\GLENFIDDICH\\GLENFIDDICH 12 YEARS\\GLENFIDDICH 12 YEARS 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(392, 'GLENDIDDICH 18 YEARS', '', 3, 141, '', '700 ML ', ' 9389 ', 1, 1, 'WHISKY\\GLENFIDDICH\\GLENFIDDICH 18 YEARS\\GLENFIDDICH 18 YEARS 700 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(393, 'GLENFIDDICH 15 YEARS', '', 3, 141, '', '700 ML ', '7200', 1, 1, 'WHISKY\\GLENFIDDICH\\GLENFIDDICH 15 YEARS\\GLENFIDDICH 15 YEARS 700 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(394, 'THE GLENLEVIT FOUNDERS RESERVE WHISKY', '', 3, 142, '', '750 ML', '5400', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT FOUNDERS RESERVE WHISKY\\THE GLENLEVIT FOUNDERS RESERVE WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(395, 'THE GLENLEVIT MASTER DISTILLERS RESERVE MALT  WHISKY', '', 3, 142, '', '750 ML', '8200 ', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT MASTER DISTILLERS RESERVED MALT WHISKY\\THE GLENLEVIT MASTER DISTILLERS RESERVED MALT WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(396, 'THE GLENLEVIT 15 YEAR MALT SCOTCH WHISKY', '', 3, 142, '', '750 ML', '7400 ', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT 15 YEAR MALT SCOTCH WHISKY\\THE GLENLEVIT 15 YEAR MALT SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(397, 'THE GLENLEVIT 18 YEAR OLD WHISKY', '', 3, 142, '', '750 ML ', '8300 ', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT 18 YEAR OLD WHISKY\\THE GLENLEVIT 18 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(398, 'THE GLENLEVIT 21 YEAR OLD WHISKY', '', 3, 142, '', '750 ML ', '12600 ', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT 21 YEAR OLD WHISKY\\THE GLENLEVIT 21 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(399, 'THE GLENLEVIT 25 YEARS OLD WHISKY', '', 3, 142, '', '750 ML ', '32800', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT 25 YEAR OLD WHISKY\\THE GLENLEVIT 25 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(400, 'THE GLENLEVIT NADURRA FIRST FILL SELECTION WHISKY', '', 3, 142, '', '750 ML ', '6600', 1, 1, 'WHISKY\\THE GLENLEVIT\\THE GLENLEVIT MEDURA FIRST FILL SELECTION WHISKY\\THE GLENLEVIT MEDURA FIRST FILL SELECTION WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(401, 'JOHNNIE WALKER DOUBLE BLACK WHISKY', '', 3, 143, '', '750 ML ', '3100', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER DOUBLE BLACK WHISKY\\JOHNNIE WALKER DOUBLE BLACK WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(402, 'WHITE WALKER BY JOHNNIE WALKER  WHISKY', '', 3, 143, '', '750 ML ', '6300 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\WHITE WALKER BY JOHNNIE WALKER WHISKY\\WHITE WALKER BY JOHNNIE WALKER WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(403, 'JOHNNIE WALKER BLUE SCOTCH WHISKY', '', 3, 143, '', '750 ML ', '15600 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER BLUE SCOTCH WHISKY\\JOHNNIE WALKER BLUE SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(404, 'JOHNNIE WALKER GREEN LABEL WHISKY', '', 3, 143, '', '750 ML ', '4100 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER GREEN LABEL WHISKY\\JOHNNIE WALKER GREEN LABEL WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(405, 'JOHNNIE WALKER SWING SCOTCH WHISKY', '', 3, 143, '', '750 ML ', '4600 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER SWING SCOTCH WHISKY\\JOHNNIE WALKER SWING SCOTCH WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(406, 'JOHNNIE WALKER XR SCOTCH WHISKY', '', 3, 143, '', '750 ML ', '12200', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER XR SCOTCH WHISKY\\JOHNNIE WALKER XR SCOTCH WHISKY  750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(407, 'JOHNNIE WALKER RED LABEL SCOTCH WHISKY', '', 3, 143, '', '750 ML ', '2200 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER RED LABEL SCOTCH WHISKY\\JOHNNIE WALKER RED LABEL SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(408, 'JOHNNIE WALKER PLATINUM LABEL WHISKY', '', 3, 143, '', '750 ML ', '6500 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER PLATINUM LABEL WHISKY\\JOHNNIE WALKER PLATINUM LABEL WHISKY 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(409, 'JOHNNIE WALKER BLACK LABEL WHISKY', '', 3, 143, '', '750 ML ', '2800 ', 1, 1, 'WHISKY\\JOHNNIE WALKER\\JOHNNIE WALKER BLACK LABEL WHISKY\\JOHNNIE WALKERJOHNNIE WALKER BLACK LABEL WHISKY 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(410, 'PASSPORT SCOTCH WHISKEY', '', 3, 144, '', '750 ML $;1000 ML ', '1300$;1800 ', 1, 1, 'WHISKY\\PASSPORT\\PASSPORT SCOTCH WHISKY\\PASSPORT SCOTCH WHISKY 750ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(411, 'MACALLAN 12 YEAR OLD WHISKY', '', 3, 145, '', '750 ML ', '4800 ', 1, 1, 'WHISKY\\MACALLAN\\MACALLAN 12 YEAR OLD WHISKY\\MACALLAN 12 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(412, 'MACALLAN DOUBLE CASK SCOTCH WHISKY', '', 3, 145, '', '750 ML', '3400', 1, 1, 'WHISKY\\MACALLAN\\MACALLAN DOUBLE CASK SCOTCH WHISKY\\MACALLAN DOUBLE CASK SCOTCH  WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(413, 'MACALLAN 15 YEAR OLD MALT SCOTCH WHISKY', '', 3, 145, '', '750 ML', '10500 ', 1, 1, 'WHISKY\\MACALLAN\\MACALLAN 15 YEAR OLD MALT SCOTCH WHISKY\\MACALLAN 15 YEAR OLD MALT SCOTCH WHISKY.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(414, 'MACALLAN 18 YEAR OLD', '', 3, 145, '', '750 ML', '21500 ', 1, 1, 'WHISKY\\MACALLAN\\MACALLAN 18 YEAR OLD WHISKY\\MACALLAN 18 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(415, 'MONKEY SHOULDER WHISKY', '', 3, 146, '', '700 ML ', '3800 ', 1, 1, 'WHISKY\\MONKEY SHOULDER\\MONKEY SHOULDER WHISKY\\MONKEY SHOULDER WHISKY 700 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(416, 'BLACK & WHITE SCOTCH WHISKY', '', 3, 147, '', '180 ML $;375 ML$;750 ML$;1000 ML ', '450$;750$;1400$;1900 ', 1, 1, 'WHISKY\\BLACK AND WHITE\\BLACK AND WHITE SCOTCH WHISKY\\BLACK AND WHITE SCOTCH WHISKY 180ML,375ML,750 ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(417, 'MAQINTOSH PREMIUM WHISKY', '', 3, 148, '', '180 ML$;375 ML$;750 ML$;1000 ML ', '225 $;450$;900$;1190 ', 1, 1, 'WHISKY\\MAQINTOSH\\MAQINTOSH PREMIUM WHISKY\\MAQINTOSH PREMIUM WHISKY 180ML,375ML,750ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(418, 'OLD SMUGGLER BLENDED SCOTCH WHISKY', '', 3, 149, '', '60 ML$;180 ML$;375 ML $;750 ML $;1000 ML ', '100$;310$;620$;900$;1200 ', 1, 1, 'WHISKY\\OLD SMUGGLER\\OLD SMUGGLER BLENDED SCOTCH WHISKY\\OLD SMUGGLER BLENDED SCOTCH WHISKY 60ML,180ML,375ML,750ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(419, 'BLACK DOG SCOTCH WHISKY', '', 3, 150, '', '180 ML $;375 ML $;750 ML ', '390$;780$;1500 ', 1, 1, 'WHISKY\\BLACK DOG\\BLACK DOG SCOTCH WHISKY\\BLACK DOG SCOTCH WHISKY 180 ML ,375 ML ,750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(420, 'BLACK DOG TRIPLE GOLD RESERVE WHISKY', '', 3, 150, '', '750 ML ', '1900 ', 1, 1, 'WHISKY\\BLACK DOG\\BLACK DOG TRIPLE GOLD RESERVE WHISKY\\BLACK DOG TRIPLE GOLD RESERVE WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(421, 'BLACK DOG CENTENARY BLACK RESERVE WHISKY', '', 3, 150, '', '750 ML ', '2300 ', 1, 1, 'WHISKY\\BLACK DOG\\BLACK DOG CENTENARY BLACK RESERVE WHISKY\\BLACK DOG CENTENARY BLACK RESERVE WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(422, '100 PIPERS WHISKY', '', 3, 151, '', '60 ML$;90 ML$;180 ML$;375 ML $;750 ML $;1000 ML ', '110$;170$;350 $;700$;1310$;1520 ', 1, 1, 'WHISKY\\100 PIPERS\\100 PIPERS WHISKY\\100 PIPERS WHISKY 60ML,180ML,375ML,750ML,1000ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(423, 'VAT 69 WHISKY', '', 3, 152, '', '60 ML$;90 ML$;180 ML$;375 ML $;750 ML $;1000 ML ', '90 $;175$;380$;750$;1500 $;1750 ', 1, 1, 'WHISKY\\VAT 69\\VAT 69 WHISKY\\VAT 69 WHISKY 60ML,90ML,180ML,375ML,750ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(424, 'JAMESON IRISH  WHISKY', '', 3, 153, '', '60 ML$;90 ML$;180 ML$;375 ML $;750 ML $;1000 ML ', '300$;570$;950 $;1900 $;3200 ', 1, 1, 'WHISKY\\JAMESON\\JAMESON IRISH WHISKY\\JAMESON IRISH WHISKY 60ML,180ML,375ML,1000ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(425, 'JAMESON IRISH WHISKY CASKMATES', '', 3, 153, '', '750 ML ', '4350 ', 1, 1, 'WHISKY\\JAMESON\\JAMESON IRISH WHISKY CASKMATES\\JAMESON IRISH WHISKY CASKMATES 750ML.jpeg', '', '2021-06-25 00:00:00', 0, 0, 1),
(426, 'CHIVAS REGAL 12 YEAR SCOTCH WHISKY', '', 3, 154, '', '750 ML ', '2900 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL 12 YEAR SCOTCH WHISKY\\CHIVAS REGAL 12 YEAR SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(427, 'CHIVAS REGAL XV BLENDED SCOTCH WHISKY', '', 3, 154, '', '750 ML ', '4100 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL XV BLENDED SCOTCH WHISKY\\CHIVAS REGAL XV BLENDED SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(428, 'CHIVAS REGAL 18 YEAR OLD WHISKY', '', 3, 154, '', '750 ML ', '7900 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL 18 YEAR OLD WHISKY\\CHIVAS REGAL 18 YEAR OLD WHISKY.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(429, 'CHIVAS REGAL 25 YEAR OLD SCOTCH WHISKY', '', 3, 154, '', '750 ML ', '21400 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL 25 YEAR OLD SCOTCH WHISKY\\CHIVAS REGAL 25 YEAR OLD SCOTCH WHISKY 750ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1);
INSERT INTO `product` (`id`, `pname`, `sname`, `cid`, `sid`, `psdesc`, `pgms`, `pprice`, `status`, `stock`, `pimg`, `prel`, `date`, `discount`, `popular`, `created_by`) VALUES
(430, 'CHIVAS REGAL BROTHERS BLEND SCOTCH WHISKY', '', 3, 154, '', '750 ML ', '3200 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL BROTHERS BLEND SCOTCH WHISKY\\CHIVAS REGAL BROTHERS BLEND SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(431, 'CHIVAS REGAL EXTRA WHISKY', '', 3, 154, '', '750 ML ', '2800 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL EXTRA WHISKY\\CHIVAS REGAL EXTRA WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(432, 'CHIVAS REGAL MIZUNARA WHISKY', '', 3, 154, '', '750 ML ', '3900 ', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL MIZUNARA WHISKY\\CHIVAS REGAL MIZUNARA WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(433, 'CHIVAS REGAL ULTIS WHISKY', '', 3, 154, '', '750 ML ', '14600', 1, 1, 'WHISKY\\CHIVAS REGAL\\CHIVAS REGAL ULTIS WHISKY\\CHIVAS REGAL ULTIS WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(434, 'JIM BEAM 8 STAR BOURBON', '', 3, 155, '', '750 ML ', '1800', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM 8 STAR BOURBON\\JIM BEAM 8 STAR BOURBON 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(435, 'JIM BEAM APPLE BOURBON', '', 3, 155, '', '750 ML ', '1800', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM APPLE BOURBON\\JIM BEAM APPLE BOURBON 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(436, 'JIM BEAM WHITE BOURBON', '', 3, 155, '', '750 ML ', '1500 ', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM WHITE BOURBON\\JIM BEAM WHITE BOURBON 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(437, 'JIM BEAM DEVILS CUT BOURBON', '', 3, 155, '', '750 ML', '2100 ', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM DEVILS CUT BOURBON\\JIM BEAM DEVILS CUT BOURBON.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(438, 'JIM BEAM BLACK BOURBON', '', 3, 155, '', '750 ML', '2900 ', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM BLACK BOURBON\\JIM BEAM BLACK BOURBON 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(439, 'JIM BEAM HONEY BOURBON', '', 3, 155, '', '750 ML', '1850 ', 1, 1, 'WHISKY\\JIM BEAM\\JIM BEAM HONEY BOURBON\\JIM BEAM HONEY BOURBON 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(440, 'JACK DANIEL GENTLEMAN JACK WHISKY', '', 3, 156, '', '750 ML ', '2400 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL GENTLEMAN JACK WHISKY\\JACK DANIEL GENTLEMAN JACK WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(441, 'JACK DANIELS SINGLE BARREL WHISKY', '', 3, 156, '', '750 ML ', '3600 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL SINGLE BARREL WHISKY\\JACK DANIEL SINGLE BARREL WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(442, 'JACK DANIELS WHITE RABBIT WHISKY', '', 3, 156, '', '750 ML ', '4100 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL WHITE RABBIT WHISKY\\JACK DANIEL WHITE RABBIT WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(443, 'JACK DANNIELS TENNESSEE FIRE WHISKY', '', 3, 156, '', '750 ML ', '4600', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL TENNESSEE FIRE WHISKY\\JACK DANIEL TENNESSEE FIRE WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(444, 'JACK DANNIELS 1907 WHISKY', '', 3, 156, '', '750 ML ', '2300 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL 1907 WHISKY\\JACK DANIEL 1907 WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(445, 'JACK DANNIEL TENNESSEE RYE WHISKY', '', 3, 156, '', '750 ML ', '2500 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANIEL TENNESSEE RYE WHISKY\\JACK DANIEL TENNESSEE RYE WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(446, 'JACK DANNIELS OLD NO. 7 WHISKY', '', 3, 156, '', '750 ML ', '2700 ', 1, 1, 'WHISKY\\JACK DANIEL\\JACK DANNIEL OLD NO. 7 WHISKY\\JACK DANIEL OLD NO 7 WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(447, 'DEWARS 25 YEAR OLD BLWNDED SCOTCH WHISKY', '', 3, 157, '', '750 ML ', '22800 ', 1, 1, 'WHISKY\\DEWARS\\DEWARS 25 YEAR OLD BLENDED SCOTCH WHISKY\\DEWARS 25 YEAR OLD BLENDED SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(448, 'DEWARS WHITE LABEL SCOTCH WHISKY', '', 3, 157, '', '750 ML ', '1700 ', 1, 1, 'WHISKY\\DEWARS\\DEWARS WHITE LABEL SCOTCH WHISKY\\DEWARS WHITE LABEL SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(449, 'DEWARS 12 YEAR OLD BLENDED SCOTCH WHISKY', '', 3, 157, '', '750 ML ', '3500 ', 1, 1, 'WHISKY\\DEWARS\\DEWARS 12 YEAR OLD BLENDED SCOTCH WHISKY\\DEWARS 12 YEAR OLD BLENDED SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(450, 'DEWARS 15 YEAR OLD BLENDED SCOTCH WHISKY', '', 3, 157, '', '750 ML ', '5400 ', 1, 1, 'WHISKY\\DEWARS\\DEWARS 15 YEAR OLD BLENDED SCOTCH WHISKY\\DEWARS 15 YEAR OLD BLENDED SCOTCH WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(451, 'J.P. WISERS 18 YEAR OLD WHISKY', '', 3, 158, '', '750 ML ', '3600 ', 1, 1, 'WHISKY\\J.P. WISERS\\J.P. WISERS 18 YEAR OLD WHISKY\\J.P. WISERS 18 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(452, 'J.P. WISERS 35 YEAR OLD WHISKY', '', 3, 158, '', '750 ML ', '12500 ', 1, 1, 'WHISKY\\J.P. WISERS\\J.P. WISERS 35 YEAR OLD WHISKY\\J.P. WISERS 35 YEAR OLD WHISKY 750 ML.JPG', '', '2021-06-25 00:00:00', 0, 0, 1),
(453, 'J.P. WISERS DE LUXE 10 YEAR OLD WHISKY', '', 3, 158, '', '750 ML ', '1300 ', 1, 1, 'WHISKY\\J.P. WISERS\\J.P. WISERS DE LUXE 10 YEAR OLD WHISKY\\J.P. WISERS DE LUXE 10 YEAR OLD WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(454, 'J.P. WISERS 15 YEAR OLD WHISKY', '', 3, 158, '', '750 ML ', '3300 ', 1, 1, 'WHISKY\\J.P. WISERS\\J.P. WISERS 15 YEAR OLD WHISKY\\J.P. WISERS 15 YEAR OLD WHISKY 750 ML.png', '', '2021-06-25 00:00:00', 0, 0, 1),
(455, 'J.P. WISERS RARE CASK WHISKY', '', 3, 158, '', '750 ML ', '3800 ', 1, 1, 'WHISKY\\J.P. WISERS\\J.P. WISERS RARE CASK WHISKY\\J.P. WISERS RARE CASK WHISKY 750 ML.jpg', '', '2021-06-25 00:00:00', 0, 0, 1),
(465, 'IMPERIAL RED RUM', '', 4, 169, '', '375 ML', '295', 1, 1, 'RUM\\IMPERIAL RED RUM\\IMPERIAL RED RUM 375 ML.png', '', '2021-07-06 00:00:00', 0, 1, 1),
(466, 'McDOWELLS NO 1 CELEBRATION XXX RUM', '', 4, 170, '', '375 ML', 'RS235', 1, 1, 'RUM\\McDOWELLS\\McDOWELLS NO 1 CELEBRATION XXX RUM 375ML.png', '', '2021-07-06 00:00:00', 0, 1, 1),
(467, '1965 SPIRIT OF VICTORY RARE XXX RUM', '', 4, 171, '', '375 ML', '300', 1, 1, 'RUM\\1965 SPIRIT OF VICTORY\\1965 SPIRIT OF VICTORY RARE XXX RUM 375 ML.png', '', '2021-07-06 00:00:00', 0, 1, 1),
(468, 'CAPTAIN MORGAN THE ORIGINAL RUM', '', 4, 172, '', '750 ML', '585', 1, 1, 'RUM\\CAPTAIN MORGAN\\CAPTAIN MORGAN THE ORIGINAL RUM 750ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(469, 'BACARDI 8 RESERVA OCHO RUM', '', 4, 173, '', '750 ML', '3725', 1, 1, 'RUM\\BACARDI\\BACARDI 8 RESERVA OCHO RUM\\BACARDI 8 RESERVA OCHO RUM 750ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(470, 'BACARDI CARTA BLANCA SUPERIOR  WHITE RUM', '', 4, 173, '', '180 ML', '260', 1, 1, 'RUM\\BACARDI\\BACARDI CARTA BLANCA SUPERIOR WHITE RUM\\BACARDI CARTA BLANCA SUPERIOR WHITE RUM 180 ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(471, 'BACARDI LIMON ORIGINAL CITRUS RUM', '', 4, 173, '', '180 ML', '300', 1, 1, 'RUM\\BACARDI\\BACARDI LIMON ORIGNAL CITRUS RUM\\BACARDI LIMON ORIGNAL CITRUS RUM 180ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(472, 'BACARDI ORANGE ORIGINAL ORANGE RUM', '', 4, 173, '', '750 ML', '1220', 1, 1, 'RUM\\BACARDI\\BACARDI ORANGE ORIGINAL ORANGE RUM\\BACARDI ORANGE ORIGINAL ORANGE RUM 750ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(473, 'BLACK BY BACARDI CLASSIC ORIGINAL PREMIUM CRAFTED RUM', '', 4, 173, '', '375 ML', '355', 1, 1, 'RUM\\BACARDI\\BLACK BY BACARDI CLASSIC ORIGINAL PREMIUM CRAFTED RUM\\BLACK BY BACARDI CLASSIC ORIGINAL PREMIUM CRAFTED RUM 375ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(482, 'McDOWELLS BLUE RIBAND PREMIUM LONDON DRY GIN', '', 5, 170, '', '750ML', '445', 1, 1, 'GIN\\McDOWELLS\\McDOWELLS BLUE RIBAND PREMIUM LONDON DRY GIN 750 ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(483, 'MONKEY 47 SCHWARZWALD DRY GIN', '', 5, 174, '', '500ML', 'RS1034', 1, 1, 'GIN\\MONKEY 47\\MONKEY 47 SCHWARZWALD DRY GIN  500ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(484, 'TANQUERY IMPORTED LONDON DRY GIN', '', 5, 175, '', '750ML', 'RS1875', 1, 1, 'GIN\\TANQUERY\\TANQUERY IMPORTED LONDON DRY GIN 750ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(485, 'ARISTOCRAT EXTRA DRY GIN', '', 5, 176, '', '750ML', 'RS425', 1, 1, 'GIN\\ARISTOCRAT\\ARISTOCRAT EXTRA DRY GIN  750 ML.png', '', '2021-07-06 00:00:00', 0, 1, 1),
(486, 'BEEFEATER LONDON DRY GIN', '', 5, 177, '', '750ML', 'RS1805', 1, 1, 'GIN\\BEEFEATER\\BEEFEATER LONDON DRY GIN 750ML.png', '', '2021-07-06 00:00:00', 0, 1, 1),
(487, 'BOMBAY SAPPHIRE DISTILLED LONDON DRY GIN', '', 5, 178, '', '750ML', '1810', 1, 1, 'GIN\\BOMBAY SAPPHIRE\\BOMBAY SAPPHIRE DISTILLED LONDON DRY GIN 750ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(488, 'CARREWS DRY GIN', '', 5, 179, '', '375ML', 'RS225', 1, 1, 'GIN\\CARREWS\\CARREWS DRY GIN 325 ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1),
(489, 'GORDONS LONDON DRY GIN', '', 5, 180, '', '750ML', 'RS1475', 1, 1, 'GIN\\GORDONS\\GORDONS LONDON DRY GIN 750 ML.jpg', '', '2021-07-06 00:00:00', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rate_order`
--

CREATE TABLE `rate_order` (
  `id` int(8) NOT NULL,
  `oid` text NOT NULL,
  `uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `reject` int(11) NOT NULL DEFAULT 0,
  `accept` int(11) NOT NULL DEFAULT 0,
  `complete` int(11) NOT NULL DEFAULT 0,
  `a_status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`id`, `name`, `email`, `mobile`, `password`, `aid`, `address`, `status`, `reject`, `accept`, `complete`, `a_status`, `created_by`) VALUES
(1, 'Naveen', 'naveen@gmail.com', '7896541230', '123', 2, 'Rza 25/19, Bindapur', 0, 0, 0, 0, 1, 1),
(4, 'Dhan Singh', 'dhansingh@gmail.com', '1478523690', '451', 3, 'Rza 34, Palam', 0, 0, 0, 0, 1, 1),
(5, 'Test', 'test@deliveryboy.com', '9990000999', '123456', 12, 'test', 1, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rnoti`
--

CREATE TABLE `rnoti` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rnoti`
--

INSERT INTO `rnoti` (`id`, `rid`, `msg`, `date`) VALUES
(1, 5, 'You have an order assigned to you.', '2021-05-11 17:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `one_key` text NOT NULL,
  `one_hash` text NOT NULL,
  `r_key` text NOT NULL,
  `r_hash` text NOT NULL,
  `currency` text CHARACTER SET utf8 NOT NULL,
  `privacy_policy` longtext NOT NULL,
  `about_us` longtext NOT NULL,
  `contact_us` longtext NOT NULL,
  `o_min` int(11) NOT NULL,
  `timezone` text NOT NULL,
  `tax` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `title` text NOT NULL,
  `terms` text NOT NULL,
  `maintaince` int(11) NOT NULL,
  `signupcredit` int(11) NOT NULL,
  `refercredit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `one_key`, `one_hash`, `r_key`, `r_hash`, `currency`, `privacy_policy`, `about_us`, `contact_us`, `o_min`, `timezone`, `tax`, `logo`, `favicon`, `title`, `terms`, `maintaince`, `signupcredit`, `refercredit`) VALUES
(1, 'e4faaba5-cefd-4653-b8c4-ddd82992fc4b', 'MDk2YWJiNTctYjQ0Mi00NzU3LThlNmYtN2M0MWIwMzYyYzY0', 'XXXX', 'XXXX', '₹', '<h1>Privacy Policy</h1>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Meratheka Delivery built the Meratheka delhivery app as a Free app. This SERVICE is provided by Meratheka Delivery at no cost and is intended for use as is.</li>\r\n	<br />\r\n	<li>This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.</li>\r\n	<br />\r\n	<li>If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.</li>\r\n	<br />\r\n	<li>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Meratheka delhivery unless otherwise defined in this Privacy Policy.</li>\r\n</ul>\r\n\r\n<h3><strong>Information Collection and Use</strong></h3>\r\n\r\n<ul>\r\n	<li>For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to Name, Email, Phone No.. The information that I request will be retained on your device and is not collected by me in any way.</li>\r\n	<br />\r\n	<li>The app does use third party services that may collect information used to identify you.</li>\r\n	<br />\r\n	<li>Link to privacy policy of third party service providers used by the app</li>\r\n</ul>\r\n\r\n<h3><strong>Google Play Services</strong></h3>\r\n\r\n<p>Facebook</p>\r\n\r\n<p>Log Data</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<ul>\r\n	<li>I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&quot;IP&quot;) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.</li>\r\n	<li>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&#39;s internal memory.</li>\r\n	<br />\r\n	<li>This Service does not use these &quot;cookies&quot; explicitly. However, the app may use third party code and libraries that use &quot;cookies&quot; to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.</li>\r\n</ul>\r\n\r\n<h3><strong>Service Providers</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<h3>I may employ third-party companies and individuals due to the following reasons:</h3>\r\n\r\n	<ul>\r\n		<li>To facilitate our Service</li>\r\n		<li>To provide the Service on our behalf</li>\r\n		<li>To perform Service-related services</li>\r\n		<li>To assist us in analyzing how our Service is used</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>Security</strong></h3>\r\n\r\n<ul>\r\n	<li>I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.</li>\r\n</ul>\r\n\r\n<h3><strong>Links to Other Sites</strong></h3>\r\n\r\n<p>This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.</p>\r\n\r\n<h3><strong>Children&#39;s Privacy</strong></h3>\r\n\r\n<ul>\r\n	<li>These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions</li>\r\n</ul>\r\n\r\n<h3><strong>Changes to This Privacy Policy</strong></h3>\r\n\r\n<ul>\r\n	<li>I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>\r\n', '<p>XXXXXXXXX</p>\r\n', '<p>XXXXXXXXX</p>\r\n', 100, 'Asia/Kolkata', 5, 'website/thump_1624355436.png', 'website/thump_1624355436.png', 'Mera Theka v1.5.2', '<p>XXXXXXXXX</p>\r\n', 0, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sidemenu`
--

CREATE TABLE `sidemenu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidemenu`
--

INSERT INTO `sidemenu` (`id`, `menu_name`, `options`) VALUES
(1, 'Dashboard', 'View(Global),View(Own)'),
(2, 'Unit Master', 'View(Global),View(Own),Create,Edit,Delete'),
(3, 'Category', 'View(Global),View(Own),Create,Edit,Delete'),
(4, 'Sub Category', 'View(Global),View(Own),Create,Edit,Delete'),
(5, 'Product', 'View(Global),View(Own),Edit,Delete'),
(6, 'Stock Management', 'View(Global),View(Own),Create,Edit,Delete'),
(7, 'Coupon', 'View(Global),View(Own),Create,Edit,Delete'),
(8, 'Area', 'View(Global),View(Own),Create,Edit,Delete'),
(9, 'Timeslot', 'View(Global),View(Own),Create,Edit,Delete'),
(10, 'Agents', 'View(Global),View(Own),Create,Edit,Delete'),
(11, 'Delivery Boy', 'View(Global),View(Own),Create,Edit,Delete'),
(12, 'Banner', 'View(Global),View(Own),Create,Edit,Delete'),
(14, 'Home Section', 'View(Global),View(Own),Create,Edit,Delete'),
(15, 'Notification', 'View(Global),View(Own),Create,Edit,Delete'),
(16, 'Orders', 'View(Global),View(Own),Edit,Delete'),
(17, 'Customer Section', 'View(Global),View(Own),Create,Edit,Delete'),
(18, 'Country Code', 'View(Global),View(Own),Create,Edit,Delete'),
(19, 'Billing', 'Create'),
(20, 'Payment List', 'View(Global),View(Own),Create,Edit,Delete');

-- --------------------------------------------------------

--
-- Table structure for table `sidemenu_permission`
--

CREATE TABLE `sidemenu_permission` (
  `menu_id` int(11) NOT NULL,
  `side_menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `view_g` int(11) NOT NULL COMMENT 'View(Global)',
  `view_o` int(11) NOT NULL COMMENT 'View(Own)',
  `create` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sidemenu_permission`
--

INSERT INTO `sidemenu_permission` (`menu_id`, `side_menu_id`, `role_id`, `view_g`, `view_o`, `create`, `edit`, `delete`) VALUES
(9, 1, 3, 1, 0, 0, 0, 0),
(10, 2, 3, 1, 0, 0, 1, 1),
(11, 3, 3, 1, 0, 1, 1, 1),
(12, 4, 3, 1, 0, 1, 1, 0),
(18, 5, 3, 1, 0, 1, 1, 1),
(19, 6, 3, 0, 1, 1, 1, 0),
(20, 7, 3, 1, 0, 1, 0, 1),
(21, 8, 3, 0, 1, 1, 1, 1),
(22, 9, 3, 0, 1, 1, 1, 1),
(23, 10, 3, 0, 1, 1, 1, 1),
(24, 11, 3, 0, 1, 1, 1, 1),
(25, 12, 3, 0, 1, 1, 1, 1),
(26, 13, 3, 0, 1, 1, 1, 1),
(27, 14, 3, 0, 1, 1, 1, 1),
(28, 15, 3, 0, 1, 1, 1, 1),
(29, 16, 3, 0, 1, 1, 1, 1),
(30, 17, 3, 0, 1, 1, 1, 1),
(31, 18, 3, 0, 1, 1, 1, 1),
(32, 19, 3, 0, 1, 1, 1, 1),
(33, 20, 3, 0, 1, 1, 0, 0),
(34, 21, 3, 0, 1, 1, 0, 0),
(51, 5, 5, 0, 1, 1, 1, 1),
(60, 6, 5, 0, 1, 1, 1, 1),
(61, 7, 5, 0, 1, 1, 1, 1),
(62, 8, 5, 0, 1, 1, 0, 1),
(63, 9, 5, 0, 1, 1, 1, 1),
(64, 10, 5, 0, 1, 1, 1, 1),
(65, 11, 5, 0, 1, 1, 1, 1),
(66, 12, 5, 0, 1, 1, 1, 1),
(67, 14, 5, 0, 1, 1, 1, 1),
(68, 15, 5, 0, 1, 1, 1, 1),
(69, 16, 5, 0, 1, 0, 1, 1),
(70, 17, 5, 0, 1, 0, 1, 1),
(71, 18, 5, 0, 1, 1, 1, 1),
(72, 19, 5, 0, 0, 1, 0, 0),
(73, 20, 5, 1, 0, 1, 0, 1),
(74, 1, 5, 0, 1, 0, 0, 0),
(75, 2, 5, 0, 1, 1, 1, 1),
(76, 3, 5, 0, 1, 1, 1, 0),
(77, 4, 5, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `cat_id`, `name`, `img`, `created_by`) VALUES
(1, 1, 'ARTIC VODKA ', 'sub-cat/sARTIC_VODKA_1624447602.png', 1),
(2, 1, 'BLUE EYES ', 'sub-cat/sBLUE_EYES_GREEN_APPLE_FLAVOURED_VODKA_1624447602.png', 1),
(3, 1, 'BLUE MOON ', 'sub-cat/sBLUE_MOON_PREMIUM_VODKA_1624447602.png', 1),
(4, 1, 'BLUE SHEEP ', 'sub-cat/sBLUE_SHEEP_GREEN_APPLE_VODKA_1624447602.png', 1),
(5, 1, 'CANVAS ', 'sub-cat/sCANVAS_VODKA_1624447602.png', 1),
(6, 1, 'CHARLIE MIST ', 'sub-cat/sCHARLIE_PREMIUM_GRAIN_VODKA_1624447602.png', 1),
(7, 1, 'CLIFF HANGER ', 'sub-cat/sCLIFF_HANGER_PREMIUM_HANDCRAFTED_VODKA_1624447602.png', 1),
(8, 1, 'CLOCK TOWER', 'sub-cat/sCLOCK_TOWER_ULTRA_DELUXE_VODKA_1624447602.png', 1),
(9, 1, 'ERISTOFF', 'sub-cat/sERIST_1624447602.png', 1),
(10, 1, 'MAGIC MOMENTS ', 'sub-cat/sMAGIC_MOMENTS_REMIX_ORANGE_PREMIUM_FLAVOUR_VODKA_1624447602.png', 1),
(11, 1, 'OASIS LONDON HIGH', 'sub-cat/sOASIS_LONDON_HIGH_TRIPLE_DISTANT_LUXURY_ENGLISH_VODKA_1624447602.png', 1),
(12, 1, 'OPM VODKA ', 'sub-cat/sOPM_GREEN_APPLE_TRIPPLE_DISTILLED_LUXURY_SPIRITTED_RUSSIAN_VODKA_1624447602.png', 1),
(13, 1, 'RED BLISS ', 'sub-cat/sRED_BLISS_VIRGIN_VODKA_1624447602.png', 1),
(14, 1, 'REVOLUTION ', 'sub-cat/sREVOLUTION_GREEN_APPLE_VODKA_1624447602.png', 1),
(15, 1, 'SMOKE VODKA ', 'sub-cat/sSMOKE_VODKA_ANISEED_1624447602.png', 1),
(16, 1, 'TITANIUM', 'sub-cat/sTITANIUM_TRIPLE_DISTILLED_VODKA_1624447602.png', 1),
(17, 1, 'WHITE FOX ', 'sub-cat/sWHITE_FOX_VODKA_1624447602.png', 1),
(18, 1, 'ABSOLUT', 'sub-cat/sABSOLUT_PEPPAR_FLAVOURED_VODKA_1624447602.png', 1),
(19, 1, 'CIROC', 'sub-cat/sCIROC_SNAP_FROST_VODKA_1624447602.png', 1),
(20, 1, 'FINLANDIA ', 'sub-cat/sFINLANDIA_VODKA_OF_FINLAND_1624447602.png', 1),
(21, 1, 'GREY GOOSE ', 'sub-cat/sGREY_GOOSE_VX_1624447602.png', 1),
(22, 1, 'KETEL ONE', 'sub-cat/sKETEL_ONE_VODKA_1624447602.png', 1),
(23, 1, 'ORGANIKA ', 'sub-cat/sORGANIKA_VODKA_1624447602.png', 1),
(24, 1, 'SMIRNOFF', 'sub-cat/sSMIRNOFF_NO_21_TRIPPLE_DISTILLED_VODKA_1624447602.png', 1),
(37, 2, 'KINGFISHER', 'BEER\\KINGFISHER\\KINGFISHER MAGNUM STRONG BEER\\KINGFISHER MAGNUM STRONG BEER (330 ML ).jpg', 1),
(38, 2, 'TUBORG', 'BEER\\TUBORG\\TUBORG GOLD BEER\\TUBORG GOLD BEER (330 ML).jpg', 1),
(39, 2, 'CARLSBERG', 'BEER\\CARLSBERG\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER\\CARLSBERG ELEPHANT SUPER STRONG PREMIUM BEER (330 ML).jpg', 1),
(40, 2, 'BUDWEISER', 'BEER\\BUDWEISER\\BUDWEISER INTERNATIONAL KING OF BEERS\\BUDWEISER INTERNATIONAL KING OF BEERS (330 ML CAN ).jpg', 1),
(41, 2, 'HEINEKEN', 'BEER\\HEINEKEN\\HEINEKEN LAGER BEER\\HEINEKEN LAGER BEER (330 ML).png', 1),
(42, 2, 'BIRA', 'BEER\\BIRA\\BIRA 91 BLONE SUMMER LAGER BEER\\BIRA 91 BLONDE SUMMER LAGER BEER (330 ML).png', 1),
(43, 2, 'FOSTER\'S', 'BEER\\FOSTER\'S\\FOSTER\'S LAGER BEER\\FOSTER\'S LAGER BEER (330 ML).jpg', 1),
(44, 2, 'HOEGAARDEN', 'BEER\\HOEGAARDEN\\HOEGAARDEN BELGIAN WIT BEER\\HOEGAARDEN BELGIAN WIT BEER (330 ML).png', 1),
(45, 2, 'HAYWARDS 5000', 'BEER\\HAYWARDS 5000\\HAYWARDS 5000 SUPER STRONG BEER\\HAYWARD 5000 SUPER STRONG BEER (500 ML CAN).jpg', 1),
(46, 2, 'MILLER ACE', 'BEER\\MILLER ACE\\MILLER HIGH LIFE PREMIUM BEER\\MILLER HIGH LIFE PREMIUM BEER (330 ML).jpeg', 1),
(47, 2, 'BEE YOUNG', 'BEER\\BEE YOUNG\\BEE YOUNG CRAFTED STRONG BEER\\BEE YOUNG CRAFTED STRONG BEER (500 ML CAN).jpg', 1),
(48, 2, 'GODFATHER', 'BEER\\GODFATHER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER\\GODFATHER SUPER STRONG INTERNATIONAL QUALITY BEER (330 ML).jpg', 1),
(49, 2, 'BAD MONKEY', 'BEER\\BAD MONKEY\\BAD MONKEY SUPER STRONG BEER\\BAD MONKEY SUPER STRONG BEER (330 ML).png', 1),
(50, 2, 'BRO CODE', 'BEER\\BRO CODE\\BRO CODE 10\\BRO CODE 10(330 ML).jpg', 1),
(51, 2, 'SIMBA', 'BEER\\SIMBA\\SIMBA JUNGLE WHEATSIMBA JUNGLE WHEAT (330 ML).png', 1),
(52, 2, 'WHITE OWL', 'BEER\\WHITE OWL\\WHITE OWL BREWERY SPARK\\WHITE OWL BREWERY SPARK (325 ML).jpg', 1),
(53, 2, 'WHITE RHINO', 'BEER\\WHITE RHINO\\WHITE RHINO BREWING COMPANY LAGER BEER\\WHITE RHINO BREWING COMPANY LAGER BEER (330 ML).jpg', 1),
(54, 2, 'MAHOU', 'BEER\\MAHOU\\MAHOU MAESTRA\\MAHOU MAESTRA (330 ML).jpg', 1),
(55, 2, 'BECK ICE', 'BEER\\BECK ICE\\BECK ICE INTERNATIONAL STRENGTH\\BECK ICE INTERNATIONAL STRENGTH (500 ML CAN).jpg', 1),
(56, 2, 'BRITISH EMPIRE', 'BEER\\BRITISH EMPIRE\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER\\BRITISH EMPIRE ULTRA PREMIUM EXCLUSIVE BEER (500 ML CAN ).png', 1),
(57, 2, 'DAREDEVIL', 'BEER\\DAREDEVIL\\DAREDEVIL EXTRA STRONG PREMIUM BEER\\DAREDEVIL EXTRA STRONG PREMIUM BEER (500 ML CAN).png', 1),
(58, 2, 'GINSBERG', 'BEER\\GINSBERG\\GINSBERG PREMIUM STRONG BEER\\GINSBERG PREMIUM STRONG BEER (330 ML).png', 1),
(59, 2, 'HUNTER', 'BEER\\HUNTER\\HUNTER EXTRA STRONG PREMIUM BEER\\HUNTER EXTRA STRONG PREMIUM BEER (650 ML ).png', 1),
(60, 2, 'THUNDERBOLT', 'BEER\\THUNDERBOLT\\THUNDERBOLT PREMIUM SUPER STRONG BEER\\THUNDERBOLT PREMIUM SUPER STRONG BEER (650 ML ).jpg', 1),
(61, 2, 'MEDUSA', 'BEER\\MEDUSA\\MEDUSA PREMIUM STRONG BEER\\MEDUSA PREMIUM STRONG BEER (650 ML ).png', 1),
(62, 2, 'KOTSBERG', 'BEER\\KOTSBERG\\KOTSBERG FINEST PILS BEER\\KOTSBERG FINEST PILS BEER (330 ML).jpg', 1),
(63, 2, 'SIX FIELDS', 'BEER\\SIX FIELDS\\SIX FIELDS BLANCHE FINEST WHEAT BEER\\SIX FIELDS BLANCHE FINEST WHEAT BEER (330 ML).png', 1),
(64, 2, 'YAVIRA', 'BEER\\YAVIRA\\YAVIRA LAGER BEER\\YAVIRA LAGER BEER (500 ML CAN ).jpg', 1),
(65, 2, 'ROCKBERG', 'BEER\\ROCKBERG\\ROCKBERG SUPER STRONG PREMIUM BEER\\ROCKBERG SUPER STRONG PREMIUM BEER (650 ML).jpg', 1),
(66, 2, 'A WITMAN', 'BEER\\A WITMAN\\A WITMAN THE ORIGINAL\\A WITMAN THE ORIGINAL (330 ML).jpg', 1),
(67, 2, 'CORONA', 'BEER\\CORONA\\CORONA EXTRA PREMIUM BEER\\CORONA EXTRA PREMIUM BEER (355 ML).jpg', 1),
(114, 3, 'ROYAL STAG', 'sub-cat/sROYAL_STAG_WHISKY_180_ML_,_375_ML_,750_ML,1000_ML_1624521244.jpg', 1),
(115, 3, 'IMPERIAL BLUE', 'sub-cat/sIMPERIAL_BLUE_WHISKY_180_ML,375_ML,750_ML,1000ML_1624521244.jpg', 1),
(116, 3, 'McDOWELLS NO 1', 'sub-cat/sMcDOWELLS_NO_1_WHISKY_180_ML,375_ML,750_ML,_1000ML_1624521244.jpg', 1),
(117, 3, 'STERLING RESERVE', 'sub-cat/sSTERLING_RESERVE_B7_WHISKY_180_ML,375_ML,750_ML,1000ML_1624521244.jpg', 1),
(118, 3, 'BLENDERS PRIDE', 'sub-cat/sBLENDERS_PRIDE_WHISKY_90_ML,180_ML,375_ML,750_ML,1000ML_1624521244.jpg', 1),
(119, 3, 'ROCKFORD', 'sub-cat/sROCKFORD_RESERVE_WHISKY_90_ML,180ML,375_ML,750_ML,1000ML_1624521244.jpg', 1),
(120, 3, 'ROYAL GREEN', 'sub-cat/s72937764_2020-04-03_1624521244.png', 1),
(121, 3, 'ANTIQUITY', 'sub-cat/sANTIQUITY_BLUE_WHISKY_180_ML,375_ML,750_ML,1000_ML_1624521244.png', 1),
(122, 3, 'TEACHERS', 'sub-cat/sTEACHERS_50_BLENDED_SCOTCH_WHISKY_375_ML.750_ML,1000_ML_1624521244.jpg', 1),
(123, 3, 'SIGNATURE', 'sub-cat/sSIGNATURE_RARE_AGED_WHISKY_375_ML,750_ML,1000ML_1624521244.jpg', 1),
(124, 3, 'ALL SEASONS', 'sub-cat/sALL_SEASONS_WHISKY_90ML,375ML,750ML,1000_ML_1624521244.JPG', 1),
(125, 3, 'DENNIS', 'sub-cat/sDENNIS_SPECIAL_WHISKY_90ML,180ML,375ML,750ML_1624521244.png', 1),
(126, 3, 'OFFICERS CHOICE', 'sub-cat/sOFFICERS_CHOICE_BLUE_WHISKY_180ML,375ML,750ML_1624521244.jpg', 1),
(127, 3, 'GOLFERS SHOT', 'sub-cat/sGOLFERS_SHOT_WHISKY_60ML_180ML,_375_ML,750ML_1624521244.jpg', 1),
(128, 3, '8 P M', 'sub-cat/s8_PM_WHISKY_180ML,375ML,750ML_1624521244.jpg', 1),
(129, 3, 'DIRECTORS SPECIAL', 'sub-cat/sDIRECTORS_SPECIAL_WHISKY_180ML,375ML,750ML_1624521244.png', 1),
(130, 3, 'ROYAL PRIDE', 'sub-cat/sROYALS_PRIDE_WHISKY_180ML,375ML,750ML_1624521244.jpg', 1),
(131, 3, 'PAUL JOHN', 'sub-cat/sPAUL_JOHN_BOLD_WHISKY_50_ML,750_ML_1624521244.jpg', 1),
(132, 3, 'RAMPUR', 'sub-cat/sRAMPUR_SINGLE_MALT_WHISKY_750_ML_1624521244.jpg', 1),
(133, 3, 'AFTERDARK', 'sub-cat/sAFTERDARK_PREMIUM_WHISKY_90ML,180ML,375ML,750ML_1624521244.jpg', 1),
(134, 3, 'REDBREAST WHISKY', 'sub-cat/sRED_BREAST_15_YEAR_OLD_IRISH_WHISKY_700ML_1624521244.jpg', 1),
(135, 3, 'BLACK & GOLD', 'sub-cat/sBLACK_&_GOLD_RARE_PREMIUM_WHISKY_180_ML,375ML,750ML_1624521244.png', 1),
(136, 3, 'BAGPIPER', 'sub-cat/sBAGPIPER_WHISKY_180ML.375ML,750ML_1624521244.jpg', 1),
(137, 3, 'BALLANTINE\'S', 'sub-cat/sBALLANTINE\'S_PURE_MALT_750ML_1624521244.jpg', 1),
(138, 3, 'WHYTEHALL', 'sub-cat/sWHYTEHALL_WHISKY_180ML,375ML,750ML_1624521244.jpg', 1),
(139, 3, 'BOWMORE', 'sub-cat/sTHE_BOWMORE_12_YEAR_OLD_WHISKY_700ML_1624521244.jpg', 1),
(140, 3, 'ROYAL CHALLENGE', 'sub-cat/sROYAL_CHALLENGE_WHISKY_180ML,375ML,750ML,1000ML_1624521244.png', 1),
(141, 3, 'GLENFIDDICH', 'sub-cat/sGLENFIDDICH_12_YEARS_750_ML_1624521244.png', 1),
(142, 3, 'THE GLENLIVET', 'sub-cat/sTHE_GLENLEVIT_15_YEAR_MALT_SCOTCH_WHISKY_750_ML_1624521244.jpg', 1),
(143, 3, 'JOHNNIE WALKER', 'sub-cat/sJOHNNIE_WALKERJOHNNIE_WALKER_BLACK_LABEL_WHISKY_750ML_1624521244.jpg', 1),
(144, 3, 'PASSPORT', 'sub-cat/sPASSPORT_SCOTCH_WHISKY_750ML,1000ML_1624521244.jpg', 1),
(145, 3, 'MACALLAN', 'sub-cat/sMACALLAN_12_YEAR_OLD_WHISKY_750_ML_1624521244.jpg', 1),
(146, 3, 'MONKEY SHOULDER', 'sub-cat/sMONKEY_SHOULDER_WHISKY_700_ML_1624521244.jpg', 1),
(147, 3, 'BLACK AND WHITE', 'sub-cat/sBLACK_AND_WHITE_SCOTCH_WHISKY_180ML,375ML,750_ML,1000ML_1624521244.jpg', 1),
(148, 3, 'MAQINTOSH', 'sub-cat/sMAQINTOSH_PREMIUM_WHISKY_180ML,375ML,750ML,1000ML_1624521244.jpg', 1),
(149, 3, 'OLD SMUGGLER', 'sub-cat/sOLD_SMUGGLER_BLENDED_SCOTCH_WHISKY_60ML,180ML,375ML,750ML,1000ML_1624521244.jpg', 1),
(150, 3, 'BLACK DOG', 'sub-cat/sBLACK_DOG_SCOTCH_WHISKY_180_ML_,375_ML_,750_ML_1624521244.png', 1),
(151, 3, '100 PIPERS', 'sub-cat/s100_PIPERS_WHISKY_60ML,180ML,375ML,750ML,1000ML_1624521244.png', 1),
(152, 3, 'VAT 69', 'sub-cat/sVAT_69_WHISKY_60ML,90ML,180ML,375ML,750ML,1000ML_1624521244.jpg', 1),
(153, 3, 'JAMESON', 'sub-cat/sJAMESON_IRISH_WHISKY_60ML,180ML,375ML,1000ML_1624521244.jpg', 1),
(154, 3, 'CHIVAS REGAL', 'sub-cat/sCHIVAS_REGAL_EXTRA_WHISKY_750_ML_1624521245.jpg', 1),
(155, 3, 'JIM BEAM', 'sub-cat/sJIM_BEAM_8_STAR_BOURBON_750_ML_1624521245.png', 1),
(156, 3, 'JACK DANIELS', 'sub-cat/sJACK_DANIEL_1907_WHISKY_750_ML_1624521245.jpg', 1),
(157, 3, 'DEWARS', 'sub-cat/sDEWARS_12_YEAR_OLD_BLENDED_SCOTCH_WHISKY_750_ML_1624521245.jpg', 1),
(158, 3, 'J.P. WISERS', 'sub-cat/sJ.P._WISERS_15_YEAR_OLD_WHISKY_750_ML_1624521245.png', 1),
(169, 4, 'IMPERIAL', 'RUM\\IMPERIAL RED RUM\\IMPERIAL RED RUM 375 ML.png ', 1),
(170, 4, 'McDOWELLS', 'RUM\\McDOWELLS\\McDOWELLS NO 1 CELEBRATION XXX RUM 375ML.png', 1),
(171, 4, '1965 SPIRIT OF VICTORY', 'RUM\\1965 SPIRIT OF VICTORY\\1965 SPIRIT OF VICTORY RARE XXX RUM 375 ML.png', 1),
(172, 4, 'CAPTAIN MORGAN', 'RUM\\CAPTAIN MORGAN\\CAPTAIN MORGAN THE ORIGINAL RUM 750ML.jpg', 1),
(173, 4, 'BACARDI', 'RUM\\BACARDI\\BACARDI 8 RESERVA OCHO RUM\\BACARDI 8 RESERVA OCHO RUM 750ML.jpg', 1),
(174, 5, 'MONKEY 47', 'GIN\\MONKEY 47\\MONKEY 47 SCHWARZWALD DRY GIN  500ML.jpg', 1),
(175, 5, 'TANQUERY', 'GIN\\TANQUERY\\TANQUERY IMPORTED LONDON DRY GIN 750ML.jpg', 1),
(176, 5, 'ARISTOCRAT', 'GIN\\ARISTOCRAT\\ARISTOCRAT EXTRA DRY GIN  750 ML.png', 1),
(177, 5, 'BEEFEATER', 'GIN\\BEEFEATER\\BEEFEATER LONDON DRY GIN 750ML.png', 1),
(178, 5, 'BOMBAY SAPPHIRE', 'GIN\\BOMBAY SAPPHIRE\\BOMBAY SAPPHIRE DISTILLED LONDON DRY GIN 750ML.jpg', 1),
(179, 5, 'CARREWS', 'GIN\\CARREWS\\CARREWS DRY GIN 325 ML.jpg', 1),
(180, 5, 'GORDONS', 'GIN\\GORDONS\\GORDONS LONDON DRY GIN 750 ML.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` int(11) NOT NULL,
  `c_img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdate` date NOT NULL,
  `c_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `ctitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amt` int(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `message`, `url`, `created_by`) VALUES
(1, 'test', 'Testing', 'no_url', 3),
(2, 'Message', 'Hello this is testing message', 'cat/edugen-psd.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `id` int(11) NOT NULL,
  `mintime` text NOT NULL,
  `maxtime` text NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`id`, `mintime`, `maxtime`, `created_by`) VALUES
(1, '12:10', '23:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `created_by`) VALUES
(5, 'ML', 1),
(6, 'Mg', 1),
(7, 'Gm', 1),
(8, 'Kg', 1),
(10, 'Ltr', 1),
(11, 'Kg', 3),
(12, 'Gm', 3),
(13, 'Pkt', 3),
(14, 'Pcs', 3),
(15, 'Ml', 3),
(16, 'Ltr', 3);

-- --------------------------------------------------------

--
-- Table structure for table `uread`
--

CREATE TABLE `uread` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `nid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `imei` text NOT NULL,
  `email` text NOT NULL,
  `area_id` int(11) NOT NULL,
  `ccode` text NOT NULL,
  `mobile` text NOT NULL,
  `rdate` datetime NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `pin` text DEFAULT NULL,
  `wallet` float NOT NULL DEFAULT 0,
  `code` int(11) NOT NULL,
  `refercode` int(11) DEFAULT NULL,
  `active_otp` varchar(11) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_report`
--

CREATE TABLE `wallet_report` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_report`
--

INSERT INTO `wallet_report` (`id`, `uid`, `message`, `status`, `amt`) VALUES
(1, 19, 'Sign up Credit Added!!', 'Credit', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area_db`
--
ALTER TABLE `area_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_stock`
--
ALTER TABLE `inventory_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_stock_history`
--
ALTER TABLE `inventory_stock_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_setting`
--
ALTER TABLE `main_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_order`
--
ALTER TABLE `rate_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rnoti`
--
ALTER TABLE `rnoti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidemenu`
--
ALTER TABLE `sidemenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidemenu_permission`
--
ALTER TABLE `sidemenu_permission`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uread`
--
ALTER TABLE `uread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_report`
--
ALTER TABLE `wallet_report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `area_db`
--
ALTER TABLE `area_db`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_stock`
--
ALTER TABLE `inventory_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_stock_history`
--
ALTER TABLE `inventory_stock_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_setting`
--
ALTER TABLE `main_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_list`
--
ALTER TABLE `payment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `rate_order`
--
ALTER TABLE `rate_order`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rnoti`
--
ALTER TABLE `rnoti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sidemenu`
--
ALTER TABLE `sidemenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sidemenu_permission`
--
ALTER TABLE `sidemenu_permission`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uread`
--
ALTER TABLE `uread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_report`
--
ALTER TABLE `wallet_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
