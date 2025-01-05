-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2023 lúc 04:12 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sale_amazon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(4, 'Hammad', '', 'wonk.xags@gmail.com', '49857243857', 228, 'address', 'dubai', 'dubai', '0000', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(5, 'Hammad Hassan', '', 'mc170200216@vu.edu.pk', '49857243857', 228, 'address', 'dubai', 'Dubai', '0000', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', '9794cb7c1989a7d0d36a62426cb170e4', '92dd269f6494db9e8e8ab28c528bbe80', '2018-04-23 10:06:51', '1524506811', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(6, 'HDMI', 3),
(7, 'Apple', 3),
(8, 'Zwilling ', 4),
(9, 'Iris Ohyama', 4),
(12, 'Puma', 6),
(13, 'Nike', 6),
(14, 'Hoodies', 7),
(15, 'Coats & Jackets', 7),
(26, 'Boys', 10),
(27, 'Girls', 10),
(39, 'Anker', 3),
(50, 'Adidas', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Bạn có thể tìm thấy gì ở 4649.blog?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">4649.blog mang đến cho các bạn những sản phẩm sale chất lượng đến từ Amazon, Rakuten và Yahoo.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><br></h3>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'JPY '),
(2, 'Search Product', 'Tìm sản phẩm sale'),
(3, 'Search', 'Tìm kiếm'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Danh mục'),
(50, 'Category:', 'Danh mục:'),
(51, 'All Products Under', 'Các sản phẩm của danh mục '),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'Không tìm thấy sản phẩm tương ứng.'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(3, 'Đồ điện tử', 4),
(4, 'Đồ dùng bếp', 4),
(6, 'Thời trang', 4),
(7, 'Health & Personal Care', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, '4649.blog là gì', '<h2 style=\"text-align: justify; \">Nguyên tắc hoạt động</h2><p style=\"text-align: justify; \">4649.blog hoạt động với các nguyên tắc như sau:</p><ol><li style=\"text-align: justify;\">Cung cấp nội dung bài viết hoàn toàn miễn phí.</li><li style=\"text-align: justify;\">Chỉ giới thiệu các dịch vụ/công cụ có chất lượng tốt nhất.</li><li style=\"text-align: justify;\">Cập nhật nội dung và hỗ trợ độc giả nhanh nhất.</li></ol><h2 style=\"text-align: justify; \">Vấn đề riêng tư</h2><p style=\"text-align: justify; \">Vấn đề riêng tư của các độc giả rất quan trọng đối với Vietrick. Căn cứ theo quy định sử dụng internet toàn cầu, chúng tôi cam kết không lưu trữ các thông tin cá nhân nhạy cảm của người truy cập, chúng tôi cũng không bao giờ hỏi thông tin cá nhân của bạn ngoại trừ khi cần (gửi liên hệ, đăng ký bản tin, làm khảo sát).</p><p style=\"text-align: justify; \">Chúng tôi sẽ sử dụng cookie như một phương thức đánh dấu thông tin về người truy cập như loại trình duyệt, giới tính, thời gian truy cập, tần suất xem trang,…nhằm mục đích để chúng tôi hiểu nhu cầu của độc giả để phát triển nội dung tốt hơn.</p><p style=\"text-align: justify; \">Bạn có thể tìm hiểu về chính sách bảo mật của chúng tôi tại:&nbsp;</p><h2 style=\"text-align: justify; \">Bình luận</h2><p style=\"text-align: justify; \">4649.blog cho phép các độc giả bình luận tự do như một diễn đàn nhỏ. Ở khu vực bình luận, độc giả có thể hỏi hoặc nêu ý kiến/cảm nghĩ về nội dung bài viết. Nhưng, để tránh gây phiền nhiễu và ảnh hưởng đến người khác, chúng tôi có quyền xóa các bình luận trên trường hợp bất khả kháng.</p><h2 style=\"text-align: justify; \">Sự hiện diện trên mạng xã hội</h2><p style=\"text-align: justify; \">Hiện tại 4649.blog có một số kênh mạng xã hội để cùng giao lưu với các độc giả như:</p><p style=\"text-align: justify; \"><br></p>\r\n', 'about-banner.png', '4649.blog | Nơi tập hợp sale Amazon', 'sale, tập hợp sale, sale amazon, amazon sale ', '4649.blog | Nơi tập hợp sale Amazon. Nơi lấy rất nhiều thông tin sale chất lượng của Amazon và số lượng lớn.', 'Chính sách', 'faq-banner.jpg', '4649.blog - Chính sách chung', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Liên hệ', 'contact-banner.png', '4649.blog - Liên hệ', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `page` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `global_position` int(11) NOT NULL,
  `asin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discounted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `before_price` int(11) NOT NULL,
  `savings_amount` int(11) NOT NULL,
  `savings_percent` int(11) NOT NULL,
  `total_reviews` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NOT NULL,
  `sponsored` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amazonChoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bestSeller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amazonPrime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `import_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` varchar(11) NOT NULL,
  `p_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_old_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_current_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_condition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_return_policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 5, 5, 'B082T6K8XX', 'true', 768, 'JPY', 914, 146, 16, 14863, 5, 'https://www.amazon.jp/dp/B082T6K8XX/?tag=46490EC-22', 74315, 'false', 'false', 'false', 'true', 'Amazonベーシック ライトニングケーブル iPhone充電 Apple MFi認証 iPhone 13/13 Pro/12/SE(第2世代)/iPad 各種対応(ホワイト 1.8m)', 'https://m.media-amazon.com/images/I/515hqvoNvlL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ライトニングケーブル iPhone充電 Apple MFi認証 iPhone 13/13 Pro/12/SE(第2世代)/iPad 各種対応(ホワイト 1.8m)', '914', '768', 100, '1', 'Amazonベーシック ライトニングケーブル iPhone充電 Apple MFi認証 iPhone 13/13 Pro/12/SE(第2世代)/iPad 各種対応(ホワイト 1.8m)', 'Amazonベーシック ライトニングケーブル iPhone充電 Apple MFi認証 iPhone 13/13 Pro/12/SE(第2世代)/iPad 各種対応(ホワイト 1.8m)', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 6, 6, 'B00CWNMV4G', 'true', 1685, 'JPY', 1800, 115, 6, 68133, 5, 'https://www.amazon.jp/dp/B00CWNMV4G/?tag=46490EC-22', 340665, 'false', 'false', 'false', 'true', 'Amazonベーシック 充電池 充電式ニッケル水素電池 単3形8個セット (最小容量2000mAh、約1000回使用可能)', 'https://m.media-amazon.com/images/I/71xQ8dViZsL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 充電池 充電式ニッケル水素電池 単3形8個セット (最小容量2000mAh、約1000回使用可能)', '1800', '1685', 100, '1', 'Amazonベーシック 充電池 充電式ニッケル水素電池 単3形8個セット (最小容量2000mAh、約1000回使用可能)', 'Amazonベーシック 充電池 充電式ニッケル水素電池 単3形8個セット (最小容量2000mAh、約1000回使用可能)', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 2, 16, 'B09BQD2YXN', 'true', 2600, 'JPY', 3250, 650, 20, 210, 5, 'https://www.amazon.jp/dp/B09BQD2YXN/?tag=46490EC-22', 1050, 'false', 'false', 'false', 'true', 'スポンサー広告 - モニターアーム PC モニター アーム 液晶ディスプレイ アーム ガススプリング式 ガス圧式 17～27インチ対応 液タブ用 web会議対策 取り付け超簡単 最大耐荷重6kg(MD8)', 'https://m.media-amazon.com/images/I/61V4RCrk1PL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - モニターアーム PC モニター アーム 液晶ディスプレイ アーム ガススプリング式 ガス圧式 17～27インチ対応 液タブ用 web会議対策 取り付け超簡単 最大耐荷重6kg(MD8)', '3250', '2600', 100, '1', 'スポンサー広告 - モニターアーム PC モニター アーム 液晶ディスプレイ アーム ガススプリング式 ガス圧式 17～27インチ対応 液タブ用 web会議対策 取り付け超簡単 最大耐荷重6kg(MD8)', 'スポンサー広告 - モニターアーム PC モニター アーム 液晶ディスプレイ アーム ガススプリング式 ガス圧式 17～27インチ対応 液タブ用 web会議対策 取り付け超簡単 最大耐荷重6kg(MD8)', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 56, 77, 'B07D96PYFF', 'true', 27423, 'JPY', 30470, 3047, 10, 148, 5, 'https://www.amazon.jp/dp/B07D96PYFF/?tag=46490EC-22', 740, 'false', 'false', 'false', 'true', 'スポンサー広告 - プラス KR 軽量スチールラック (天地6段) 奥行312mm 高さ2100mm 幅1812mm 601664', 'https://m.media-amazon.com/images/I/51yOdZBL02L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - プラス KR 軽量スチールラック (天地6段) 奥行312mm 高さ2100mm 幅1812mm 601664', '30470', '27423', 100, '1', 'スポンサー広告 - プラス KR 軽量スチールラック (天地6段) 奥行312mm 高さ2100mm 幅1812mm 601664', 'スポンサー広告 - プラス KR 軽量スチールラック (天地6段) 奥行312mm 高さ2100mm 幅1812mm 601664', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 14, 35, 'B01B25NN64', 'true', 877, 'JPY', 970, 93, 10, 59128, 5, 'https://www.amazon.jp/dp/B01B25NN64/?tag=46490EC-22', 295640, 'false', 'false', 'true', 'false', 'Amazonベーシック 収納ケース ファイルフォルダー 拡張式 A4サイズ ブラック', 'https://m.media-amazon.com/images/I/71JhQsQDXXL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 収納ケース ファイルフォルダー 拡張式 A4サイズ ブラック', '970', '877', 100, '1', 'Amazonベーシック 収納ケース ファイルフォルダー 拡張式 A4サイズ ブラック', 'Amazonベーシック 収納ケース ファイルフォルダー 拡張式 A4サイズ ブラック', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 15, 36, 'B0788C34VB', 'true', 1935, 'JPY', 2410, 475, 20, 12096, 5, 'https://www.amazon.jp/dp/B0788C34VB/?tag=46490EC-22', 60480, 'false', 'false', 'false', 'false', 'Amazonベーシック 工具 ツール収納バッグ 30cm', 'https://m.media-amazon.com/images/I/A1WPz3uSvAL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 工具 ツール収納バッグ 30cm', '2410', '1935', 100, '1', 'Amazonベーシック 工具 ツール収納バッグ 30cm', 'Amazonベーシック 工具 ツール収納バッグ 30cm', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 17, 38, 'B07SM9CSWT', 'true', 1003, 'JPY', 1071, 68, 6, 9881, 5, 'https://www.amazon.jp/dp/B07SM9CSWT/?tag=46490EC-22', 49405, 'false', 'false', 'false', 'false', 'Amazonベーシック 万年筆 細字 リフィル付き ブラックインク', 'https://m.media-amazon.com/images/I/71LbzzDezeL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 万年筆 細字 リフィル付き ブラックインク', '1071', '1003', 100, '1', 'Amazonベーシック 万年筆 細字 リフィル付き ブラックインク', 'Amazonベーシック 万年筆 細字 リフィル付き ブラックインク', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 21, 42, 'B078HDCWXM', 'true', 1779, 'JPY', 2121, 342, 16, 33661, 5, 'https://www.amazon.jp/dp/B078HDCWXM/?tag=46490EC-22', 168305, 'false', 'false', 'false', 'false', 'Amazonベーシック 本型金庫 セーフティーボックス コンビネーションロック ブラック', 'https://m.media-amazon.com/images/I/81wL0qRL92L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 本型金庫 セーフティーボックス コンビネーションロック ブラック', '2121', '1779', 100, '1', 'Amazonベーシック 本型金庫 セーフティーボックス コンビネーションロック ブラック', 'Amazonベーシック 本型金庫 セーフティーボックス コンビネーションロック ブラック', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 22, 43, 'B07BDWD8B7', 'true', 609, 'JPY', 840, 231, 28, 10066, 5, 'https://www.amazon.jp/dp/B07BDWD8B7/?tag=46490EC-22', 50330, 'false', 'false', 'false', 'false', 'Amazonベーシック ボールペン 1.2mm 12点セット ブラック', 'https://m.media-amazon.com/images/I/71AhLZebdaL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ボールペン 1.2mm 12点セット ブラック', '840', '609', 100, '1', 'Amazonベーシック ボールペン 1.2mm 12点セット ブラック', 'Amazonベーシック ボールペン 1.2mm 12点セット ブラック', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 28, 49, 'B07XS4LK28', 'true', 1250, 'JPY', 1516, 266, 18, 2394, 5, 'https://www.amazon.jp/dp/B07XS4LK28/?tag=46490EC-22', 11970, 'false', 'false', 'false', 'true', 'Amazonベーシック TypeC & ライトニングケーブル Apple MFi認証済み USB-C iPhone 14/13/13 Pro/12/SE(第2世代)/iPad 各種対応(ブラック 1.8m)', 'https://m.media-amazon.com/images/I/41A9vyNxj7L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック TypeC & ライトニングケーブル Apple MFi認証済み USB-C iPhone 14/13/13 Pro/12/SE(第2世代)/iPad 各種対応(ブラック 1.8m)', '1516', '1250', 100, '1', 'Amazonベーシック TypeC & ライトニングケーブル Apple MFi認証済み USB-C iPhone 14/13/13 Pro/12/SE(第2世代)/iPad 各種対応(ブラック 1.8m)', 'Amazonベーシック TypeC & ライトニングケーブル Apple MFi認証済み USB-C iPhone 14/13/13 Pro/12/SE(第2世代)/iPad 各種対応(ブラック 1.8m)', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 31, 52, 'B07V4TFWFZ', 'true', 2739, 'JPY', 3304, 565, 17, 7938, 5, 'https://www.amazon.jp/dp/B07V4TFWFZ/?tag=46490EC-22', 39690, 'false', 'false', 'false', 'true', 'Amazonベーシック 磁気ラチェットレンチ・ドライバーセット 73ピース', 'https://m.media-amazon.com/images/I/811iiztBHvL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 磁気ラチェットレンチ・ドライバーセット 73ピース', '3304', '2739', 100, '1', 'Amazonベーシック 磁気ラチェットレンチ・ドライバーセット 73ピース', 'Amazonベーシック 磁気ラチェットレンチ・ドライバーセット 73ピース', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 34, 55, 'B08N5V54TT', 'true', 1358, 'JPY', 1599, 241, 15, 777, 5, 'https://www.amazon.jp/dp/B08N5V54TT/?tag=46490EC-22', 3885, 'false', 'false', 'false', 'false', 'Amazonベーシック 掛け布団カバー 柄入り パステルブルー シングル', 'https://m.media-amazon.com/images/I/71txd5dtlzL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 掛け布団カバー 柄入り パステルブルー シングル', '1599', '1358', 100, '1', 'Amazonベーシック 掛け布団カバー 柄入り パステルブルー シングル', 'Amazonベーシック 掛け布団カバー 柄入り パステルブルー シングル', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 36, 57, 'B0874YN8B9', 'true', 2016, 'JPY', 2373, 357, 15, 1607, 5, 'https://www.amazon.jp/dp/B0874YN8B9/?tag=46490EC-22', 8035, 'false', 'false', 'false', 'true', 'Amazonベーシック 充電スタンド Qi認証 ワイヤレス ACアダプタなし 10W', 'https://m.media-amazon.com/images/I/71FkDvgbuHL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 充電スタンド Qi認証 ワイヤレス ACアダプタなし 10W', '2373', '2016', 100, '1', 'Amazonベーシック 充電スタンド Qi認証 ワイヤレス ACアダプタなし 10W', 'Amazonベーシック 充電スタンド Qi認証 ワイヤレス ACアダプタなし 10W', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 38, 59, 'B009FUFCDQ', 'true', 2067, 'JPY', 3489, 1422, 41, 57705, 5, 'https://www.amazon.jp/dp/B009FUFCDQ/?tag=46490EC-22', 288525, 'false', 'false', 'false', 'true', 'Amazonベーシック マイクロファイバー クリーニングクロス 48枚入 (400mm x 300mm) 薄手 洗車ふきとり', 'https://m.media-amazon.com/images/I/91FMx302dXL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック マイクロファイバー クリーニングクロス 48枚入 (400mm x 300mm) 薄手 洗車ふきとり', '3489', '2067', 100, '1', 'Amazonベーシック マイクロファイバー クリーニングクロス 48枚入 (400mm x 300mm) 薄手 洗車ふきとり', 'Amazonベーシック マイクロファイバー クリーニングクロス 48枚入 (400mm x 300mm) 薄手 洗車ふきとり', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 42, 63, 'B01NBSYNXN', 'true', 4493, 'JPY', 5007, 514, 10, 120342, 5, 'https://www.amazon.jp/dp/B01NBSYNXN/?tag=46490EC-22', 601710, 'false', 'false', 'false', 'true', 'Amazonベーシック LANケーブル RJ45 Cat-6準拠 3.0m 24点セット', 'https://m.media-amazon.com/images/I/717XYmQTTVL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック LANケーブル RJ45 Cat-6準拠 3.0m 24点セット', '5007', '4493', 100, '1', 'Amazonベーシック LANケーブル RJ45 Cat-6準拠 3.0m 24点セット', 'Amazonベーシック LANケーブル RJ45 Cat-6準拠 3.0m 24点セット', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 46, 67, 'B07TDT8296', 'true', 1040, 'JPY', 1285, 245, 19, 1415, 5, 'https://www.amazon.jp/dp/B07TDT8296/?tag=46490EC-22', 7075, 'false', 'false', 'false', 'false', 'Amazonベーシック ポケットナイフ 折りたたみ式 木製ハンドル', 'https://m.media-amazon.com/images/I/71FnGJZMD7L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ポケットナイフ 折りたたみ式 木製ハンドル', '1285', '1040', 100, '1', 'Amazonベーシック ポケットナイフ 折りたたみ式 木製ハンドル', 'Amazonベーシック ポケットナイフ 折りたたみ式 木製ハンドル', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 47, 68, 'B014I8T0YQ', 'true', 917, 'JPY', 1034, 117, 11, 498055, 5, 'https://www.amazon.jp/dp/B014I8T0YQ/?tag=46490EC-22', 2490275, 'false', 'false', 'false', 'true', 'Amazonベーシック ハイスピードHDMIケーブル 3.0m (タイプAオス - タイプAオス)', 'https://m.media-amazon.com/images/I/61GUctqz0-L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ハイスピードHDMIケーブル 3.0m (タイプAオス - タイプAオス)', '1034', '917', 100, '1', 'Amazonベーシック ハイスピードHDMIケーブル 3.0m (タイプAオス - タイプAオス)', 'Amazonベーシック ハイスピードHDMIケーブル 3.0m (タイプAオス - タイプAオス)', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 55, 76, 'B0819QHYXK', 'true', 3280, 'JPY', 3680, 400, 11, 547, 5, 'https://www.amazon.jp/dp/B0819QHYXK/?tag=46490EC-22', 2735, 'false', 'false', 'false', 'true', 'スポンサー広告 - [Miyasora] スリッパ 室内 おしゃれ 洗える 4足 2足 ルームシューズ レディース メンズ ハウススリッパ 滑り止め クッション 洗濯 静音 来客用 自宅用 職場', 'https://m.media-amazon.com/images/I/712My94zd0L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - [Miyasora] スリッパ 室内 おしゃれ 洗える 4足 2足 ルームシューズ レディース メンズ ハウススリッパ 滑り止め クッション 洗濯 静音 来客用 自宅用 職場', '3680', '3280', 100, '1', 'スポンサー広告 - [Miyasora] スリッパ 室内 おしゃれ 洗える 4足 2足 ルームシューズ レディース メンズ ハウススリッパ 滑り止め クッション 洗濯 静音 来客用 自宅用 職場', 'スポンサー広告 - [Miyasora] スリッパ 室内 おしゃれ 洗える 4足 2足 ルームシューズ レディース メンズ ハウススリッパ 滑り止め クッション 洗濯 静音 来客用 自宅用 職場', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 8, 78, 'B07K921KK7', 'true', 1267, 'JPY', 2044, 777, 38, 2182, 5, 'https://www.amazon.jp/dp/B07K921KK7/?tag=46490EC-22', 10910, 'false', 'false', 'false', 'false', 'Amazonベーシック ペンシルボックス マルチカラー 4個パック', 'https://m.media-amazon.com/images/I/71kddQ+50kL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ペンシルボックス マルチカラー 4個パック', '2044', '1267', 100, '1', 'Amazonベーシック ペンシルボックス マルチカラー 4個パック', 'Amazonベーシック ペンシルボックス マルチカラー 4個パック', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 9, 79, 'B085SBGZ7G', 'true', 909, 'JPY', 1000, 91, 9, 993, 5, 'https://www.amazon.jp/dp/B085SBGZ7G/?tag=46490EC-22', 4965, 'false', 'false', 'false', 'true', 'Amazonベーシック 高速充電用ケーブル 3A USB-C3.1 Gen2-USB-A用 ホワイト 0.9m', 'https://m.media-amazon.com/images/I/51Mb4kRJ14L._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 高速充電用ケーブル 3A USB-C3.1 Gen2-USB-A用 ホワイト 0.9m', '1000', '909', 100, '1', 'Amazonベーシック 高速充電用ケーブル 3A USB-C3.1 Gen2-USB-A用 ホワイト 0.9m', 'Amazonベーシック 高速充電用ケーブル 3A USB-C3.1 Gen2-USB-A用 ホワイト 0.9m', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 14, 84, 'B0BP9FRWJQ', 'true', 45583, 'JPY', 69980, 24397, 35, 299, 5, 'https://www.amazon.jp/dp/B0BP9FRWJQ/?tag=46490EC-22', 1495, 'false', 'false', 'false', 'true', 'スポンサー広告 - ミニPC AMD Ryzen 7 5800U Windows 11 Pro Mini pc DDR4 16GB 512GB PCIe3.0 SSD 最大 4.4GHz 8コア/16スレッド 小型pc GMKtec NucBo...', 'https://m.media-amazon.com/images/I/51uvtdTlHfL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - ミニPC AMD Ryzen 7 5800U Windows 11 Pro Mini pc DDR4 16GB 512GB PCIe3.0 SSD 最大 4.4GHz 8コア/16スレッド 小型pc GMKtec NucBo...', '69980', '45583', 100, '1', 'スポンサー広告 - ミニPC AMD Ryzen 7 5800U Windows 11 Pro Mini pc DDR4 16GB 512GB PCIe3.0 SSD 最大 4.4GHz 8コア/16スレッド 小型pc GMKtec NucBo...', 'スポンサー広告 - ミニPC AMD Ryzen 7 5800U Windows 11 Pro Mini pc DDR4 16GB 512GB PCIe3.0 SSD 最大 4.4GHz 8コア/16スレッド 小型pc GMKtec NucBo...', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 16, 86, 'B071HHX6VF', 'true', 14039, 'JPY', 16896, 2857, 17, 39760, 5, 'https://www.amazon.jp/dp/B071HHX6VF/?tag=46490EC-22', 198800, 'false', 'false', 'false', 'true', 'Amazonベーシック スーツケース ハードタイプ ダブルキャスター付き', 'https://m.media-amazon.com/images/I/71s7HbyqzEL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック スーツケース ハードタイプ ダブルキャスター付き', '16896', '14039', 100, '1', 'Amazonベーシック スーツケース ハードタイプ ダブルキャスター付き', 'Amazonベーシック スーツケース ハードタイプ ダブルキャスター付き', '1', '1', 'xxx', 20000, 1, 1, 3),
(1, 10, 19, 'B075ZTJ9XR', 'true', 490, 'JPY', 633, 143, 23, 49494, 5, 'https://www.amazon.jp/dp/B075ZTJ9XR/?tag=46490EC-22', 247470, 'false', 'false', 'false', 'true', 'Amazonベーシック プレミアムハイスピード HDMIケーブル テレビ用 (高耐久編組ナイロン) - 0.9m', 'https://m.media-amazon.com/images/I/61YaqGbQvjL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Amazonベーシック プレミアムハイスピード HDMIケーブル テレビ用 (高耐久編組ナイロン) - 0.9m', '633', '490', 100, '1', 'Amazonベーシック プレミアムハイスピード HDMIケーブル テレビ用 (高耐久編組ナイロン) - 0.9m', 'Amazonベーシック プレミアムハイスピード HDMIケーブル テレビ用 (高耐久編組ナイロン) - 0.9m', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 37, 107, 'B07T3SNDHQ', 'true', 2727, 'JPY', 3013, 286, 9, 6507, 5, 'https://www.amazon.jp/dp/B07T3SNDHQ/?tag=46490EC-22', 32535, 'false', 'false', 'false', 'true', 'Amazonベーシック 卓上マウント バニティ両面ミラー 滑り止めベース付き 倍率 1倍/5倍 ゴールド', 'https://m.media-amazon.com/images/I/61E+qAtDQjL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 卓上マウント バニティ両面ミラー 滑り止めベース付き 倍率 1倍/5倍 ゴールド', '3013', '2727', 100, '1', 'Amazonベーシック 卓上マウント バニティ両面ミラー 滑り止めベース付き 倍率 1倍/5倍 ゴールド', 'Amazonベーシック 卓上マウント バニティ両面ミラー 滑り止めベース付き 倍率 1倍/5倍 ゴールド', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 38, 108, 'B01J8S6G16', 'true', 799, 'JPY', 887, 88, 10, 26741, 5, 'https://www.amazon.jp/dp/B01J8S6G16/?tag=46490EC-22', 133705, 'false', 'false', 'false', 'true', 'Amazonベーシック DisplayPort to DisplayPortケーブル 0.9m デスクトップパソコン対応', 'https://m.media-amazon.com/images/I/51G24thfDLL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック DisplayPort to DisplayPortケーブル 0.9m デスクトップパソコン対応', '887', '799', 100, '1', 'Amazonベーシック DisplayPort to DisplayPortケーブル 0.9m デスクトップパソコン対応', 'Amazonベーシック DisplayPort to DisplayPortケーブル 0.9m デスクトップパソコン対応', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 44, 114, 'B0898C78DR', 'true', 1172, 'JPY', 1332, 160, 12, 1021, 5, 'https://www.amazon.jp/dp/B0898C78DR/?tag=46490EC-22', 5105, 'false', 'false', 'false', 'true', 'Amazonベーシック ディスプレーアダプター Mini DisplayPort-HDMI用 4k/60Hz', 'https://m.media-amazon.com/images/I/61YpD7UXXcL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ディスプレーアダプター Mini DisplayPort-HDMI用 4k/60Hz', '1332', '1172', 100, '1', 'Amazonベーシック ディスプレーアダプター Mini DisplayPort-HDMI用 4k/60Hz', 'Amazonベーシック ディスプレーアダプター Mini DisplayPort-HDMI用 4k/60Hz', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 46, 116, 'B07ZTVY1PM', 'true', 1841, 'JPY', 2204, 363, 16, 3432, 5, 'https://www.amazon.jp/dp/B07ZTVY1PM/?tag=46490EC-22', 17160, 'false', 'false', 'false', 'false', 'Amazonベーシック トリガークランプセット 6個入り 10cm-2個 15cm-4個', 'https://m.media-amazon.com/images/I/81J8U-bgG4L._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック トリガークランプセット 6個入り 10cm-2個 15cm-4個', '2204', '1841', 100, '1', 'Amazonベーシック トリガークランプセット 6個入り 10cm-2個 15cm-4個', 'Amazonベーシック トリガークランプセット 6個入り 10cm-2個 15cm-4個', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 51, 121, 'B01GGKYIHS', 'true', 900, 'JPY', 1043, 143, 14, 10317, 5, 'https://www.amazon.jp/dp/B01GGKYIHS/?tag=46490EC-22', 51585, 'false', 'false', 'false', 'true', 'Amazonベーシック USBケーブル 0.9m (タイプC - マイクロ3.1タイプB) ブラック', 'https://m.media-amazon.com/images/I/61pBheVtZ2L._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック USBケーブル 0.9m (タイプC - マイクロ3.1タイプB) ブラック', '1043', '900', 100, '1', 'Amazonベーシック USBケーブル 0.9m (タイプC - マイクロ3.1タイプB) ブラック', 'Amazonベーシック USBケーブル 0.9m (タイプC - マイクロ3.1タイプB) ブラック', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 10, 133, 'B00QHBZUM4', 'true', 2620, 'JPY', 2960, 340, 11, 25090, 5, 'https://www.amazon.jp/dp/B00QHBZUM4/?tag=46490EC-22', 125450, 'false', 'false', 'false', 'true', 'Amazonベーシック ペット用 ソフトキャリーバッグ Sサイズ', 'https://m.media-amazon.com/images/I/91Y6h3kNrxL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ペット用 ソフトキャリーバッグ Sサイズ', '2960', '2620', 100, '1', 'Amazonベーシック ペット用 ソフトキャリーバッグ Sサイズ', 'Amazonベーシック ペット用 ソフトキャリーバッグ Sサイズ', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 17, 140, 'B09S1LCQ85', 'true', 14698, 'JPY', 16280, 1582, 10, 6, 5, 'https://www.amazon.jp/dp/B09S1LCQ85/?tag=46490EC-22', 30, 'false', 'false', 'false', 'true', 'Amazonベーシック ソファ 2人掛け 天然木フレーム 布張り ネイビー', 'https://m.media-amazon.com/images/I/71USgH-drnL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ソファ 2人掛け 天然木フレーム 布張り ネイビー', '16280', '14698', 100, '1', 'Amazonベーシック ソファ 2人掛け 天然木フレーム 布張り ネイビー', 'Amazonベーシック ソファ 2人掛け 天然木フレーム 布張り ネイビー', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 21, 144, 'B00CDS9HTM', 'true', 3205, 'JPY', 3457, 252, 7, 28917, 5, 'https://www.amazon.jp/dp/B00CDS9HTM/?tag=46490EC-22', 144585, 'false', 'false', 'false', 'true', 'Amazonベーシック カメラバッグ 一眼レフ用 32.4 x 20.3 x 24.8 cm ブラック(内装色グレー)', 'https://m.media-amazon.com/images/I/81E36CCjC1L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック カメラバッグ 一眼レフ用 32.4 x 20.3 x 24.8 cm ブラック(内装色グレー)', '3457', '3205', 100, '1', 'Amazonベーシック カメラバッグ 一眼レフ用 32.4 x 20.3 x 24.8 cm ブラック(内装色グレー)', 'Amazonベーシック カメラバッグ 一眼レフ用 32.4 x 20.3 x 24.8 cm ブラック(内装色グレー)', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 22, 145, 'B07K91MV73', 'true', 1145, 'JPY', 1342, 197, 15, 4551, 5, 'https://www.amazon.jp/dp/B07K91MV73/?tag=46490EC-22', 22755, 'false', 'false', 'false', 'false', 'Amazonベーシック オフィス用クリップボード レターサイズ アルミニウム シルバー 2個パック', 'https://m.media-amazon.com/images/I/71lheGGErEL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック オフィス用クリップボード レターサイズ アルミニウム シルバー 2個パック', '1342', '1145', 100, '1', 'Amazonベーシック オフィス用クリップボード レターサイズ アルミニウム シルバー 2個パック', 'Amazonベーシック オフィス用クリップボード レターサイズ アルミニウム シルバー 2個パック', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 32, 155, 'B07CWFNWBW', 'true', 2450, 'JPY', 2779, 329, 12, 11120, 5, 'https://www.amazon.jp/dp/B07CWFNWBW/?tag=46490EC-22', 55600, 'false', 'false', 'false', 'true', 'Amazonベーシック 充電ケーブル 二重網組ナイロン USB Type-C~Type-C 2.0 シルバー 約1.8m', 'https://m.media-amazon.com/images/I/61PLf1VbxRL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 充電ケーブル 二重網組ナイロン USB Type-C~Type-C 2.0 シルバー 約1.8m', '2779', '2450', 100, '1', 'Amazonベーシック 充電ケーブル 二重網組ナイロン USB Type-C~Type-C 2.0 シルバー 約1.8m', 'Amazonベーシック 充電ケーブル 二重網組ナイロン USB Type-C~Type-C 2.0 シルバー 約1.8m', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 34, 157, 'B013PUMQYY', 'true', 621, 'JPY', 660, 39, 6, 11443, 5, 'https://www.amazon.jp/dp/B013PUMQYY/?tag=46490EC-22', 57215, 'false', 'false', 'false', 'true', 'Amazonベーシック LANケーブル RJ45 CAT7準拠/イーサネットパッチケーブル 0.9m', 'https://m.media-amazon.com/images/I/71gxLSGg1eL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック LANケーブル RJ45 CAT7準拠/イーサネットパッチケーブル 0.9m', '660', '621', 100, '1', 'Amazonベーシック LANケーブル RJ45 CAT7準拠/イーサネットパッチケーブル 0.9m', 'Amazonベーシック LANケーブル RJ45 CAT7準拠/イーサネットパッチケーブル 0.9m', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 35, 158, 'B01BRGU8R0', 'true', 1184, 'JPY', 1367, 183, 13, 47350, 5, 'https://www.amazon.jp/dp/B01BRGU8R0/?tag=46490EC-22', 236750, 'false', 'false', 'false', 'false', 'Amazonベーシック 多目的オフィスハサミ 3個パック', 'https://m.media-amazon.com/images/I/61Kt+fEtyRL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 多目的オフィスハサミ 3個パック', '1367', '1184', 100, '1', 'Amazonベーシック 多目的オフィスハサミ 3個パック', 'Amazonベーシック 多目的オフィスハサミ 3個パック', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 22, 194, 'B087B2GWMM', 'true', 2764, 'JPY', 2995, 231, 8, 663, 5, 'https://www.amazon.jp/dp/B087B2GWMM/?tag=46490EC-22', 3315, 'false', 'false', 'false', 'true', 'Amazonベーシック バインダー 多機能フォルダー パッドフォリオ プロフェッショナル', 'https://m.media-amazon.com/images/I/617MwBj7ShL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック バインダー 多機能フォルダー パッドフォリオ プロフェッショナル', '2995', '2764', 100, '1', 'Amazonベーシック バインダー 多機能フォルダー パッドフォリオ プロフェッショナル', 'Amazonベーシック バインダー 多機能フォルダー パッドフォリオ プロフェッショナル', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 40, 163, 'B00BCWALHM', 'true', 830, 'JPY', 1018, 188, 18, 31980, 5, 'https://www.amazon.jp/dp/B00BCWALHM/?tag=46490EC-22', 159900, 'false', 'false', 'false', 'true', 'Amazonベーシック USB2.0ケーブル プリンター用 4.9m (タイプAオス - タイプBオス)', 'https://m.media-amazon.com/images/I/71qDcDV-H4L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック USB2.0ケーブル プリンター用 4.9m (タイプAオス - タイプBオス)', '1018', '830', 100, '1', 'Amazonベーシック USB2.0ケーブル プリンター用 4.9m (タイプAオス - タイプBオス)', 'Amazonベーシック USB2.0ケーブル プリンター用 4.9m (タイプAオス - タイプBオス)', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 41, 164, 'B08BM8XC9G', 'true', 4323, 'JPY', 4755, 432, 9, 891, 5, 'https://www.amazon.jp/dp/B08BM8XC9G/?tag=46490EC-22', 4455, 'false', 'false', 'false', 'true', 'Amazonベーシック 背もたれクッション バックサポート ゲル強化', 'https://m.media-amazon.com/images/I/71q5x+ORTPL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 背もたれクッション バックサポート ゲル強化', '4755', '4323', 100, '1', 'Amazonベーシック 背もたれクッション バックサポート ゲル強化', 'Amazonベーシック 背もたれクッション バックサポート ゲル強化', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 42, 165, 'B06WGWRBDP', 'true', 1833, 'JPY', 2017, 184, 9, 6456, 5, 'https://www.amazon.jp/dp/B06WGWRBDP/?tag=46490EC-22', 32280, 'false', 'false', 'false', 'false', 'ドクターショール ジェルアクティブ インソール ワーク 立ち仕事用 M (25.5cm-29.5cm)', 'https://m.media-amazon.com/images/I/61e+A1zxLEL._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'ドクターショール ジェルアクティブ インソール ワーク 立ち仕事用 M (25.5cm-29.5cm)', '2017', '1833', 100, '1', 'ドクターショール ジェルアクティブ インソール ワーク 立ち仕事用 M (25.5cm-29.5cm)', 'ドクターショール ジェルアクティブ インソール ワーク 立ち仕事用 M (25.5cm-29.5cm)', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 44, 167, 'B00NH12O5I', 'true', 1050, 'JPY', 1294, 244, 19, 66129, 5, 'https://www.amazon.jp/dp/B00NH12O5I/?tag=46490EC-22', 330645, 'false', 'false', 'false', 'true', 'Amazonベーシック USB3.0延長ケーブル プリンター用 3.0m (タイプAオス - タイプAメス)', 'https://m.media-amazon.com/images/I/71hTarU1u1L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック USB3.0延長ケーブル プリンター用 3.0m (タイプAオス - タイプAメス)', '1294', '1050', 100, '1', 'Amazonベーシック USB3.0延長ケーブル プリンター用 3.0m (タイプAオス - タイプAメス)', 'Amazonベーシック USB3.0延長ケーブル プリンター用 3.0m (タイプAオス - タイプAメス)', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 18, 190, 'B07H2BNGN3', 'true', 672, 'JPY', 1024, 352, 34, 1757, 5, 'https://www.amazon.jp/dp/B07H2BNGN3/?tag=46490EC-22', 8785, 'false', 'false', 'false', 'false', 'Amazonベーシック ホッチキス針 スタンダード 5000個入り 10個パック', 'https://m.media-amazon.com/images/I/71WTXUrYpVL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ホッチキス針 スタンダード 5000個入り 10個パック', '1024', '672', 100, '1', 'Amazonベーシック ホッチキス針 スタンダード 5000個入り 10個パック', 'Amazonベーシック ホッチキス針 スタンダード 5000個入り 10個パック', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 53, 225, 'B0BB6N4391', 'true', 799, 'JPY', 999, 200, 20, 2, 5, 'https://www.amazon.jp/dp/B0BB6N4391/?tag=46490EC-22', 10, 'false', 'false', 'false', 'true', 'スポンサー広告 - Yyton ノートパソコンスタンド PCスタンド パソコンスタンド 折りたたみ式 人間工学設計 姿勢改善 腰痛/猫背解消 6段階角度調整可能 滑り止め アルミ合金製 軽量 耐久性 収納便利 持ち運びに便利 Macbook/M...', 'https://m.media-amazon.com/images/I/71GHdtxFcyL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - Yyton ノートパソコンスタンド PCスタンド パソコンスタンド 折りたたみ式 人間工学設計 姿勢改善 腰痛/猫背解消 6段階角度調整可能 滑り止め アルミ合金製 軽量 耐久性 収納便利 持ち運びに便利 Macbook/M...', '999', '799', 100, '1', 'スポンサー広告 - Yyton ノートパソコンスタンド PCスタンド パソコンスタンド 折りたたみ式 人間工学設計 姿勢改善 腰痛/猫背解消 6段階角度調整可能 滑り止め アルミ合金製 軽量 耐久性 収納便利 持ち運びに便利 Macbook/M...', 'スポンサー広告 - Yyton ノートパソコンスタンド PCスタンド パソコンスタンド 折りたたみ式 人間工学設計 姿勢改善 腰痛/猫背解消 6段階角度調整可能 滑り止め アルミ合金製 軽量 耐久性 収納便利 持ち運びに便利 Macbook/M...', '1', '1', 'xxx', 20000, 1, 1, 3),
(3, 55, 178, 'B09MZ9ZGWX', 'true', 1129, 'JPY', 1999, 870, 44, 957, 5, 'https://www.amazon.jp/dp/B09MZ9ZGWX/?tag=46490EC-22', 4785, 'false', 'false', 'false', 'true', 'スポンサー広告 - 充電ケーブル 3in1 巻き取り式 約140cm 3A急速充電対応 iPhone とusbケーブル ライトニング USB Type c ケーブル/usbケーブル/Micro 充電コード最大15W正規充電器対応 (オフホワイト)', 'https://m.media-amazon.com/images/I/51ytBbLlW7L._AC_UL400_.jpg', '2023-06-11 17:54:59', 0, 'スポンサー広告 - 充電ケーブル 3in1 巻き取り式 約140cm 3A急速充電対応 iPhone とusbケーブル ライトニング USB Type c ケーブル/usbケーブル/Micro 充電コード最大15W正規充電器対応 (オフホワイト)', '1999', '1129', 100, '1', 'スポンサー広告 - 充電ケーブル 3in1 巻き取り式 約140cm 3A急速充電対応 iPhone とusbケーブル ライトニング USB Type c ケーブル/usbケーブル/Micro 充電コード最大15W正規充電器対応 (オフホワイト)', 'スポンサー広告 - 充電ケーブル 3in1 巻き取り式 約140cm 3A急速充電対応 iPhone とusbケーブル ライトニング USB Type c ケーブル/usbケーブル/Micro 充電コード最大15W正規充電器対応 (オフホワイト)', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 8, 180, 'B014I8TOTC', 'true', 1618, 'JPY', 1741, 123, 7, 22898, 5, 'https://www.amazon.jp/dp/B014I8TOTC/?tag=46490EC-22', 114490, 'false', 'false', 'false', 'true', 'Amazonベーシック ハイスピードHDMIケーブル CL3規格(難燃性材) - 4.6m ハイスピード', 'https://m.media-amazon.com/images/I/81NrJ0ckcaL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ハイスピードHDMIケーブル CL3規格(難燃性材) - 4.6m ハイスピード', '1741', '1618', 100, '1', 'Amazonベーシック ハイスピードHDMIケーブル CL3規格(難燃性材) - 4.6m ハイスピード', 'Amazonベーシック ハイスピードHDMIケーブル CL3規格(難燃性材) - 4.6m ハイスピード', '1', '1', 'xxx', 20000, 1, 1, 3),
(2, 43, 104, 'B07KSMBL2H', 'true', 640, 'JPY', 850, 210, 25, 4924, 5, 'https://www.amazon.jp/dp/B07KSMBL2H/?tag=46490EC-22', 24620, 'false', 'false', 'false', 'true', 'Amazonベーシック 柔軟で耐久性のあるHDMIケーブル テレビ用 イーサネット対応 3D 4K HDR ARC (4K@60Hz、18Gbps) ブラック', 'https://m.media-amazon.com/images/I/71gEiWJNPeL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Amazonベーシック 柔軟で耐久性のあるHDMIケーブル テレビ用 イーサネット対応 3D 4K HDR ARC (4K@60Hz、18Gbps) ブラック', '850', '640', 100, '1', 'Amazonベーシック 柔軟で耐久性のあるHDMIケーブル テレビ用 イーサネット対応 3D 4K HDR ARC (4K@60Hz、18Gbps) ブラック', 'Amazonベーシック 柔軟で耐久性のあるHDMIケーブル テレビ用 イーサネット対応 3D 4K HDR ARC (4K@60Hz、18Gbps) ブラック', '1', '1', 'xxx', 20000, 1, 1, 6),
(4, 19, 191, 'B08BM9CSGS', 'true', 3476, 'JPY', 4681, 1205, 26, 2172, 5, 'https://www.amazon.jp/dp/B08BM9CSGS/?tag=46490EC-22', 10860, 'false', 'false', 'false', 'true', 'Amazonベーシック シートクッション オフィスチェア用 ゲル強化', 'https://m.media-amazon.com/images/I/71OF1bJyKmL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック シートクッション オフィスチェア用 ゲル強化', '4681', '3476', 100, '1', 'Amazonベーシック シートクッション オフィスチェア用 ゲル強化', 'Amazonベーシック シートクッション オフィスチェア用 ゲル強化', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 20, 192, 'B00EEBS9O0', 'true', 2318, 'JPY', 3165, 847, 27, 18507, 5, 'https://www.amazon.jp/dp/B00EEBS9O0/?tag=46490EC-22', 92535, 'false', 'false', 'false', 'true', 'Amazonベーシック バッグパック PCケース ノートパソコン ビジネスバッグ ~17インチ', 'https://m.media-amazon.com/images/I/81vfzNUAXEL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック バッグパック PCケース ノートパソコン ビジネスバッグ ~17インチ', '3165', '2318', 100, '1', 'Amazonベーシック バッグパック PCケース ノートパソコン ビジネスバッグ ~17インチ', 'Amazonベーシック バッグパック PCケース ノートパソコン ビジネスバッグ ~17インチ', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 21, 193, 'B07BK6TCKY', 'true', 1630, 'JPY', 1801, 171, 9, 2205, 5, 'https://www.amazon.jp/dp/B07BK6TCKY/?tag=46490EC-22', 11025, 'false', 'false', 'false', 'false', '[Amazonベーシック] スーツケース用キャスターホイール 4点セット', 'https://m.media-amazon.com/images/I/61noE6lQS9L._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, '[Amazonベーシック] スーツケース用キャスターホイール 4点セット', '1801', '1630', 100, '1', '[Amazonベーシック] スーツケース用キャスターホイール 4点セット', '[Amazonベーシック] スーツケース用キャスターホイール 4点セット', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 25, 197, 'B07S6WQ1DD', 'true', 2074, 'JPY', 2503, 429, 17, 2623, 5, 'https://www.amazon.jp/dp/B07S6WQ1DD/?tag=46490EC-22', 13115, 'false', 'false', 'false', 'true', 'Amazonベーシック 収納クリップボード 2層 内側 標準 アルミ製 32×23cm', 'https://m.media-amazon.com/images/I/7193W9cVmHL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック 収納クリップボード 2層 内側 標準 アルミ製 32×23cm', '2503', '2074', 100, '1', 'Amazonベーシック 収納クリップボード 2層 内側 標準 アルミ製 32×23cm', 'Amazonベーシック 収納クリップボード 2層 内側 標準 アルミ製 32×23cm', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 34, 206, 'B079LFHQPM', 'true', 2994, 'JPY', 3215, 221, 7, 7566, 5, 'https://www.amazon.jp/dp/B079LFHQPM/?tag=46490EC-22', 37830, 'false', 'false', 'false', 'true', 'Amazonベーシック フォトフレーム 20×25cm ブラック 2点セット', 'https://m.media-amazon.com/images/I/812BSJ2uqbL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック フォトフレーム 20×25cm ブラック 2点セット', '3215', '2994', 100, '1', 'Amazonベーシック フォトフレーム 20×25cm ブラック 2点セット', 'Amazonベーシック フォトフレーム 20×25cm ブラック 2点セット', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 39, 211, 'B07GFL1G86', 'true', 1940, 'JPY', 2392, 452, 19, 1709, 5, 'https://www.amazon.jp/dp/B07GFL1G86/?tag=46490EC-22', 8545, 'false', 'false', 'false', 'false', 'Amazonベーシック ランドリーバスケット 布製 アルミハンドル付 ハンパー ブラック', 'https://m.media-amazon.com/images/I/81vTG9bbCRL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ランドリーバスケット 布製 アルミハンドル付 ハンパー ブラック', '2392', '1940', 100, '1', 'Amazonベーシック ランドリーバスケット 布製 アルミハンドル付 ハンパー ブラック', 'Amazonベーシック ランドリーバスケット 布製 アルミハンドル付 ハンパー ブラック', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 45, 217, 'B01MSUTJIV', 'true', 1036, 'JPY', 1097, 61, 6, 19316, 5, 'https://www.amazon.jp/dp/B01MSUTJIV/?tag=46490EC-22', 96580, 'false', 'false', 'false', 'false', 'Amazonベーシック カーテン ふさ掛け ホールドバック 装飾カーテン 2点セット エスプレッソダークブロンズ', 'https://m.media-amazon.com/images/I/61G5-g7EshL._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック カーテン ふさ掛け ホールドバック 装飾カーテン 2点セット エスプレッソダークブロンズ', '1097', '1036', 100, '1', 'Amazonベーシック カーテン ふさ掛け ホールドバック 装飾カーテン 2点セット エスプレッソダークブロンズ', 'Amazonベーシック カーテン ふさ掛け ホールドバック 装飾カーテン 2点セット エスプレッソダークブロンズ', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 51, 223, 'B07YLV7DZ4', 'true', 2994, 'JPY', 3233, 239, 7, 971, 5, 'https://www.amazon.jp/dp/B07YLV7DZ4/?tag=46490EC-22', 4855, 'false', 'false', 'false', 'true', 'Amazonベーシック ボンドレザー手帳 アソートカラー 5冊入', 'https://m.media-amazon.com/images/I/71zVpra6h7L._AC_UL320_.jpg', '2023-06-11 17:54:59', 0, 'Amazonベーシック ボンドレザー手帳 アソートカラー 5冊入', '3233', '2994', 100, '1', 'Amazonベーシック ボンドレザー手帳 アソートカラー 5冊入', 'Amazonベーシック ボンドレザー手帳 アソートカラー 5冊入', '1', '1', 'xxx', 20000, 1, 1, 3),
(4, 19, 193, 'B001UQWSYO', 'true', 3869, 'JPY', 4200, 331, 8, 2046, 5, 'https://www.amazon.jp/dp/B001UQWSYO/?tag=46490EC-22', 10230, 'false', 'false', 'false', 'true', 'スポンサー広告 - アイリスオーヤマ プラスチック衣装ケース（フタ・キャスターつき） 4個セット', 'https://m.media-amazon.com/images/I/41YcjD+VuNL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - アイリスオーヤマ プラスチック衣装ケース（フタ・キャスターつき） 4個セット', '4200', '3869', 100, '1', 'スポンサー広告 - アイリスオーヤマ プラスチック衣装ケース（フタ・キャスターつき） 4個セット', 'スポンサー広告 - アイリスオーヤマ プラスチック衣装ケース（フタ・キャスターつき） 4個セット', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 20, 141, 'B07Q19J327', 'true', 9836, 'JPY', 17800, 7964, 45, 76, 5, 'https://www.amazon.jp/dp/B07Q19J327/?tag=46490EC-22', 380, 'false', 'false', 'false', 'false', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター [2022モデル]上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き 衣類乾燥モード搭載 ホワイト KSF-DC151T', 'https://m.media-amazon.com/images/I/71JBJs1pxWL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター [2022モデル]上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き 衣類乾燥モード搭載 ホワイト KSF-DC151T', '17800', '9836', 100, '1', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター [2022モデル]上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き 衣類乾燥モード搭載 ホワイト KSF-DC151T', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター [2022モデル]上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き 衣類乾燥モード搭載 ホワイト KSF-DC151T', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 5, 3, 'B07ZQGDHP2', 'true', 9799, 'JPY', 11880, 2081, 18, 11016, 5, 'https://www.amazon.jp/dp/B07ZQGDHP2/?tag=46490EC-22', 55080, 'false', 'false', 'true', 'true', 'アイリスオーヤマ リンサークリーナー コンパクトモデル 【テレビ放映商品】 カーペットクリーナー 染み抜き 布洗浄機 RNS-300', 'https://m.media-amazon.com/images/I/51dDjyEuULL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ リンサークリーナー コンパクトモデル 【テレビ放映商品】 カーペットクリーナー 染み抜き 布洗浄機 RNS-300', '11880', '9799', 100, '1', 'アイリスオーヤマ リンサークリーナー コンパクトモデル 【テレビ放映商品】 カーペットクリーナー 染み抜き 布洗浄機 RNS-300', 'アイリスオーヤマ リンサークリーナー コンパクトモデル 【テレビ放映商品】 カーペットクリーナー 染み抜き 布洗浄機 RNS-300', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 6, 4, 'B09J7Q364F', 'true', 12490, 'JPY', 16280, 3790, 23, 621, 5, 'https://www.amazon.jp/dp/B09J7Q364F/?tag=46490EC-22', 3105, 'false', 'false', 'true', 'true', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 布団2組・靴2組対応 ダニ退治 カラリエ 温風機能 マット不要 木目調 ツインノズル メーカー保証付き FK-W2-W ホワイト', 'https://m.media-amazon.com/images/I/517wdm6rhhL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 布団2組・靴2組対応 ダニ退治 カラリエ 温風機能 マット不要 木目調 ツインノズル メーカー保証付き FK-W2-W ホワイト', '16280', '12490', 100, '1', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 布団2組・靴2組対応 ダニ退治 カラリエ 温風機能 マット不要 木目調 ツインノズル メーカー保証付き FK-W2-W ホワイト', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 布団2組・靴2組対応 ダニ退治 カラリエ 温風機能 マット不要 木目調 ツインノズル メーカー保証付き FK-W2-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 7, 5, 'B0BBVFX2GR', 'true', 5640, 'JPY', 7900, 2260, 29, 2542, 5, 'https://www.amazon.jp/dp/B0BBVFX2GR/?tag=46490EC-22', 12710, 'false', 'false', 'true', 'false', 'アイリスオーヤマ 布団クリーナー ダニ・ちりセンサー搭載 たたき 約6,500回/分 FCA-13-C アイボリー', 'https://m.media-amazon.com/images/I/41joGMtZaXL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 布団クリーナー ダニ・ちりセンサー搭載 たたき 約6,500回/分 FCA-13-C アイボリー', '7900', '5640', 100, '1', 'アイリスオーヤマ 布団クリーナー ダニ・ちりセンサー搭載 たたき 約6,500回/分 FCA-13-C アイボリー', 'アイリスオーヤマ 布団クリーナー ダニ・ちりセンサー搭載 たたき 約6,500回/分 FCA-13-C アイボリー', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 4, 9, 'B0BR5793PL', 'true', 169800, 'JPY', 200000, 30200, 15, 64, 5, 'https://www.amazon.jp/dp/B0BR5793PL/?tag=46490EC-22', 320, 'false', 'false', 'false', 'false', 'スポンサー広告 - 東芝 冷蔵庫 幅65.0㎝ 509L GR-U510FK(EW) 6ドア 両開きタイプ 野菜室がまんなか Ag+低温触媒 除菌 脱臭 2022年モデル グランホワイト', 'https://m.media-amazon.com/images/I/51PB7lkojCL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 東芝 冷蔵庫 幅65.0㎝ 509L GR-U510FK(EW) 6ドア 両開きタイプ 野菜室がまんなか Ag+低温触媒 除菌 脱臭 2022年モデル グランホワイト', '200000', '169800', 100, '1', 'スポンサー広告 - 東芝 冷蔵庫 幅65.0㎝ 509L GR-U510FK(EW) 6ドア 両開きタイプ 野菜室がまんなか Ag+低温触媒 除菌 脱臭 2022年モデル グランホワイト', 'スポンサー広告 - 東芝 冷蔵庫 幅65.0㎝ 509L GR-U510FK(EW) 6ドア 両開きタイプ 野菜室がまんなか Ag+低温触媒 除菌 脱臭 2022年モデル グランホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 5, 10, 'B08GQM8TC3', 'true', 15390, 'JPY', 19800, 4410, 22, 1653, 5, 'https://www.amazon.jp/dp/B08GQM8TC3/?tag=46490EC-22', 8265, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 2.2L 1~2人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー69種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA2-B', 'https://m.media-amazon.com/images/I/51cbE+BMsCL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電気圧力鍋 圧力鍋 2.2L 1~2人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー69種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA2-B', '19800', '15390', 100, '1', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 2.2L 1~2人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー69種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA2-B', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 2.2L 1~2人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー69種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA2-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 6, 11, 'B091SN96JQ', 'true', 9990, 'JPY', 16699, 6709, 40, 905, 5, 'https://www.amazon.jp/dp/B091SN96JQ/?tag=46490EC-22', 4525, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 掃除機 コードレス 極細軽量 ハンディ 紙パック スティッククリーナー 軽量 1.3kg 2WAY ほこりセンサー搭載 SBD-74-W ホワイト', 'https://m.media-amazon.com/images/I/41pnMRbESxL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 掃除機 コードレス 極細軽量 ハンディ 紙パック スティッククリーナー 軽量 1.3kg 2WAY ほこりセンサー搭載 SBD-74-W ホワイト', '16699', '9990', 100, '1', 'アイリスオーヤマ 掃除機 コードレス 極細軽量 ハンディ 紙パック スティッククリーナー 軽量 1.3kg 2WAY ほこりセンサー搭載 SBD-74-W ホワイト', 'アイリスオーヤマ 掃除機 コードレス 極細軽量 ハンディ 紙パック スティッククリーナー 軽量 1.3kg 2WAY ほこりセンサー搭載 SBD-74-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 7, 12, 'B00KV2DXKQ', 'true', 3982, 'JPY', 4818, 836, 17, 3231, 5, 'https://www.amazon.jp/dp/B00KV2DXKQ/?tag=46490EC-22', 16155, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 洗濯物干し 室内物干し 窓枠物干し 省スペース コンパクト 約4人用 高さ約190~260cm MW-260NR ホワイト', 'https://m.media-amazon.com/images/I/61dy+AxlF0L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 洗濯物干し 室内物干し 窓枠物干し 省スペース コンパクト 約4人用 高さ約190~260cm MW-260NR ホワイト', '4818', '3982', 100, '1', 'アイリスオーヤマ 洗濯物干し 室内物干し 窓枠物干し 省スペース コンパクト 約4人用 高さ約190~260cm MW-260NR ホワイト', 'アイリスオーヤマ 洗濯物干し 室内物干し 窓枠物干し 省スペース コンパクト 約4人用 高さ約190~260cm MW-260NR ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 3, 22, 'B091F7BL35', 'true', 69800, 'JPY', 98000, 28200, 29, 2038, 5, 'https://www.amazon.jp/dp/B091F7BL35/?tag=46490EC-22', 10190, 'false', 'false', 'false', 'true', 'スポンサー広告 - エムテック 光美容器 KE-NON 日本製 VIO対応 メーカー2年保証付 家庭用 フラッシュ式 シャンパンゴールド', 'https://m.media-amazon.com/images/I/51NXEbffJ8L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - エムテック 光美容器 KE-NON 日本製 VIO対応 メーカー2年保証付 家庭用 フラッシュ式 シャンパンゴールド', '98000', '69800', 100, '1', 'スポンサー広告 - エムテック 光美容器 KE-NON 日本製 VIO対応 メーカー2年保証付 家庭用 フラッシュ式 シャンパンゴールド', 'スポンサー広告 - エムテック 光美容器 KE-NON 日本製 VIO対応 メーカー2年保証付 家庭用 フラッシュ式 シャンパンゴールド', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 6, 18, 'B09DSS493N', 'true', 20463, 'JPY', 27280, 6817, 25, 653, 5, 'https://www.amazon.jp/dp/B09DSS493N/?tag=46490EC-22', 3265, 'false', 'false', 'false', 'true', 'アイリスオーヤマ タブレット LUCA 10インチ Android 10 wi-fi対応 32GB 4コアCPU TE101N1-B', 'https://m.media-amazon.com/images/I/61ZZ3waY+jL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ タブレット LUCA 10インチ Android 10 wi-fi対応 32GB 4コアCPU TE101N1-B', '27280', '20463', 100, '1', 'アイリスオーヤマ タブレット LUCA 10インチ Android 10 wi-fi対応 32GB 4コアCPU TE101N1-B', 'アイリスオーヤマ タブレット LUCA 10インチ Android 10 wi-fi対応 32GB 4コアCPU TE101N1-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 57, 178, 'B08LPW5VF6', 'true', 8245, 'JPY', 8778, 533, 6, 67, 5, 'https://www.amazon.jp/dp/B08LPW5VF6/?tag=46490EC-22', 335, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 別売アタッチメントセット 掃除機 コードレス 【対応 IC-SLDCP12/SLDCP5/SLDCP6M 他】 スティッククリーナー MTS29', 'https://m.media-amazon.com/images/I/718tARbhHjL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 別売アタッチメントセット 掃除機 コードレス 【対応 IC-SLDCP12/SLDCP5/SLDCP6M 他】 スティッククリーナー MTS29', '8778', '8245', 100, '1', 'アイリスオーヤマ 別売アタッチメントセット 掃除機 コードレス 【対応 IC-SLDCP12/SLDCP5/SLDCP6M 他】 スティッククリーナー MTS29', 'アイリスオーヤマ 別売アタッチメントセット 掃除機 コードレス 【対応 IC-SLDCP12/SLDCP5/SLDCP6M 他】 スティッククリーナー MTS29', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 8, 27, 'B088H9DDP8', 'true', 20000, 'JPY', 22800, 2800, 12, 9939, 5, 'https://www.amazon.jp/dp/B088H9DDP8/?tag=46490EC-22', 49695, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 除湿機 サーキュレーター 衣類乾燥 強力 除湿器 スピード乾燥 除湿量 5L 湿度センサー 静音設計 デシカント方式 ホワイト/グレー IJD-I50-WH', 'https://m.media-amazon.com/images/I/41OjIHs+jIL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 除湿機 サーキュレーター 衣類乾燥 強力 除湿器 スピード乾燥 除湿量 5L 湿度センサー 静音設計 デシカント方式 ホワイト/グレー IJD-I50-WH', '22800', '20000', 100, '1', 'アイリスオーヤマ 除湿機 サーキュレーター 衣類乾燥 強力 除湿器 スピード乾燥 除湿量 5L 湿度センサー 静音設計 デシカント方式 ホワイト/グレー IJD-I50-WH', 'アイリスオーヤマ 除湿機 サーキュレーター 衣類乾燥 強力 除湿器 スピード乾燥 除湿量 5L 湿度センサー 静音設計 デシカント方式 ホワイト/グレー IJD-I50-WH', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 9, 28, 'B07QQDRFT2', 'true', 10500, 'JPY', 20373, 9873, 48, 2088, 5, 'https://www.amazon.jp/dp/B07QQDRFT2/?tag=46490EC-22', 10440, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC15T', 'https://m.media-amazon.com/images/I/51X25jo9P6L._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC15T', '20373', '10500', 100, '1', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC15T', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC15T', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 14, 188, 'B079LWYC17', 'true', 7280, 'JPY', 12039, 4759, 40, 9844, 5, 'https://www.amazon.jp/dp/B079LWYC17/?tag=46490EC-22', 49220, 'false', 'false', 'false', 'true', 'スポンサー広告 - アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 リモコン付き PCF-SC15T ホワイト/ブラック', 'https://m.media-amazon.com/images/I/61n2tItF9IL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 リモコン付き PCF-SC15T ホワイト/ブラック', '12039', '7280', 100, '1', 'スポンサー広告 - アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 リモコン付き PCF-SC15T ホワイト/ブラック', 'スポンサー広告 - アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 リモコン付き PCF-SC15T ホワイト/ブラック', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 11, 30, 'B0BWD7XM13', 'true', 9999, 'JPY', 19988, 9989, 50, 39, 5, 'https://www.amazon.jp/dp/B0BWD7XM13/?tag=46490EC-22', 195, 'false', 'false', 'false', 'true', 'スポンサー広告 - 冷風扇 冷風機 【2023年新型＆上部給水＆保冷パック3個付】 冷風 強力 扇風機 キャスター付 5.5Lタンク LED液晶画面 左右首振り 冷風モード リモコン付き 風量調節3段階 7Hタイマー付 スリムタイプ スポットエ...', 'https://m.media-amazon.com/images/I/7179bGPJ8JL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 冷風扇 冷風機 【2023年新型＆上部給水＆保冷パック3個付】 冷風 強力 扇風機 キャスター付 5.5Lタンク LED液晶画面 左右首振り 冷風モード リモコン付き 風量調節3段階 7Hタイマー付 スリムタイプ スポットエ...', '19988', '9999', 100, '1', 'スポンサー広告 - 冷風扇 冷風機 【2023年新型＆上部給水＆保冷パック3個付】 冷風 強力 扇風機 キャスター付 5.5Lタンク LED液晶画面 左右首振り 冷風モード リモコン付き 風量調節3段階 7Hタイマー付 スリムタイプ スポットエ...', 'スポンサー広告 - 冷風扇 冷風機 【2023年新型＆上部給水＆保冷パック3個付】 冷風 強力 扇風機 キャスター付 5.5Lタンク LED液晶画面 左右首振り 冷風モード リモコン付き 風量調節3段階 7Hタイマー付 スリムタイプ スポットエ...', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 14, 32, 'B08PP4THMY', 'true', 7300, 'JPY', 9328, 2028, 22, 3939, 5, 'https://www.amazon.jp/dp/B08PP4THMY/?tag=46490EC-22', 19695, 'false', 'false', 'false', 'true', 'アイリスオーヤマ ハンディクリーナー 掃除機 コードレス 車用 パワフル 吸引 コンパクト メーカー保証付き 軽量 500g スタンド 充電 IC-H50-B ブラック 5.6×5.7×40.2cm', 'https://m.media-amazon.com/images/I/61mb-hsCgnL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ ハンディクリーナー 掃除機 コードレス 車用 パワフル 吸引 コンパクト メーカー保証付き 軽量 500g スタンド 充電 IC-H50-B ブラック 5.6×5.7×40.2cm', '9328', '7300', 100, '1', 'アイリスオーヤマ ハンディクリーナー 掃除機 コードレス 車用 パワフル 吸引 コンパクト メーカー保証付き 軽量 500g スタンド 充電 IC-H50-B ブラック 5.6×5.7×40.2cm', 'アイリスオーヤマ ハンディクリーナー 掃除機 コードレス 車用 パワフル 吸引 コンパクト メーカー保証付き 軽量 500g スタンド 充電 IC-H50-B ブラック 5.6×5.7×40.2cm', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 15, 33, 'B09RZG39L5', 'true', 11980, 'JPY', 18480, 6500, 35, 1306, 5, 'https://www.amazon.jp/dp/B09RZG39L5/?tag=46490EC-22', 6530, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 掃除機 コードレスクリーナー 充電式サイクロンスティッククリーナー メーカー保証付き SCD-181P-B ブラック', 'https://m.media-amazon.com/images/I/31Jm90EkWzL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 掃除機 コードレスクリーナー 充電式サイクロンスティッククリーナー メーカー保証付き SCD-181P-B ブラック', '18480', '11980', 100, '1', 'アイリスオーヤマ 掃除機 コードレスクリーナー 充電式サイクロンスティッククリーナー メーカー保証付き SCD-181P-B ブラック', 'アイリスオーヤマ 掃除機 コードレスクリーナー 充電式サイクロンスティッククリーナー メーカー保証付き SCD-181P-B ブラック', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 16, 34, 'B08GSHPC6G', 'true', 18400, 'JPY', 24800, 6400, 26, 3976, 5, 'https://www.amazon.jp/dp/B08GSHPC6G/?tag=46490EC-22', 19880, 'false', 'false', 'true', 'true', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 4L 3~4人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー90種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA4-B', 'https://m.media-amazon.com/images/I/51LbRrhOiTL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電気圧力鍋 圧力鍋 4L 3~4人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー90種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA4-B', '24800', '18400', 100, '1', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 4L 3~4人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー90種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA4-B', 'アイリスオーヤマ 電気圧力鍋 圧力鍋 4L 3~4人用 低温調理可能 卓上鍋 予約機能付き 自動メニュー90種類 ガラス蓋付き レシピブック付き ブラック PMPC-MA4-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 17, 35, 'B08481Z7H1', 'true', 14500, 'JPY', 20328, 5828, 29, 1587, 5, 'https://www.amazon.jp/dp/B08481Z7H1/?tag=46490EC-22', 7935, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 充電式ハンディウォッシャー/高圧洗浄機 18V 2.0Ah バッテリ・充電器付 最大40分稼動 コードレス&タンクレス 洗車 掃除 場所を選ばす使用可能 JHW-201', 'https://m.media-amazon.com/images/I/41wPhQc8jUL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 充電式ハンディウォッシャー/高圧洗浄機 18V 2.0Ah バッテリ・充電器付 最大40分稼動 コードレス&タンクレス 洗車 掃除 場所を選ばす使用可能 JHW-201', '20328', '14500', 100, '1', 'アイリスオーヤマ 充電式ハンディウォッシャー/高圧洗浄機 18V 2.0Ah バッテリ・充電器付 最大40分稼動 コードレス&タンクレス 洗車 掃除 場所を選ばす使用可能 JHW-201', 'アイリスオーヤマ 充電式ハンディウォッシャー/高圧洗浄機 18V 2.0Ah バッテリ・充電器付 最大40分稼動 コードレス&タンクレス 洗車 掃除 場所を選ばす使用可能 JHW-201', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 18, 36, 'B07H4MYMP9', 'true', 7980, 'JPY', 11859, 3879, 33, 3662, 5, 'https://www.amazon.jp/dp/B07H4MYMP9/?tag=46490EC-22', 18310, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 布団クリーナー ダニ対策 たたきヘッド 約5,800回/分 温風機能 フィルター付 IC-FAC2', 'https://m.media-amazon.com/images/I/51mEvUySDoL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 布団クリーナー ダニ対策 たたきヘッド 約5,800回/分 温風機能 フィルター付 IC-FAC2', '11859', '7980', 100, '1', 'アイリスオーヤマ 布団クリーナー ダニ対策 たたきヘッド 約5,800回/分 温風機能 フィルター付 IC-FAC2', 'アイリスオーヤマ 布団クリーナー ダニ対策 たたきヘッド 約5,800回/分 温風機能 フィルター付 IC-FAC2', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 20, 38, 'B07QP882VF', 'true', 10780, 'JPY', 14080, 3300, 23, 3949, 5, 'https://www.amazon.jp/dp/B07QP882VF/?tag=46490EC-22', 19745, 'false', 'false', 'false', 'true', 'アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト PCF-SDC15T', 'https://m.media-amazon.com/images/I/61cHPxsXt3L._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト PCF-SDC15T', '14080', '10780', 100, '1', 'アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト PCF-SDC15T', 'アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 24畳 パワフル送風 DCモーター リモコン付き ホワイト PCF-SDC15T', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 22, 40, 'B074GKH8X1', 'true', 5980, 'JPY', 8129, 2149, 26, 2458, 5, 'https://www.amazon.jp/dp/B074GKH8X1/?tag=46490EC-22', 12290, 'false', 'false', 'false', 'true', 'アイリスオーヤマ スチームクリーナー コンパクトタイプ 16点セット 120cmロングホース 除菌 消臭 軽量 ホワイト STM-304N-W', 'https://m.media-amazon.com/images/I/51IZziB1UML._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ スチームクリーナー コンパクトタイプ 16点セット 120cmロングホース 除菌 消臭 軽量 ホワイト STM-304N-W', '8129', '5980', 100, '1', 'アイリスオーヤマ スチームクリーナー コンパクトタイプ 16点セット 120cmロングホース 除菌 消臭 軽量 ホワイト STM-304N-W', 'アイリスオーヤマ スチームクリーナー コンパクトタイプ 16点セット 120cmロングホース 除菌 消臭 軽量 ホワイト STM-304N-W', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 24, 42, 'B0BD51T1YB', 'true', 11236, 'JPY', 14980, 3744, 25, 1091, 5, 'https://www.amazon.jp/dp/B0BD51T1YB/?tag=46490EC-22', 5455, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 電子レンジ 18L フラットテーブル ヘルツフリー 単機能 全国対応 IMB-F186-W ホワイト', 'https://m.media-amazon.com/images/I/61l8SaeYbkL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電子レンジ 18L フラットテーブル ヘルツフリー 単機能 全国対応 IMB-F186-W ホワイト', '14980', '11236', 100, '1', 'アイリスオーヤマ 電子レンジ 18L フラットテーブル ヘルツフリー 単機能 全国対応 IMB-F186-W ホワイト', 'アイリスオーヤマ 電子レンジ 18L フラットテーブル ヘルツフリー 単機能 全国対応 IMB-F186-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 29, 47, 'B09925RQ97', 'true', 11800, 'JPY', 16280, 4480, 28, 294, 5, 'https://www.amazon.jp/dp/B09925RQ97/?tag=46490EC-22', 1470, 'false', 'false', 'false', 'true', '【節電・目に優しい光り方】アイリスオーヤマ LED シーリングライト おしゃれ 導光板 照明 調光調色 8畳 4200lm リモコン付き 薄型 省エネ 取付簡単 CEA-A08DLP', 'https://m.media-amazon.com/images/I/51xz1nvB1TL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, '【節電・目に優しい光り方】アイリスオーヤマ LED シーリングライト おしゃれ 導光板 照明 調光調色 8畳 4200lm リモコン付き 薄型 省エネ 取付簡単 CEA-A08DLP', '16280', '11800', 100, '1', '【節電・目に優しい光り方】アイリスオーヤマ LED シーリングライト おしゃれ 導光板 照明 調光調色 8畳 4200lm リモコン付き 薄型 省エネ 取付簡単 CEA-A08DLP', '【節電・目に優しい光り方】アイリスオーヤマ LED シーリングライト おしゃれ 導光板 照明 調光調色 8畳 4200lm リモコン付き 薄型 省エネ 取付簡単 CEA-A08DLP', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 30, 48, 'B09B9ZHNKR', 'true', 13800, 'JPY', 14800, 1000, 7, 2566, 5, 'https://www.amazon.jp/dp/B09B9ZHNKR/?tag=46490EC-22', 12830, 'false', 'false', 'false', 'false', 'アイリスオーヤマ 炊飯器 5.5合 IH式 デザインタイプ 50銘柄炊き分け機能 極厚火釜 ヘルシーメニュー 低温調理機能 パン・ケーキ機能 ホワイト RC-IL50-W', 'https://m.media-amazon.com/images/I/41kdaiFFohL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 炊飯器 5.5合 IH式 デザインタイプ 50銘柄炊き分け機能 極厚火釜 ヘルシーメニュー 低温調理機能 パン・ケーキ機能 ホワイト RC-IL50-W', '14800', '13800', 100, '1', 'アイリスオーヤマ 炊飯器 5.5合 IH式 デザインタイプ 50銘柄炊き分け機能 極厚火釜 ヘルシーメニュー 低温調理機能 パン・ケーキ機能 ホワイト RC-IL50-W', 'アイリスオーヤマ 炊飯器 5.5合 IH式 デザインタイプ 50銘柄炊き分け機能 極厚火釜 ヘルシーメニュー 低温調理機能 パン・ケーキ機能 ホワイト RC-IL50-W', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 32, 50, 'B0BZVXG268', 'true', 13990, 'JPY', 17380, 3390, 20, 3, 5, 'https://www.amazon.jp/dp/B0BZVXG268/?tag=46490EC-22', 15, 'false', 'false', 'false', 'true', 'アイリスオーヤマ ホームベーカリー 米粉パン対応 レシピBOOKメニュー50種 コースメニュー27種 1斤 パン 生地 ピザ 餅つき機 プレゼント おしゃれ ミトンセット IBM-010-C サンドベージュ', 'https://m.media-amazon.com/images/I/51ZL4Rim0TL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ ホームベーカリー 米粉パン対応 レシピBOOKメニュー50種 コースメニュー27種 1斤 パン 生地 ピザ 餅つき機 プレゼント おしゃれ ミトンセット IBM-010-C サンドベージュ', '17380', '13990', 100, '1', 'アイリスオーヤマ ホームベーカリー 米粉パン対応 レシピBOOKメニュー50種 コースメニュー27種 1斤 パン 生地 ピザ 餅つき機 プレゼント おしゃれ ミトンセット IBM-010-C サンドベージュ', 'アイリスオーヤマ ホームベーカリー 米粉パン対応 レシピBOOKメニュー50種 コースメニュー27種 1斤 パン 生地 ピザ 餅つき機 プレゼント おしゃれ ミトンセット IBM-010-C サンドベージュ', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 36, 54, 'B0BSZWZXF7', 'true', 10800, 'JPY', 12340, 1540, 12, 18, 5, 'https://www.amazon.jp/dp/B0BSZWZXF7/?tag=46490EC-22', 90, 'false', 'false', 'false', 'true', '＼テレビで紹介／アイリスオーヤマ オーブントースター 4枚焼き スチーム 高火力 温度調節機能 タイマー機能付き 遠赤外線 カーボンヒーター SOT-401-H ストーングレー', 'https://m.media-amazon.com/images/I/51h2L-cyYUL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, '＼テレビで紹介／アイリスオーヤマ オーブントースター 4枚焼き スチーム 高火力 温度調節機能 タイマー機能付き 遠赤外線 カーボンヒーター SOT-401-H ストーングレー', '12340', '10800', 100, '1', '＼テレビで紹介／アイリスオーヤマ オーブントースター 4枚焼き スチーム 高火力 温度調節機能 タイマー機能付き 遠赤外線 カーボンヒーター SOT-401-H ストーングレー', '＼テレビで紹介／アイリスオーヤマ オーブントースター 4枚焼き スチーム 高火力 温度調節機能 タイマー機能付き 遠赤外線 カーボンヒーター SOT-401-H ストーングレー', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 37, 55, 'B0BM4C37M7', 'true', 5327, 'JPY', 7239, 1912, 26, 210, 5, 'https://www.amazon.jp/dp/B0BM4C37M7/?tag=46490EC-22', 1050, 'false', 'false', 'false', 'true', 'アイリスオーヤマ MiCOLA (ミコラ) イオンドライヤー HDR-M201-T モカ', 'https://m.media-amazon.com/images/I/41t7qRwYvKL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ MiCOLA (ミコラ) イオンドライヤー HDR-M201-T モカ', '7239', '5327', 100, '1', 'アイリスオーヤマ MiCOLA (ミコラ) イオンドライヤー HDR-M201-T モカ', 'アイリスオーヤマ MiCOLA (ミコラ) イオンドライヤー HDR-M201-T モカ', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 38, 56, 'B0BKZXHF4T', 'true', 10740, 'JPY', 14080, 3340, 24, 4931, 5, 'https://www.amazon.jp/dp/B0BKZXHF4T/?tag=46490EC-22', 24655, 'false', 'false', 'false', 'true', 'アイリスオーヤマ ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 シングルノズル FK-C4-C アイボリー', 'https://m.media-amazon.com/images/I/41MzLTgnWaL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 シングルノズル FK-C4-C アイボリー', '14080', '10740', 100, '1', 'アイリスオーヤマ ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 シングルノズル FK-C4-C アイボリー', 'アイリスオーヤマ ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 シングルノズル FK-C4-C アイボリー', '1', '1', 'xxx', 20000, 1, 1, 9);
INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 40, 58, 'B075MK1HVL', 'true', 16742, 'JPY', 27807, 11065, 40, 2727, 5, 'https://www.amazon.jp/dp/B075MK1HVL/?tag=46490EC-22', 13635, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 電源コード式 タンク式高圧洗浄機 水道のない場所も使用可能 洗剤もタンクに入れて使用可能 サイレントモデル 温水対応 最大圧力8.5Mpa SBT-512N', 'https://m.media-amazon.com/images/I/51xkim9WIeL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電源コード式 タンク式高圧洗浄機 水道のない場所も使用可能 洗剤もタンクに入れて使用可能 サイレントモデル 温水対応 最大圧力8.5Mpa SBT-512N', '27807', '16742', 100, '1', 'アイリスオーヤマ 電源コード式 タンク式高圧洗浄機 水道のない場所も使用可能 洗剤もタンクに入れて使用可能 サイレントモデル 温水対応 最大圧力8.5Mpa SBT-512N', 'アイリスオーヤマ 電源コード式 タンク式高圧洗浄機 水道のない場所も使用可能 洗剤もタンクに入れて使用可能 サイレントモデル 温水対応 最大圧力8.5Mpa SBT-512N', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 44, 62, 'B0B73LVPCT', 'true', 3049, 'JPY', 3456, 407, 12, 8104, 5, 'https://www.amazon.jp/dp/B0B73LVPCT/?tag=46490EC-22', 40520, 'false', 'false', 'true', 'true', 'アイリスオーヤマ 直火・ IH両対応 キャンプにも使える具たくさんホットサンドメーカー 2枚用 内側プレス お手入れ簡単 ブラック 15.9×39×4.9cm NGHS', 'https://m.media-amazon.com/images/I/51k-zceXbQL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 直火・ IH両対応 キャンプにも使える具たくさんホットサンドメーカー 2枚用 内側プレス お手入れ簡単 ブラック 15.9×39×4.9cm NGHS', '3456', '3049', 100, '1', 'アイリスオーヤマ 直火・ IH両対応 キャンプにも使える具たくさんホットサンドメーカー 2枚用 内側プレス お手入れ簡単 ブラック 15.9×39×4.9cm NGHS', 'アイリスオーヤマ 直火・ IH両対応 キャンプにも使える具たくさんホットサンドメーカー 2枚用 内側プレス お手入れ簡単 ブラック 15.9×39×4.9cm NGHS', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 45, 63, 'B09G2MQYBC', 'true', 10091, 'JPY', 14800, 4709, 32, 446, 5, 'https://www.amazon.jp/dp/B09G2MQYBC/?tag=46490EC-22', 2230, 'false', 'false', 'false', 'true', 'アイリスオーヤマ スリム 低温調理器 LTC-02-W ホワイト', 'https://m.media-amazon.com/images/I/419lMmLHTJL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ スリム 低温調理器 LTC-02-W ホワイト', '14800', '10091', 100, '1', 'アイリスオーヤマ スリム 低温調理器 LTC-02-W ホワイト', 'アイリスオーヤマ スリム 低温調理器 LTC-02-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 47, 65, 'B0856B39L9', 'true', 12545, 'JPY', 21780, 9235, 42, 4645, 5, 'https://www.amazon.jp/dp/B0856B39L9/?tag=46490EC-22', 23225, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 掃除機 コードレス ハンディ サイクロン スティッククリーナー 静電モップ・スタンド付き 強力吸引 軽量 LEDライト付パワーヘッド メーカー保証付き ダストカップ丸洗いOK 2WAY すき間ノズル レッド IC-SLDCP10-R', 'https://m.media-amazon.com/images/I/51vrai2GoFL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 掃除機 コードレス ハンディ サイクロン スティッククリーナー 静電モップ・スタンド付き 強力吸引 軽量 LEDライト付パワーヘッド メーカー保証付き ダストカップ丸洗いOK 2WAY すき間ノズル レッド IC-SLDCP10-R', '21780', '12545', 100, '1', 'アイリスオーヤマ 掃除機 コードレス ハンディ サイクロン スティッククリーナー 静電モップ・スタンド付き 強力吸引 軽量 LEDライト付パワーヘッド メーカー保証付き ダストカップ丸洗いOK 2WAY すき間ノズル レッド IC-SLDCP10-R', 'アイリスオーヤマ 掃除機 コードレス ハンディ サイクロン スティッククリーナー 静電モップ・スタンド付き 強力吸引 軽量 LEDライト付パワーヘッド メーカー保証付き ダストカップ丸洗いOK 2WAY すき間ノズル レッド IC-SLDCP10-R', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 53, 71, 'B09VBCT23B', 'true', 6980, 'JPY', 9980, 3000, 30, 51, 5, 'https://www.amazon.jp/dp/B09VBCT23B/?tag=46490EC-22', 255, 'false', 'false', 'false', 'true', '【節電対策に】 アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 コンパクト リモコン付き PCF-SC15T-EC アイボリー', 'https://m.media-amazon.com/images/I/516YHJ-+9oL._AC_UL400_.jpg', '2023-06-12 03:09:24', 0, '【節電対策に】 アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 コンパクト リモコン付き PCF-SC15T-EC アイボリー', '9980', '6980', 100, '1', '【節電対策に】 アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 コンパクト リモコン付き PCF-SC15T-EC アイボリー', '【節電対策に】 アイリスオーヤマ サーキュレーター アイ 静音 上下左右首振り 18畳 パワフル送風 コンパクト リモコン付き PCF-SC15T-EC アイボリー', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 12, 186, 'B09N73M41D', 'true', 89800, 'JPY', 99800, 10000, 10, 60, 5, 'https://www.amazon.jp/dp/B09N73M41D/?tag=46490EC-22', 300, 'false', 'false', 'false', 'false', 'スポンサー広告 - 【節電対策商品】 アイリスオーヤマ 冷蔵庫 320L 霜取り不要 BIG冷凍室 129L 幅63.5cm 急速冷凍 ecoモード タッチパネル フレンチドア 観音開き シルバー IRSN-32A-S', 'https://m.media-amazon.com/images/I/616SO-ypKQL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 【節電対策商品】 アイリスオーヤマ 冷蔵庫 320L 霜取り不要 BIG冷凍室 129L 幅63.5cm 急速冷凍 ecoモード タッチパネル フレンチドア 観音開き シルバー IRSN-32A-S', '99800', '89800', 100, '1', 'スポンサー広告 - 【節電対策商品】 アイリスオーヤマ 冷蔵庫 320L 霜取り不要 BIG冷凍室 129L 幅63.5cm 急速冷凍 ecoモード タッチパネル フレンチドア 観音開き シルバー IRSN-32A-S', 'スポンサー広告 - 【節電対策商品】 アイリスオーヤマ 冷蔵庫 320L 霜取り不要 BIG冷凍室 129L 幅63.5cm 急速冷凍 ecoモード タッチパネル フレンチドア 観音開き シルバー IRSN-32A-S', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 58, 126, 'B07Q1FL8LL', 'true', 4596, 'JPY', 5928, 1332, 22, 6040, 5, 'https://www.amazon.jp/dp/B07Q1FL8LL/?tag=46490EC-22', 30200, 'false', 'false', 'true', 'true', '【節電対策】 アイリスオーヤマ 扇風機 タワーファン スリム 左右自動首振り パワフル送風 風量3段階 タイマー付き メカ式 ホワイト TWF-M73', 'https://m.media-amazon.com/images/I/41iBFw8TbaL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【節電対策】 アイリスオーヤマ 扇風機 タワーファン スリム 左右自動首振り パワフル送風 風量3段階 タイマー付き メカ式 ホワイト TWF-M73', '5928', '4596', 100, '1', '【節電対策】 アイリスオーヤマ 扇風機 タワーファン スリム 左右自動首振り パワフル送風 風量3段階 タイマー付き メカ式 ホワイト TWF-M73', '【節電対策】 アイリスオーヤマ 扇風機 タワーファン スリム 左右自動首振り パワフル送風 風量3段階 タイマー付き メカ式 ホワイト TWF-M73', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 9, 78, 'B0BTXZ7G6W', 'true', 27400, 'JPY', 32801, 5401, 16, 493, 5, 'https://www.amazon.jp/dp/B0BTXZ7G6W/?tag=46490EC-22', 2465, 'false', 'false', 'false', 'true', 'アイリスオーヤマ タブレット 8インチ Wi-Fiモデル Android12 動画視聴 日本語サポート FHD 1920x1280 メモリ4GB ストレージ64GB 8コア LUCA TM082M4N1-B', 'https://m.media-amazon.com/images/I/516hkLpRmXL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ タブレット 8インチ Wi-Fiモデル Android12 動画視聴 日本語サポート FHD 1920x1280 メモリ4GB ストレージ64GB 8コア LUCA TM082M4N1-B', '32801', '27400', 100, '1', 'アイリスオーヤマ タブレット 8インチ Wi-Fiモデル Android12 動画視聴 日本語サポート FHD 1920x1280 メモリ4GB ストレージ64GB 8コア LUCA TM082M4N1-B', 'アイリスオーヤマ タブレット 8インチ Wi-Fiモデル Android12 動画視聴 日本語サポート FHD 1920x1280 メモリ4GB ストレージ64GB 8コア LUCA TM082M4N1-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 10, 79, 'B08ZXLJFWP', 'true', 21750, 'JPY', 28479, 6729, 24, 2157, 5, 'https://www.amazon.jp/dp/B08ZXLJFWP/?tag=46490EC-22', 10785, 'false', 'false', 'false', 'false', '【軽量タイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン ハンディ 置くだけ充電スタンド 静電モップ 軽量 自走式パワーヘッド SCD-120P-W ホワイト', 'https://m.media-amazon.com/images/I/51oWBmyPF4L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【軽量タイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン ハンディ 置くだけ充電スタンド 静電モップ 軽量 自走式パワーヘッド SCD-120P-W ホワイト', '28479', '21750', 100, '1', '【軽量タイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン ハンディ 置くだけ充電スタンド 静電モップ 軽量 自走式パワーヘッド SCD-120P-W ホワイト', '【軽量タイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン ハンディ 置くだけ充電スタンド 静電モップ 軽量 自走式パワーヘッド SCD-120P-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 15, 84, 'B07L13DF43', 'true', 3280, 'JPY', 3819, 539, 14, 3298, 5, 'https://www.amazon.jp/dp/B07L13DF43/?tag=46490EC-22', 16490, 'false', 'false', 'false', 'true', 'アイリスオーヤマ トースター オーブントースター 2枚焼き 温度調節機能 トレー付 ホワイト EOT-012-W', 'https://m.media-amazon.com/images/I/51hGkNOG-KL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ トースター オーブントースター 2枚焼き 温度調節機能 トレー付 ホワイト EOT-012-W', '3819', '3280', 100, '1', 'アイリスオーヤマ トースター オーブントースター 2枚焼き 温度調節機能 トレー付 ホワイト EOT-012-W', 'アイリスオーヤマ トースター オーブントースター 2枚焼き 温度調節機能 トレー付 ホワイト EOT-012-W', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 16, 85, 'B08RDGFBFF', 'true', 9744, 'JPY', 13800, 4056, 29, 223, 5, 'https://www.amazon.jp/dp/B08RDGFBFF/?tag=46490EC-22', 1115, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 充電式 電動ドライバー 18V バッテリー・充電器付 軽量&スピード調節機能 DIY初心者でも使いやすい JCD25 【18V共通バッテリーシリーズ】', 'https://m.media-amazon.com/images/I/61GjxV1-+ML._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 充電式 電動ドライバー 18V バッテリー・充電器付 軽量&スピード調節機能 DIY初心者でも使いやすい JCD25 【18V共通バッテリーシリーズ】', '13800', '9744', 100, '1', 'アイリスオーヤマ 充電式 電動ドライバー 18V バッテリー・充電器付 軽量&スピード調節機能 DIY初心者でも使いやすい JCD25 【18V共通バッテリーシリーズ】', 'アイリスオーヤマ 充電式 電動ドライバー 18V バッテリー・充電器付 軽量&スピード調節機能 DIY初心者でも使いやすい JCD25 【18V共通バッテリーシリーズ】', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 17, 86, 'B07Z896L3G', 'true', 32800, 'JPY', 34800, 2000, 6, 2770, 5, 'https://www.amazon.jp/dp/B07Z896L3G/?tag=46490EC-22', 13850, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 冷蔵庫 一人暮らし 142L 幅50cm 最高水準の冷凍機能 冷凍室3段 53L 2ドア 静音設計 右開き ブラック IRSD-14A-B', 'https://m.media-amazon.com/images/I/41BOG2d0sEL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 冷蔵庫 一人暮らし 142L 幅50cm 最高水準の冷凍機能 冷凍室3段 53L 2ドア 静音設計 右開き ブラック IRSD-14A-B', '34800', '32800', 100, '1', 'アイリスオーヤマ 冷蔵庫 一人暮らし 142L 幅50cm 最高水準の冷凍機能 冷凍室3段 53L 2ドア 静音設計 右開き ブラック IRSD-14A-B', 'アイリスオーヤマ 冷蔵庫 一人暮らし 142L 幅50cm 最高水準の冷凍機能 冷凍室3段 53L 2ドア 静音設計 右開き ブラック IRSD-14A-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 21, 195, 'B088NWKLSF', 'true', 12929, 'JPY', 16280, 3351, 21, 2088, 5, 'https://www.amazon.jp/dp/B088NWKLSF/?tag=46490EC-22', 10440, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC18T', 'https://m.media-amazon.com/images/I/51cSG75To-L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC18T', '16280', '12929', 100, '1', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC18T', 'スポンサー広告 - 【節電対策】 アイリスオーヤマ 扇風機 サーキュレーター 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き ホワイト STF-DC18T', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 22, 196, 'B0B2NMP59K', 'true', 15800, 'JPY', 16800, 1000, 6, 5, 5, 'https://www.amazon.jp/dp/B0B2NMP59K/?tag=46490EC-22', 25, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター 【WOOZOO】 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き STF-DCC18T-A ブルー', 'https://m.media-amazon.com/images/I/51dA-hziCjL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター 【WOOZOO】 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き STF-DCC18T-A ブルー', '16800', '15800', 100, '1', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター 【WOOZOO】 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き STF-DCC18T-A ブルー', 'スポンサー広告 - 【節電対策に】 アイリスオーヤマ 扇風機 サーキュレーター 【WOOZOO】 上下左右首振り 30畳 パワフル送風 DCモーター リモコン付き STF-DCC18T-A ブルー', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 24, 92, 'B07HQT9C2J', 'true', 7250, 'JPY', 9480, 2230, 24, 4547, 5, 'https://www.amazon.jp/dp/B07HQT9C2J/?tag=46490EC-22', 22735, 'false', 'false', 'false', 'true', 'アイリスオーヤマ ヒーター セラミックファンヒーター 速暖 大風量 人感センサー付き 1200W ~8畳 マイコン式 幅26×高さ38×奥行13cm PDH-1200TD1-W ホワイト', 'https://m.media-amazon.com/images/I/51BjrT-2-tL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ ヒーター セラミックファンヒーター 速暖 大風量 人感センサー付き 1200W ~8畳 マイコン式 幅26×高さ38×奥行13cm PDH-1200TD1-W ホワイト', '9480', '7250', 100, '1', 'アイリスオーヤマ ヒーター セラミックファンヒーター 速暖 大風量 人感センサー付き 1200W ~8畳 マイコン式 幅26×高さ38×奥行13cm PDH-1200TD1-W ホワイト', 'アイリスオーヤマ ヒーター セラミックファンヒーター 速暖 大風量 人感センサー付き 1200W ~8畳 マイコン式 幅26×高さ38×奥行13cm PDH-1200TD1-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 27, 95, 'B079M1L9LP', 'true', 11880, 'JPY', 16280, 4400, 27, 2720, 5, 'https://www.amazon.jp/dp/B079M1L9LP/?tag=46490EC-22', 13600, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 除湿機 衣類乾燥 強力除湿 除湿器 タイマー付 静音設計 除湿量 2.2L デシカント方式 ブルー IJD-H20-A', 'https://m.media-amazon.com/images/I/51q4ahdjSnL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 除湿機 衣類乾燥 強力除湿 除湿器 タイマー付 静音設計 除湿量 2.2L デシカント方式 ブルー IJD-H20-A', '16280', '11880', 100, '1', 'アイリスオーヤマ 除湿機 衣類乾燥 強力除湿 除湿器 タイマー付 静音設計 除湿量 2.2L デシカント方式 ブルー IJD-H20-A', 'アイリスオーヤマ 除湿機 衣類乾燥 強力除湿 除湿器 タイマー付 静音設計 除湿量 2.2L デシカント方式 ブルー IJD-H20-A', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 29, 97, 'B0BD54BJ11', 'true', 10116, 'JPY', 11980, 1864, 16, 667, 5, 'https://www.amazon.jp/dp/B0BD54BJ11/?tag=46490EC-22', 3335, 'false', 'false', 'true', 'true', 'アイリスオーヤマ カウンタートップ 電子レンジ 17L ターンテーブル ヘルツフリー 単機能 全国対応 一人暮らし 新生活 IMB-T178-W ホワイト', 'https://m.media-amazon.com/images/I/6153XzyOvQL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ カウンタートップ 電子レンジ 17L ターンテーブル ヘルツフリー 単機能 全国対応 一人暮らし 新生活 IMB-T178-W ホワイト', '11980', '10116', 100, '1', 'アイリスオーヤマ カウンタートップ 電子レンジ 17L ターンテーブル ヘルツフリー 単機能 全国対応 一人暮らし 新生活 IMB-T178-W ホワイト', 'アイリスオーヤマ カウンタートップ 電子レンジ 17L ターンテーブル ヘルツフリー 単機能 全国対応 一人暮らし 新生活 IMB-T178-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 34, 102, 'B07H5DMWSV', 'true', 2400, 'JPY', 2673, 273, 10, 2485, 5, 'https://www.amazon.jp/dp/B07H5DMWSV/?tag=46490EC-22', 12425, 'false', 'false', 'false', 'true', 'アイリスオーヤマ IH 対応 フライパン 28cm ダイヤモンドコートパン ホワイト マーブル 取っ手の取れる KITCHEN CHEF ISN-F28', 'https://m.media-amazon.com/images/I/61RgdBpvMVL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ IH 対応 フライパン 28cm ダイヤモンドコートパン ホワイト マーブル 取っ手の取れる KITCHEN CHEF ISN-F28', '2673', '2400', 100, '1', 'アイリスオーヤマ IH 対応 フライパン 28cm ダイヤモンドコートパン ホワイト マーブル 取っ手の取れる KITCHEN CHEF ISN-F28', 'アイリスオーヤマ IH 対応 フライパン 28cm ダイヤモンドコートパン ホワイト マーブル 取っ手の取れる KITCHEN CHEF ISN-F28', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 35, 103, 'B08151C6SB', 'true', 6982, 'JPY', 7980, 998, 13, 2360, 5, 'https://www.amazon.jp/dp/B08151C6SB/?tag=46490EC-22', 11800, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 電気ケトル ドリップケトル 600ml 9段階温度調節付 保温設定付 沸騰後自動電源OFF ブラック IKE-C600T-B', 'https://m.media-amazon.com/images/I/51d++Q10seL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電気ケトル ドリップケトル 600ml 9段階温度調節付 保温設定付 沸騰後自動電源OFF ブラック IKE-C600T-B', '7980', '6982', 100, '1', 'アイリスオーヤマ 電気ケトル ドリップケトル 600ml 9段階温度調節付 保温設定付 沸騰後自動電源OFF ブラック IKE-C600T-B', 'アイリスオーヤマ 電気ケトル ドリップケトル 600ml 9段階温度調節付 保温設定付 沸騰後自動電源OFF ブラック IKE-C600T-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 36, 104, 'B08WCGHZ2P', 'true', 7655, 'JPY', 9878, 2223, 23, 535, 5, 'https://www.amazon.jp/dp/B08WCGHZ2P/?tag=46490EC-22', 2675, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 電動空気入れ 充電式 10.8V バッテリー付属 空気圧測定機能付 オートストップ機能付 自動車のタイヤからボールの空気入れまで対応 JAC10 【共通バッテリーシリーズ】', 'https://m.media-amazon.com/images/I/61PpyfqMrVL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 電動空気入れ 充電式 10.8V バッテリー付属 空気圧測定機能付 オートストップ機能付 自動車のタイヤからボールの空気入れまで対応 JAC10 【共通バッテリーシリーズ】', '9878', '7655', 100, '1', 'アイリスオーヤマ 電動空気入れ 充電式 10.8V バッテリー付属 空気圧測定機能付 オートストップ機能付 自動車のタイヤからボールの空気入れまで対応 JAC10 【共通バッテリーシリーズ】', 'アイリスオーヤマ 電動空気入れ 充電式 10.8V バッテリー付属 空気圧測定機能付 オートストップ機能付 自動車のタイヤからボールの空気入れまで対応 JAC10 【共通バッテリーシリーズ】', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 38, 106, 'B0B349F9MP', 'true', 2248, 'JPY', 2595, 347, 13, 1643, 5, 'https://www.amazon.jp/dp/B0B349F9MP/?tag=46490EC-22', 8215, 'false', 'false', 'false', 'true', 'アイリスオーヤマ パックご飯 国産米 100% 低温製法米 非常食 米 レトルト 180g×24個', 'https://m.media-amazon.com/images/I/71I0GW9CA9L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ パックご飯 国産米 100% 低温製法米 非常食 米 レトルト 180g×24個', '2595', '2248', 100, '1', 'アイリスオーヤマ パックご飯 国産米 100% 低温製法米 非常食 米 レトルト 180g×24個', 'アイリスオーヤマ パックご飯 国産米 100% 低温製法米 非常食 米 レトルト 180g×24個', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 51, 119, 'B08C7K1LT6', 'true', 13939, 'JPY', 14807, 868, 6, 896, 5, 'https://www.amazon.jp/dp/B08C7K1LT6/?tag=46490EC-22', 4480, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 2口 IHクッキングヒーター 工事不要 1400W 100V 脚付き ブラック IHK-W13S-B', 'https://m.media-amazon.com/images/I/51ruPXQ4WTL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 2口 IHクッキングヒーター 工事不要 1400W 100V 脚付き ブラック IHK-W13S-B', '14807', '13939', 100, '1', 'アイリスオーヤマ 2口 IHクッキングヒーター 工事不要 1400W 100V 脚付き ブラック IHK-W13S-B', 'アイリスオーヤマ 2口 IHクッキングヒーター 工事不要 1400W 100V 脚付き ブラック IHK-W13S-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 53, 121, 'B08LPPJ3SB', 'true', 5838, 'JPY', 6578, 740, 11, 3046, 5, 'https://www.amazon.jp/dp/B08LPPJ3SB/?tag=46490EC-22', 15230, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 掃除機 コード式 ハンディ サイクロン スティッククリーナー 軽量 ハイパワー吸引 長時間掃除に 2WAY すきまノズル付 コンパクト SCA-110-W ホワイト', 'https://m.media-amazon.com/images/I/41Eo8c9JcZL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 掃除機 コード式 ハンディ サイクロン スティッククリーナー 軽量 ハイパワー吸引 長時間掃除に 2WAY すきまノズル付 コンパクト SCA-110-W ホワイト', '6578', '5838', 100, '1', 'アイリスオーヤマ 掃除機 コード式 ハンディ サイクロン スティッククリーナー 軽量 ハイパワー吸引 長時間掃除に 2WAY すきまノズル付 コンパクト SCA-110-W ホワイト', 'アイリスオーヤマ 掃除機 コード式 ハンディ サイクロン スティッククリーナー 軽量 ハイパワー吸引 長時間掃除に 2WAY すきまノズル付 コンパクト SCA-110-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 55, 123, 'B08Z3Y2XNX', 'true', 11800, 'JPY', 16280, 4480, 28, 141, 5, 'https://www.amazon.jp/dp/B08Z3Y2XNX/?tag=46490EC-22', 705, 'false', 'false', 'false', 'false', 'アイリスオーヤマ サーキュレーター アイ 静音 DCモーター 【WOOZOO】 DCJET デザインモデル 上下左右首振り 24畳 パワフル送風 コンパクト リモコン付き PCF-SDCC15T-W ホワイト', 'https://m.media-amazon.com/images/I/61taeviXyZL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ サーキュレーター アイ 静音 DCモーター 【WOOZOO】 DCJET デザインモデル 上下左右首振り 24畳 パワフル送風 コンパクト リモコン付き PCF-SDCC15T-W ホワイト', '16280', '11800', 100, '1', 'アイリスオーヤマ サーキュレーター アイ 静音 DCモーター 【WOOZOO】 DCJET デザインモデル 上下左右首振り 24畳 パワフル送風 コンパクト リモコン付き PCF-SDCC15T-W ホワイト', 'アイリスオーヤマ サーキュレーター アイ 静音 DCモーター 【WOOZOO】 DCJET デザインモデル 上下左右首振り 24畳 パワフル送風 コンパクト リモコン付き PCF-SDCC15T-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 57, 125, 'B01M7SN7FV', 'true', 6480, 'JPY', 11880, 5400, 45, 10176, 5, 'https://www.amazon.jp/dp/B01M7SN7FV/?tag=46490EC-22', 50880, 'false', 'false', 'false', 'true', '【節電対策】 アイリスオーヤマ シーリングライト 8畳 LED 4000lm 調光10段階 調色11段階 常夜灯 リモコン付 おやすみタイマー るすばん機能 クリアフレーム CL8DL-5.0CF', 'https://m.media-amazon.com/images/I/61oMRW2p3bL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【節電対策】 アイリスオーヤマ シーリングライト 8畳 LED 4000lm 調光10段階 調色11段階 常夜灯 リモコン付 おやすみタイマー るすばん機能 クリアフレーム CL8DL-5.0CF', '11880', '6480', 100, '1', '【節電対策】 アイリスオーヤマ シーリングライト 8畳 LED 4000lm 調光10段階 調色11段階 常夜灯 リモコン付 おやすみタイマー るすばん機能 クリアフレーム CL8DL-5.0CF', '【節電対策】 アイリスオーヤマ シーリングライト 8畳 LED 4000lm 調光10段階 調色11段階 常夜灯 リモコン付 おやすみタイマー るすばん機能 クリアフレーム CL8DL-5.0CF', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 59, 127, 'B08M5PJBNF', 'true', 16500, 'JPY', 18000, 1500, 8, 995, 5, 'https://www.amazon.jp/dp/B08M5PJBNF/?tag=46490EC-22', 4975, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 圧力IH炊飯器 3合 圧力IH式 40銘柄炊き分け機能 極厚火釜 大火力 玄米 ブラック RC-PD30-B', 'https://m.media-amazon.com/images/I/51f1whqRxVL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 圧力IH炊飯器 3合 圧力IH式 40銘柄炊き分け機能 極厚火釜 大火力 玄米 ブラック RC-PD30-B', '18000', '16500', 100, '1', 'アイリスオーヤマ 圧力IH炊飯器 3合 圧力IH式 40銘柄炊き分け機能 極厚火釜 大火力 玄米 ブラック RC-PD30-B', 'アイリスオーヤマ 圧力IH炊飯器 3合 圧力IH式 40銘柄炊き分け機能 極厚火釜 大火力 玄米 ブラック RC-PD30-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(2, 60, 128, 'B09BDR9L5Q', 'true', 6282, 'JPY', 6973, 691, 10, 1476, 5, 'https://www.amazon.jp/dp/B09BDR9L5Q/?tag=46490EC-22', 7380, 'false', 'false', 'false', 'true', '【節電対策】 アイリスオーヤマ 電気ポット ポット マイコン式 2.2リットル 保温温度調整 安全ロック機能 カルキ抜き機能 IAHD-122-B ブラック', 'https://m.media-amazon.com/images/I/418PPJJxDcL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【節電対策】 アイリスオーヤマ 電気ポット ポット マイコン式 2.2リットル 保温温度調整 安全ロック機能 カルキ抜き機能 IAHD-122-B ブラック', '6973', '6282', 100, '1', '【節電対策】 アイリスオーヤマ 電気ポット ポット マイコン式 2.2リットル 保温温度調整 安全ロック機能 カルキ抜き機能 IAHD-122-B ブラック', '【節電対策】 アイリスオーヤマ 電気ポット ポット マイコン式 2.2リットル 保温温度調整 安全ロック機能 カルキ抜き機能 IAHD-122-B ブラック', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 8, 129, 'B07ZGTJS5L', 'true', 9135, 'JPY', 14800, 5665, 38, 106, 5, 'https://www.amazon.jp/dp/B07ZGTJS5L/?tag=46490EC-22', 530, 'false', 'false', 'false', 'true', 'アイリスオーヤマ コードレス ジグソー 電動のこぎり 18V バッテリー・充電器付 ブレード付属 スピード変速機能 JJS181 【18V共通バッテリーシリーズ】', 'https://m.media-amazon.com/images/I/61CjnJBPdeL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ コードレス ジグソー 電動のこぎり 18V バッテリー・充電器付 ブレード付属 スピード変速機能 JJS181 【18V共通バッテリーシリーズ】', '14800', '9135', 100, '1', 'アイリスオーヤマ コードレス ジグソー 電動のこぎり 18V バッテリー・充電器付 ブレード付属 スピード変速機能 JJS181 【18V共通バッテリーシリーズ】', 'アイリスオーヤマ コードレス ジグソー 電動のこぎり 18V バッテリー・充電器付 ブレード付属 スピード変速機能 JJS181 【18V共通バッテリーシリーズ】', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 10, 131, 'B0BFWZL3K7', 'true', 37800, 'JPY', 54780, 16980, 31, 66, 5, 'https://www.amazon.jp/dp/B0BFWZL3K7/?tag=46490EC-22', 330, 'false', 'false', 'false', 'true', '【ハイエンドタイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン 吸引力 充電式 ハンディ 静電モップ daspo SCD-190P-W ホワイト', 'https://m.media-amazon.com/images/I/41rG9BNHt7L._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【ハイエンドタイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン 吸引力 充電式 ハンディ 静電モップ daspo SCD-190P-W ホワイト', '54780', '37800', 100, '1', '【ハイエンドタイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン 吸引力 充電式 ハンディ 静電モップ daspo SCD-190P-W ホワイト', '【ハイエンドタイプ】アイリスオーヤマ 掃除機 コードレス スティッククリーナー サイクロン 吸引力 充電式 ハンディ 静電モップ daspo SCD-190P-W ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 15, 136, 'B00FIX50HM', 'true', 15498, 'JPY', 16798, 1300, 8, 1515, 5, 'https://www.amazon.jp/dp/B00FIX50HM/?tag=46490EC-22', 7575, 'false', 'false', 'false', 'true', 'アイリスオーヤマ エアリー 丸ごと洗えるマットレス 厚さ5cm 重ねて使って寝心地UP ほこり/ダニが出にくい特殊中材 収納ケース付き スタンダード 抗菌防臭 制菌加工 シングル MARS-S', 'https://m.media-amazon.com/images/I/51UGrG17leL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ エアリー 丸ごと洗えるマットレス 厚さ5cm 重ねて使って寝心地UP ほこり/ダニが出にくい特殊中材 収納ケース付き スタンダード 抗菌防臭 制菌加工 シングル MARS-S', '16798', '15498', 100, '1', 'アイリスオーヤマ エアリー 丸ごと洗えるマットレス 厚さ5cm 重ねて使って寝心地UP ほこり/ダニが出にくい特殊中材 収納ケース付き スタンダード 抗菌防臭 制菌加工 シングル MARS-S', 'アイリスオーヤマ エアリー 丸ごと洗えるマットレス 厚さ5cm 重ねて使って寝心地UP ほこり/ダニが出にくい特殊中材 収納ケース付き スタンダード 抗菌防臭 制菌加工 シングル MARS-S', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 26, 147, 'B08YDZ1YB7', 'true', 8845, 'JPY', 11800, 2955, 25, 8, 5, 'https://www.amazon.jp/dp/B08YDZ1YB7/?tag=46490EC-22', 40, 'false', 'false', 'false', 'true', 'アイリスオーヤマ フライパン 鍋 セット 9点 IH ガス火 深型 ダイヤモンドコート 目盛付き オーブン調理 着脱式ハンドル グリルパン 蓋 PDCI-S9SG スレートグレー こびりつかずにお手入れ簡単 ディープラスシリーズ', 'https://m.media-amazon.com/images/I/51sAZEdABeL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ フライパン 鍋 セット 9点 IH ガス火 深型 ダイヤモンドコート 目盛付き オーブン調理 着脱式ハンドル グリルパン 蓋 PDCI-S9SG スレートグレー こびりつかずにお手入れ簡単 ディープラスシリーズ', '11800', '8845', 100, '1', 'アイリスオーヤマ フライパン 鍋 セット 9点 IH ガス火 深型 ダイヤモンドコート 目盛付き オーブン調理 着脱式ハンドル グリルパン 蓋 PDCI-S9SG スレートグレー こびりつかずにお手入れ簡単 ディープラスシリーズ', 'アイリスオーヤマ フライパン 鍋 セット 9点 IH ガス火 深型 ダイヤモンドコート 目盛付き オーブン調理 着脱式ハンドル グリルパン 蓋 PDCI-S9SG スレートグレー こびりつかずにお手入れ簡単 ディープラスシリーズ', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 27, 148, 'B07M6328TW', 'true', 3592, 'JPY', 4048, 456, 11, 4628, 5, 'https://www.amazon.jp/dp/B07M6328TW/?tag=46490EC-22', 23140, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 小型シーリングライト 薄形 1200lm 人感センサー付 昼白色 SCL12NMS-UU', 'https://m.media-amazon.com/images/I/51U+FuAnBVL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 小型シーリングライト 薄形 1200lm 人感センサー付 昼白色 SCL12NMS-UU', '4048', '3592', 100, '1', 'アイリスオーヤマ 小型シーリングライト 薄形 1200lm 人感センサー付 昼白色 SCL12NMS-UU', 'アイリスオーヤマ 小型シーリングライト 薄形 1200lm 人感センサー付 昼白色 SCL12NMS-UU', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 29, 150, 'B0BCWFQXV6', 'true', 43010, 'JPY', 49800, 6790, 14, 50, 5, 'https://www.amazon.jp/dp/B0BCWFQXV6/?tag=46490EC-22', 250, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 自動調理鍋 自動かくはん式調理機 シェフドラム 電気鍋 揚げ物 CHEF DRUM DAC-IA2-H グレー', 'https://m.media-amazon.com/images/I/51mC6OingpL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 自動調理鍋 自動かくはん式調理機 シェフドラム 電気鍋 揚げ物 CHEF DRUM DAC-IA2-H グレー', '49800', '43010', 100, '1', 'アイリスオーヤマ 自動調理鍋 自動かくはん式調理機 シェフドラム 電気鍋 揚げ物 CHEF DRUM DAC-IA2-H グレー', 'アイリスオーヤマ 自動調理鍋 自動かくはん式調理機 シェフドラム 電気鍋 揚げ物 CHEF DRUM DAC-IA2-H グレー', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 33, 154, 'B09CTD1CTZ', 'true', 1257, 'JPY', 1379, 122, 9, 8308, 5, 'https://www.amazon.jp/dp/B09CTD1CTZ/?tag=46490EC-22', 41540, 'false', 'false', 'false', 'false', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 小顔 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない APN-60LPB ピンクベージュ', 'https://m.media-amazon.com/images/I/615u8442xmL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 小顔 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない APN-60LPB ピンクベージュ', '1379', '1257', 100, '1', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 小顔 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない APN-60LPB ピンクベージュ', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 小顔 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない APN-60LPB ピンクベージュ', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 39, 160, 'B08HJYBJ61', 'true', 12573, 'JPY', 18800, 6227, 33, 686, 5, 'https://www.amazon.jp/dp/B08HJYBJ61/?tag=46490EC-22', 3430, 'false', 'false', 'false', 'true', 'アイリスオーヤマ コードレス掃除機 紙パック10枚セット 最大50分稼働 18V バッテリー付属 2way仕様(ハンディタイプ+スティックタイプ) JCL18 【共通バッテリーシリーズ】', 'https://m.media-amazon.com/images/I/41x9wQ+6VXL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ コードレス掃除機 紙パック10枚セット 最大50分稼働 18V バッテリー付属 2way仕様(ハンディタイプ+スティックタイプ) JCL18 【共通バッテリーシリーズ】', '18800', '12573', 100, '1', 'アイリスオーヤマ コードレス掃除機 紙パック10枚セット 最大50分稼働 18V バッテリー付属 2way仕様(ハンディタイプ+スティックタイプ) JCL18 【共通バッテリーシリーズ】', 'アイリスオーヤマ コードレス掃除機 紙パック10枚セット 最大50分稼働 18V バッテリー付属 2way仕様(ハンディタイプ+スティックタイプ) JCL18 【共通バッテリーシリーズ】', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 44, 165, 'B0BKZXVGCL', 'true', 14000, 'JPY', 16280, 2280, 14, 2, 5, 'https://www.amazon.jp/dp/B0BKZXVGCL/?tag=46490EC-22', 10, 'false', 'false', 'false', 'false', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 カラリエColors FK-RD1-H グレー', 'https://m.media-amazon.com/images/I/41JvktCtXUL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 カラリエColors FK-RD1-H グレー', '16280', '14000', 100, '1', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 カラリエColors FK-RD1-H グレー', 'アイリスオーヤマ 布団乾燥機 ふとん乾燥機 ダニ退治 カラリエ メーカー保証付き 温風機能 マット不要 カラリエColors FK-RD1-H グレー', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 48, 169, 'B00B7US7CA', 'true', 124364, 'JPY', 134094, 9730, 7, 33, 5, 'https://www.amazon.jp/dp/B00B7US7CA/?tag=46490EC-22', 165, 'false', 'false', 'false', 'true', 'アイリスオーヤマ オートフィードシュレッダー 業務用 自動送り機能 自動細断280枚 クロスカット 静音 ホチキス対応 連続使用30分 高速細断 ダストボックス大容量60L AFS280C-H グレー', 'https://m.media-amazon.com/images/I/51J+PrSUkdL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ オートフィードシュレッダー 業務用 自動送り機能 自動細断280枚 クロスカット 静音 ホチキス対応 連続使用30分 高速細断 ダストボックス大容量60L AFS280C-H グレー', '134094', '124364', 100, '1', 'アイリスオーヤマ オートフィードシュレッダー 業務用 自動送り機能 自動細断280枚 クロスカット 静音 ホチキス対応 連続使用30分 高速細断 ダストボックス大容量60L AFS280C-H グレー', 'アイリスオーヤマ オートフィードシュレッダー 業務用 自動送り機能 自動細断280枚 クロスカット 静音 ホチキス対応 連続使用30分 高速細断 ダストボックス大容量60L AFS280C-H グレー', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 52, 173, 'B0919C3H7T', 'true', 6480, 'JPY', 12681, 6201, 49, 73, 5, 'https://www.amazon.jp/dp/B0919C3H7T/?tag=46490EC-22', 365, 'false', 'false', 'false', 'true', '[アイリスオーヤマ]', 'https://m.media-amazon.com/images/I/51BiNhJZqZL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ]', '12681', '6480', 100, '1', '[アイリスオーヤマ]', '[アイリスオーヤマ]', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 53, 174, 'B0B7RYDRRN', 'true', 31298, 'JPY', 36058, 4760, 13, 55, 5, 'https://www.amazon.jp/dp/B0B7RYDRRN/?tag=46490EC-22', 275, 'false', 'false', 'false', 'true', '【55時間保冷】 アイリスオーヤマ HUGEL 真空断熱クーラーボックス 40L チャコ-ルグレー クーラーボックス レジャークーラー アウトドア キャンプ 大型 スポーツ VITC-40', 'https://m.media-amazon.com/images/I/51OlzvSPfZL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【55時間保冷】 アイリスオーヤマ HUGEL 真空断熱クーラーボックス 40L チャコ-ルグレー クーラーボックス レジャークーラー アウトドア キャンプ 大型 スポーツ VITC-40', '36058', '31298', 100, '1', '【55時間保冷】 アイリスオーヤマ HUGEL 真空断熱クーラーボックス 40L チャコ-ルグレー クーラーボックス レジャークーラー アウトドア キャンプ 大型 スポーツ VITC-40', '【55時間保冷】 アイリスオーヤマ HUGEL 真空断熱クーラーボックス 40L チャコ-ルグレー クーラーボックス レジャークーラー アウトドア キャンプ 大型 スポーツ VITC-40', '1', '1', 'xxx', 20000, 1, 1, 9),
(3, 54, 175, 'B09B6N4GLY', 'true', 379, 'JPY', 597, 218, 37, 3006, 5, 'https://www.amazon.jp/dp/B09B6N4GLY/?tag=46490EC-22', 15030, 'false', 'false', 'false', 'false', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 7枚入 小さめ 個包装 小顔 美フィットマスク 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない PK-BFC7S ピンクベージュ', 'https://m.media-amazon.com/images/I/61MxF1IkLRL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] マスク 不織布 プリーツマスク 7枚入 小さめ 個包装 小顔 美フィットマスク 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない PK-BFC7S ピンクベージュ', '597', '379', 100, '1', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 7枚入 小さめ 個包装 小顔 美フィットマスク 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない PK-BFC7S ピンクベージュ', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 7枚入 小さめ 個包装 小顔 美フィットマスク 血色マスク チークマスク カラーマスク おしゃれ 耳が痛くならない PK-BFC7S ピンクベージュ', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 18, 192, 'B08M6TJKMJ', 'true', 1550, 'JPY', 2850, 1300, 46, 5011, 5, 'https://www.amazon.jp/dp/B08M6TJKMJ/?tag=46490EC-22', 25055, 'false', 'false', 'false', 'false', '【2個セット】アイリスオーヤマ カイロ 日本製 貼る 使い捨てカイロ ホワイト 30枚 ぽかぽか家族 レギュラー PKN-30HR', 'https://m.media-amazon.com/images/I/71YvaOgy6CL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '【2個セット】アイリスオーヤマ カイロ 日本製 貼る 使い捨てカイロ ホワイト 30枚 ぽかぽか家族 レギュラー PKN-30HR', '2850', '1550', 100, '1', '【2個セット】アイリスオーヤマ カイロ 日本製 貼る 使い捨てカイロ ホワイト 30枚 ぽかぽか家族 レギュラー PKN-30HR', '【2個セット】アイリスオーヤマ カイロ 日本製 貼る 使い捨てカイロ ホワイト 30枚 ぽかぽか家族 レギュラー PKN-30HR', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 25, 199, 'B0BBZS21V4', 'true', 22493, 'JPY', 25080, 2587, 10, 68, 5, 'https://www.amazon.jp/dp/B0BBZS21V4/?tag=46490EC-22', 340, 'false', 'false', 'false', 'true', 'アイリスオーヤマ オートフィードシュレッダー シュレッダー 業務用 クロスカット 4×10mm 自動細断最大100枚 A4用紙最大200枚収納ダストボックス AFSR100C ホワイト', 'https://m.media-amazon.com/images/I/41cTw9r01KL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ オートフィードシュレッダー シュレッダー 業務用 クロスカット 4×10mm 自動細断最大100枚 A4用紙最大200枚収納ダストボックス AFSR100C ホワイト', '25080', '22493', 100, '1', 'アイリスオーヤマ オートフィードシュレッダー シュレッダー 業務用 クロスカット 4×10mm 自動細断最大100枚 A4用紙最大200枚収納ダストボックス AFSR100C ホワイト', 'アイリスオーヤマ オートフィードシュレッダー シュレッダー 業務用 クロスカット 4×10mm 自動細断最大100枚 A4用紙最大200枚収納ダストボックス AFSR100C ホワイト', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 31, 205, 'B0757L68JH', 'true', 9799, 'JPY', 16610, 6811, 41, 139, 5, 'https://www.amazon.jp/dp/B0757L68JH/?tag=46490EC-22', 695, 'false', 'false', 'false', 'false', 'アイリスオーヤマ ラミネーター A4対応 ~150μm ウォームアップ時間35秒 波打ち防止 HSL-A44-R レッド', 'https://m.media-amazon.com/images/I/51RjA-Zg8AL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ ラミネーター A4対応 ~150μm ウォームアップ時間35秒 波打ち防止 HSL-A44-R レッド', '16610', '9799', 100, '1', 'アイリスオーヤマ ラミネーター A4対応 ~150μm ウォームアップ時間35秒 波打ち防止 HSL-A44-R レッド', 'アイリスオーヤマ ラミネーター A4対応 ~150μm ウォームアップ時間35秒 波打ち防止 HSL-A44-R レッド', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 38, 212, 'B07NDPFMJV', 'true', 6000, 'JPY', 6920, 920, 13, 27, 5, 'https://www.amazon.jp/dp/B07NDPFMJV/?tag=46490EC-22', 135, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 衣類スチーマー スチームアイロン ハンガーにかけたまま 2WAY 3大臭カット コンパクト 軽量 ホワイトピンクゴールド IRS-01-WPG', 'https://m.media-amazon.com/images/I/51cAO5mooyL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 衣類スチーマー スチームアイロン ハンガーにかけたまま 2WAY 3大臭カット コンパクト 軽量 ホワイトピンクゴールド IRS-01-WPG', '6920', '6000', 100, '1', 'アイリスオーヤマ 衣類スチーマー スチームアイロン ハンガーにかけたまま 2WAY 3大臭カット コンパクト 軽量 ホワイトピンクゴールド IRS-01-WPG', 'アイリスオーヤマ 衣類スチーマー スチームアイロン ハンガーにかけたまま 2WAY 3大臭カット コンパクト 軽量 ホワイトピンクゴールド IRS-01-WPG', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 39, 213, 'B06X3QMRCP', 'true', 11000, 'JPY', 16780, 5780, 34, 1182, 5, 'https://www.amazon.jp/dp/B06X3QMRCP/?tag=46490EC-22', 5910, 'false', 'false', 'false', 'true', 'アイリスオーヤマ スティッククリーナー サイクロン式 2WAY すきまノズル 小型ブラシ IC-S55E-S', 'https://m.media-amazon.com/images/I/51fOsumK1zL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ スティッククリーナー サイクロン式 2WAY すきまノズル 小型ブラシ IC-S55E-S', '16780', '11000', 100, '1', 'アイリスオーヤマ スティッククリーナー サイクロン式 2WAY すきまノズル 小型ブラシ IC-S55E-S', 'アイリスオーヤマ スティッククリーナー サイクロン式 2WAY すきまノズル 小型ブラシ IC-S55E-S', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 40, 214, 'B08HHGM1GL', 'true', 21770, 'JPY', 25080, 3310, 13, 136, 5, 'https://www.amazon.jp/dp/B08HHGM1GL/?tag=46490EC-22', 680, 'false', 'false', 'false', 'true', 'アイリスオーヤマ 空気清浄機 28畳 空気汚れモニター付 脱臭 ホコリ 花粉 集じん 静音 おやすみモード 大畳数 IAP-A85-W', 'https://m.media-amazon.com/images/I/6176otiZ3dL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 空気清浄機 28畳 空気汚れモニター付 脱臭 ホコリ 花粉 集じん 静音 おやすみモード 大畳数 IAP-A85-W', '25080', '21770', 100, '1', 'アイリスオーヤマ 空気清浄機 28畳 空気汚れモニター付 脱臭 ホコリ 花粉 集じん 静音 おやすみモード 大畳数 IAP-A85-W', 'アイリスオーヤマ 空気清浄機 28畳 空気汚れモニター付 脱臭 ホコリ 花粉 集じん 静音 おやすみモード 大畳数 IAP-A85-W', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 41, 215, 'B0828QB7JB', 'true', 928, 'JPY', 1183, 255, 22, 497, 5, 'https://www.amazon.jp/dp/B0828QB7JB/?tag=46490EC-22', 2485, 'false', 'false', 'false', 'false', 'アイリスオーヤマ 犬用おやつ サクッとおいしいチーズ入りボーロ 500g P-CBV500 チーズ', 'https://m.media-amazon.com/images/I/61ZuOmXo6WL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ 犬用おやつ サクッとおいしいチーズ入りボーロ 500g P-CBV500 チーズ', '1183', '928', 100, '1', 'アイリスオーヤマ 犬用おやつ サクッとおいしいチーズ入りボーロ 500g P-CBV500 チーズ', 'アイリスオーヤマ 犬用おやつ サクッとおいしいチーズ入りボーロ 500g P-CBV500 チーズ', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 45, 219, 'B09X19K8BF', 'true', 11328, 'JPY', 13000, 1672, 13, 24, 5, 'https://www.amazon.jp/dp/B09X19K8BF/?tag=46490EC-22', 120, 'false', 'false', 'false', 'true', '[アイリスオーヤマ] クールウェアベストセット FNCT', 'https://m.media-amazon.com/images/I/51cF3PMUelL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] クールウェアベストセット FNCT', '13000', '11328', 100, '1', '[アイリスオーヤマ] クールウェアベストセット FNCT', '[アイリスオーヤマ] クールウェアベストセット FNCT', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 47, 221, 'B018TO1CFA', 'true', 5531, 'JPY', 6380, 849, 13, 680, 5, 'https://www.amazon.jp/dp/B018TO1CFA/?tag=46490EC-22', 3400, 'false', 'false', 'false', 'true', 'アイリスオーヤマ LED シーリングライト 小型 100W相当 昼白色 人感 センサー付 750lm SCL7NMS-E', 'https://m.media-amazon.com/images/I/419c1HiWfVL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ LED シーリングライト 小型 100W相当 昼白色 人感 センサー付 750lm SCL7NMS-E', '6380', '5531', 100, '1', 'アイリスオーヤマ LED シーリングライト 小型 100W相当 昼白色 人感 センサー付 750lm SCL7NMS-E', 'アイリスオーヤマ LED シーリングライト 小型 100W相当 昼白色 人感 センサー付 750lm SCL7NMS-E', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 53, 227, 'B0BJKTBDLL', 'true', 294, 'JPY', 598, 304, 51, 296, 5, 'https://www.amazon.jp/dp/B0BJKTBDLL/?tag=46490EC-22', 1480, 'false', 'false', 'false', 'false', '[アイリスオーヤマ] マスク 不織布 立体マスク 3Dマスク 5枚入 大きめ 立体 個包装 小顔 デイリーフィット DAILY FIT 血色マスク チークマスク カラーマスク くちばし おしゃれ 耳が痛くならない RK-F5LBK ブラック 黒', 'https://m.media-amazon.com/images/I/61d6GLNWXpL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] マスク 不織布 立体マスク 3Dマスク 5枚入 大きめ 立体 個包装 小顔 デイリーフィット DAILY FIT 血色マスク チークマスク カラーマスク くちばし おしゃれ 耳が痛くならない RK-F5LBK ブラック 黒', '598', '294', 100, '1', '[アイリスオーヤマ] マスク 不織布 立体マスク 3Dマスク 5枚入 大きめ 立体 個包装 小顔 デイリーフィット DAILY FIT 血色マスク チークマスク カラーマスク くちばし おしゃれ 耳が痛くならない RK-F5LBK ブラック 黒', '[アイリスオーヤマ] マスク 不織布 立体マスク 3Dマスク 5枚入 大きめ 立体 個包装 小顔 デイリーフィット DAILY FIT 血色マスク チークマスク カラーマスク くちばし おしゃれ 耳が痛くならない RK-F5LBK ブラック 黒', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 54, 228, 'B08NVNHN27', 'true', 1180, 'JPY', 1580, 400, 25, 5084, 5, 'https://www.amazon.jp/dp/B08NVNHN27/?tag=46490EC-22', 25420, 'false', 'false', 'false', 'false', '[アイリスオーヤマ] ディスポーザブルマスク 不織布 ふつうサイズ 30枚×3個(90枚セット) 耳が痛くなりにくい やわらか耳ひも 20PN-30PM', 'https://m.media-amazon.com/images/I/61CvMihGVnL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] ディスポーザブルマスク 不織布 ふつうサイズ 30枚×3個(90枚セット) 耳が痛くなりにくい やわらか耳ひも 20PN-30PM', '1580', '1180', 100, '1', '[アイリスオーヤマ] ディスポーザブルマスク 不織布 ふつうサイズ 30枚×3個(90枚セット) 耳が痛くなりにくい やわらか耳ひも 20PN-30PM', '[アイリスオーヤマ] ディスポーザブルマスク 不織布 ふつうサイズ 30枚×3個(90枚セット) 耳が痛くなりにくい やわらか耳ひも 20PN-30PM', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 55, 229, 'B07XZHHGVR', 'true', 5980, 'JPY', 8000, 2020, 25, 408, 5, 'https://www.amazon.jp/dp/B07XZHHGVR/?tag=46490EC-22', 2040, 'false', 'false', 'false', 'false', 'アイリスオーヤマ LED シーリングライト 6.1 音声操作 プレーン 6畳 リモコン付き 調色 CL6DL-6.1V', 'https://m.media-amazon.com/images/I/61+bkbH8BML._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ LED シーリングライト 6.1 音声操作 プレーン 6畳 リモコン付き 調色 CL6DL-6.1V', '8000', '5980', 100, '1', 'アイリスオーヤマ LED シーリングライト 6.1 音声操作 プレーン 6畳 リモコン付き 調色 CL6DL-6.1V', 'アイリスオーヤマ LED シーリングライト 6.1 音声操作 プレーン 6畳 リモコン付き 調色 CL6DL-6.1V', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 57, 231, 'B09RQFZWB9', 'true', 1198, 'JPY', 1279, 81, 6, 166, 5, 'https://www.amazon.jp/dp/B09RQFZWB9/?tag=46490EC-22', 830, 'false', 'false', 'false', 'false', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 不織布マスク 小顔 血色マスク チークマスク カラーマスク 使い捨て おしゃれ 耳が痛くならない APN-60MBK ブラック 黒', 'https://m.media-amazon.com/images/I/612+xGcA5qL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 不織布マスク 小顔 血色マスク チークマスク カラーマスク 使い捨て おしゃれ 耳が痛くならない APN-60MBK ブラック 黒', '1279', '1198', 100, '1', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 不織布マスク 小顔 血色マスク チークマスク カラーマスク 使い捨て おしゃれ 耳が痛くならない APN-60MBK ブラック 黒', '[アイリスオーヤマ] マスク 不織布 プリーツマスク 60枚入 ふつうサイズ 不織布マスク 小顔 血色マスク チークマスク カラーマスク 使い捨て おしゃれ 耳が痛くならない APN-60MBK ブラック 黒', '1', '1', 'xxx', 20000, 1, 1, 9),
(4, 60, 234, 'B005DC6YVE', 'true', 751, 'JPY', 1341, 590, 44, 360, 5, 'https://www.amazon.jp/dp/B005DC6YVE/?tag=46490EC-22', 1800, 'false', 'false', 'false', 'false', 'アイリスオーヤマ スチームクリーナー パーツ ポイントブラシ STMP-B', 'https://m.media-amazon.com/images/I/71K423Kv4sL._AC_UL320_.jpg', '2023-06-12 03:09:24', 0, 'アイリスオーヤマ スチームクリーナー パーツ ポイントブラシ STMP-B', '1341', '751', 100, '1', 'アイリスオーヤマ スチームクリーナー パーツ ポイントブラシ STMP-B', 'アイリスオーヤマ スチームクリーナー パーツ ポイントブラシ STMP-B', '1', '1', 'xxx', 20000, 1, 1, 9),
(1, 2, 2, 'B09TWB4CNZ', 'true', 17860, 'JPY', 19999, 2139, 11, 10, 5, 'https://www.amazon.jp/dp/B09TWB4CNZ/?tag=46490EC-22', 50, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【Amazon.co.jp限定】 NEC用 PR-L4C150 (19/18/17/16) BK/C/M/Y 「4色セット」 互換トナーカートリッジ 「増量版」　対応機種：Color MultiWriter 4C150 ( ...', 'https://m.media-amazon.com/images/I/61JybiySpiL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, 'スポンサー広告 - 【Amazon.co.jp限定】 NEC用 PR-L4C150 (19/18/17/16) BK/C/M/Y 「4色セット」 互換トナーカートリッジ 「増量版」　対応機種：Color MultiWriter 4C150 ( ...', '19999', '17860', 100, '1', 'スポンサー広告 - 【Amazon.co.jp限定】 NEC用 PR-L4C150 (19/18/17/16) BK/C/M/Y 「4色セット」 互換トナーカートリッジ 「増量版」　対応機種：Color MultiWriter 4C150 ( ...', 'スポンサー広告 - 【Amazon.co.jp限定】 NEC用 PR-L4C150 (19/18/17/16) BK/C/M/Y 「4色セット」 互換トナーカートリッジ 「増量版」　対応機種：Color MultiWriter 4C150 ( ...', '1', '1', 'xxx', 20000, 1, 1, 2),
(1, 6, 6, 'B0BKK5T4XB', 'true', 7595, 'JPY', 8800, 1205, 14, 17, 5, 'https://www.amazon.jp/dp/B0BKK5T4XB/?tag=46490EC-22', 85, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】『ヒプノシスマイク -Division Rap Battle- 8th LIVE CONNECT THE LINE to Fling Posse』（B2布ポスター付き） [Blu-ray]', 'https://m.media-amazon.com/images/I/81gfFIGpVDL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】『ヒプノシスマイク -Division Rap Battle- 8th LIVE CONNECT THE LINE to Fling Posse』（B2布ポスター付き） [Blu-ray]', '8800', '7595', 100, '1', '【Amazon.co.jp限定】『ヒプノシスマイク -Division Rap Battle- 8th LIVE CONNECT THE LINE to Fling Posse』（B2布ポスター付き） [Blu-ray]', '【Amazon.co.jp限定】『ヒプノシスマイク -Division Rap Battle- 8th LIVE CONNECT THE LINE to Fling Posse』（B2布ポスター付き） [Blu-ray]', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 6, 29, 'B09TBCHYQ6', 'true', 8859, 'JPY', 11000, 2141, 19, 79, 5, 'https://www.amazon.jp/dp/B09TBCHYQ6/?tag=46490EC-22', 395, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】「大野雄二ベスト・ヒット・ライブ ~ルパンミュージックの原点~」Blu-ray(初回限定盤) [Blu-ray+2 LIVE CD] 〔Amazon.co.jp限定特典:メガジャケ(Blu-ray初回限定盤ve...', 'https://m.media-amazon.com/images/I/81j6Rv60lrL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】「大野雄二ベスト・ヒット・ライブ ~ルパンミュージックの原点~」Blu-ray(初回限定盤) [Blu-ray+2 LIVE CD] 〔Amazon.co.jp限定特典:メガジャケ(Blu-ray初回限定盤ve...', '11000', '8859', 100, '1', '【Amazon.co.jp限定】「大野雄二ベスト・ヒット・ライブ ~ルパンミュージックの原点~」Blu-ray(初回限定盤) [Blu-ray+2 LIVE CD] 〔Amazon.co.jp限定特典:メガジャケ(Blu-ray初回限定盤ve...', '【Amazon.co.jp限定】「大野雄二ベスト・ヒット・ライブ ~ルパンミュージックの原点~」Blu-ray(初回限定盤) [Blu-ray+2 LIVE CD] 〔Amazon.co.jp限定特典:メガジャケ(Blu-ray初回限定盤ve...', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 14, 218, 'B0BYCYQB17', 'true', 217100, 'JPY', 262500, 45400, 17, 119, 5, 'https://www.amazon.jp/dp/B0BYCYQB17/?tag=46490EC-22', 595, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【Amazon.co.jp限定】LG ノートパソコン LG gram/17型､WQXGA(2560×1600)､IPS/1,350g/バッテリー最大27時間/第13世代Core i7/メモリ 16GB/SSD 1TB/アンチ...', 'https://m.media-amazon.com/images/I/718g9TKIHBL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, 'スポンサー広告 - 【Amazon.co.jp限定】LG ノートパソコン LG gram/17型､WQXGA(2560×1600)､IPS/1,350g/バッテリー最大27時間/第13世代Core i7/メモリ 16GB/SSD 1TB/アンチ...', '262500', '217100', 100, '1', 'スポンサー広告 - 【Amazon.co.jp限定】LG ノートパソコン LG gram/17型､WQXGA(2560×1600)､IPS/1,350g/バッテリー最大27時間/第13世代Core i7/メモリ 16GB/SSD 1TB/アンチ...', 'スポンサー広告 - 【Amazon.co.jp限定】LG ノートパソコン LG gram/17型､WQXGA(2560×1600)､IPS/1,350g/バッテリー最大27時間/第13世代Core i7/メモリ 16GB/SSD 1TB/アンチ...', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 58, 262, 'B0BX5R67KH', 'true', 10241, 'JPY', 14630, 4389, 30, 12, 5, 'https://www.amazon.jp/dp/B0BX5R67KH/?tag=46490EC-22', 60, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】「お隣の天使様にいつの間にか駄目人間にされていた件」Blu-ray Vol.1 完全数量限定 バンドルグッズ付特装版（【全巻有償特典】描き下ろしB5キャラファイングラフ引換シリアルコード付＋【各巻特典】場面写缶バ...', 'https://m.media-amazon.com/images/I/81aQ5d3qT-L._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】「お隣の天使様にいつの間にか駄目人間にされていた件」Blu-ray Vol.1 完全数量限定 バンドルグッズ付特装版（【全巻有償特典】描き下ろしB5キャラファイングラフ引換シリアルコード付＋【各巻特典】場面写缶バ...', '14630', '10241', 100, '1', '【Amazon.co.jp限定】「お隣の天使様にいつの間にか駄目人間にされていた件」Blu-ray Vol.1 完全数量限定 バンドルグッズ付特装版（【全巻有償特典】描き下ろしB5キャラファイングラフ引換シリアルコード付＋【各巻特典】場面写缶バ...', '【Amazon.co.jp限定】「お隣の天使様にいつの間にか駄目人間にされていた件」Blu-ray Vol.1 完全数量限定 バンドルグッズ付特装版（【全巻有償特典】描き下ろしB5キャラファイングラフ引換シリアルコード付＋【各巻特典】場面写缶バ...', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 60, 264, 'B0B2CGKRK2', 'true', 5179, 'JPY', 7700, 2521, 33, 134, 5, 'https://www.amazon.jp/dp/B0B2CGKRK2/?tag=46490EC-22', 670, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】iCON Z 2022 ~Dreams For Children~(Blu-ray2枚組+CD)(メガジャケ付き)', 'https://m.media-amazon.com/images/I/81H8GjJREkL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】iCON Z 2022 ~Dreams For Children~(Blu-ray2枚組+CD)(メガジャケ付き)', '7700', '5179', 100, '1', '【Amazon.co.jp限定】iCON Z 2022 ~Dreams For Children~(Blu-ray2枚組+CD)(メガジャケ付き)', '【Amazon.co.jp限定】iCON Z 2022 ~Dreams For Children~(Blu-ray2枚組+CD)(メガジャケ付き)', '1', '1', 'xxx', 20000, 1, 1, 2),
(1, 36, 84, 'B0BY2DZVTZ', 'true', 5662, 'JPY', 6380, 718, 11, 22, 5, 'https://www.amazon.jp/dp/B0BY2DZVTZ/?tag=46490EC-22', 110, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】土を喰らう十二ヵ月 豪華版 Blu-ray 〔Amazon.co.jp限定特典:非売品プレス付き〕', 'https://m.media-amazon.com/images/I/81+pMIoDY+L._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】土を喰らう十二ヵ月 豪華版 Blu-ray 〔Amazon.co.jp限定特典:非売品プレス付き〕', '6380', '5662', 100, '1', '【Amazon.co.jp限定】土を喰らう十二ヵ月 豪華版 Blu-ray 〔Amazon.co.jp限定特典:非売品プレス付き〕', '【Amazon.co.jp限定】土を喰らう十二ヵ月 豪華版 Blu-ray 〔Amazon.co.jp限定特典:非売品プレス付き〕', '1', '1', 'xxx', 20000, 1, 1, 2),
(1, 58, 106, 'B09XH8CPGK', 'true', 2626, 'JPY', 2971, 345, 12, 6111, 5, 'https://www.amazon.jp/dp/B09XH8CPGK/?tag=46490EC-22', 30555, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】江崎グリコ バランスオンミニケーキ2種(チョコブラウニー・チーズケーキ) アソートセット 栄養補助食品 40個', 'https://m.media-amazon.com/images/I/71pntVE4AfL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】江崎グリコ バランスオンミニケーキ2種(チョコブラウニー・チーズケーキ) アソートセット 栄養補助食品 40個', '2971', '2626', 100, '1', '【Amazon.co.jp限定】江崎グリコ バランスオンミニケーキ2種(チョコブラウニー・チーズケーキ) アソートセット 栄養補助食品 40個', '【Amazon.co.jp限定】江崎グリコ バランスオンミニケーキ2種(チョコブラウニー・チーズケーキ) アソートセット 栄養補助食品 40個', '1', '1', 'xxx', 20000, 1, 1, 2),
(2, 24, 124, 'B09XM6TZ59', 'true', 7818, 'JPY', 9680, 1862, 19, 967, 5, 'https://www.amazon.jp/dp/B09XM6TZ59/?tag=46490EC-22', 4835, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】劇場版マクロスΔ 絶対LIVE!!!!!! / 劇場短編マクロスF ~時の迷宮~ (特装限定版)[Blu-ray](描き下ろしイラスト(ランカ&シェリル)使用A3クリアポスター付)', 'https://m.media-amazon.com/images/I/71oItiabrvL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】劇場版マクロスΔ 絶対LIVE!!!!!! / 劇場短編マクロスF ~時の迷宮~ (特装限定版)[Blu-ray](描き下ろしイラスト(ランカ&シェリル)使用A3クリアポスター付)', '9680', '7818', 100, '1', '【Amazon.co.jp限定】劇場版マクロスΔ 絶対LIVE!!!!!! / 劇場短編マクロスF ~時の迷宮~ (特装限定版)[Blu-ray](描き下ろしイラスト(ランカ&シェリル)使用A3クリアポスター付)', '【Amazon.co.jp限定】劇場版マクロスΔ 絶対LIVE!!!!!! / 劇場短編マクロスF ~時の迷宮~ (特装限定版)[Blu-ray](描き下ろしイラスト(ランカ&シェリル)使用A3クリアポスター付)', '1', '1', 'xxx', 20000, 1, 1, 2),
(2, 31, 131, 'B0BVV6LWNB', 'true', 1371, 'JPY', 1858, 487, 26, 14, 5, 'https://www.amazon.jp/dp/B0BVV6LWNB/?tag=46490EC-22', 70, 'false', 'false', 'false', 'false', '【Amazon.co.jp限定】ラグノオささき ポロショコラブルーベリー 1本×4個', 'https://m.media-amazon.com/images/I/81tnPdEH1KL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】ラグノオささき ポロショコラブルーベリー 1本×4個', '1858', '1371', 100, '1', '【Amazon.co.jp限定】ラグノオささき ポロショコラブルーベリー 1本×4個', '【Amazon.co.jp限定】ラグノオささき ポロショコラブルーベリー 1本×4個', '1', '1', 'xxx', 20000, 1, 1, 2),
(3, 31, 183, 'B08953JYPG', 'true', 10980, 'JPY', 14197, 3217, 23, 621, 5, 'https://www.amazon.jp/dp/B08953JYPG/?tag=46490EC-22', 3105, 'false', 'false', 'false', 'true', '【Amazon.co.jp 限定】 EPOS ゲーミング&PCオーディオアンプ GSX 300 Snow(白) 【国内正規品】', 'https://m.media-amazon.com/images/I/51BPu1AVgNL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp 限定】 EPOS ゲーミング&PCオーディオアンプ GSX 300 Snow(白) 【国内正規品】', '14197', '10980', 100, '1', '【Amazon.co.jp 限定】 EPOS ゲーミング&PCオーディオアンプ GSX 300 Snow(白) 【国内正規品】', '【Amazon.co.jp 限定】 EPOS ゲーミング&PCオーディオアンプ GSX 300 Snow(白) 【国内正規品】', '1', '1', 'xxx', 20000, 1, 1, 2),
(3, 9, 161, 'B09CLS2XD4', 'true', 5161, 'JPY', 9680, 4519, 47, 43, 5, 'https://www.amazon.jp/dp/B09CLS2XD4/?tag=46490EC-22', 215, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】MANKAI STAGE『A3!』Troupe LIVE ~SUMMER 2021~[DVD]( L判ブロマイド5枚セット付)(4商品連動購入特典:『「MANKAI☆開花宣言」リーダーズver. CD』引換券(シ...', 'https://m.media-amazon.com/images/I/71bvsMaDQjL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】MANKAI STAGE『A3!』Troupe LIVE ~SUMMER 2021~[DVD]( L判ブロマイド5枚セット付)(4商品連動購入特典:『「MANKAI☆開花宣言」リーダーズver. CD』引換券(シ...', '9680', '5161', 100, '1', '【Amazon.co.jp限定】MANKAI STAGE『A3!』Troupe LIVE ~SUMMER 2021~[DVD]( L判ブロマイド5枚セット付)(4商品連動購入特典:『「MANKAI☆開花宣言」リーダーズver. CD』引換券(シ...', '【Amazon.co.jp限定】MANKAI STAGE『A3!』Troupe LIVE ~SUMMER 2021~[DVD]( L判ブロマイド5枚セット付)(4商品連動購入特典:『「MANKAI☆開花宣言」リーダーズver. CD』引換券(シ...', '1', '1', 'xxx', 20000, 1, 1, 2),
(3, 29, 181, 'B0B6BVNY8X', 'true', 20967, 'JPY', 26400, 5433, 21, 165, 5, 'https://www.amazon.jp/dp/B0B6BVNY8X/?tag=46490EC-22', 825, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】TVアニメ「五等分の花嫁」+TVアニメ「五等分の花嫁∬」コンパクト・コレクション Blu-rayセット(全巻収納BOX付)', 'https://m.media-amazon.com/images/I/71BgLm109zL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】TVアニメ「五等分の花嫁」+TVアニメ「五等分の花嫁∬」コンパクト・コレクション Blu-rayセット(全巻収納BOX付)', '26400', '20967', 100, '1', '【Amazon.co.jp限定】TVアニメ「五等分の花嫁」+TVアニメ「五等分の花嫁∬」コンパクト・コレクション Blu-rayセット(全巻収納BOX付)', '【Amazon.co.jp限定】TVアニメ「五等分の花嫁」+TVアニメ「五等分の花嫁∬」コンパクト・コレクション Blu-rayセット(全巻収納BOX付)', '1', '1', 'xxx', 20000, 1, 1, 2),
(3, 56, 208, 'B0B2LXTVW9', 'true', 4582, 'JPY', 5000, 418, 8, 87, 5, 'https://www.amazon.jp/dp/B0B2LXTVW9/?tag=46490EC-22', 435, 'false', 'false', 'false', 'true', '[アシックス スクスク] ベビーシューズ ローカット 1本ベルト 【Amazon.co.jp限定カラーあり】', 'https://m.media-amazon.com/images/I/51eVAu9gz2L._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '[アシックス スクスク] ベビーシューズ ローカット 1本ベルト 【Amazon.co.jp限定カラーあり】', '5000', '4582', 100, '1', '[アシックス スクスク] ベビーシューズ ローカット 1本ベルト 【Amazon.co.jp限定カラーあり】', '[アシックス スクスク] ベビーシューズ ローカット 1本ベルト 【Amazon.co.jp限定カラーあり】', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 17, 221, 'B0BHY29QMK', 'true', 28500, 'JPY', 31727, 3227, 10, 28, 5, 'https://www.amazon.jp/dp/B0BHY29QMK/?tag=46490EC-22', 140, 'false', 'false', 'false', 'true', '【Amazon.co.jp 限定】LG ゲーミングモニター UltraGear 27GN60R-B 27インチ/フルHD/IPS/144Hz/1ms(GTG)/G-SYNC Compatible,FreeSync Premium/HDR/HDM...', 'https://m.media-amazon.com/images/I/719IJW-XveL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp 限定】LG ゲーミングモニター UltraGear 27GN60R-B 27インチ/フルHD/IPS/144Hz/1ms(GTG)/G-SYNC Compatible,FreeSync Premium/HDR/HDM...', '31727', '28500', 100, '1', '【Amazon.co.jp 限定】LG ゲーミングモニター UltraGear 27GN60R-B 27インチ/フルHD/IPS/144Hz/1ms(GTG)/G-SYNC Compatible,FreeSync Premium/HDR/HDM...', '【Amazon.co.jp 限定】LG ゲーミングモニター UltraGear 27GN60R-B 27インチ/フルHD/IPS/144Hz/1ms(GTG)/G-SYNC Compatible,FreeSync Premium/HDR/HDM...', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 21, 225, 'B09TWGRKS6', 'true', 4828, 'JPY', 5680, 852, 15, 19, 5, 'https://www.amazon.jp/dp/B09TWGRKS6/?tag=46490EC-22', 95, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【Amazon.co.jp限定】 キャノン用 CRG-051H BK*4 「黒 ４ 本セット」 互換トナーカートリッジ 「増量版」　対応機種：LBP162 LBP161 MF269dw MF266dn MF265dw MF2...', 'https://m.media-amazon.com/images/I/61mYDad1KOL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, 'スポンサー広告 - 【Amazon.co.jp限定】 キャノン用 CRG-051H BK*4 「黒 ４ 本セット」 互換トナーカートリッジ 「増量版」　対応機種：LBP162 LBP161 MF269dw MF266dn MF265dw MF2...', '5680', '4828', 100, '1', 'スポンサー広告 - 【Amazon.co.jp限定】 キャノン用 CRG-051H BK*4 「黒 ４ 本セット」 互換トナーカートリッジ 「増量版」　対応機種：LBP162 LBP161 MF269dw MF266dn MF265dw MF2...', 'スポンサー広告 - 【Amazon.co.jp限定】 キャノン用 CRG-051H BK*4 「黒 ４ 本セット」 互換トナーカートリッジ 「増量版」　対応機種：LBP162 LBP161 MF269dw MF266dn MF265dw MF2...', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 47, 251, 'B09PYPFMB7', 'true', 8873, 'JPY', 10200, 1327, 13, 201, 5, 'https://www.amazon.jp/dp/B09PYPFMB7/?tag=46490EC-22', 1005, 'false', 'false', 'false', 'true', '【Amazon.co.jp 限定】[DRESS] 『2021』バッカン(メッシュポケット付き)ステルスブラック 約17~34L ロッドホルダー EVA 多機能 釣り 釣り具 釣り用ケース 防災 収納コンテナ タックルバッグ', 'https://m.media-amazon.com/images/I/617+vpC-z5L._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp 限定】[DRESS] 『2021』バッカン(メッシュポケット付き)ステルスブラック 約17~34L ロッドホルダー EVA 多機能 釣り 釣り具 釣り用ケース 防災 収納コンテナ タックルバッグ', '10200', '8873', 100, '1', '【Amazon.co.jp 限定】[DRESS] 『2021』バッカン(メッシュポケット付き)ステルスブラック 約17~34L ロッドホルダー EVA 多機能 釣り 釣り具 釣り用ケース 防災 収納コンテナ タックルバッグ', '【Amazon.co.jp 限定】[DRESS] 『2021』バッカン(メッシュポケット付き)ステルスブラック 約17~34L ロッドホルダー EVA 多機能 釣り 釣り具 釣り用ケース 防災 収納コンテナ タックルバッグ', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 55, 259, 'B005EUPRB8', 'true', 999, 'JPY', 1320, 321, 24, 16285, 5, 'https://www.amazon.jp/dp/B005EUPRB8/?tag=46490EC-22', 81425, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】ロジクール ワイヤレスマウス 無線 マウス M185BL 小型 電池寿命最大12ケ月 M185 ブルー 国内正規品', 'https://m.media-amazon.com/images/I/51V0BovWPgL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】ロジクール ワイヤレスマウス 無線 マウス M185BL 小型 電池寿命最大12ケ月 M185 ブルー 国内正規品', '1320', '999', 100, '1', '【Amazon.co.jp限定】ロジクール ワイヤレスマウス 無線 マウス M185BL 小型 電池寿命最大12ケ月 M185 ブルー 国内正規品', '【Amazon.co.jp限定】ロジクール ワイヤレスマウス 無線 マウス M185BL 小型 電池寿命最大12ケ月 M185 ブルー 国内正規品', '1', '1', 'xxx', 20000, 1, 1, 2),
(4, 59, 263, 'B0B1PHP2N9', 'true', 4868, 'JPY', 6490, 1622, 25, 2303, 5, 'https://www.amazon.jp/dp/B0B1PHP2N9/?tag=46490EC-22', 11515, 'false', 'false', 'false', 'true', '[ニューバランス] ランニングシューズ ME432 【Amazon.co.jp限定】 スニーカー 白 通学 軽量 メンズ', 'https://m.media-amazon.com/images/I/71AEhHiNAHL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '[ニューバランス] ランニングシューズ ME432 【Amazon.co.jp限定】 スニーカー 白 通学 軽量 メンズ', '6490', '4868', 100, '1', '[ニューバランス] ランニングシューズ ME432 【Amazon.co.jp限定】 スニーカー 白 通学 軽量 メンズ', '[ニューバランス] ランニングシューズ ME432 【Amazon.co.jp限定】 スニーカー 白 通学 軽量 メンズ', '1', '1', 'xxx', 20000, 1, 1, 2),
(7, 20, 380, 'B0BVH57959', 'true', 3890, 'JPY', 4800, 910, 19, 1, 5, 'https://www.amazon.jp/dp/B0BVH57959/?tag=46490EC-22', 5, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【Amazon.co.jp限定】キャノン用 NPG-67 NPG-67BLK 互換トナーカートリッジ ( ブラック ) 対応機種 CANON C3320 C3325 C3330【Tankard】', 'https://m.media-amazon.com/images/I/61TmpZ1iX5L._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, 'スポンサー広告 - 【Amazon.co.jp限定】キャノン用 NPG-67 NPG-67BLK 互換トナーカートリッジ ( ブラック ) 対応機種 CANON C3320 C3325 C3330【Tankard】', '4800', '3890', 100, '1', 'スポンサー広告 - 【Amazon.co.jp限定】キャノン用 NPG-67 NPG-67BLK 互換トナーカートリッジ ( ブラック ) 対応機種 CANON C3320 C3325 C3330【Tankard】', 'スポンサー広告 - 【Amazon.co.jp限定】キャノン用 NPG-67 NPG-67BLK 互換トナーカートリッジ ( ブラック ) 対応機種 CANON C3320 C3325 C3330【Tankard】', '1', '1', 'xxx', 20000, 1, 1, 2);
INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(5, 37, 293, 'B07HRSNPXT', 'true', 3159, 'JPY', 3670, 511, 14, 264, 5, 'https://www.amazon.jp/dp/B07HRSNPXT/?tag=46490EC-22', 1320, 'false', 'false', 'false', 'true', '【Amazon.co.jp 限定】HP 63XL インクカートリッジ カラー(増量)', 'https://m.media-amazon.com/images/I/71orUoqFiFL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp 限定】HP 63XL インクカートリッジ カラー(増量)', '3670', '3159', 100, '1', '【Amazon.co.jp 限定】HP 63XL インクカートリッジ カラー(増量)', '【Amazon.co.jp 限定】HP 63XL インクカートリッジ カラー(増量)', '1', '1', 'xxx', 20000, 1, 1, 2),
(5, 38, 294, 'B08B3XQCY6', 'true', 1584, 'JPY', 1980, 396, 20, 305, 5, 'https://www.amazon.jp/dp/B08B3XQCY6/?tag=46490EC-22', 1525, 'false', 'false', 'false', 'false', '[プーマ] 半袖 Tシャツ トレーニング パフォーマンス SSTシャツM 520759 【Amazon.co.jp限定】 メンズ', 'https://m.media-amazon.com/images/I/71gG0H+khmL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '[プーマ] 半袖 Tシャツ トレーニング パフォーマンス SSTシャツM 520759 【Amazon.co.jp限定】 メンズ', '1980', '1584', 100, '1', '[プーマ] 半袖 Tシャツ トレーニング パフォーマンス SSTシャツM 520759 【Amazon.co.jp限定】 メンズ', '[プーマ] 半袖 Tシャツ トレーニング パフォーマンス SSTシャツM 520759 【Amazon.co.jp限定】 メンズ', '1', '1', 'xxx', 20000, 1, 1, 2),
(5, 45, 301, 'B0BTSQJ9HC', 'true', 4929, 'JPY', 5325, 396, 7, 2245, 5, 'https://www.amazon.jp/dp/B0BTSQJ9HC/?tag=46490EC-22', 11225, 'false', 'false', 'false', 'true', '【Amazon.co.jp 限定】JEJアステージ 収納チェスト シーズワイド 5段 ホワイト/ホワイト 日本製 簡単組み立て 幅54.0×奥行40.0×高さ102.0cm', 'https://m.media-amazon.com/images/I/51d-ku+GWXL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp 限定】JEJアステージ 収納チェスト シーズワイド 5段 ホワイト/ホワイト 日本製 簡単組み立て 幅54.0×奥行40.0×高さ102.0cm', '5325', '4929', 100, '1', '【Amazon.co.jp 限定】JEJアステージ 収納チェスト シーズワイド 5段 ホワイト/ホワイト 日本製 簡単組み立て 幅54.0×奥行40.0×高さ102.0cm', '【Amazon.co.jp 限定】JEJアステージ 収納チェスト シーズワイド 5段 ホワイト/ホワイト 日本製 簡単組み立て 幅54.0×奥行40.0×高さ102.0cm', '1', '1', 'xxx', 20000, 1, 1, 2),
(6, 10, 318, 'B089X1FHP2', 'true', 9281, 'JPY', 11990, 2709, 23, 7784, 5, 'https://www.amazon.jp/dp/B089X1FHP2/?tag=46490EC-22', 38920, 'false', 'false', 'false', 'true', '[ニューバランス] スニーカー ML574(現行モデル) 【Amazon.co.jp限定カラーあり】', 'https://m.media-amazon.com/images/I/71VqQ40h-JL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '[ニューバランス] スニーカー ML574(現行モデル) 【Amazon.co.jp限定カラーあり】', '11990', '9281', 100, '1', '[ニューバランス] スニーカー ML574(現行モデル) 【Amazon.co.jp限定カラーあり】', '[ニューバランス] スニーカー ML574(現行モデル) 【Amazon.co.jp限定カラーあり】', '1', '1', 'xxx', 20000, 1, 1, 2),
(7, 22, 382, 'B0923HLN2Z', 'true', 139600, 'JPY', 163273, 23673, 15, 18, 5, 'https://www.amazon.jp/dp/B0923HLN2Z/?tag=46490EC-22', 90, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【Amazon.co.jp 限定】LG 超短焦点 レーザー光源プロジェクター (フルHD/1500lm/Bluetooth対応/3kg/寿命約20,000時間) HF85LSR', 'https://m.media-amazon.com/images/I/611QJQ7x98L._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, 'スポンサー広告 - 【Amazon.co.jp 限定】LG 超短焦点 レーザー光源プロジェクター (フルHD/1500lm/Bluetooth対応/3kg/寿命約20,000時間) HF85LSR', '163273', '139600', 100, '1', 'スポンサー広告 - 【Amazon.co.jp 限定】LG 超短焦点 レーザー光源プロジェクター (フルHD/1500lm/Bluetooth対応/3kg/寿命約20,000時間) HF85LSR', 'スポンサー広告 - 【Amazon.co.jp 限定】LG 超短焦点 レーザー光源プロジェクター (フルHD/1500lm/Bluetooth対応/3kg/寿命約20,000時間) HF85LSR', '1', '1', 'xxx', 20000, 1, 1, 2),
(6, 33, 341, 'B093BJFFR3', 'true', 7100, 'JPY', 8950, 1850, 21, 54, 5, 'https://www.amazon.jp/dp/B093BJFFR3/?tag=46490EC-22', 270, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】3M マスク ウイルス飛沫対策 KF94 不織布 快適形状 密着フィット 3D 黒 45枚 KF94BK45', 'https://m.media-amazon.com/images/I/71l6xZj-8HL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】3M マスク ウイルス飛沫対策 KF94 不織布 快適形状 密着フィット 3D 黒 45枚 KF94BK45', '8950', '7100', 100, '1', '【Amazon.co.jp限定】3M マスク ウイルス飛沫対策 KF94 不織布 快適形状 密着フィット 3D 黒 45枚 KF94BK45', '【Amazon.co.jp限定】3M マスク ウイルス飛沫対策 KF94 不織布 快適形状 密着フィット 3D 黒 45枚 KF94BK45', '1', '1', 'xxx', 20000, 1, 1, 2),
(6, 34, 342, 'B0BTCT1ZYC', 'true', 11024, 'JPY', 16200, 5176, 32, 61, 5, 'https://www.amazon.jp/dp/B0BTCT1ZYC/?tag=46490EC-22', 305, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】映画『ゆるキャン△』 Blu-ray 【コレクターズ版】 「描き下ろしキャラファイングラフ(なでしこ、リン、千明、あおい、斉藤)」付コレクション(描き下ろしミニキャンパス(なでしこ、リン、千明、あおい、斉藤)付)...', 'https://m.media-amazon.com/images/I/61cPghfmyHL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】映画『ゆるキャン△』 Blu-ray 【コレクターズ版】 「描き下ろしキャラファイングラフ(なでしこ、リン、千明、あおい、斉藤)」付コレクション(描き下ろしミニキャンパス(なでしこ、リン、千明、あおい、斉藤)付)...', '16200', '11024', 100, '1', '【Amazon.co.jp限定】映画『ゆるキャン△』 Blu-ray 【コレクターズ版】 「描き下ろしキャラファイングラフ(なでしこ、リン、千明、あおい、斉藤)」付コレクション(描き下ろしミニキャンパス(なでしこ、リン、千明、あおい、斉藤)付)...', '【Amazon.co.jp限定】映画『ゆるキャン△』 Blu-ray 【コレクターズ版】 「描き下ろしキャラファイングラフ(なでしこ、リン、千明、あおい、斉藤)」付コレクション(描き下ろしミニキャンパス(なでしこ、リン、千明、あおい、斉藤)付)...', '1', '1', 'xxx', 20000, 1, 1, 2),
(6, 53, 361, 'B07LH1ZDSL', 'true', 13932, 'JPY', 15480, 1548, 10, 4401, 5, 'https://www.amazon.jp/dp/B07LH1ZDSL/?tag=46490EC-22', 22005, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】ASUS フレームレス モニター 23.8インチ FHD 1080p IPS 薄さ7mmのウルトラスリム ブルーライト軽減 フリッカーフリー HDMI スピーカー付 VZ249HR', 'https://m.media-amazon.com/images/I/51NfsQb05mL._AC_UL320_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】ASUS フレームレス モニター 23.8インチ FHD 1080p IPS 薄さ7mmのウルトラスリム ブルーライト軽減 フリッカーフリー HDMI スピーカー付 VZ249HR', '15480', '13932', 100, '1', '【Amazon.co.jp限定】ASUS フレームレス モニター 23.8インチ FHD 1080p IPS 薄さ7mmのウルトラスリム ブルーライト軽減 フリッカーフリー HDMI スピーカー付 VZ249HR', '【Amazon.co.jp限定】ASUS フレームレス モニター 23.8インチ FHD 1080p IPS 薄さ7mmのウルトラスリム ブルーライト軽減 フリッカーフリー HDMI スピーカー付 VZ249HR', '1', '1', 'xxx', 20000, 1, 1, 2),
(7, 48, 408, 'B0BS3L1SXT', 'true', 17940, 'JPY', 23100, 5160, 22, 515, 5, 'https://www.amazon.jp/dp/B0BS3L1SXT/?tag=46490EC-22', 2575, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】10th YEAR BIRTHDAY LIVE (完全生産限定盤) (DVD) (オリジナル三方背収納ケース付)', 'https://m.media-amazon.com/images/I/91V0CQClpML._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】10th YEAR BIRTHDAY LIVE (完全生産限定盤) (DVD) (オリジナル三方背収納ケース付)', '23100', '17940', 100, '1', '【Amazon.co.jp限定】10th YEAR BIRTHDAY LIVE (完全生産限定盤) (DVD) (オリジナル三方背収納ケース付)', '【Amazon.co.jp限定】10th YEAR BIRTHDAY LIVE (完全生産限定盤) (DVD) (オリジナル三方背収納ケース付)', '1', '1', 'xxx', 20000, 1, 1, 2),
(7, 56, 416, 'B08BFWTSMR', 'true', 3960, 'JPY', 4400, 440, 10, 26, 5, 'https://www.amazon.jp/dp/B08BFWTSMR/?tag=46490EC-22', 130, 'false', 'false', 'false', 'true', '[ニューバランス] タイツ 【Amazon.co.jp限定】 SuperCore(スーパーコア) レディース スポーツハイウェストカプリタイツ ランニング 吸汗速乾機能付き WP11460', 'https://m.media-amazon.com/images/I/61c6L0lr3GL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '[ニューバランス] タイツ 【Amazon.co.jp限定】 SuperCore(スーパーコア) レディース スポーツハイウェストカプリタイツ ランニング 吸汗速乾機能付き WP11460', '4400', '3960', 100, '1', '[ニューバランス] タイツ 【Amazon.co.jp限定】 SuperCore(スーパーコア) レディース スポーツハイウェストカプリタイツ ランニング 吸汗速乾機能付き WP11460', '[ニューバランス] タイツ 【Amazon.co.jp限定】 SuperCore(スーパーコア) レディース スポーツハイウェストカプリタイツ ランニング 吸汗速乾機能付き WP11460', '1', '1', 'xxx', 20000, 1, 1, 2),
(7, 59, 419, 'B0BVT3HQGH', 'true', 14685, 'JPY', 16500, 1815, 11, 72, 5, 'https://www.amazon.jp/dp/B0BVT3HQGH/?tag=46490EC-22', 360, 'false', 'false', 'false', 'true', '【Amazon.co.jp限定】BAND-MAID TOKYO GARDEN THEATER OKYUJI (Jan.09,2023)(完全生産限定盤)(フォトカード5枚セット付) [Blu-ray]', 'https://m.media-amazon.com/images/I/514VRghTwCL._AC_UL400_.jpg', '2023-06-12 03:17:15', 0, '【Amazon.co.jp限定】BAND-MAID TOKYO GARDEN THEATER OKYUJI (Jan.09,2023)(完全生産限定盤)(フォトカード5枚セット付) [Blu-ray]', '16500', '14685', 100, '1', '【Amazon.co.jp限定】BAND-MAID TOKYO GARDEN THEATER OKYUJI (Jan.09,2023)(完全生産限定盤)(フォトカード5枚セット付) [Blu-ray]', '【Amazon.co.jp限定】BAND-MAID TOKYO GARDEN THEATER OKYUJI (Jan.09,2023)(完全生産限定盤)(フォトカード5枚セット付) [Blu-ray]', '1', '1', 'xxx', 20000, 1, 1, 2),
(1, 6, 3, 'B095CC3426', 'true', 650, 'JPY', 888, 238, 27, 1555, 5, 'https://www.amazon.jp/dp/B095CC3426/?tag=46490EC-22', 7775, 'false', 'false', 'false', 'true', 'バッファロー HDMI やわらか ケーブル 1m ARC 対応 4K × 2K 対応 【 HIGH SPEED with Ethernet 認証品 】 BHDY10BK/N', 'https://m.media-amazon.com/images/I/61BbQgdY2DL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'バッファロー HDMI やわらか ケーブル 1m ARC 対応 4K × 2K 対応 【 HIGH SPEED with Ethernet 認証品 】 BHDY10BK/N', '888', '650', 100, '1', 'バッファロー HDMI やわらか ケーブル 1m ARC 対応 4K × 2K 対応 【 HIGH SPEED with Ethernet 認証品 】 BHDY10BK/N', 'バッファロー HDMI やわらか ケーブル 1m ARC 対応 4K × 2K 対応 【 HIGH SPEED with Ethernet 認証品 】 BHDY10BK/N', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 7, 4, 'B014I8SSD0', 'true', 756, 'JPY', 812, 56, 7, 498048, 5, 'https://www.amazon.jp/dp/B014I8SSD0/?tag=46490EC-22', 2490240, 'false', 'false', 'false', 'true', 'スポンサー広告 - Amazonベーシック ハイスピードHDMIケーブル 1.8m (タイプAオス - タイプAオス)', 'https://m.media-amazon.com/images/I/7178cUjo4jL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Amazonベーシック ハイスピードHDMIケーブル 1.8m (タイプAオス - タイプAオス)', '812', '756', 100, '1', 'スポンサー広告 - Amazonベーシック ハイスピードHDMIケーブル 1.8m (タイプAオス - タイプAオス)', 'スポンサー広告 - Amazonベーシック ハイスピードHDMIケーブル 1.8m (タイプAオス - タイプAオス)', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 1, 5, 'B0BN1WNC7Z', 'true', 1659, 'JPY', 2109, 450, 21, 34, 5, 'https://www.amazon.jp/dp/B0BN1WNC7Z/?tag=46490EC-22', 170, 'false', 'false', 'false', 'true', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1.5M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'https://m.media-amazon.com/images/I/719xy+JpjgL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1.5M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '2109', '1659', 100, '1', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1.5M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1.5M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 54, 62, 'B08NDKG5KM', 'true', 849, 'JPY', 999, 150, 15, 38, 5, 'https://www.amazon.jp/dp/B08NDKG5KM/?tag=46490EC-22', 190, 'false', 'false', 'false', 'true', '8K HDMI ケーブル 2M、UGOMI 48Gbps HDMI 2.1 ケーブル サポート Dolby Atmos、8K@60Hz、4K@120Hz、Dynamic HDR、eARC、Apple TV、Xbox series X、PS5、R...', 'https://m.media-amazon.com/images/I/71BrVew5IGL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, '8K HDMI ケーブル 2M、UGOMI 48Gbps HDMI 2.1 ケーブル サポート Dolby Atmos、8K@60Hz、4K@120Hz、Dynamic HDR、eARC、Apple TV、Xbox series X、PS5、R...', '999', '849', 100, '1', '8K HDMI ケーブル 2M、UGOMI 48Gbps HDMI 2.1 ケーブル サポート Dolby Atmos、8K@60Hz、4K@120Hz、Dynamic HDR、eARC、Apple TV、Xbox series X、PS5、R...', '8K HDMI ケーブル 2M、UGOMI 48Gbps HDMI 2.1 ケーブル サポート Dolby Atmos、8K@60Hz、4K@120Hz、Dynamic HDR、eARC、Apple TV、Xbox series X、PS5、R...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 7, 10, 'B09CTG17RF', 'true', 1399, 'JPY', 1899, 500, 26, 766, 5, 'https://www.amazon.jp/dp/B09CTG17RF/?tag=46490EC-22', 3830, 'false', 'false', 'false', 'true', 'Snowkids 8K HDMI ケーブル 2M [PS4 PS5対応] HDMI 2.1 規格 8K@60Hz 4K@120Hz/144Hz HDMI ケーブル2.1 超高速 UHD 48Gbps eARC DynamicHDR 3Dイーサネ...', 'https://m.media-amazon.com/images/I/71F6o07eZNL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Snowkids 8K HDMI ケーブル 2M [PS4 PS5対応] HDMI 2.1 規格 8K@60Hz 4K@120Hz/144Hz HDMI ケーブル2.1 超高速 UHD 48Gbps eARC DynamicHDR 3Dイーサネ...', '1899', '1399', 100, '1', 'Snowkids 8K HDMI ケーブル 2M [PS4 PS5対応] HDMI 2.1 規格 8K@60Hz 4K@120Hz/144Hz HDMI ケーブル2.1 超高速 UHD 48Gbps eARC DynamicHDR 3Dイーサネ...', 'Snowkids 8K HDMI ケーブル 2M [PS4 PS5対応] HDMI 2.1 規格 8K@60Hz 4K@120Hz/144Hz HDMI ケーブル2.1 超高速 UHD 48Gbps eARC DynamicHDR 3Dイーサネ...', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 25, 33, 'B0B19N7ZGL', 'true', 699, 'JPY', 780, 81, 10, 14132, 5, 'https://www.amazon.jp/dp/B0B19N7ZGL/?tag=46490EC-22', 70660, 'false', 'false', 'false', 'true', 'スポンサー広告 - UGREEN HDMIケーブル オス-オス HDMI2.0基準 4K@60Hz 18Gbps 高速伝送 UHD/HDR/3D/イーサネット対応 PS5/PS4 Xbox Switch Apple TV Fire TVなど対応...', 'https://m.media-amazon.com/images/I/61h5BS5PKwS._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - UGREEN HDMIケーブル オス-オス HDMI2.0基準 4K@60Hz 18Gbps 高速伝送 UHD/HDR/3D/イーサネット対応 PS5/PS4 Xbox Switch Apple TV Fire TVなど対応...', '780', '699', 100, '1', 'スポンサー広告 - UGREEN HDMIケーブル オス-オス HDMI2.0基準 4K@60Hz 18Gbps 高速伝送 UHD/HDR/3D/イーサネット対応 PS5/PS4 Xbox Switch Apple TV Fire TVなど対応...', 'スポンサー広告 - UGREEN HDMIケーブル オス-オス HDMI2.0基準 4K@60Hz 18Gbps 高速伝送 UHD/HDR/3D/イーサネット対応 PS5/PS4 Xbox Switch Apple TV Fire TVなど対応...', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 2, 12, 'B0BN1LNSGZ', 'true', 1559, 'JPY', 2099, 540, 26, 34, 5, 'https://www.amazon.jp/dp/B0BN1LNSGZ/?tag=46490EC-22', 170, 'false', 'false', 'false', 'true', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'https://m.media-amazon.com/images/I/719U7hSc3vL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '2099', '1559', 100, '1', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'スポンサー広告 - Impeto HDMI 2.1ケーブル 1M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 9, 18, 'B096B2M6CN', 'true', 899, 'JPY', 1298, 399, 31, 2019, 5, 'https://www.amazon.jp/dp/B096B2M6CN/?tag=46490EC-22', 10095, 'false', 'false', 'false', 'true', 'エレコム HDMI ケーブル 2m 4K×2K対応 スーパースリム 環境に配慮した簡易パッケージ ブラック ECDH-HD14SS20BK', 'https://m.media-amazon.com/images/I/51cJMNqNrsS._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'エレコム HDMI ケーブル 2m 4K×2K対応 スーパースリム 環境に配慮した簡易パッケージ ブラック ECDH-HD14SS20BK', '1298', '899', 100, '1', 'エレコム HDMI ケーブル 2m 4K×2K対応 スーパースリム 環境に配慮した簡易パッケージ ブラック ECDH-HD14SS20BK', 'エレコム HDMI ケーブル 2m 4K×2K対応 スーパースリム 環境に配慮した簡易パッケージ ブラック ECDH-HD14SS20BK', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 11, 20, 'B075ZWHNJT', 'true', 2476, 'JPY', 2905, 429, 15, 49494, 5, 'https://www.amazon.jp/dp/B075ZWHNJT/?tag=46490EC-22', 247470, 'false', 'false', 'false', 'true', 'スポンサー広告 - Amazonベーシック ハイスピード HDMIケーブル(高耐久編組ナイロン) - 7.6m', 'https://m.media-amazon.com/images/I/616CgaD181L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Amazonベーシック ハイスピード HDMIケーブル(高耐久編組ナイロン) - 7.6m', '2905', '2476', 100, '1', 'スポンサー広告 - Amazonベーシック ハイスピード HDMIケーブル(高耐久編組ナイロン) - 7.6m', 'スポンサー広告 - Amazonベーシック ハイスピード HDMIケーブル(高耐久編組ナイロン) - 7.6m', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 12, 21, 'B098DYBXQ5', 'true', 1290, 'JPY', 1749, 459, 26, 2266, 5, 'https://www.amazon.jp/dp/B098DYBXQ5/?tag=46490EC-22', 11330, 'false', 'false', 'false', 'true', 'スポンサー広告 - エレコム HDMIケーブル 3m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP30SBK', 'https://m.media-amazon.com/images/I/71VZgbs9EfS._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - エレコム HDMIケーブル 3m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP30SBK', '1749', '1290', 100, '1', 'スポンサー広告 - エレコム HDMIケーブル 3m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP30SBK', 'スポンサー広告 - エレコム HDMIケーブル 3m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP30SBK', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 14, 22, 'B0B63CVMQ3', 'true', 849, 'JPY', 999, 150, 15, 498, 5, 'https://www.amazon.jp/dp/B0B63CVMQ3/?tag=46490EC-22', 2490, 'false', 'false', 'false', 'true', 'スポンサー広告 - Thsucords スリムHDMIケーブル 3M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', 'https://m.media-amazon.com/images/I/61UvE3Bj+VL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Thsucords スリムHDMIケーブル 3M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', '999', '849', 100, '1', 'スポンサー広告 - Thsucords スリムHDMIケーブル 3M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', 'スポンサー広告 - Thsucords スリムHDMIケーブル 3M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 20, 28, 'B0BWTGL5K1', 'true', 1774, 'JPY', 2200, 426, 19, 110, 5, 'https://www.amazon.jp/dp/B0BWTGL5K1/?tag=46490EC-22', 550, 'false', 'false', 'false', 'true', 'スポンサー広告 - [2023正規認証品]i-Phone用HDMI変換アダプタ 2022年最新型 給電/設定不要 簡単接続 幅広い互換性 大画面 4K/1080P 遅延なし 音声同期出力 ゲームav/テレビ視聴 lighting digital...', 'https://m.media-amazon.com/images/I/51yebON-tpL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - [2023正規認証品]i-Phone用HDMI変換アダプタ 2022年最新型 給電/設定不要 簡単接続 幅広い互換性 大画面 4K/1080P 遅延なし 音声同期出力 ゲームav/テレビ視聴 lighting digital...', '2200', '1774', 100, '1', 'スポンサー広告 - [2023正規認証品]i-Phone用HDMI変換アダプタ 2022年最新型 給電/設定不要 簡単接続 幅広い互換性 大画面 4K/1080P 遅延なし 音声同期出力 ゲームav/テレビ視聴 lighting digital...', 'スポンサー広告 - [2023正規認証品]i-Phone用HDMI変換アダプタ 2022年最新型 給電/設定不要 簡単接続 幅広い互換性 大画面 4K/1080P 遅延なし 音声同期出力 ゲームav/テレビ視聴 lighting digital...', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 20, 134, 'B07RHHB1MJ', 'true', 719, 'JPY', 1599, 880, 55, 10251, 5, 'https://www.amazon.jp/dp/B07RHHB1MJ/?tag=46490EC-22', 51255, 'false', 'false', 'false', 'true', 'スポンサー広告 - HDMI ケーブル【2M/4K60Hz/6種長さ】iVANKY HDMI2.0規格 PS5/PS4/3,Xbox, Nintendo Switch, Apple TV, Fire TVなど適用18gbps 4K60Hz/HD...', 'https://m.media-amazon.com/images/I/71t+Q8jWLkL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - HDMI ケーブル【2M/4K60Hz/6種長さ】iVANKY HDMI2.0規格 PS5/PS4/3,Xbox, Nintendo Switch, Apple TV, Fire TVなど適用18gbps 4K60Hz/HD...', '1599', '719', 100, '1', 'スポンサー広告 - HDMI ケーブル【2M/4K60Hz/6種長さ】iVANKY HDMI2.0規格 PS5/PS4/3,Xbox, Nintendo Switch, Apple TV, Fire TVなど適用18gbps 4K60Hz/HD...', 'スポンサー広告 - HDMI ケーブル【2M/4K60Hz/6種長さ】iVANKY HDMI2.0規格 PS5/PS4/3,Xbox, Nintendo Switch, Apple TV, Fire TVなど適用18gbps 4K60Hz/HD...', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 24, 32, 'B00HQY7U56', 'true', 998, 'JPY', 1345, 347, 26, 15196, 5, 'https://www.amazon.jp/dp/B00HQY7U56/?tag=46490EC-22', 75980, 'false', 'false', 'false', 'true', 'エレコム HDMI ケーブル 1m 4K × 2K対応 スーパースリム ブラック DH-HD14SS10BK', 'https://m.media-amazon.com/images/I/51kGsrYdOOL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'エレコム HDMI ケーブル 1m 4K × 2K対応 スーパースリム ブラック DH-HD14SS10BK', '1345', '998', 100, '1', 'エレコム HDMI ケーブル 1m 4K × 2K対応 スーパースリム ブラック DH-HD14SS10BK', 'エレコム HDMI ケーブル 1m 4K × 2K対応 スーパースリム ブラック DH-HD14SS10BK', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 27, 35, 'B0B5ZRF73Z', 'true', 499, 'JPY', 599, 100, 17, 635, 5, 'https://www.amazon.jp/dp/B0B5ZRF73Z/?tag=46490EC-22', 3175, 'false', 'false', 'false', 'true', 'Twozoh フレキシブル &スリム HDMI ケーブル ソフト & 超薄型 HDMI ケーブル 短 4K@60Hz/2160P/1080P 0.3M', 'https://m.media-amazon.com/images/I/61FS91NlJBL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Twozoh フレキシブル &スリム HDMI ケーブル ソフト & 超薄型 HDMI ケーブル 短 4K@60Hz/2160P/1080P 0.3M', '599', '499', 100, '1', 'Twozoh フレキシブル &スリム HDMI ケーブル ソフト & 超薄型 HDMI ケーブル 短 4K@60Hz/2160P/1080P 0.3M', 'Twozoh フレキシブル &スリム HDMI ケーブル ソフト & 超薄型 HDMI ケーブル 短 4K@60Hz/2160P/1080P 0.3M', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 29, 37, 'B092HYH5CG', 'true', 338, 'JPY', 398, 60, 15, 117, 5, 'https://www.amazon.jp/dp/B092HYH5CG/?tag=46490EC-22', 585, 'false', 'false', 'false', 'true', 'ZAZ HDMI ケーブル 1.5m ブラック HDMIタイプA(オス)- HDMIタイプA(オス) hdmi1.4規格 1080P 対応 テレビ ハードディスク録画機 PS3 PS4 switch HDTV cable-063', 'https://m.media-amazon.com/images/I/81wfuzymG3L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'ZAZ HDMI ケーブル 1.5m ブラック HDMIタイプA(オス)- HDMIタイプA(オス) hdmi1.4規格 1080P 対応 テレビ ハードディスク録画機 PS3 PS4 switch HDTV cable-063', '398', '338', 100, '1', 'ZAZ HDMI ケーブル 1.5m ブラック HDMIタイプA(オス)- HDMIタイプA(オス) hdmi1.4規格 1080P 対応 テレビ ハードディスク録画機 PS3 PS4 switch HDTV cable-063', 'ZAZ HDMI ケーブル 1.5m ブラック HDMIタイプA(オス)- HDMIタイプA(オス) hdmi1.4規格 1080P 対応 テレビ ハードディスク録画機 PS3 PS4 switch HDTV cable-063', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 14, 75, 'B003F77R2O', 'true', 629, 'JPY', 693, 64, 9, 8348, 5, 'https://www.amazon.jp/dp/B003F77R2O/?tag=46490EC-22', 41740, 'false', 'false', 'false', 'true', 'スポンサー広告 - ホーリック プレミアムハイスピードHDMIケーブル テレビ用 1.5m 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM15-891GD', 'https://m.media-amazon.com/images/I/51ciGdfB6wL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - ホーリック プレミアムハイスピードHDMIケーブル テレビ用 1.5m 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM15-891GD', '693', '629', 100, '1', 'スポンサー広告 - ホーリック プレミアムハイスピードHDMIケーブル テレビ用 1.5m 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM15-891GD', 'スポンサー広告 - ホーリック プレミアムハイスピードHDMIケーブル テレビ用 1.5m 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM15-891GD', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 36, 44, 'B08T54GZVF', 'true', 479, 'JPY', 599, 120, 20, 3134, 5, 'https://www.amazon.jp/dp/B08T54GZVF/?tag=46490EC-22', 15670, 'false', 'false', 'false', 'true', 'Senetem HDMI ケーブル 0.3m HDMI2.0規格 スリム 薄型 ハイスピード 18Gbps 4K@60Hz/HDR/ARC/3D/イーサネット対応 テレビ,PS5/4/3,Xbox,Nintendo Switch,Apple T...', 'https://m.media-amazon.com/images/I/710L4BwjrSL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Senetem HDMI ケーブル 0.3m HDMI2.0規格 スリム 薄型 ハイスピード 18Gbps 4K@60Hz/HDR/ARC/3D/イーサネット対応 テレビ,PS5/4/3,Xbox,Nintendo Switch,Apple T...', '599', '479', 100, '1', 'Senetem HDMI ケーブル 0.3m HDMI2.0規格 スリム 薄型 ハイスピード 18Gbps 4K@60Hz/HDR/ARC/3D/イーサネット対応 テレビ,PS5/4/3,Xbox,Nintendo Switch,Apple T...', 'Senetem HDMI ケーブル 0.3m HDMI2.0規格 スリム 薄型 ハイスピード 18Gbps 4K@60Hz/HDR/ARC/3D/イーサネット対応 テレビ,PS5/4/3,Xbox,Nintendo Switch,Apple T...', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 42, 50, 'B09LYK28J4', 'true', 898, 'JPY', 999, 101, 10, 263, 5, 'https://www.amazon.jp/dp/B09LYK28J4/?tag=46490EC-22', 1315, 'false', 'false', 'false', 'true', 'スポンサー広告 - 8K HDMI ケーブル 2.1【1Mアップグレード版】MEEKI HDMI 2.1規格 8K@60Hz 4K@120Hz/144Hz 48Gbps超高速高耐久 ナイロン編み ハイスピード 7680x4320p UHD HD...', 'https://m.media-amazon.com/images/I/61YxSeJPGIL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - 8K HDMI ケーブル 2.1【1Mアップグレード版】MEEKI HDMI 2.1規格 8K@60Hz 4K@120Hz/144Hz 48Gbps超高速高耐久 ナイロン編み ハイスピード 7680x4320p UHD HD...', '999', '898', 100, '1', 'スポンサー広告 - 8K HDMI ケーブル 2.1【1Mアップグレード版】MEEKI HDMI 2.1規格 8K@60Hz 4K@120Hz/144Hz 48Gbps超高速高耐久 ナイロン編み ハイスピード 7680x4320p UHD HD...', 'スポンサー広告 - 8K HDMI ケーブル 2.1【1Mアップグレード版】MEEKI HDMI 2.1規格 8K@60Hz 4K@120Hz/144Hz 48Gbps超高速高耐久 ナイロン編み ハイスピード 7680x4320p UHD HD...', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 45, 53, 'B074JYP5DG', 'true', 799, 'JPY', 999, 200, 20, 4539, 5, 'https://www.amazon.jp/dp/B074JYP5DG/?tag=46490EC-22', 22695, 'false', 'false', 'false', 'true', 'Shuliancable高速イーサネットHDMIケーブル1080p 3Dおよびオーディオリターンチャネルをサポート1m 2m 3m 5m 10m 15m 20m 25m (2M)', 'https://m.media-amazon.com/images/I/51OTrDBRIDL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Shuliancable高速イーサネットHDMIケーブル1080p 3Dおよびオーディオリターンチャネルをサポート1m 2m 3m 5m 10m 15m 20m 25m (2M)', '999', '799', 100, '1', 'Shuliancable高速イーサネットHDMIケーブル1080p 3Dおよびオーディオリターンチャネルをサポート1m 2m 3m 5m 10m 15m 20m 25m (2M)', 'Shuliancable高速イーサネットHDMIケーブル1080p 3Dおよびオーディオリターンチャネルをサポート1m 2m 3m 5m 10m 15m 20m 25m (2M)', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 51, 59, 'B08BS29VG4', 'true', 946, 'JPY', 1049, 103, 10, 4429, 5, 'https://www.amazon.jp/dp/B08BS29VG4/?tag=46490EC-22', 22145, 'false', 'false', 'false', 'true', 'Amazonベーシック HDMIケーブル タイプAオス - タイプAオス 高速 48Gbps 8K/60Hz ブラック 1.8m', 'https://m.media-amazon.com/images/I/61VLH8-6A3L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Amazonベーシック HDMIケーブル タイプAオス - タイプAオス 高速 48Gbps 8K/60Hz ブラック 1.8m', '1049', '946', 100, '1', 'Amazonベーシック HDMIケーブル タイプAオス - タイプAオス 高速 48Gbps 8K/60Hz ブラック 1.8m', 'Amazonベーシック HDMIケーブル タイプAオス - タイプAオス 高速 48Gbps 8K/60Hz ブラック 1.8m', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 21, 135, 'B0BXPDCF4V', 'true', 849, 'JPY', 999, 150, 15, 32, 5, 'https://www.amazon.jp/dp/B0BXPDCF4V/?tag=46490EC-22', 160, 'false', 'false', 'false', 'true', 'スポンサー広告 - SHULIANCABLE HDMI VGA 変換ケーブル, 1080p@60Hz HDMI オス to VGA オス ラップトップ, PC, モニター, プロジェクター, HDTV, Xboxなどに対応 (1M)', 'https://m.media-amazon.com/images/I/61rgzSQKRpL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - SHULIANCABLE HDMI VGA 変換ケーブル, 1080p@60Hz HDMI オス to VGA オス ラップトップ, PC, モニター, プロジェクター, HDTV, Xboxなどに対応 (1M)', '999', '849', 100, '1', 'スポンサー広告 - SHULIANCABLE HDMI VGA 変換ケーブル, 1080p@60Hz HDMI オス to VGA オス ラップトップ, PC, モニター, プロジェクター, HDTV, Xboxなどに対応 (1M)', 'スポンサー広告 - SHULIANCABLE HDMI VGA 変換ケーブル, 1080p@60Hz HDMI オス to VGA オス ラップトップ, PC, モニター, プロジェクター, HDTV, Xboxなどに対応 (1M)', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 11, 72, 'B0B63GR7PN', 'true', 1104, 'JPY', 1299, 195, 15, 498, 5, 'https://www.amazon.jp/dp/B0B63GR7PN/?tag=46490EC-22', 2490, 'false', 'false', 'false', 'true', 'スポンサー広告 - Thsucords 薄型HDMI-HDMIケーブル 2M 2本入り. 柔らか &ウルトラスリム フレキシブル HDMI高速 4K@60Hz 18gbps 2160p 1080p', 'https://m.media-amazon.com/images/I/61or2Lu-g4L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Thsucords 薄型HDMI-HDMIケーブル 2M 2本入り. 柔らか &ウルトラスリム フレキシブル HDMI高速 4K@60Hz 18gbps 2160p 1080p', '1299', '1104', 100, '1', 'スポンサー広告 - Thsucords 薄型HDMI-HDMIケーブル 2M 2本入り. 柔らか &ウルトラスリム フレキシブル HDMI高速 4K@60Hz 18gbps 2160p 1080p', 'スポンサー広告 - Thsucords 薄型HDMI-HDMIケーブル 2M 2本入り. 柔らか &ウルトラスリム フレキシブル HDMI高速 4K@60Hz 18gbps 2160p 1080p', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 13, 74, 'B098DWXVX4', 'true', 999, 'JPY', 1419, 420, 30, 2266, 5, 'https://www.amazon.jp/dp/B098DWXVX4/?tag=46490EC-22', 11330, 'false', 'false', 'false', 'true', 'スポンサー広告 - エレコム HDMIケーブル 2m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP20SBK', 'https://m.media-amazon.com/images/I/71bjLVCQu0S._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - エレコム HDMIケーブル 2m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP20SBK', '1419', '999', 100, '1', 'スポンサー広告 - エレコム HDMIケーブル 2m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP20SBK', 'スポンサー広告 - エレコム HDMIケーブル 2m プレミアム 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック ECDH-HDP20SBK', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 19, 80, 'B09MHN4M86', 'true', 11470, 'JPY', 12710, 1240, 10, 20, 5, 'https://www.amazon.jp/dp/B09MHN4M86/?tag=46490EC-22', 100, 'false', 'false', 'false', 'true', 'スポンサー広告 - ホーリック 光ファイバー HDMIケーブル 5m 48Gbps 4K/120p 8K/60p HDR ブラック HDM50-624BK', 'https://m.media-amazon.com/images/I/51u6uecQ9xL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - ホーリック 光ファイバー HDMIケーブル 5m 48Gbps 4K/120p 8K/60p HDR ブラック HDM50-624BK', '12710', '11470', 100, '1', 'スポンサー広告 - ホーリック 光ファイバー HDMIケーブル 5m 48Gbps 4K/120p 8K/60p HDR ブラック HDM50-624BK', 'スポンサー広告 - ホーリック 光ファイバー HDMIケーブル 5m 48Gbps 4K/120p 8K/60p HDR ブラック HDM50-624BK', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 20, 81, 'B09L7RSBNB', 'true', 20306, 'JPY', 22858, 2552, 11, 4, 5, 'https://www.amazon.jp/dp/B09L7RSBNB/?tag=46490EC-22', 20, 'false', 'false', 'false', 'true', 'スポンサー広告 - ホーリック 光ファイバー 8K Premium ウルトラハイスピードHDMIケーブル 30m 48Gbps 4K/120p 8K/60p HDR メッシュタイプ グレー HH300-620GY', 'https://m.media-amazon.com/images/I/51hMjZiUvML._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - ホーリック 光ファイバー 8K Premium ウルトラハイスピードHDMIケーブル 30m 48Gbps 4K/120p 8K/60p HDR メッシュタイプ グレー HH300-620GY', '22858', '20306', 100, '1', 'スポンサー広告 - ホーリック 光ファイバー 8K Premium ウルトラハイスピードHDMIケーブル 30m 48Gbps 4K/120p 8K/60p HDR メッシュタイプ グレー HH300-620GY', 'スポンサー広告 - ホーリック 光ファイバー 8K Premium ウルトラハイスピードHDMIケーブル 30m 48Gbps 4K/120p 8K/60p HDR メッシュタイプ グレー HH300-620GY', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 29, 90, 'B08L5V6432', 'true', 1200, 'JPY', 1320, 120, 9, 57, 5, 'https://www.amazon.jp/dp/B08L5V6432/?tag=46490EC-22', 285, 'false', 'false', 'false', 'true', 'ホーリック プレミアムハイスピードHDMIケーブル 4m メッシュケーブル 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM40-523GB', 'https://m.media-amazon.com/images/I/61hEHR104LL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'ホーリック プレミアムハイスピードHDMIケーブル 4m メッシュケーブル 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM40-523GB', '1320', '1200', 100, '1', 'ホーリック プレミアムハイスピードHDMIケーブル 4m メッシュケーブル 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM40-523GB', 'ホーリック プレミアムハイスピードHDMIケーブル 4m メッシュケーブル 18Gbps 4K/60p HDR HDMI 2.0規格 ゴールド HDM40-523GB', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 30, 91, 'B09L4XN5CT', 'true', 1443, 'JPY', 1699, 256, 15, 227, 5, 'https://www.amazon.jp/dp/B09L4XN5CT/?tag=46490EC-22', 1135, 'false', 'false', 'false', 'true', 'UGREEN 8K HDMIケーブル2m 極細 HDMI 2.1ケーブル 48Gbps 8K@60Hz 4K@120Hz スーパースリム 超高速 DynamicHDR HDCP eARC 3Dイーサネット ARC対応 PS5/PS4 Xbox ...', 'https://m.media-amazon.com/images/I/6163ne-TnsL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'UGREEN 8K HDMIケーブル2m 極細 HDMI 2.1ケーブル 48Gbps 8K@60Hz 4K@120Hz スーパースリム 超高速 DynamicHDR HDCP eARC 3Dイーサネット ARC対応 PS5/PS4 Xbox ...', '1699', '1443', 100, '1', 'UGREEN 8K HDMIケーブル2m 極細 HDMI 2.1ケーブル 48Gbps 8K@60Hz 4K@120Hz スーパースリム 超高速 DynamicHDR HDCP eARC 3Dイーサネット ARC対応 PS5/PS4 Xbox ...', 'UGREEN 8K HDMIケーブル2m 極細 HDMI 2.1ケーブル 48Gbps 8K@60Hz 4K@120Hz スーパースリム 超高速 DynamicHDR HDCP eARC 3Dイーサネット ARC対応 PS5/PS4 Xbox ...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 31, 92, 'B0C2CDQB1R', 'true', 680, 'JPY', 780, 100, 13, 26, 5, 'https://www.amazon.jp/dp/B0C2CDQB1R/?tag=46490EC-22', 130, 'false', 'false', 'false', 'true', 'HDMI ケーブル 8k hdmi 2.1 48Gbps 超高速 8K/60Hz 4K/120Hz hdmi cable ウルトラハイスピード PS5/PS4用 イーサネット QMS ALLM Xbox Series X/S UHD HDR H...', 'https://m.media-amazon.com/images/I/61lPzsVQFsL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'HDMI ケーブル 8k hdmi 2.1 48Gbps 超高速 8K/60Hz 4K/120Hz hdmi cable ウルトラハイスピード PS5/PS4用 イーサネット QMS ALLM Xbox Series X/S UHD HDR H...', '780', '680', 100, '1', 'HDMI ケーブル 8k hdmi 2.1 48Gbps 超高速 8K/60Hz 4K/120Hz hdmi cable ウルトラハイスピード PS5/PS4用 イーサネット QMS ALLM Xbox Series X/S UHD HDR H...', 'HDMI ケーブル 8k hdmi 2.1 48Gbps 超高速 8K/60Hz 4K/120Hz hdmi cable ウルトラハイスピード PS5/PS4用 イーサネット QMS ALLM Xbox Series X/S UHD HDR H...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 34, 95, 'B0BQ6WF16Q', 'true', 749, 'JPY', 899, 150, 17, 54, 5, 'https://www.amazon.jp/dp/B0BQ6WF16Q/?tag=46490EC-22', 270, 'false', 'false', 'false', 'true', 'FDBRO 4K HDMI ケーブル UltraHD 18Gbps hdmiオス-hdmiオス 4K@60Hz 2K@144Hz HDR ARC 3D HDCP 2.2 HDMI 2.0 ケーブル, HDTV、PS4/PS5、Xbox、ビデオプ...', 'https://m.media-amazon.com/images/I/71-3Av3ObyL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'FDBRO 4K HDMI ケーブル UltraHD 18Gbps hdmiオス-hdmiオス 4K@60Hz 2K@144Hz HDR ARC 3D HDCP 2.2 HDMI 2.0 ケーブル, HDTV、PS4/PS5、Xbox、ビデオプ...', '899', '749', 100, '1', 'FDBRO 4K HDMI ケーブル UltraHD 18Gbps hdmiオス-hdmiオス 4K@60Hz 2K@144Hz HDR ARC 3D HDCP 2.2 HDMI 2.0 ケーブル, HDTV、PS4/PS5、Xbox、ビデオプ...', 'FDBRO 4K HDMI ケーブル UltraHD 18Gbps hdmiオス-hdmiオス 4K@60Hz 2K@144Hz HDR ARC 3D HDCP 2.2 HDMI 2.0 ケーブル, HDTV、PS4/PS5、Xbox、ビデオプ...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 37, 98, 'B08T1HJ3ZB', 'true', 599, 'JPY', 699, 100, 14, 2016, 5, 'https://www.amazon.jp/dp/B08T1HJ3ZB/?tag=46490EC-22', 10080, 'false', 'false', 'false', 'true', 'Twozoh Micro HDMI to HDMI ケーブル 1M (HDMI マイクロタイプDオス - HDMI タイプAオス) 3D 4K 1080P @60Hz ハイスピード マイクロHDMI HDMI ケーブル GoPro/デジカメ/ア...', 'https://m.media-amazon.com/images/I/714X1CPGDnL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Twozoh Micro HDMI to HDMI ケーブル 1M (HDMI マイクロタイプDオス - HDMI タイプAオス) 3D 4K 1080P @60Hz ハイスピード マイクロHDMI HDMI ケーブル GoPro/デジカメ/ア...', '699', '599', 100, '1', 'Twozoh Micro HDMI to HDMI ケーブル 1M (HDMI マイクロタイプDオス - HDMI タイプAオス) 3D 4K 1080P @60Hz ハイスピード マイクロHDMI HDMI ケーブル GoPro/デジカメ/ア...', 'Twozoh Micro HDMI to HDMI ケーブル 1M (HDMI マイクロタイプDオス - HDMI タイプAオス) 3D 4K 1080P @60Hz ハイスピード マイクロHDMI HDMI ケーブル GoPro/デジカメ/ア...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 38, 99, 'B08V8P6F5L', 'true', 1799, 'JPY', 2500, 701, 28, 2746, 5, 'https://www.amazon.jp/dp/B08V8P6F5L/?tag=46490EC-22', 13730, 'false', 'false', 'false', 'true', 'Idoove HDMIケーブル phone hdmi変換ケーブル2m Digital AV変換アダプタ Phone/タブレットをテレビ出力 ライトニング HDMI接続ケーブル OS11、12、13、14 YouTube TV出力 電源不要 グレ...', 'https://m.media-amazon.com/images/I/61BkC7P7nVL._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, 'Idoove HDMIケーブル phone hdmi変換ケーブル2m Digital AV変換アダプタ Phone/タブレットをテレビ出力 ライトニング HDMI接続ケーブル OS11、12、13、14 YouTube TV出力 電源不要 グレ...', '2500', '1799', 100, '1', 'Idoove HDMIケーブル phone hdmi変換ケーブル2m Digital AV変換アダプタ Phone/タブレットをテレビ出力 ライトニング HDMI接続ケーブル OS11、12、13、14 YouTube TV出力 電源不要 グレ...', 'Idoove HDMIケーブル phone hdmi変換ケーブル2m Digital AV変換アダプタ Phone/タブレットをテレビ出力 ライトニング HDMI接続ケーブル OS11、12、13、14 YouTube TV出力 電源不要 グレ...', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 42, 103, 'B007X90Y7K', 'true', 1773, 'JPY', 2055, 282, 14, 1062, 5, 'https://www.amazon.jp/dp/B007X90Y7K/?tag=46490EC-22', 5310, 'false', 'false', 'false', 'true', '【テレビ/モニターとすっきり配線】ソニー HDMIケーブル DLC-HJ15 : 1.5m スタンダード ブラック DLC-HJ15 B', 'https://m.media-amazon.com/images/I/511pjANru+L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, '【テレビ/モニターとすっきり配線】ソニー HDMIケーブル DLC-HJ15 : 1.5m スタンダード ブラック DLC-HJ15 B', '2055', '1773', 100, '1', '【テレビ/モニターとすっきり配線】ソニー HDMIケーブル DLC-HJ15 : 1.5m スタンダード ブラック DLC-HJ15 B', '【テレビ/モニターとすっきり配線】ソニー HDMIケーブル DLC-HJ15 : 1.5m スタンダード ブラック DLC-HJ15 B', '1', '1', 'xxx', 20000, 1, 1, 6),
(2, 44, 105, 'B01FWDP01S', 'true', 398, 'JPY', 448, 50, 11, 62, 5, 'https://www.amazon.jp/dp/B01FWDP01S/?tag=46490EC-22', 310, 'false', 'false', 'false', 'false', '【カモン(COMON)製】Ver2.0 4K2K FullHD/ARC/HEC対応HDMIケーブル/金メッキ/0.5m【2HDMI-05】 商品名', 'https://m.media-amazon.com/images/I/612nCrDC71L._AC_UL400_.jpg', '2023-06-12 11:15:49', 0, '【カモン(COMON)製】Ver2.0 4K2K FullHD/ARC/HEC対応HDMIケーブル/金メッキ/0.5m【2HDMI-05】 商品名', '448', '398', 100, '1', '【カモン(COMON)製】Ver2.0 4K2K FullHD/ARC/HEC対応HDMIケーブル/金メッキ/0.5m【2HDMI-05】 商品名', '【カモン(COMON)製】Ver2.0 4K2K FullHD/ARC/HEC対応HDMIケーブル/金メッキ/0.5m【2HDMI-05】 商品名', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 57, 171, 'B07BKST8DD', 'true', 599, 'JPY', 999, 400, 40, 1049, 5, 'https://www.amazon.jp/dp/B07BKST8DD/?tag=46490EC-22', 5245, 'false', 'false', 'false', 'true', 'VCE HDMI 延長ケーブル TV Stick延長 HDMIオスメス変換 HDMI延長コネクター 4K HDMI2.0 短い スリム 14cm', 'https://m.media-amazon.com/images/I/41mfw37vVEL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'VCE HDMI 延長ケーブル TV Stick延長 HDMIオスメス変換 HDMI延長コネクター 4K HDMI2.0 短い スリム 14cm', '999', '599', 100, '1', 'VCE HDMI 延長ケーブル TV Stick延長 HDMIオスメス変換 HDMI延長コネクター 4K HDMI2.0 短い スリム 14cm', 'VCE HDMI 延長ケーブル TV Stick延長 HDMIオスメス変換 HDMI延長コネクター 4K HDMI2.0 短い スリム 14cm', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 8, 122, 'B08JLZWMM4', 'true', 350, 'JPY', 509, 159, 31, 9326, 5, 'https://www.amazon.jp/dp/B08JLZWMM4/?tag=46490EC-22', 46630, 'false', 'false', 'false', 'true', 'Batu HDMIケーブル 1080P オス-デュアルHDMIメス マルチメディアインターフェース HDMIスプリッタアダプタ 1~2ウェイ HDMI HD LED LCD TV用', 'https://m.media-amazon.com/images/I/61hI8curGhS._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Batu HDMIケーブル 1080P オス-デュアルHDMIメス マルチメディアインターフェース HDMIスプリッタアダプタ 1~2ウェイ HDMI HD LED LCD TV用', '509', '350', 100, '1', 'Batu HDMIケーブル 1080P オス-デュアルHDMIメス マルチメディアインターフェース HDMIスプリッタアダプタ 1~2ウェイ HDMI HD LED LCD TV用', 'Batu HDMIケーブル 1080P オス-デュアルHDMIメス マルチメディアインターフェース HDMIスプリッタアダプタ 1~2ウェイ HDMI HD LED LCD TV用', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 10, 124, 'B09N1F6CMH', 'true', 799, 'JPY', 899, 100, 11, 2079, 5, 'https://www.amazon.jp/dp/B09N1F6CMH/?tag=46490EC-22', 10395, 'false', 'false', 'false', 'true', 'Twozoh HDMI延長ケーブル HDMIオス-メスHDMIコード ナイロン編組HDMIエクステンダー HDMI 2.0ケーブルアダプター 4K@60Hz 3D HDR (2M) 対応', 'https://m.media-amazon.com/images/I/61k0LB4rzIL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Twozoh HDMI延長ケーブル HDMIオス-メスHDMIコード ナイロン編組HDMIエクステンダー HDMI 2.0ケーブルアダプター 4K@60Hz 3D HDR (2M) 対応', '899', '799', 100, '1', 'Twozoh HDMI延長ケーブル HDMIオス-メスHDMIコード ナイロン編組HDMIエクステンダー HDMI 2.0ケーブルアダプター 4K@60Hz 3D HDR (2M) 対応', 'Twozoh HDMI延長ケーブル HDMIオス-メスHDMIコード ナイロン編組HDMIエクステンダー HDMI 2.0ケーブルアダプター 4K@60Hz 3D HDR (2M) 対応', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 12, 126, 'B0B63C8QMM', 'true', 1274, 'JPY', 1499, 225, 15, 498, 5, 'https://www.amazon.jp/dp/B0B63C8QMM/?tag=46490EC-22', 2490, 'false', 'false', 'false', 'true', 'スポンサー広告 - Thsucords スリムHDMIケーブル 5M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', 'https://m.media-amazon.com/images/I/61UvE3Bj+VL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - Thsucords スリムHDMIケーブル 5M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', '1499', '1274', 100, '1', 'スポンサー広告 - Thsucords スリムHDMIケーブル 5M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', 'スポンサー広告 - Thsucords スリムHDMIケーブル 5M. 薄型HDMIからHDMIコード 超柔軟&細線 HDMIワイヤー 高速 4K@60Hz 18gbps 2160p 1080p', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 14, 128, 'B0B5TF2VT6', 'true', 1299, 'JPY', 1399, 100, 7, 2266, 5, 'https://www.amazon.jp/dp/B0B5TF2VT6/?tag=46490EC-22', 11330, 'false', 'false', 'false', 'true', 'スポンサー広告 - エレコム HDMIケーブル 2m スリム プレミアムハイスピード 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック DH-HDP14ES20SBK', 'https://m.media-amazon.com/images/I/61cn39yU4OL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'スポンサー広告 - エレコム HDMIケーブル 2m スリム プレミアムハイスピード 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック DH-HDP14ES20SBK', '1399', '1299', 100, '1', 'スポンサー広告 - エレコム HDMIケーブル 2m スリム プレミアムハイスピード 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック DH-HDP14ES20SBK', 'スポンサー広告 - エレコム HDMIケーブル 2m スリム プレミアムハイスピード 4K 2K (60P)対応 ナイロンメッシュケーブル アルミコネクタ ブラック DH-HDP14ES20SBK', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 18, 132, 'B08F5GBJKG', 'true', 799, 'JPY', 999, 200, 20, 422, 5, 'https://www.amazon.jp/dp/B08F5GBJKG/?tag=46490EC-22', 2110, 'false', 'false', 'false', 'true', 'SHULIANCABLE HDMI ケーブル, HDMI CABLE 4K 60Hz ハイスピード Ver2.0 18Gbps HDR ARC 3D イーサネット ARC Xbox PS3 PS4 PC対応 (2M)', 'https://m.media-amazon.com/images/I/61vUiayTgLL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'SHULIANCABLE HDMI ケーブル, HDMI CABLE 4K 60Hz ハイスピード Ver2.0 18Gbps HDR ARC 3D イーサネット ARC Xbox PS3 PS4 PC対応 (2M)', '999', '799', 100, '1', 'SHULIANCABLE HDMI ケーブル, HDMI CABLE 4K 60Hz ハイスピード Ver2.0 18Gbps HDR ARC 3D イーサネット ARC Xbox PS3 PS4 PC対応 (2M)', 'SHULIANCABLE HDMI ケーブル, HDMI CABLE 4K 60Hz ハイスピード Ver2.0 18Gbps HDR ARC 3D イーサネット ARC Xbox PS3 PS4 PC対応 (2M)', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 47, 161, 'B0BN1SRD12', 'true', 1659, 'JPY', 2199, 540, 25, 34, 5, 'https://www.amazon.jp/dp/B0BN1SRD12/?tag=46490EC-22', 170, 'false', 'false', 'false', 'true', 'Impeto HDMI 2.1ケーブル 2M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'https://m.media-amazon.com/images/I/719xy+JpjgL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Impeto HDMI 2.1ケーブル 2M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '2199', '1659', 100, '1', 'Impeto HDMI 2.1ケーブル 2M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', 'Impeto HDMI 2.1ケーブル 2M 48Gbps超高速伝送 8K/4K/3D/HD対応 8K HDMIケーブル PS5,TV,PC,AVR,プロジェクター など適用', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 49, 163, 'B08D9CZD7Y', 'true', 799, 'JPY', 999, 200, 20, 1335, 5, 'https://www.amazon.jp/dp/B08D9CZD7Y/?tag=46490EC-22', 6675, 'false', 'false', 'false', 'true', 'ANNNWZZD Micro HDMI to HDMI変換アダプタ マイクロ HDMIオス-HDMI メス 延長ケーブル', 'https://m.media-amazon.com/images/I/61ORAQWDfGL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'ANNNWZZD Micro HDMI to HDMI変換アダプタ マイクロ HDMIオス-HDMI メス 延長ケーブル', '999', '799', 100, '1', 'ANNNWZZD Micro HDMI to HDMI変換アダプタ マイクロ HDMIオス-HDMI メス 延長ケーブル', 'ANNNWZZD Micro HDMI to HDMI変換アダプタ マイクロ HDMIオス-HDMI メス 延長ケーブル', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 50, 164, 'B0BTS3WPVG', 'true', 1799, 'JPY', 2599, 800, 31, 197, 5, 'https://www.amazon.jp/dp/B0BTS3WPVG/?tag=46490EC-22', 985, 'false', 'false', 'false', 'true', '【2023 iphone hdmi変換ケーブル 】 iphone hdmi iphone hdmi iphone hdmi iphone hdmi 変換ケーブル iphone hdmi変換ケーブル iphone hdmi変換ケーブル iphon...', 'https://m.media-amazon.com/images/I/21PMwGWZv5L._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, '【2023 iphone hdmi変換ケーブル 】 iphone hdmi iphone hdmi iphone hdmi iphone hdmi 変換ケーブル iphone hdmi変換ケーブル iphone hdmi変換ケーブル iphon...', '2599', '1799', 100, '1', '【2023 iphone hdmi変換ケーブル 】 iphone hdmi iphone hdmi iphone hdmi iphone hdmi 変換ケーブル iphone hdmi変換ケーブル iphone hdmi変換ケーブル iphon...', '【2023 iphone hdmi変換ケーブル 】 iphone hdmi iphone hdmi iphone hdmi iphone hdmi 変換ケーブル iphone hdmi変換ケーブル iphone hdmi変換ケーブル iphon...', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 52, 166, 'B079M9VBNW', 'true', 909, 'JPY', 998, 89, 9, 1801, 5, 'https://www.amazon.jp/dp/B079M9VBNW/?tag=46490EC-22', 9005, 'false', 'false', 'false', 'true', 'ホーリック HDMI延長ケーブル 3m ゴールド HDFM30-120GD', 'https://m.media-amazon.com/images/I/61PxvfaHAcL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'ホーリック HDMI延長ケーブル 3m ゴールド HDFM30-120GD', '998', '909', 100, '1', 'ホーリック HDMI延長ケーブル 3m ゴールド HDFM30-120GD', 'ホーリック HDMI延長ケーブル 3m ゴールド HDFM30-120GD', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 53, 167, 'B091YG51TY', 'true', 520, 'JPY', 650, 130, 20, 458, 5, 'https://www.amazon.jp/dp/B091YG51TY/?tag=46490EC-22', 2290, 'false', 'false', 'false', 'true', 'Senetem HDMI 延長 ケーブル 0.15m スリム 薄型 細線 HDMI2.0 (HDMI オス-メス)ハイスピード，TV Stick、HDTV、PC、PS4/PS3など対応 短い (0.15m)', 'https://m.media-amazon.com/images/I/610UtxBD-BS._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Senetem HDMI 延長 ケーブル 0.15m スリム 薄型 細線 HDMI2.0 (HDMI オス-メス)ハイスピード，TV Stick、HDTV、PC、PS4/PS3など対応 短い (0.15m)', '650', '520', 100, '1', 'Senetem HDMI 延長 ケーブル 0.15m スリム 薄型 細線 HDMI2.0 (HDMI オス-メス)ハイスピード，TV Stick、HDTV、PC、PS4/PS3など対応 短い (0.15m)', 'Senetem HDMI 延長 ケーブル 0.15m スリム 薄型 細線 HDMI2.0 (HDMI オス-メス)ハイスピード，TV Stick、HDTV、PC、PS4/PS3など対応 短い (0.15m)', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 56, 170, 'B08PNW4W3V', 'true', 594, 'JPY', 699, 105, 15, 392, 5, 'https://www.amazon.jp/dp/B08PNW4W3V/?tag=46490EC-22', 1960, 'false', 'false', 'false', 'true', 'Micro HDMI to HDMI変換アダプタ Twozoh Micro HDMI変換ケーブル Type D(オス)-Type A(メス) 延長ケーブル- 3D/4K 1080P Gopro Hero 7 6 5 4, Lenovo Yoga...', 'https://m.media-amazon.com/images/I/61nlq8UmhZL._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Micro HDMI to HDMI変換アダプタ Twozoh Micro HDMI変換ケーブル Type D(オス)-Type A(メス) 延長ケーブル- 3D/4K 1080P Gopro Hero 7 6 5 4, Lenovo Yoga...', '699', '594', 100, '1', 'Micro HDMI to HDMI変換アダプタ Twozoh Micro HDMI変換ケーブル Type D(オス)-Type A(メス) 延長ケーブル- 3D/4K 1080P Gopro Hero 7 6 5 4, Lenovo Yoga...', 'Micro HDMI to HDMI変換アダプタ Twozoh Micro HDMI変換ケーブル Type D(オス)-Type A(メス) 延長ケーブル- 3D/4K 1080P Gopro Hero 7 6 5 4, Lenovo Yoga...', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 59, 173, 'B08Q7QGW52', 'true', 699, 'JPY', 899, 200, 22, 810, 5, 'https://www.amazon.jp/dp/B08Q7QGW52/?tag=46490EC-22', 4050, 'false', 'false', 'false', 'true', 'Twozoh Mini HDMI to HDMI変換アダプタ Mini HDMI(オス)-HDMI(メス)変換ケーブル延長ケーブル HDMI ケーブル タイプc (HDMIミニ) 3D/4K 2160P,1080P- 20CM', 'https://m.media-amazon.com/images/I/61vHfXrC87L._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'Twozoh Mini HDMI to HDMI変換アダプタ Mini HDMI(オス)-HDMI(メス)変換ケーブル延長ケーブル HDMI ケーブル タイプc (HDMIミニ) 3D/4K 2160P,1080P- 20CM', '899', '699', 100, '1', 'Twozoh Mini HDMI to HDMI変換アダプタ Mini HDMI(オス)-HDMI(メス)変換ケーブル延長ケーブル HDMI ケーブル タイプc (HDMIミニ) 3D/4K 2160P,1080P- 20CM', 'Twozoh Mini HDMI to HDMI変換アダプタ Mini HDMI(オス)-HDMI(メス)変換ケーブル延長ケーブル HDMI ケーブル タイプc (HDMIミニ) 3D/4K 2160P,1080P- 20CM', '1', '1', 'xxx', 20000, 1, 1, 6),
(3, 60, 174, 'B07Y825VFH', 'true', 1699, 'JPY', 1899, 200, 11, 3837, 5, 'https://www.amazon.jp/dp/B07Y825VFH/?tag=46490EC-22', 19185, 'false', 'false', 'false', 'true', 'UGREEN hdmi 2.1 hdmiケーブル 2m 8K hdmi 8K/60Hz 4K/120Hz Ultra High Speed 48Gbps 超高速 PS5 PS4対応 Xbox Series X/S UHD HDR HDCP eA...', 'https://m.media-amazon.com/images/I/617F4tEXW4L._AC_UL320_.jpg', '2023-06-12 11:15:49', 0, 'UGREEN hdmi 2.1 hdmiケーブル 2m 8K hdmi 8K/60Hz 4K/120Hz Ultra High Speed 48Gbps 超高速 PS5 PS4対応 Xbox Series X/S UHD HDR HDCP eA...', '1899', '1699', 100, '1', 'UGREEN hdmi 2.1 hdmiケーブル 2m 8K hdmi 8K/60Hz 4K/120Hz Ultra High Speed 48Gbps 超高速 PS5 PS4対応 Xbox Series X/S UHD HDR HDCP eA...', 'UGREEN hdmi 2.1 hdmiケーブル 2m 8K hdmi 8K/60Hz 4K/120Hz Ultra High Speed 48Gbps 超高速 PS5 PS4対応 Xbox Series X/S UHD HDR HDCP eA...', '1', '1', 'xxx', 20000, 1, 1, 6),
(1, 5, 5, 'B08KZBXK53', 'true', 3580, 'JPY', 3980, 400, 10, 112, 5, 'https://www.amazon.jp/dp/B08KZBXK53/?tag=46490EC-22', 560, 'false', 'false', 'false', 'true', '[ナイキ] ビクトリ ワン スライド メンズ サンダル シューズ Victori One Slide CN9675-002 [並行輸入品]', 'https://m.media-amazon.com/images/I/61ziRpexSbL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] ビクトリ ワン スライド メンズ サンダル シューズ Victori One Slide CN9675-002 [並行輸入品]', '3980', '3580', 100, '1', '[ナイキ] ビクトリ ワン スライド メンズ サンダル シューズ Victori One Slide CN9675-002 [並行輸入品]', '[ナイキ] ビクトリ ワン スライド メンズ サンダル シューズ Victori One Slide CN9675-002 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 7, 23, 'B083M4ZN34', 'true', 5500, 'JPY', 5980, 480, 8, 15, 5, 'https://www.amazon.jp/dp/B083M4ZN34/?tag=46490EC-22', 75, 'false', 'false', 'false', 'true', 'Cosplay Sex Machine【DVD】 [並行輸入品]', 'https://m.media-amazon.com/images/I/41sKtraYO+L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'Cosplay Sex Machine【DVD】 [並行輸入品]', '5980', '5500', 100, '1', 'Cosplay Sex Machine【DVD】 [並行輸入品]', 'Cosplay Sex Machine【DVD】 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 8, 24, 'B0BHVS1CQP', 'true', 13300, 'JPY', 15400, 2100, 14, 3, 5, 'https://www.amazon.jp/dp/B0BHVS1CQP/?tag=46490EC-22', 15, 'false', 'false', 'false', 'false', '[ナイキ] ゴー フライイース レディース カジュアル シューズ Go Flyease DR5540-102 [並行輸入品]', 'https://m.media-amazon.com/images/I/61kcQmNEWzL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] ゴー フライイース レディース カジュアル シューズ Go Flyease DR5540-102 [並行輸入品]', '15400', '13300', 100, '1', '[ナイキ] ゴー フライイース レディース カジュアル シューズ Go Flyease DR5540-102 [並行輸入品]', '[ナイキ] ゴー フライイース レディース カジュアル シューズ Go Flyease DR5540-102 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 15, 38, 'B003LRCAIO', 'true', 17881, 'JPY', 24000, 6119, 26, 553, 5, 'https://www.amazon.jp/dp/B003LRCAIO/?tag=46490EC-22', 2765, 'false', 'false', 'false', 'true', '[マリメッコ] リュック BUDDY [並行輸入品]', 'https://m.media-amazon.com/images/I/9132eyx90LL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[マリメッコ] リュック BUDDY [並行輸入品]', '24000', '17881', 100, '1', '[マリメッコ] リュック BUDDY [並行輸入品]', '[マリメッコ] リュック BUDDY [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 18, 41, 'B0967ZSXDF', 'true', 3436, 'JPY', 3980, 544, 14, 52, 5, 'https://www.amazon.jp/dp/B0967ZSXDF/?tag=46490EC-22', 260, 'false', 'false', 'false', 'true', '[ナイキ] メンズ Tシャツ ビッグロゴ スウォッシュ スポーツ ウェア トップス インナー [並行輸入品]', 'https://m.media-amazon.com/images/I/41XeKT6g52S._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] メンズ Tシャツ ビッグロゴ スウォッシュ スポーツ ウェア トップス インナー [並行輸入品]', '3980', '3436', 100, '1', '[ナイキ] メンズ Tシャツ ビッグロゴ スウォッシュ スポーツ ウェア トップス インナー [並行輸入品]', '[ナイキ] メンズ Tシャツ ビッグロゴ スウォッシュ スポーツ ウェア トップス インナー [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 15, 90, 'B002QAUOKS', 'true', 26631, 'JPY', 30680, 4049, 13, 2327, 5, 'https://www.amazon.jp/dp/B002QAUOKS/?tag=46490EC-22', 11635, 'false', 'false', 'false', 'true', 'RODE 【マイク機材フルセット！！】Rode NT1A Anniversary Vocal Condenser Microphone Package　■並行輸入品■', 'https://m.media-amazon.com/images/I/71lpdSccCPL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'RODE 【マイク機材フルセット！！】Rode NT1A Anniversary Vocal Condenser Microphone Package　■並行輸入品■', '30680', '26631', 100, '1', 'RODE 【マイク機材フルセット！！】Rode NT1A Anniversary Vocal Condenser Microphone Package　■並行輸入品■', 'RODE 【マイク機材フルセット！！】Rode NT1A Anniversary Vocal Condenser Microphone Package　■並行輸入品■', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 32, 55, 'B07D7TBBH9', 'true', 323, 'JPY', 349, 26, 7, 80, 5, 'https://www.amazon.jp/dp/B07D7TBBH9/?tag=46490EC-22', 400, 'false', 'false', 'false', 'true', 'Grunge Oval Shades 【White/Smoke】 Kurt model/グランジ オーバル サングラス [並行輸入品]', 'https://m.media-amazon.com/images/I/41IvhYQ8PqL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'Grunge Oval Shades 【White/Smoke】 Kurt model/グランジ オーバル サングラス [並行輸入品]', '349', '323', 100, '1', 'Grunge Oval Shades 【White/Smoke】 Kurt model/グランジ オーバル サングラス [並行輸入品]', 'Grunge Oval Shades 【White/Smoke】 Kurt model/グランジ オーバル サングラス [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 36, 59, 'B001724I30', 'true', 3798, 'JPY', 4514, 716, 16, 168, 5, 'https://www.amazon.jp/dp/B001724I30/?tag=46490EC-22', 840, 'false', 'false', 'false', 'false', '【アザロ】クローム EDT・SP 30ml (並行輸入品)', 'https://m.media-amazon.com/images/I/41ADryF4-AL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '【アザロ】クローム EDT・SP 30ml (並行輸入品)', '4514', '3798', 100, '1', '【アザロ】クローム EDT・SP 30ml (並行輸入品)', '【アザロ】クローム EDT・SP 30ml (並行輸入品)', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 52, 75, 'B004IZ4LR6', 'true', 4500, 'JPY', 4900, 400, 8, 4621, 5, 'https://www.amazon.jp/dp/B004IZ4LR6/?tag=46490EC-22', 23105, 'false', 'false', 'false', 'true', '[カシオimport] レディース 大人 腕時計 STR300-1C 並行輸入品 ブラック&パープル', 'https://m.media-amazon.com/images/I/51MIntebg8L._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[カシオimport] レディース 大人 腕時計 STR300-1C 並行輸入品 ブラック&パープル', '4900', '4500', 100, '1', '[カシオimport] レディース 大人 腕時計 STR300-1C 並行輸入品 ブラック&パープル', '[カシオimport] レディース 大人 腕時計 STR300-1C 並行輸入品 ブラック&パープル', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 16, 91, 'B00W6QV25I', 'true', 1720, 'JPY', 4605, 2885, 63, 421, 5, 'https://www.amazon.jp/dp/B00W6QV25I/?tag=46490EC-22', 2105, 'false', 'false', 'false', 'false', '[カシオimport] 腕時計 アナログ LQ-142E-9A 並行輸入品 ブラック [並行輸入品]', 'https://m.media-amazon.com/images/I/31ktVl+jYGL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[カシオimport] 腕時計 アナログ LQ-142E-9A 並行輸入品 ブラック [並行輸入品]', '4605', '1720', 100, '1', '[カシオimport] 腕時計 アナログ LQ-142E-9A 並行輸入品 ブラック [並行輸入品]', '[カシオimport] 腕時計 アナログ LQ-142E-9A 並行輸入品 ブラック [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 25, 100, 'B0BHS44313', 'true', 770, 'JPY', 830, 60, 7, 4, 5, 'https://www.amazon.jp/dp/B0BHS44313/?tag=46490EC-22', 20, 'false', 'false', 'false', 'false', 'クロムハーツ クロムハーツ ブレスレット ブレスレット メンズ アクセサリー シルバー 並行輸入品18CM', 'https://m.media-amazon.com/images/I/71+yL36Bi+L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'クロムハーツ クロムハーツ ブレスレット ブレスレット メンズ アクセサリー シルバー 並行輸入品18CM', '830', '770', 100, '1', 'クロムハーツ クロムハーツ ブレスレット ブレスレット メンズ アクセサリー シルバー 並行輸入品18CM', 'クロムハーツ クロムハーツ ブレスレット ブレスレット メンズ アクセサリー シルバー 並行輸入品18CM', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 29, 104, 'B09HKVSDZX', 'true', 14850, 'JPY', 16899, 2049, 12, 156, 5, 'https://www.amazon.jp/dp/B09HKVSDZX/?tag=46490EC-22', 780, 'false', 'false', 'false', 'false', '[ナイキ] AIR FORCE 1 \'07 [エア フォース ホワイト 白] WHITE/WHITE cw2288-111 [並行輸入品]', 'https://m.media-amazon.com/images/I/51qDpwJfYxL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] AIR FORCE 1 \'07 [エア フォース ホワイト 白] WHITE/WHITE cw2288-111 [並行輸入品]', '16899', '14850', 100, '1', '[ナイキ] AIR FORCE 1 \'07 [エア フォース ホワイト 白] WHITE/WHITE cw2288-111 [並行輸入品]', '[ナイキ] AIR FORCE 1 \'07 [エア フォース ホワイト 白] WHITE/WHITE cw2288-111 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 33, 108, 'B089D65BF9', 'true', 5990, 'JPY', 8145, 2155, 26, 379, 5, 'https://www.amazon.jp/dp/B089D65BF9/?tag=46490EC-22', 1895, 'false', 'false', 'false', 'true', '[レスポートサック] トートバッグ 8056 SmallJenni ショルダーバッグ ポリエステル 2WAY [並行輸入品]', 'https://m.media-amazon.com/images/I/91JifCVIMVL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[レスポートサック] トートバッグ 8056 SmallJenni ショルダーバッグ ポリエステル 2WAY [並行輸入品]', '8145', '5990', 100, '1', '[レスポートサック] トートバッグ 8056 SmallJenni ショルダーバッグ ポリエステル 2WAY [並行輸入品]', '[レスポートサック] トートバッグ 8056 SmallJenni ショルダーバッグ ポリエステル 2WAY [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1);
INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(2, 35, 110, 'B09ZYC4NNN', 'true', 13200, 'JPY', 15900, 2700, 17, 3, 5, 'https://www.amazon.jp/dp/B09ZYC4NNN/?tag=46490EC-22', 15, 'false', 'false', 'false', 'false', '[ニューバランス] WX452KO1 width D グレー GRAY ウィメンズ 452 GREY レディース スニーカー ABZORB [並行輸入品]', 'https://m.media-amazon.com/images/I/51QO8LaiZFL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[ニューバランス] WX452KO1 width D グレー GRAY ウィメンズ 452 GREY レディース スニーカー ABZORB [並行輸入品]', '15900', '13200', 100, '1', '[ニューバランス] WX452KO1 width D グレー GRAY ウィメンズ 452 GREY レディース スニーカー ABZORB [並行輸入品]', '[ニューバランス] WX452KO1 width D グレー GRAY ウィメンズ 452 GREY レディース スニーカー ABZORB [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 51, 126, 'B0B2CNKJ73', 'true', 7130, 'JPY', 8140, 1010, 12, 843, 5, 'https://www.amazon.jp/dp/B0B2CNKJ73/?tag=46490EC-22', 4215, 'false', 'false', 'false', 'false', '[カルバンクライン] ボクサーパンツ メンズ ローライズ 3枚セット Steel Micro Low Rise 3 PK CK カッコイイ オシャレ おしゃれ [並行輸入品]', 'https://m.media-amazon.com/images/I/51Q-XTU8EZL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[カルバンクライン] ボクサーパンツ メンズ ローライズ 3枚セット Steel Micro Low Rise 3 PK CK カッコイイ オシャレ おしゃれ [並行輸入品]', '8140', '7130', 100, '1', '[カルバンクライン] ボクサーパンツ メンズ ローライズ 3枚セット Steel Micro Low Rise 3 PK CK カッコイイ オシャレ おしゃれ [並行輸入品]', '[カルバンクライン] ボクサーパンツ メンズ ローライズ 3枚セット Steel Micro Low Rise 3 PK CK カッコイイ オシャレ おしゃれ [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(2, 54, 129, 'B0C3ZQ3HTT', 'true', 6250, 'JPY', 6980, 730, 10, 40, 5, 'https://www.amazon.jp/dp/B0C3ZQ3HTT/?tag=46490EC-22', 200, 'false', 'false', 'false', 'true', 'ザ ノースフェイス メンズ コットン ポロシャツ トップス アウトドア スポーツ ウェア ビジカジ [並行輸入品]', 'https://m.media-amazon.com/images/I/41iHdmNUAHL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'ザ ノースフェイス メンズ コットン ポロシャツ トップス アウトドア スポーツ ウェア ビジカジ [並行輸入品]', '6980', '6250', 100, '1', 'ザ ノースフェイス メンズ コットン ポロシャツ トップス アウトドア スポーツ ウェア ビジカジ [並行輸入品]', 'ザ ノースフェイス メンズ コットン ポロシャツ トップス アウトドア スポーツ ウェア ビジカジ [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 27, 154, 'B09LHP3533', 'true', 7170, 'JPY', 14300, 7130, 50, 398, 5, 'https://www.amazon.jp/dp/B09LHP3533/?tag=46490EC-22', 1990, 'false', 'false', 'false', 'true', '[レスポートサック] ショルダーバッグ 7520 ClassicHobo [並行輸入品]', 'https://m.media-amazon.com/images/I/819UzIQjpHL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[レスポートサック] ショルダーバッグ 7520 ClassicHobo [並行輸入品]', '14300', '7170', 100, '1', '[レスポートサック] ショルダーバッグ 7520 ClassicHobo [並行輸入品]', '[レスポートサック] ショルダーバッグ 7520 ClassicHobo [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 29, 156, 'B084TZBRFQ', 'true', 2975, 'JPY', 3170, 195, 6, 16, 5, 'https://www.amazon.jp/dp/B084TZBRFQ/?tag=46490EC-22', 80, 'false', 'false', 'false', 'true', 'TOFL グローブ レース針 野球・ソフトボール用グローブ [並行輸入品]', 'https://m.media-amazon.com/images/I/215+fJCh-KL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'TOFL グローブ レース針 野球・ソフトボール用グローブ [並行輸入品]', '3170', '2975', 100, '1', 'TOFL グローブ レース針 野球・ソフトボール用グローブ [並行輸入品]', 'TOFL グローブ レース針 野球・ソフトボール用グローブ [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 30, 157, 'B09LHPKM7L', 'true', 3950, 'JPY', 5879, 1929, 33, 401, 5, 'https://www.amazon.jp/dp/B09LHPKM7L/?tag=46490EC-22', 2005, 'false', 'false', 'false', 'true', '[レスポートサック] ショルダーバッグ 2434 DaniellaCrossbody [並行輸入品]', 'https://m.media-amazon.com/images/I/91bT4iand3L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[レスポートサック] ショルダーバッグ 2434 DaniellaCrossbody [並行輸入品]', '5879', '3950', 100, '1', '[レスポートサック] ショルダーバッグ 2434 DaniellaCrossbody [並行輸入品]', '[レスポートサック] ショルダーバッグ 2434 DaniellaCrossbody [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 32, 159, 'B08G74RTML', 'true', 13980, 'JPY', 15800, 1820, 12, 243, 5, 'https://www.amazon.jp/dp/B08G74RTML/?tag=46490EC-22', 1215, 'false', 'false', 'false', 'true', 'NACON Controller Esports レボリューション プロ V3 PS4プレイステーション4 / PC（有線） [並行輸入品]', 'https://m.media-amazon.com/images/I/41DR5RX6p1L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'NACON Controller Esports レボリューション プロ V3 PS4プレイステーション4 / PC（有線） [並行輸入品]', '15800', '13980', 100, '1', 'NACON Controller Esports レボリューション プロ V3 PS4プレイステーション4 / PC（有線） [並行輸入品]', 'NACON Controller Esports レボリューション プロ V3 PS4プレイステーション4 / PC（有線） [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 35, 162, 'B09TZTCS3S', 'true', 2680, 'JPY', 3200, 520, 16, 3009, 5, 'https://www.amazon.jp/dp/B09TZTCS3S/?tag=46490EC-22', 15045, 'false', 'false', 'false', 'false', 'CLIO PRO EYE PALETTE クリオ プロアイパレット (#14 Atelier In Hannam) [並行輸入品]', 'https://m.media-amazon.com/images/I/61wqdtPoXdL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'CLIO PRO EYE PALETTE クリオ プロアイパレット (#14 Atelier In Hannam) [並行輸入品]', '3200', '2680', 100, '1', 'CLIO PRO EYE PALETTE クリオ プロアイパレット (#14 Atelier In Hannam) [並行輸入品]', 'CLIO PRO EYE PALETTE クリオ プロアイパレット (#14 Atelier In Hannam) [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 36, 163, 'B0BJZD8YFB', 'true', 17000, 'JPY', 26400, 9400, 36, 359, 5, 'https://www.amazon.jp/dp/B0BJZD8YFB/?tag=46490EC-22', 1795, 'false', 'false', 'false', 'true', '[ヴィヴィアンウエストウッド] レディース 真鍮 MAYFAIR バスレリーフネックレス 63020052/02W112 専用BOX・紙袋付き [並行輸入品]', 'https://m.media-amazon.com/images/I/619u35HZGPL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[ヴィヴィアンウエストウッド] レディース 真鍮 MAYFAIR バスレリーフネックレス 63020052/02W112 専用BOX・紙袋付き [並行輸入品]', '26400', '17000', 100, '1', '[ヴィヴィアンウエストウッド] レディース 真鍮 MAYFAIR バスレリーフネックレス 63020052/02W112 専用BOX・紙袋付き [並行輸入品]', '[ヴィヴィアンウエストウッド] レディース 真鍮 MAYFAIR バスレリーフネックレス 63020052/02W112 専用BOX・紙袋付き [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 39, 166, 'B08W1ZCZF3', 'true', 13400, 'JPY', 14449, 1049, 7, 34, 5, 'https://www.amazon.jp/dp/B08W1ZCZF3/?tag=46490EC-22', 170, 'false', 'false', 'false', 'false', '[ナイキ] TC 7900 レディース カジュアル シューズ TC 7900 DD9682-100 [並行輸入品]', 'https://m.media-amazon.com/images/I/61QL+ihmWZL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] TC 7900 レディース カジュアル シューズ TC 7900 DD9682-100 [並行輸入品]', '14449', '13400', 100, '1', '[ナイキ] TC 7900 レディース カジュアル シューズ TC 7900 DD9682-100 [並行輸入品]', '[ナイキ] TC 7900 レディース カジュアル シューズ TC 7900 DD9682-100 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 40, 167, 'B09GRXRY3C', 'true', 3580, 'JPY', 3798, 218, 6, 6, 5, 'https://www.amazon.jp/dp/B09GRXRY3C/?tag=46490EC-22', 30, 'false', 'false', 'false', 'true', 'Braun ブラウン オーラルB 純正 替えブラシ ベーシックブラシ 10本入り 海外名 Precision Clean CleanMaximiser [並行輸入品]', 'https://m.media-amazon.com/images/I/81Nj-WTyVYL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'Braun ブラウン オーラルB 純正 替えブラシ ベーシックブラシ 10本入り 海外名 Precision Clean CleanMaximiser [並行輸入品]', '3798', '3580', 100, '1', 'Braun ブラウン オーラルB 純正 替えブラシ ベーシックブラシ 10本入り 海外名 Precision Clean CleanMaximiser [並行輸入品]', 'Braun ブラウン オーラルB 純正 替えブラシ ベーシックブラシ 10本入り 海外名 Precision Clean CleanMaximiser [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 45, 172, 'B09YS3WJYH', 'true', 5999, 'JPY', 11000, 5001, 45, 20, 5, 'https://www.amazon.jp/dp/B09YS3WJYH/?tag=46490EC-22', 100, 'false', 'false', 'false', 'true', '[Birkenstock] サンダル Arizona BF Narrow アリゾナ ビルコフロー ナロー [並行輸入品]', 'https://m.media-amazon.com/images/I/616sGDkA-5L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[Birkenstock] サンダル Arizona BF Narrow アリゾナ ビルコフロー ナロー [並行輸入品]', '11000', '5999', 100, '1', '[Birkenstock] サンダル Arizona BF Narrow アリゾナ ビルコフロー ナロー [並行輸入品]', '[Birkenstock] サンダル Arizona BF Narrow アリゾナ ビルコフロー ナロー [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 8, 188, 'B07S5R5WYN', 'true', 890, 'JPY', 1199, 309, 26, 185, 5, 'https://www.amazon.jp/dp/B07S5R5WYN/?tag=46490EC-22', 925, 'false', 'false', 'false', 'false', 'SAMSUNG EO-IG955 Earphones Tuned by AKG/Galaxy ギャラクシー イヤホン [並行輸入品] バルク品【S10付属純正イヤホン】SamsungロゴS9, S8他 (DarkGrey(黒）)', 'https://m.media-amazon.com/images/I/31ap7ZvQL-L._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'SAMSUNG EO-IG955 Earphones Tuned by AKG/Galaxy ギャラクシー イヤホン [並行輸入品] バルク品【S10付属純正イヤホン】SamsungロゴS9, S8他 (DarkGrey(黒）)', '1199', '890', 100, '1', 'SAMSUNG EO-IG955 Earphones Tuned by AKG/Galaxy ギャラクシー イヤホン [並行輸入品] バルク品【S10付属純正イヤホン】SamsungロゴS9, S8他 (DarkGrey(黒）)', 'SAMSUNG EO-IG955 Earphones Tuned by AKG/Galaxy ギャラクシー イヤホン [並行輸入品] バルク品【S10付属純正イヤホン】SamsungロゴS9, S8他 (DarkGrey(黒）)', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 44, 224, 'B01EIFMXIY', 'true', 3780, 'JPY', 4950, 1170, 24, 871, 5, 'https://www.amazon.jp/dp/B01EIFMXIY/?tag=46490EC-22', 4355, 'false', 'false', 'false', 'true', 'クラランス フィックス メイクアップ 50ml NEW [並行輸入品]', 'https://m.media-amazon.com/images/I/81fJe28RgTL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'クラランス フィックス メイクアップ 50ml NEW [並行輸入品]', '4950', '3780', 100, '1', 'クラランス フィックス メイクアップ 50ml NEW [並行輸入品]', 'クラランス フィックス メイクアップ 50ml NEW [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 48, 175, 'B0BTPGY31K', 'true', 2390, 'JPY', 5300, 2910, 55, 7, 5, 'https://www.amazon.jp/dp/B0BTPGY31K/?tag=46490EC-22', 35, 'false', 'false', 'false', 'false', '[NW] メンズ Tシャツ 半袖 ストックロゴ刺繍 ワンポイント刺繍 レディース半袖Tシャツ 男女兼用 Tシャツ [並行輸入品]', 'https://m.media-amazon.com/images/I/61ippHoO9cL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, '[NW] メンズ Tシャツ 半袖 ストックロゴ刺繍 ワンポイント刺繍 レディース半袖Tシャツ 男女兼用 Tシャツ [並行輸入品]', '5300', '2390', 100, '1', '[NW] メンズ Tシャツ 半袖 ストックロゴ刺繍 ワンポイント刺繍 レディース半袖Tシャツ 男女兼用 Tシャツ [並行輸入品]', '[NW] メンズ Tシャツ 半袖 ストックロゴ刺繍 ワンポイント刺繍 レディース半袖Tシャツ 男女兼用 Tシャツ [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 50, 177, 'B073JC9SM6', 'true', 34800, 'JPY', 37000, 2200, 6, 6, 5, 'https://www.amazon.jp/dp/B073JC9SM6/?tag=46490EC-22', 30, 'false', 'false', 'false', 'false', 'マックスファクター SKII SK2 フェイシャル トリートメント エッセンス 230ml 【2本セット】 [並行輸入品]', 'https://m.media-amazon.com/images/I/41IpEzM6W2L._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'マックスファクター SKII SK2 フェイシャル トリートメント エッセンス 230ml 【2本セット】 [並行輸入品]', '37000', '34800', 100, '1', 'マックスファクター SKII SK2 フェイシャル トリートメント エッセンス 230ml 【2本セット】 [並行輸入品]', 'マックスファクター SKII SK2 フェイシャル トリートメント エッセンス 230ml 【2本セット】 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 52, 179, 'B07VMDB621', 'true', 16980, 'JPY', 19980, 3000, 15, 83, 5, 'https://www.amazon.jp/dp/B07VMDB621/?tag=46490EC-22', 415, 'false', 'false', 'false', 'true', 'Leofoto MT-03+LH-25 ミニ三脚 卓上三脚 自由雲台 セット ２段 [並行輸入品]', 'https://m.media-amazon.com/images/I/61H2BQhRMtL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'Leofoto MT-03+LH-25 ミニ三脚 卓上三脚 自由雲台 セット ２段 [並行輸入品]', '19980', '16980', 100, '1', 'Leofoto MT-03+LH-25 ミニ三脚 卓上三脚 自由雲台 セット ２段 [並行輸入品]', 'Leofoto MT-03+LH-25 ミニ三脚 卓上三脚 自由雲台 セット ２段 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(3, 59, 186, 'B07GCC6BSK', 'true', 4900, 'JPY', 5400, 500, 9, 26, 5, 'https://www.amazon.jp/dp/B07GCC6BSK/?tag=46490EC-22', 130, 'false', 'false', 'false', 'true', 'Ride of the Valkyrie - Kitty Media by Media Blasters [並行輸入品]', 'https://m.media-amazon.com/images/I/512PgWdcWkL._AC_UL400_.jpg', '2023-06-12 11:25:23', 0, 'Ride of the Valkyrie - Kitty Media by Media Blasters [並行輸入品]', '5400', '4900', 100, '1', 'Ride of the Valkyrie - Kitty Media by Media Blasters [並行輸入品]', 'Ride of the Valkyrie - Kitty Media by Media Blasters [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 23, 203, 'B0B4ZH3Q31', 'true', 5380, 'JPY', 5980, 600, 10, 23, 5, 'https://www.amazon.jp/dp/B0B4ZH3Q31/?tag=46490EC-22', 115, 'false', 'false', 'false', 'true', '[ナイキ] ハーフジップシャツ メンズ 長袖 ウェア BV4755 指穴付き ロゴ 大きいサイズ ドライフィット スポーツ シンプル ブラック [並行輸入品]', 'https://m.media-amazon.com/images/I/41lO+Aa3hfL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[ナイキ] ハーフジップシャツ メンズ 長袖 ウェア BV4755 指穴付き ロゴ 大きいサイズ ドライフィット スポーツ シンプル ブラック [並行輸入品]', '5980', '5380', 100, '1', '[ナイキ] ハーフジップシャツ メンズ 長袖 ウェア BV4755 指穴付き ロゴ 大きいサイズ ドライフィット スポーツ シンプル ブラック [並行輸入品]', '[ナイキ] ハーフジップシャツ メンズ 長袖 ウェア BV4755 指穴付き ロゴ 大きいサイズ ドライフィット スポーツ シンプル ブラック [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 37, 217, 'B0195E2DOM', 'true', 73460, 'JPY', 121880, 48420, 40, 42, 5, 'https://www.amazon.jp/dp/B0195E2DOM/?tag=46490EC-22', 210, 'false', 'false', 'false', 'true', '[グッチ] メンズ 腕時計 Gクロノ ブラック文字盤 YA101361 並行輸入品', 'https://m.media-amazon.com/images/I/71J9EMXm1YL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[グッチ] メンズ 腕時計 Gクロノ ブラック文字盤 YA101361 並行輸入品', '121880', '73460', 100, '1', '[グッチ] メンズ 腕時計 Gクロノ ブラック文字盤 YA101361 並行輸入品', '[グッチ] メンズ 腕時計 Gクロノ ブラック文字盤 YA101361 並行輸入品', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 39, 219, 'B07PLQ1ZX7', 'true', 5480, 'JPY', 5940, 460, 8, 407, 5, 'https://www.amazon.jp/dp/B07PLQ1ZX7/?tag=46490EC-22', 2035, 'false', 'false', 'false', 'true', 'シュウ ウエムラ SHU UEMURA アンリミテッド ラスティング フルイド #564 [並行輸入品]', 'https://m.media-amazon.com/images/I/31kR0-5TgCL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'シュウ ウエムラ SHU UEMURA アンリミテッド ラスティング フルイド #564 [並行輸入品]', '5940', '5480', 100, '1', 'シュウ ウエムラ SHU UEMURA アンリミテッド ラスティング フルイド #564 [並行輸入品]', 'シュウ ウエムラ SHU UEMURA アンリミテッド ラスティング フルイド #564 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 40, 220, 'B086TXZ322', 'true', 5835, 'JPY', 6250, 415, 7, 143, 5, 'https://www.amazon.jp/dp/B086TXZ322/?tag=46490EC-22', 715, 'false', 'false', 'false', 'false', '【VETEZE】ベテゼ RETRO SPORT BAG 2 レトロスポーツバック2 リュックサック通学パック [並行輸入品] (ブラック)', 'https://m.media-amazon.com/images/I/41bF09RXCsS._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '【VETEZE】ベテゼ RETRO SPORT BAG 2 レトロスポーツバック2 リュックサック通学パック [並行輸入品] (ブラック)', '6250', '5835', 100, '1', '【VETEZE】ベテゼ RETRO SPORT BAG 2 レトロスポーツバック2 リュックサック通学パック [並行輸入品] (ブラック)', '【VETEZE】ベテゼ RETRO SPORT BAG 2 レトロスポーツバック2 リュックサック通学パック [並行輸入品] (ブラック)', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 45, 225, 'B06XSBNC4C', 'true', 4390, 'JPY', 5370, 980, 18, 13, 5, 'https://www.amazon.jp/dp/B06XSBNC4C/?tag=46490EC-22', 65, 'false', 'false', 'false', 'false', '[テバ] フラットフォーム ユニバーサル サンダル レディース FLATFORM UNIVERSAL 1008844 [並行輸入品]', 'https://m.media-amazon.com/images/I/61vSnF1TYvL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[テバ] フラットフォーム ユニバーサル サンダル レディース FLATFORM UNIVERSAL 1008844 [並行輸入品]', '5370', '4390', 100, '1', '[テバ] フラットフォーム ユニバーサル サンダル レディース FLATFORM UNIVERSAL 1008844 [並行輸入品]', '[テバ] フラットフォーム ユニバーサル サンダル レディース FLATFORM UNIVERSAL 1008844 [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 50, 230, 'B07C5ZK1D5', 'true', 3250, 'JPY', 3700, 450, 12, 60, 5, 'https://www.amazon.jp/dp/B07C5ZK1D5/?tag=46490EC-22', 300, 'false', 'false', 'false', 'true', 'Cerave Moisturizing Cleansing Foam 465ml [並行輸入品]', 'https://m.media-amazon.com/images/I/61gEHzR-GUL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'Cerave Moisturizing Cleansing Foam 465ml [並行輸入品]', '3700', '3250', 100, '1', 'Cerave Moisturizing Cleansing Foam 465ml [並行輸入品]', 'Cerave Moisturizing Cleansing Foam 465ml [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 52, 232, 'B07HRDV4SP', 'true', 6663, 'JPY', 8250, 1587, 19, 56, 5, 'https://www.amazon.jp/dp/B07HRDV4SP/?tag=46490EC-22', 280, 'false', 'false', 'false', 'true', 'エスティローダー アドバンスナイトリペア アイS コンプレックスII 15ml [並行輸入品]', 'https://m.media-amazon.com/images/I/614nb-6Ue8L._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'エスティローダー アドバンスナイトリペア アイS コンプレックスII 15ml [並行輸入品]', '8250', '6663', 100, '1', 'エスティローダー アドバンスナイトリペア アイS コンプレックスII 15ml [並行輸入品]', 'エスティローダー アドバンスナイトリペア アイS コンプレックスII 15ml [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 55, 235, 'B0988BC3MS', 'true', 3077, 'JPY', 3980, 903, 23, 27, 5, 'https://www.amazon.jp/dp/B0988BC3MS/?tag=46490EC-22', 135, 'false', 'false', 'false', 'true', 'ジミーチュウ アーバンヒーローゴールドエディション2021 EDP 50ml(並行輸入品)', 'https://m.media-amazon.com/images/I/71c3jOHNY+L._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, 'ジミーチュウ アーバンヒーローゴールドエディション2021 EDP 50ml(並行輸入品)', '3980', '3077', 100, '1', 'ジミーチュウ アーバンヒーローゴールドエディション2021 EDP 50ml(並行輸入品)', 'ジミーチュウ アーバンヒーローゴールドエディション2021 EDP 50ml(並行輸入品)', '1', '1', 'xxx', 20000, 1, 1, 1),
(4, 59, 239, 'B0BC96HH5Z', 'true', 43700, 'JPY', 88000, 44300, 50, 24, 5, 'https://www.amazon.jp/dp/B0BC96HH5Z/?tag=46490EC-22', 120, 'false', 'false', 'false', 'true', '[グッチ] 腕時計 SYNC シンク OUTLET スイス 黒無地BOX付属 GUCCI純正BOX無し 正規保証有 YA137109A グレー [並行輸入品]', 'https://m.media-amazon.com/images/I/71S7XHA50WL._AC_UL320_.jpg', '2023-06-12 11:25:23', 0, '[グッチ] 腕時計 SYNC シンク OUTLET スイス 黒無地BOX付属 GUCCI純正BOX無し 正規保証有 YA137109A グレー [並行輸入品]', '88000', '43700', 100, '1', '[グッチ] 腕時計 SYNC シンク OUTLET スイス 黒無地BOX付属 GUCCI純正BOX無し 正規保証有 YA137109A グレー [並行輸入品]', '[グッチ] 腕時計 SYNC シンク OUTLET スイス 黒無地BOX付属 GUCCI純正BOX無し 正規保証有 YA137109A グレー [並行輸入品]', '1', '1', 'xxx', 20000, 1, 1, 1),
(1, 5, 2, 'B0C27SJ3L7', 'true', 1990, 'JPY', 13990, 12000, 86, 138, 5, 'https://www.amazon.jp/dp/B0C27SJ3L7/?tag=46490EC-22', 690, 'false', 'false', 'false', 'false', '【2023極薄モデル・20W急速充電】モバイルバッテリー 10000mAh LCD残量表示 20W/18W対応 超軽量 PD対応 Type-C入出力 QC3.0搭載 PSE技術基準適合 最大3.0A出力 iPhone&Android対応 指紋防...', 'https://m.media-amazon.com/images/I/71V5bFyDs7L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023極薄モデル・20W急速充電】モバイルバッテリー 10000mAh LCD残量表示 20W/18W対応 超軽量 PD対応 Type-C入出力 QC3.0搭載 PSE技術基準適合 最大3.0A出力 iPhone&Android対応 指紋防...', '13990', '1990', 100, '1', '【2023極薄モデル・20W急速充電】モバイルバッテリー 10000mAh LCD残量表示 20W/18W対応 超軽量 PD対応 Type-C入出力 QC3.0搭載 PSE技術基準適合 最大3.0A出力 iPhone&Android対応 指紋防...', '【2023極薄モデル・20W急速充電】モバイルバッテリー 10000mAh LCD残量表示 20W/18W対応 超軽量 PD対応 Type-C入出力 QC3.0搭載 PSE技術基準適合 最大3.0A出力 iPhone&Android対応 指紋防...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 7, 4, 'B0BZH7NKZ5', 'true', 2632, 'JPY', 4899, 2267, 46, 319, 5, 'https://www.amazon.jp/dp/B0BZH7NKZ5/?tag=46490EC-22', 1595, 'false', 'false', 'false', 'true', '【2023トップクラスモデル】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 ３台同時充電 74Wh PSE技術基準適合済 LCD電池残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 USB-C入出力ポー...', 'https://m.media-amazon.com/images/I/61Xyn2r7dwL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023トップクラスモデル】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 ３台同時充電 74Wh PSE技術基準適合済 LCD電池残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 USB-C入出力ポー...', '4899', '2632', 100, '1', '【2023トップクラスモデル】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 ３台同時充電 74Wh PSE技術基準適合済 LCD電池残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 USB-C入出力ポー...', '【2023トップクラスモデル】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 ３台同時充電 74Wh PSE技術基準適合済 LCD電池残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 USB-C入出力ポー...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 11, 21, 'B0C4Y71S4T', 'true', 3280, 'JPY', 4580, 1300, 28, 6, 5, 'https://www.amazon.jp/dp/B0C4Y71S4T/?tag=46490EC-22', 30, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバン...', 'https://m.media-amazon.com/images/I/71jXurtpp4L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - 【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバン...', '4580', '3280', 100, '1', 'スポンサー広告 - 【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバン...', 'スポンサー広告 - 【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバン...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 5, 9, 'B09X1FDTD6', 'true', 2045, 'JPY', 2479, 434, 18, 54, 5, 'https://www.amazon.jp/dp/B09X1FDTD6/?tag=46490EC-22', 270, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ブルー DE-C37-5...', 'https://m.media-amazon.com/images/I/41xTqSCM7iL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ブルー DE-C37-5...', '2479', '2045', 100, '1', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ブルー DE-C37-5...', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ブルー DE-C37-5...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 7, 11, 'B0B8ZGBHPS', 'true', 2880, 'JPY', 4080, 1200, 29, 1933, 5, 'https://www.amazon.jp/dp/B0B8ZGBHPS/?tag=46490EC-22', 9665, 'false', 'false', 'false', 'true', 'Taegila モバイルバッテリー 軽量 小型 iPhone MFi正規認証品 4800mAh Lightning コネクター内蔵 コードレス コンパクト 直接充電 急速充電 LCD残量表示 LEDライト付き iPhone 13/13 Pro ...', 'https://m.media-amazon.com/images/I/41psiDbO7CL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Taegila モバイルバッテリー 軽量 小型 iPhone MFi正規認証品 4800mAh Lightning コネクター内蔵 コードレス コンパクト 直接充電 急速充電 LCD残量表示 LEDライト付き iPhone 13/13 Pro ...', '4080', '2880', 100, '1', 'Taegila モバイルバッテリー 軽量 小型 iPhone MFi正規認証品 4800mAh Lightning コネクター内蔵 コードレス コンパクト 直接充電 急速充電 LCD残量表示 LEDライト付き iPhone 13/13 Pro ...', 'Taegila モバイルバッテリー 軽量 小型 iPhone MFi正規認証品 4800mAh Lightning コネクター内蔵 コードレス コンパクト 直接充電 急速充電 LCD残量表示 LEDライト付き iPhone 13/13 Pro ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 5, 16, 'B0BTBTWSHT', 'true', 3909, 'JPY', 4599, 690, 15, 132, 5, 'https://www.amazon.jp/dp/B0BTBTWSHT/?tag=46490EC-22', 660, 'false', 'false', 'false', 'true', 'Pnvruy モバイルバッテリー 15000mAh コンセント一体型 大容量 急速充電【PD18W type-c&PD20WのiPhone対応ケーブル/折畳式プラグ/PD18WType-C入力ポート/22.5WのUSB-A】スマホ充電器 3台同...', 'https://m.media-amazon.com/images/I/51EZSDhhkJL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Pnvruy モバイルバッテリー 15000mAh コンセント一体型 大容量 急速充電【PD18W type-c&PD20WのiPhone対応ケーブル/折畳式プラグ/PD18WType-C入力ポート/22.5WのUSB-A】スマホ充電器 3台同...', '4599', '3909', 100, '1', 'Pnvruy モバイルバッテリー 15000mAh コンセント一体型 大容量 急速充電【PD18W type-c&PD20WのiPhone対応ケーブル/折畳式プラグ/PD18WType-C入力ポート/22.5WのUSB-A】スマホ充電器 3台同...', 'Pnvruy モバイルバッテリー 15000mAh コンセント一体型 大容量 急速充電【PD18W type-c&PD20WのiPhone対応ケーブル/折畳式プラグ/PD18WType-C入力ポート/22.5WのUSB-A】スマホ充電器 3台同...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 8, 19, 'B0C1P3ZST5', 'true', 2549, 'JPY', 15800, 13251, 84, 164, 5, 'https://www.amazon.jp/dp/B0C1P3ZST5/?tag=46490EC-22', 820, 'false', 'false', 'false', 'true', '【2023新登場・16000mAh大容量・3in1ケーブル内蔵】 モバイルバッテリー 大容量 軽量·小型 急速充電（Type-C+Lightning+USB-A）ケーブル内蔵 2台同時充電 PSE技術基準適合 低電流モード搭載 残量表示 Typ...', 'https://m.media-amazon.com/images/I/61c1iou-+6L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場・16000mAh大容量・3in1ケーブル内蔵】 モバイルバッテリー 大容量 軽量·小型 急速充電（Type-C+Lightning+USB-A）ケーブル内蔵 2台同時充電 PSE技術基準適合 低電流モード搭載 残量表示 Typ...', '15800', '2549', 100, '1', '【2023新登場・16000mAh大容量・3in1ケーブル内蔵】 モバイルバッテリー 大容量 軽量·小型 急速充電（Type-C+Lightning+USB-A）ケーブル内蔵 2台同時充電 PSE技術基準適合 低電流モード搭載 残量表示 Typ...', '【2023新登場・16000mAh大容量・3in1ケーブル内蔵】 モバイルバッテリー 大容量 軽量·小型 急速充電（Type-C+Lightning+USB-A）ケーブル内蔵 2台同時充電 PSE技術基準適合 低電流モード搭載 残量表示 Typ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 10, 20, 'B0C1RTHN92', 'true', 3533, 'JPY', 14999, 11466, 76, 82, 5, 'https://www.amazon.jp/dp/B0C1RTHN92/?tag=46490EC-22', 410, 'false', 'false', 'false', 'true', '【2023新登場·40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', 'https://m.media-amazon.com/images/I/71A2Qa0I5YL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場·40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '14999', '3533', 100, '1', '【2023新登場·40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '【2023新登場·40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 12, 22, 'B0C5D422PR', 'true', 2480, 'JPY', 3580, 1100, 31, 1, 5, 'https://www.amazon.jp/dp/B0C5D422PR/?tag=46490EC-22', 5, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【2023新登場・2台同時充電】 モバイルバッテリー 軽量 小型 大容量バッテリー 5000mAh ケーブル内蔵 携帯充電器 Type-C急速充電 スマホ充電器 残量表示 コネクター内蔵 コードレス 直接充電 パススルー機能...', 'https://m.media-amazon.com/images/I/41guxlZOwmL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - 【2023新登場・2台同時充電】 モバイルバッテリー 軽量 小型 大容量バッテリー 5000mAh ケーブル内蔵 携帯充電器 Type-C急速充電 スマホ充電器 残量表示 コネクター内蔵 コードレス 直接充電 パススルー機能...', '3580', '2480', 100, '1', 'スポンサー広告 - 【2023新登場・2台同時充電】 モバイルバッテリー 軽量 小型 大容量バッテリー 5000mAh ケーブル内蔵 携帯充電器 Type-C急速充電 スマホ充電器 残量表示 コネクター内蔵 コードレス 直接充電 パススルー機能...', 'スポンサー広告 - 【2023新登場・2台同時充電】 モバイルバッテリー 軽量 小型 大容量バッテリー 5000mAh ケーブル内蔵 携帯充電器 Type-C急速充電 スマホ充電器 残量表示 コネクター内蔵 コードレス 直接充電 パススルー機能...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 13, 128, 'B0C23RFCJ6', 'true', 5380, 'JPY', 7999, 2619, 33, 47, 5, 'https://www.amazon.jp/dp/B0C23RFCJ6/?tag=46490EC-22', 235, 'false', 'false', 'false', 'true', 'スポンサー広告 - モバイルバッテリー 大容量 【50000mAh & 22.5W/PD18W 急速充電】 4種類ケーブル内蔵 6台同時充電 PD&QC3.0対応 スマホ充電器 携帯充電器 Type-c入出力ポート LCD残量表示 高輝度LED...', 'https://m.media-amazon.com/images/I/71GOZP01BpL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - モバイルバッテリー 大容量 【50000mAh & 22.5W/PD18W 急速充電】 4種類ケーブル内蔵 6台同時充電 PD&QC3.0対応 スマホ充電器 携帯充電器 Type-c入出力ポート LCD残量表示 高輝度LED...', '7999', '5380', 100, '1', 'スポンサー広告 - モバイルバッテリー 大容量 【50000mAh & 22.5W/PD18W 急速充電】 4種類ケーブル内蔵 6台同時充電 PD&QC3.0対応 スマホ充電器 携帯充電器 Type-c入出力ポート LCD残量表示 高輝度LED...', 'スポンサー広告 - モバイルバッテリー 大容量 【50000mAh & 22.5W/PD18W 急速充電】 4種類ケーブル内蔵 6台同時充電 PD&QC3.0対応 スマホ充電器 携帯充電器 Type-c入出力ポート LCD残量表示 高輝度LED...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 14, 24, 'B0C3V31KWW', 'true', 5980, 'JPY', 9980, 4000, 40, 9, 5, 'https://www.amazon.jp/dp/B0C3V31KWW/?tag=46490EC-22', 45, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【51800mAh大容量 & 急速充電】 モバイルバッテリー ソーラー 急速充電 2023年新登場 ソーラーチャージャー PD18W対応 4本ケーブル内蔵 Type-Cポート 4WAY充電+7個出力方式 ソーラーモバイルバッ...', 'https://m.media-amazon.com/images/I/71JgXgYG4BL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - 【51800mAh大容量 & 急速充電】 モバイルバッテリー ソーラー 急速充電 2023年新登場 ソーラーチャージャー PD18W対応 4本ケーブル内蔵 Type-Cポート 4WAY充電+7個出力方式 ソーラーモバイルバッ...', '9980', '5980', 100, '1', 'スポンサー広告 - 【51800mAh大容量 & 急速充電】 モバイルバッテリー ソーラー 急速充電 2023年新登場 ソーラーチャージャー PD18W対応 4本ケーブル内蔵 Type-Cポート 4WAY充電+7個出力方式 ソーラーモバイルバッ...', 'スポンサー広告 - 【51800mAh大容量 & 急速充電】 モバイルバッテリー ソーラー 急速充電 2023年新登場 ソーラーチャージャー PD18W対応 4本ケーブル内蔵 Type-Cポート 4WAY充電+7個出力方式 ソーラーモバイルバッ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 16, 26, 'B07G34JZG2', 'true', 2299, 'JPY', 3499, 1200, 34, 8549, 5, 'https://www.amazon.jp/dp/B07G34JZG2/?tag=46490EC-22', 42745, 'false', 'false', 'false', 'true', 'INIU モバイルバッテリー 10000mAh (大容量 最軽量 小型 3台同時充電)【USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載】携帯充電器 薄型 アウトドア/災害/緊急用の便利グッズ モバイル・バッテリー iP...', 'https://m.media-amazon.com/images/I/51AOZq9HhEL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'INIU モバイルバッテリー 10000mAh (大容量 最軽量 小型 3台同時充電)【USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載】携帯充電器 薄型 アウトドア/災害/緊急用の便利グッズ モバイル・バッテリー iP...', '3499', '2299', 100, '1', 'INIU モバイルバッテリー 10000mAh (大容量 最軽量 小型 3台同時充電)【USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載】携帯充電器 薄型 アウトドア/災害/緊急用の便利グッズ モバイル・バッテリー iP...', 'INIU モバイルバッテリー 10000mAh (大容量 最軽量 小型 3台同時充電)【USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載】携帯充電器 薄型 アウトドア/災害/緊急用の便利グッズ モバイル・バッテリー iP...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 17, 27, 'B07YBX2VP7', 'true', 2144, 'JPY', 3480, 1336, 38, 5677, 5, 'https://www.amazon.jp/dp/B07YBX2VP7/?tag=46490EC-22', 28385, 'false', 'false', 'false', 'true', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', 'https://m.media-amazon.com/images/I/51r9EAUyQsL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', '3480', '2144', 100, '1', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 58, 172, 'B0BYMXQN44', 'true', 2380, 'JPY', 2980, 600, 20, 69, 5, 'https://www.amazon.jp/dp/B0BYMXQN44/?tag=46490EC-22', 345, 'false', 'false', 'false', 'true', 'スポンサー広告 - 【2023新版 コンセント一体型】 モバイルバッテリー 小型 軽量 6700mAh 急速充電 2台同時充電 ACアダプター スマホ充電器 携帯充電器 折りたたみ式プラグ Type-C入力ポート 2USBポート PSE認証済 ...', 'https://m.media-amazon.com/images/I/51do3g2xF7L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - 【2023新版 コンセント一体型】 モバイルバッテリー 小型 軽量 6700mAh 急速充電 2台同時充電 ACアダプター スマホ充電器 携帯充電器 折りたたみ式プラグ Type-C入力ポート 2USBポート PSE認証済 ...', '2980', '2380', 100, '1', 'スポンサー広告 - 【2023新版 コンセント一体型】 モバイルバッテリー 小型 軽量 6700mAh 急速充電 2台同時充電 ACアダプター スマホ充電器 携帯充電器 折りたたみ式プラグ Type-C入力ポート 2USBポート PSE認証済 ...', 'スポンサー広告 - 【2023新版 コンセント一体型】 モバイルバッテリー 小型 軽量 6700mAh 急速充電 2台同時充電 ACアダプター スマホ充電器 携帯充電器 折りたたみ式プラグ Type-C入力ポート 2USBポート PSE認証済 ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 20, 30, 'B09RB1PYVG', 'true', 36328, 'JPY', 49800, 13472, 27, 663, 5, 'https://www.amazon.jp/dp/B09RB1PYVG/?tag=46490EC-22', 3315, 'false', 'false', 'false', 'true', 'スポンサー広告 - ポータブル電源 大容量 500W GRECELL 140400mAh/519wh ポータブルバッテリー 純正弦波 MPPT制御方式採用 家庭用蓄電池 PSE認証済 ワイヤレス充電搭載 10台デバイス同時充電 PD60W急速充...', 'https://m.media-amazon.com/images/I/61ATfdFQkKL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - ポータブル電源 大容量 500W GRECELL 140400mAh/519wh ポータブルバッテリー 純正弦波 MPPT制御方式採用 家庭用蓄電池 PSE認証済 ワイヤレス充電搭載 10台デバイス同時充電 PD60W急速充...', '49800', '36328', 100, '1', 'スポンサー広告 - ポータブル電源 大容量 500W GRECELL 140400mAh/519wh ポータブルバッテリー 純正弦波 MPPT制御方式採用 家庭用蓄電池 PSE認証済 ワイヤレス充電搭載 10台デバイス同時充電 PD60W急速充...', 'スポンサー広告 - ポータブル電源 大容量 500W GRECELL 140400mAh/519wh ポータブルバッテリー 純正弦波 MPPT制御方式採用 家庭用蓄電池 PSE認証済 ワイヤレス充電搭載 10台デバイス同時充電 PD60W急速充...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 22, 32, 'B0C3LWSL5K', 'true', 2183, 'JPY', 2599, 416, 16, 37, 5, 'https://www.amazon.jp/dp/B0C3LWSL5K/?tag=46490EC-22', 185, 'false', 'false', 'false', 'true', '【業界新登場 LCD電量残量表示】Fuphine モバイルバッテリー 軽量 小型 MFi正規認証品 iphone 5000mAh Lightningコネクター内蔵 コードレス 軽量 直接充電 Type-C入力 急速充電 iphone スマホ充電...', 'https://m.media-amazon.com/images/I/41YZfoFQuiL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【業界新登場 LCD電量残量表示】Fuphine モバイルバッテリー 軽量 小型 MFi正規認証品 iphone 5000mAh Lightningコネクター内蔵 コードレス 軽量 直接充電 Type-C入力 急速充電 iphone スマホ充電...', '2599', '2183', 100, '1', '【業界新登場 LCD電量残量表示】Fuphine モバイルバッテリー 軽量 小型 MFi正規認証品 iphone 5000mAh Lightningコネクター内蔵 コードレス 軽量 直接充電 Type-C入力 急速充電 iphone スマホ充電...', '【業界新登場 LCD電量残量表示】Fuphine モバイルバッテリー 軽量 小型 MFi正規認証品 iphone 5000mAh Lightningコネクター内蔵 コードレス 軽量 直接充電 Type-C入力 急速充電 iphone スマホ充電...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 23, 33, 'B0BYN8P785', 'true', 2533, 'JPY', 3580, 1047, 29, 458, 5, 'https://www.amazon.jp/dp/B0BYN8P785/?tag=46490EC-22', 2290, 'false', 'false', 'false', 'true', '【2023業界革新モデル登場】MagSafe対応 モバイルバッテリー マッグネット式ワイヤレスバッテリー マグネット式 ワイヤレス充電 小型 8000ｍAh 大容量 PD&QC3.0対応 急速充電 USB-A&Type-C出力ポート 3台同時充...', 'https://m.media-amazon.com/images/I/61ZZt9O5L4L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023業界革新モデル登場】MagSafe対応 モバイルバッテリー マッグネット式ワイヤレスバッテリー マグネット式 ワイヤレス充電 小型 8000ｍAh 大容量 PD&QC3.0対応 急速充電 USB-A&Type-C出力ポート 3台同時充...', '3580', '2533', 100, '1', '【2023業界革新モデル登場】MagSafe対応 モバイルバッテリー マッグネット式ワイヤレスバッテリー マグネット式 ワイヤレス充電 小型 8000ｍAh 大容量 PD&QC3.0対応 急速充電 USB-A&Type-C出力ポート 3台同時充...', '【2023業界革新モデル登場】MagSafe対応 モバイルバッテリー マッグネット式ワイヤレスバッテリー マグネット式 ワイヤレス充電 小型 8000ｍAh 大容量 PD&QC3.0対応 急速充電 USB-A&Type-C出力ポート 3台同時充...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 11, 126, 'B0C459YSY8', 'true', 2580, 'JPY', 3690, 1110, 30, 72, 5, 'https://www.amazon.jp/dp/B0C459YSY8/?tag=46490EC-22', 360, 'false', 'false', 'false', 'true', 'スポンサー広告 - モバイルバッテリー 軽量 20000mAh 大容量 モバイルバッテリー 3台同時充電 薄型 携帯充電器 急速充電 バッテリー スマホ充電器 残量表示 Type-C×1 /Micro-USB×1 /USB-A×2 iPhon...', 'https://m.media-amazon.com/images/I/51Ywyv+uykL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - モバイルバッテリー 軽量 20000mAh 大容量 モバイルバッテリー 3台同時充電 薄型 携帯充電器 急速充電 バッテリー スマホ充電器 残量表示 Type-C×1 /Micro-USB×1 /USB-A×2 iPhon...', '3690', '2580', 100, '1', 'スポンサー広告 - モバイルバッテリー 軽量 20000mAh 大容量 モバイルバッテリー 3台同時充電 薄型 携帯充電器 急速充電 バッテリー スマホ充電器 残量表示 Type-C×1 /Micro-USB×1 /USB-A×2 iPhon...', 'スポンサー広告 - モバイルバッテリー 軽量 20000mAh 大容量 モバイルバッテリー 3台同時充電 薄型 携帯充電器 急速充電 バッテリー スマホ充電器 残量表示 Type-C×1 /Micro-USB×1 /USB-A×2 iPhon...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 25, 35, 'B0B1PW59FS', 'true', 1799, 'JPY', 1999, 200, 10, 575, 5, 'https://www.amazon.jp/dp/B0B1PW59FS/?tag=46490EC-22', 2875, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 軽量 小型 薄型 5000mAh 12W (2.4A) 2台同時充電 急速充電 出力2ポート(Type-C +USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Andr...', 'https://m.media-amazon.com/images/I/51o2XENhv2L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 軽量 小型 薄型 5000mAh 12W (2.4A) 2台同時充電 急速充電 出力2ポート(Type-C +USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Andr...', '1999', '1799', 100, '1', 'エレコム モバイルバッテリー 軽量 小型 薄型 5000mAh 12W (2.4A) 2台同時充電 急速充電 出力2ポート(Type-C +USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Andr...', 'エレコム モバイルバッテリー 軽量 小型 薄型 5000mAh 12W (2.4A) 2台同時充電 急速充電 出力2ポート(Type-C +USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Andr...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 26, 36, 'B0BTP5CZVK', 'true', 1989, 'JPY', 15900, 13911, 87, 56, 5, 'https://www.amazon.jp/dp/B0BTP5CZVK/?tag=46490EC-22', 280, 'false', 'false', 'false', 'false', 'モバイルバッテリー 10000mAh 軽量 小型 薄型 ポータブル大容量 LED残量 22.5W/20W急速充電 Type-C +USB-A出入力ポート最大3.0A出力 Power Delivery & QC3.0対応 ３台同時に充電 携帯...', 'https://m.media-amazon.com/images/I/51wImfm9uKL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 10000mAh 軽量 小型 薄型 ポータブル大容量 LED残量 22.5W/20W急速充電 Type-C +USB-A出入力ポート最大3.0A出力 Power Delivery & QC3.0対応 ３台同時に充電 携帯...', '15900', '1989', 100, '1', 'モバイルバッテリー 10000mAh 軽量 小型 薄型 ポータブル大容量 LED残量 22.5W/20W急速充電 Type-C +USB-A出入力ポート最大3.0A出力 Power Delivery & QC3.0対応 ３台同時に充電 携帯...', 'モバイルバッテリー 10000mAh 軽量 小型 薄型 ポータブル大容量 LED残量 22.5W/20W急速充電 Type-C +USB-A出入力ポート最大3.0A出力 Power Delivery & QC3.0対応 ３台同時に充電 携帯...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 27, 37, 'B09SPF3X4P', 'true', 2564, 'JPY', 4980, 2416, 49, 631, 5, 'https://www.amazon.jp/dp/B09SPF3X4P/?tag=46490EC-22', 3155, 'false', 'false', 'false', 'true', 'VRURC モバイルバッテリー 大容量 10000mAh 【折畳みプラグ&2本ケーブル内蔵】3A急速充電 LED残量表示 4台同時充電 AC コンセント一体型 薄型 軽量 モバイル・バッテリー iphone/Android対応 PSE認証済み...', 'https://m.media-amazon.com/images/I/61yRydrYf-L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'VRURC モバイルバッテリー 大容量 10000mAh 【折畳みプラグ&2本ケーブル内蔵】3A急速充電 LED残量表示 4台同時充電 AC コンセント一体型 薄型 軽量 モバイル・バッテリー iphone/Android対応 PSE認証済み...', '4980', '2564', 100, '1', 'VRURC モバイルバッテリー 大容量 10000mAh 【折畳みプラグ&2本ケーブル内蔵】3A急速充電 LED残量表示 4台同時充電 AC コンセント一体型 薄型 軽量 モバイル・バッテリー iphone/Android対応 PSE認証済み...', 'VRURC モバイルバッテリー 大容量 10000mAh 【折畳みプラグ&2本ケーブル内蔵】3A急速充電 LED残量表示 4台同時充電 AC コンセント一体型 薄型 軽量 モバイル・バッテリー iphone/Android対応 PSE認証済み...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 28, 38, 'B0B7JKXGN8', 'true', 2429, 'JPY', 2699, 270, 10, 279, 5, 'https://www.amazon.jp/dp/B0B7JKXGN8/?tag=46490EC-22', 1395, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 しろちゃん(...', 'https://m.media-amazon.com/images/I/41Tov-dVioL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 しろちゃん(...', '2699', '2429', 100, '1', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 しろちゃん(...', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 しろちゃん(...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 29, 39, 'B09WZVVK2L', 'true', 2010, 'JPY', 3880, 1870, 48, 3039, 5, 'https://www.amazon.jp/dp/B09WZVVK2L/?tag=46490EC-22', 15195, 'false', 'false', 'false', 'true', 'NIKYPJ モバイルバッテリー iphone 「2022 MFi正規認証品」超小型 軽量 コンパクト 4800mAh Lightning コネクター内蔵 直接充電 急速充電 iPhone 13/13 Pro Max/13 Mini/12/12...', 'https://m.media-amazon.com/images/I/41m-gyEJl7L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'NIKYPJ モバイルバッテリー iphone 「2022 MFi正規認証品」超小型 軽量 コンパクト 4800mAh Lightning コネクター内蔵 直接充電 急速充電 iPhone 13/13 Pro Max/13 Mini/12/12...', '3880', '2010', 100, '1', 'NIKYPJ モバイルバッテリー iphone 「2022 MFi正規認証品」超小型 軽量 コンパクト 4800mAh Lightning コネクター内蔵 直接充電 急速充電 iPhone 13/13 Pro Max/13 Mini/12/12...', 'NIKYPJ モバイルバッテリー iphone 「2022 MFi正規認証品」超小型 軽量 コンパクト 4800mAh Lightning コネクター内蔵 直接充電 急速充電 iPhone 13/13 Pro Max/13 Mini/12/12...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 32, 42, 'B0BNH5KK52', 'true', 3399, 'JPY', 4798, 1399, 29, 991, 5, 'https://www.amazon.jp/dp/B0BNH5KK52/?tag=46490EC-22', 4955, 'false', 'false', 'false', 'true', '【2023新登場 40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', 'https://m.media-amazon.com/images/I/711SArDiXzL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場 40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '4798', '3399', 100, '1', '【2023新登場 40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '【2023新登場 40000mAh大容量& 22.5W対応】大容量モバイルバッテリー 急速充電 3台同時充電 LCD残量表示 Type-C入出力兼用/PD20W/SCP22.5W対応/QC3.0対応 PSE技術基準適合 iPad / iPhon...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 35, 45, 'B0C2Z5NFDT', 'true', 2383, 'JPY', 2999, 616, 21, 86, 5, 'https://www.amazon.jp/dp/B0C2Z5NFDT/?tag=46490EC-22', 430, 'false', 'false', 'false', 'true', '【2023新 発売・22.5W急速充電】モバイルバッテリー 15000mAh大容量 ３台同時充電 22.5W/20W急速充電 電池残量表示 PD3.0/PD2.0/QC3.0/QC2.0/AFC/FCP/SCP /iPhone12 PD20W対...', 'https://m.media-amazon.com/images/I/6164Zc0hDML._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新 発売・22.5W急速充電】モバイルバッテリー 15000mAh大容量 ３台同時充電 22.5W/20W急速充電 電池残量表示 PD3.0/PD2.0/QC3.0/QC2.0/AFC/FCP/SCP /iPhone12 PD20W対...', '2999', '2383', 100, '1', '【2023新 発売・22.5W急速充電】モバイルバッテリー 15000mAh大容量 ３台同時充電 22.5W/20W急速充電 電池残量表示 PD3.0/PD2.0/QC3.0/QC2.0/AFC/FCP/SCP /iPhone12 PD20W対...', '【2023新 発売・22.5W急速充電】モバイルバッテリー 15000mAh大容量 ３台同時充電 22.5W/20W急速充電 電池残量表示 PD3.0/PD2.0/QC3.0/QC2.0/AFC/FCP/SCP /iPhone12 PD20W対...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 36, 46, 'B0B45SC86L', 'true', 2598, 'JPY', 6980, 4382, 63, 1031, 5, 'https://www.amazon.jp/dp/B0B45SC86L/?tag=46490EC-22', 5155, 'false', 'false', 'false', 'true', 'モバイルバッテリー 大容量 【30000mAh 4本ケーブル内蔵 4台同時充電でき】 急速充電 バッテリー スマホ充電器 (残量表示 LEDライト付き PSE技術基準適合) 4way出力 3way入力 Type-C×1 /Micro-USB×1...', 'https://m.media-amazon.com/images/I/71VAz68lGVL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 【30000mAh 4本ケーブル内蔵 4台同時充電でき】 急速充電 バッテリー スマホ充電器 (残量表示 LEDライト付き PSE技術基準適合) 4way出力 3way入力 Type-C×1 /Micro-USB×1...', '6980', '2598', 100, '1', 'モバイルバッテリー 大容量 【30000mAh 4本ケーブル内蔵 4台同時充電でき】 急速充電 バッテリー スマホ充電器 (残量表示 LEDライト付き PSE技術基準適合) 4way出力 3way入力 Type-C×1 /Micro-USB×1...', 'モバイルバッテリー 大容量 【30000mAh 4本ケーブル内蔵 4台同時充電でき】 急速充電 バッテリー スマホ充電器 (残量表示 LEDライト付き PSE技術基準適合) 4way出力 3way入力 Type-C×1 /Micro-USB×1...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 37, 47, 'B0BSFK7CKH', 'true', 2998, 'JPY', 3180, 182, 6, 442, 5, 'https://www.amazon.jp/dp/B0BSFK7CKH/?tag=46490EC-22', 2210, 'false', 'false', 'false', 'true', '『2023新登場』 モバイルバッテリー 軽量 小型 大容量 20000mAh 携帯バッテリー 急速充電 残量表示 2台同時充電 1USBポー LEDライト付き スタンド機能搭載 防災グッズ 地震/災害/旅行/アウトドア 持ち運び便利 PSE認証...', 'https://m.media-amazon.com/images/I/51MG+Xf9slL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '『2023新登場』 モバイルバッテリー 軽量 小型 大容量 20000mAh 携帯バッテリー 急速充電 残量表示 2台同時充電 1USBポー LEDライト付き スタンド機能搭載 防災グッズ 地震/災害/旅行/アウトドア 持ち運び便利 PSE認証...', '3180', '2998', 100, '1', '『2023新登場』 モバイルバッテリー 軽量 小型 大容量 20000mAh 携帯バッテリー 急速充電 残量表示 2台同時充電 1USBポー LEDライト付き スタンド機能搭載 防災グッズ 地震/災害/旅行/アウトドア 持ち運び便利 PSE認証...', '『2023新登場』 モバイルバッテリー 軽量 小型 大容量 20000mAh 携帯バッテリー 急速充電 残量表示 2台同時充電 1USBポー LEDライト付き スタンド機能搭載 防災グッズ 地震/災害/旅行/アウトドア 持ち運び便利 PSE認証...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 38, 48, 'B0BTD8KLKL', 'true', 2719, 'JPY', 4999, 2280, 46, 1463, 5, 'https://www.amazon.jp/dp/B0BTD8KLKL/?tag=46490EC-22', 7315, 'false', 'false', 'false', 'true', '【2023業界 初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C...', 'https://m.media-amazon.com/images/I/61qxIoaB0aL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023業界 初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C...', '4999', '2719', 100, '1', '【2023業界 初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C...', '【2023業界 初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 39, 49, 'B09HYPXM9S', 'true', 1825, 'JPY', 3399, 1574, 46, 1638, 5, 'https://www.amazon.jp/dp/B09HYPXM9S/?tag=46490EC-22', 8190, 'false', 'false', 'false', 'false', '【業界新型モデル MFi正規認証品】モバイルバッテリー 軽量 小型 iphone Lightningコネクター内蔵 コードなしモバイルバッテリー コードレスモバイルバッテリー 5000mAh 直接充電 急速充電 iphone 携帯充電器 隠しス...', 'https://m.media-amazon.com/images/I/41RjKVP24VL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【業界新型モデル MFi正規認証品】モバイルバッテリー 軽量 小型 iphone Lightningコネクター内蔵 コードなしモバイルバッテリー コードレスモバイルバッテリー 5000mAh 直接充電 急速充電 iphone 携帯充電器 隠しス...', '3399', '1825', 100, '1', '【業界新型モデル MFi正規認証品】モバイルバッテリー 軽量 小型 iphone Lightningコネクター内蔵 コードなしモバイルバッテリー コードレスモバイルバッテリー 5000mAh 直接充電 急速充電 iphone 携帯充電器 隠しス...', '【業界新型モデル MFi正規認証品】モバイルバッテリー 軽量 小型 iphone Lightningコネクター内蔵 コードなしモバイルバッテリー コードレスモバイルバッテリー 5000mAh 直接充電 急速充電 iphone 携帯充電器 隠しス...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 40, 50, 'B09WQN87HM', 'true', 2699, 'JPY', 4500, 1801, 40, 317, 5, 'https://www.amazon.jp/dp/B09WQN87HM/?tag=46490EC-22', 1585, 'false', 'false', 'false', 'true', 'INIU モバイルバッテリー 軽量 小型 10500mAh 大容量 急速充電 22.5W【PD QC3.0 USB C入出力 PSE認証済 低電流モード/パススルー機能搭載 残量表示 LEDライト付き スマホスタンド】モバイル バッテリー 携帯...', 'https://m.media-amazon.com/images/I/612NyKjMeLL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'INIU モバイルバッテリー 軽量 小型 10500mAh 大容量 急速充電 22.5W【PD QC3.0 USB C入出力 PSE認証済 低電流モード/パススルー機能搭載 残量表示 LEDライト付き スマホスタンド】モバイル バッテリー 携帯...', '4500', '2699', 100, '1', 'INIU モバイルバッテリー 軽量 小型 10500mAh 大容量 急速充電 22.5W【PD QC3.0 USB C入出力 PSE認証済 低電流モード/パススルー機能搭載 残量表示 LEDライト付き スマホスタンド】モバイル バッテリー 携帯...', 'INIU モバイルバッテリー 軽量 小型 10500mAh 大容量 急速充電 22.5W【PD QC3.0 USB C入出力 PSE認証済 低電流モード/パススルー機能搭載 残量表示 LEDライト付き スマホスタンド】モバイル バッテリー 携帯...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 42, 52, 'B0B7J7S1R7', 'true', 2429, 'JPY', 2699, 270, 10, 326, 5, 'https://www.amazon.jp/dp/B0B7J7S1R7/?tag=46490EC-22', 1630, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 ブラック E...', 'https://m.media-amazon.com/images/I/51HV4HzqlkL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 ブラック E...', '2699', '2429', 100, '1', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 ブラック E...', 'エレコム モバイルバッテリー 大容量 10000mAh 15W 2台同時充電 出力2ポート (Type-C/USB-A) 入力(Type-C) 【 iPhone SE3 / 13 / 12 / iPad/Android 各種対応】 ブラック E...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 44, 54, 'B0C4HR5Y1Z', 'true', 2990, 'JPY', 4890, 1900, 39, 10, 5, 'https://www.amazon.jp/dp/B0C4HR5Y1Z/?tag=46490EC-22', 50, 'false', 'false', 'false', 'true', 'スポンサー広告 - モバイルバッテリー 携帯充電器 10000mAh 大容量 PD22.5W急速充電 Type-C +USB-A出入力ポート 最大3.0A出力 Power Delivery & QC3.0対応 残量LED 小型モバイル・バッテリ...', 'https://m.media-amazon.com/images/I/61+JKfvYlkL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - モバイルバッテリー 携帯充電器 10000mAh 大容量 PD22.5W急速充電 Type-C +USB-A出入力ポート 最大3.0A出力 Power Delivery & QC3.0対応 残量LED 小型モバイル・バッテリ...', '4890', '2990', 100, '1', 'スポンサー広告 - モバイルバッテリー 携帯充電器 10000mAh 大容量 PD22.5W急速充電 Type-C +USB-A出入力ポート 最大3.0A出力 Power Delivery & QC3.0対応 残量LED 小型モバイル・バッテリ...', 'スポンサー広告 - モバイルバッテリー 携帯充電器 10000mAh 大容量 PD22.5W急速充電 Type-C +USB-A出入力ポート 最大3.0A出力 Power Delivery & QC3.0対応 残量LED 小型モバイル・バッテリ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 45, 55, 'B0BWY6TZGL', 'true', 1988, 'JPY', 15990, 14002, 88, 21, 5, 'https://www.amazon.jp/dp/B0BWY6TZGL/?tag=46490EC-22', 105, 'false', 'false', 'false', 'false', 'モバイルバッテリー 10000mAh 大容量 薄型 軽量 2023最新 超急速充電 QC3.0対応+USB Type-C出力&PD22.5W 2台同時充電でき LCD残量表示 スマホ充電器 携帯充電器 小型モバイル・バッテリー', 'https://m.media-amazon.com/images/I/51jTMMSanuL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 10000mAh 大容量 薄型 軽量 2023最新 超急速充電 QC3.0対応+USB Type-C出力&PD22.5W 2台同時充電でき LCD残量表示 スマホ充電器 携帯充電器 小型モバイル・バッテリー', '15990', '1988', 100, '1', 'モバイルバッテリー 10000mAh 大容量 薄型 軽量 2023最新 超急速充電 QC3.0対応+USB Type-C出力&PD22.5W 2台同時充電でき LCD残量表示 スマホ充電器 携帯充電器 小型モバイル・バッテリー', 'モバイルバッテリー 10000mAh 大容量 薄型 軽量 2023最新 超急速充電 QC3.0対応+USB Type-C出力&PD22.5W 2台同時充電でき LCD残量表示 スマホ充電器 携帯充電器 小型モバイル・バッテリー', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 46, 56, 'B0BLGYTNPP', 'true', 2580, 'JPY', 3980, 1400, 35, 689, 5, 'https://www.amazon.jp/dp/B0BLGYTNPP/?tag=46490EC-22', 3445, 'false', 'false', 'false', 'true', 'モバイルバッテリー 20000mAh 大容量 【軽量薄型/3台同時充電可】 携帯充電器 type-C入出力 2USBポート スマホ充電器 パススルー機能搭載 残量表示 コンパクト 防災グッズ 旅行/出張/緊急用/電熱ベスト/電気毛布/電熱パンツ...', 'https://m.media-amazon.com/images/I/61-82sviVkL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 20000mAh 大容量 【軽量薄型/3台同時充電可】 携帯充電器 type-C入出力 2USBポート スマホ充電器 パススルー機能搭載 残量表示 コンパクト 防災グッズ 旅行/出張/緊急用/電熱ベスト/電気毛布/電熱パンツ...', '3980', '2580', 100, '1', 'モバイルバッテリー 20000mAh 大容量 【軽量薄型/3台同時充電可】 携帯充電器 type-C入出力 2USBポート スマホ充電器 パススルー機能搭載 残量表示 コンパクト 防災グッズ 旅行/出張/緊急用/電熱ベスト/電気毛布/電熱パンツ...', 'モバイルバッテリー 20000mAh 大容量 【軽量薄型/3台同時充電可】 携帯充電器 type-C入出力 2USBポート スマホ充電器 パススルー機能搭載 残量表示 コンパクト 防災グッズ 旅行/出張/緊急用/電熱ベスト/電気毛布/電熱パンツ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 47, 57, 'B0BV9FYY8Q', 'true', 2780, 'JPY', 3980, 1200, 30, 252, 5, 'https://www.amazon.jp/dp/B0BV9FYY8Q/?tag=46490EC-22', 1260, 'false', 'false', 'false', 'true', 'モバイルバッテリー 大容量 20000mAh 急速充電 超薄型 軽量 3台同時充電 携帯充電器 type-C入出力 2USBポート スマホ充電器 防災グッズ 旅行/出張/緊急用/空調作業服用 パススルー機能搭載 残量表示 iPhone/Andr...', 'https://m.media-amazon.com/images/I/61k6Tb1WXkL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 20000mAh 急速充電 超薄型 軽量 3台同時充電 携帯充電器 type-C入出力 2USBポート スマホ充電器 防災グッズ 旅行/出張/緊急用/空調作業服用 パススルー機能搭載 残量表示 iPhone/Andr...', '3980', '2780', 100, '1', 'モバイルバッテリー 大容量 20000mAh 急速充電 超薄型 軽量 3台同時充電 携帯充電器 type-C入出力 2USBポート スマホ充電器 防災グッズ 旅行/出張/緊急用/空調作業服用 パススルー機能搭載 残量表示 iPhone/Andr...', 'モバイルバッテリー 大容量 20000mAh 急速充電 超薄型 軽量 3台同時充電 携帯充電器 type-C入出力 2USBポート スマホ充電器 防災グッズ 旅行/出張/緊急用/空調作業服用 パススルー機能搭載 残量表示 iPhone/Andr...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 49, 59, 'B0C2Q8KHGG', 'true', 2974, 'JPY', 4999, 2025, 41, 135, 5, 'https://www.amazon.jp/dp/B0C2Q8KHGG/?tag=46490EC-22', 675, 'false', 'false', 'false', 'true', 'モバイルバッテリー 軽量 小型 20000mAh 【2023新登場 PD 20W急速充電 5台同時充電】 バッテリー モバイル 大容量 急速充電 198g 薄型 PD 3.0 携帯バッテリー SCP22.5W対応 充電器 4本ケーブル内蔵 LE...', 'https://m.media-amazon.com/images/I/51ebMi4AKqL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 軽量 小型 20000mAh 【2023新登場 PD 20W急速充電 5台同時充電】 バッテリー モバイル 大容量 急速充電 198g 薄型 PD 3.0 携帯バッテリー SCP22.5W対応 充電器 4本ケーブル内蔵 LE...', '4999', '2974', 100, '1', 'モバイルバッテリー 軽量 小型 20000mAh 【2023新登場 PD 20W急速充電 5台同時充電】 バッテリー モバイル 大容量 急速充電 198g 薄型 PD 3.0 携帯バッテリー SCP22.5W対応 充電器 4本ケーブル内蔵 LE...', 'モバイルバッテリー 軽量 小型 20000mAh 【2023新登場 PD 20W急速充電 5台同時充電】 バッテリー モバイル 大容量 急速充電 198g 薄型 PD 3.0 携帯バッテリー SCP22.5W対応 充電器 4本ケーブル内蔵 LE...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 56, 66, 'B0BLV6XQMQ', 'true', 2188, 'JPY', 2880, 692, 24, 1382, 5, 'https://www.amazon.jp/dp/B0BLV6XQMQ/?tag=46490EC-22', 6910, 'false', 'false', 'false', 'true', 'YOWESH モバイルバッテリー 軽量 小型 iphone 4800mAh Lightning コネクター内蔵 MFi正規認証品 超軽量モバイル バッテリー LCD残量表示 直接充電 急速充電 コンパクト コードレス 小型 携帯充電器 PSE認...', 'https://m.media-amazon.com/images/I/51iIwNc27RL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'YOWESH モバイルバッテリー 軽量 小型 iphone 4800mAh Lightning コネクター内蔵 MFi正規認証品 超軽量モバイル バッテリー LCD残量表示 直接充電 急速充電 コンパクト コードレス 小型 携帯充電器 PSE認...', '2880', '2188', 100, '1', 'YOWESH モバイルバッテリー 軽量 小型 iphone 4800mAh Lightning コネクター内蔵 MFi正規認証品 超軽量モバイル バッテリー LCD残量表示 直接充電 急速充電 コンパクト コードレス 小型 携帯充電器 PSE認...', 'YOWESH モバイルバッテリー 軽量 小型 iphone 4800mAh Lightning コネクター内蔵 MFi正規認証品 超軽量モバイル バッテリー LCD残量表示 直接充電 急速充電 コンパクト コードレス 小型 携帯充電器 PSE認...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 57, 67, 'B07T87NDZC', 'true', 2780, 'JPY', 3580, 800, 22, 3698, 5, 'https://www.amazon.jp/dp/B07T87NDZC/?tag=46490EC-22', 18490, 'false', 'false', 'false', 'true', '軽量 薄型 新版 モバイルバッテリー 10000mAh 大容量 3ケーブル内蔵（Lightning+Micro USB+Type-Cケーブル内蔵) 1USBポート 4台同時充電でき 急速充電 バッテリー スマホ充電器 携帯 持ち運び便利 残量表...', 'https://m.media-amazon.com/images/I/51d84FyuiVS._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '軽量 薄型 新版 モバイルバッテリー 10000mAh 大容量 3ケーブル内蔵（Lightning+Micro USB+Type-Cケーブル内蔵) 1USBポート 4台同時充電でき 急速充電 バッテリー スマホ充電器 携帯 持ち運び便利 残量表...', '3580', '2780', 100, '1', '軽量 薄型 新版 モバイルバッテリー 10000mAh 大容量 3ケーブル内蔵（Lightning+Micro USB+Type-Cケーブル内蔵) 1USBポート 4台同時充電でき 急速充電 バッテリー スマホ充電器 携帯 持ち運び便利 残量表...', '軽量 薄型 新版 モバイルバッテリー 10000mAh 大容量 3ケーブル内蔵（Lightning+Micro USB+Type-Cケーブル内蔵) 1USBポート 4台同時充電でき 急速充電 バッテリー スマホ充電器 携帯 持ち運び便利 残量表...', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 58, 68, 'B08FSR2ZRD', 'true', 2022, 'JPY', 6980, 4958, 71, 19, 5, 'https://www.amazon.jp/dp/B08FSR2ZRD/?tag=46490EC-22', 95, 'false', 'false', 'false', 'true', 'マクセル モバイル充電バッテリー MPC-CPD15000P (ホワイト)', 'https://m.media-amazon.com/images/I/618R3SOsXDL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'マクセル モバイル充電バッテリー MPC-CPD15000P (ホワイト)', '6980', '2022', 100, '1', 'マクセル モバイル充電バッテリー MPC-CPD15000P (ホワイト)', 'マクセル モバイル充電バッテリー MPC-CPD15000P (ホワイト)', '1', '1', 'xxx', 20000, 1, 1, 39),
(1, 59, 69, 'B099WK5Z46', 'true', 2340, 'JPY', 2490, 150, 6, 995, 5, 'https://www.amazon.jp/dp/B099WK5Z46/?tag=46490EC-22', 4975, 'false', 'false', 'false', 'true', 'SP Silicon Power シリコンパワー モバイルバッテリー 大容量 手のひらサイズ 最軽量180g 10000mAh 急速充電 PD/QC3.0 iPhone iPad Android (10000mAh, ブラック/20W)', 'https://m.media-amazon.com/images/I/41MfPoj2NcL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'SP Silicon Power シリコンパワー モバイルバッテリー 大容量 手のひらサイズ 最軽量180g 10000mAh 急速充電 PD/QC3.0 iPhone iPad Android (10000mAh, ブラック/20W)', '2490', '2340', 100, '1', 'SP Silicon Power シリコンパワー モバイルバッテリー 大容量 手のひらサイズ 最軽量180g 10000mAh 急速充電 PD/QC3.0 iPhone iPad Android (10000mAh, ブラック/20W)', 'SP Silicon Power シリコンパワー モバイルバッテリー 大容量 手のひらサイズ 最軽量180g 10000mAh 急速充電 PD/QC3.0 iPhone iPad Android (10000mAh, ブラック/20W)', '1', '1', 'xxx', 20000, 1, 1, 39);
INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 60, 70, 'B0BB7KXC7V', 'true', 3398, 'JPY', 4899, 1501, 31, 1884, 5, 'https://www.amazon.jp/dp/B0BB7KXC7V/?tag=46490EC-22', 9420, 'false', 'false', 'false', 'true', 'モバイルバッテリー 軽量 小型【業界新設計初売り】大容量 急速充電 搭載 20W PD 充電器 type-c + usb モバイルバッテリー コンセント一体型 155g 携帯充電器 5000mAh バッテリー 大容量 モバイル 2台同時充電 急...', 'https://m.media-amazon.com/images/I/71ZzFSYLU9L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 軽量 小型【業界新設計初売り】大容量 急速充電 搭載 20W PD 充電器 type-c + usb モバイルバッテリー コンセント一体型 155g 携帯充電器 5000mAh バッテリー 大容量 モバイル 2台同時充電 急...', '4899', '3398', 100, '1', 'モバイルバッテリー 軽量 小型【業界新設計初売り】大容量 急速充電 搭載 20W PD 充電器 type-c + usb モバイルバッテリー コンセント一体型 155g 携帯充電器 5000mAh バッテリー 大容量 モバイル 2台同時充電 急...', 'モバイルバッテリー 軽量 小型【業界新設計初売り】大容量 急速充電 搭載 20W PD 充電器 type-c + usb モバイルバッテリー コンセント一体型 155g 携帯充電器 5000mAh バッテリー 大容量 モバイル 2台同時充電 急...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 8, 71, 'B0BM9NZYFH', 'true', 5399, 'JPY', 6999, 1600, 23, 717, 5, 'https://www.amazon.jp/dp/B0BM9NZYFH/?tag=46490EC-22', 3585, 'false', 'false', 'false', 'true', 'スポンサー広告 - モバイルバッテリー 大容量 【15000mAh & 22.5W/PD20W 急速充電】 (3本ケーブル内蔵/ 6台同時充電/コンセント一体型) スマホ充電器 携帯充電器 折りたたみ式プラグ ACアダプター USB-C入/出力...', 'https://m.media-amazon.com/images/I/61Jm3tqNd-L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - モバイルバッテリー 大容量 【15000mAh & 22.5W/PD20W 急速充電】 (3本ケーブル内蔵/ 6台同時充電/コンセント一体型) スマホ充電器 携帯充電器 折りたたみ式プラグ ACアダプター USB-C入/出力...', '6999', '5399', 100, '1', 'スポンサー広告 - モバイルバッテリー 大容量 【15000mAh & 22.5W/PD20W 急速充電】 (3本ケーブル内蔵/ 6台同時充電/コンセント一体型) スマホ充電器 携帯充電器 折りたたみ式プラグ ACアダプター USB-C入/出力...', 'スポンサー広告 - モバイルバッテリー 大容量 【15000mAh & 22.5W/PD20W 急速充電】 (3本ケーブル内蔵/ 6台同時充電/コンセント一体型) スマホ充電器 携帯充電器 折りたたみ式プラグ ACアダプター USB-C入/出力...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 9, 72, 'B0BM979GVK', 'true', 2016, 'JPY', 2880, 864, 30, 551, 5, 'https://www.amazon.jp/dp/B0BM979GVK/?tag=46490EC-22', 2755, 'false', 'false', 'false', 'true', 'モバイルバッテリー 軽量 小型 モバイル2台同時充電 NIKYPJ新傑作 LightningとUSB-C コネクター内蔵 コンパクト 持ち運び便利 バッテリー 大容量 4800mAh power bank LCD残量表示 PSE技術基準適合 M...', 'https://m.media-amazon.com/images/I/41L6j6M7ZPL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 軽量 小型 モバイル2台同時充電 NIKYPJ新傑作 LightningとUSB-C コネクター内蔵 コンパクト 持ち運び便利 バッテリー 大容量 4800mAh power bank LCD残量表示 PSE技術基準適合 M...', '2880', '2016', 100, '1', 'モバイルバッテリー 軽量 小型 モバイル2台同時充電 NIKYPJ新傑作 LightningとUSB-C コネクター内蔵 コンパクト 持ち運び便利 バッテリー 大容量 4800mAh power bank LCD残量表示 PSE技術基準適合 M...', 'モバイルバッテリー 軽量 小型 モバイル2台同時充電 NIKYPJ新傑作 LightningとUSB-C コネクター内蔵 コンパクト 持ち運び便利 バッテリー 大容量 4800mAh power bank LCD残量表示 PSE技術基準適合 M...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 15, 78, 'B0BTHRX53N', 'true', 3380, 'JPY', 4980, 1600, 32, 135, 5, 'https://www.amazon.jp/dp/B0BTHRX53N/?tag=46490EC-22', 675, 'false', 'false', 'false', 'true', 'Philips (フィリップス) 【5v3a モバイルバッテリー 20000mAh PD 20W 3台同時充電】大容量バッテリー 急速充電器 type-c スマホ充電器 コンパクト 持ち運び 旅行 出張 停電対策 防災 DLP7721C ブラック', 'https://m.media-amazon.com/images/I/51mPD8aSm4L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Philips (フィリップス) 【5v3a モバイルバッテリー 20000mAh PD 20W 3台同時充電】大容量バッテリー 急速充電器 type-c スマホ充電器 コンパクト 持ち運び 旅行 出張 停電対策 防災 DLP7721C ブラック', '4980', '3380', 100, '1', 'Philips (フィリップス) 【5v3a モバイルバッテリー 20000mAh PD 20W 3台同時充電】大容量バッテリー 急速充電器 type-c スマホ充電器 コンパクト 持ち運び 旅行 出張 停電対策 防災 DLP7721C ブラック', 'Philips (フィリップス) 【5v3a モバイルバッテリー 20000mAh PD 20W 3台同時充電】大容量バッテリー 急速充電器 type-c スマホ充電器 コンパクト 持ち運び 旅行 出張 停電対策 防災 DLP7721C ブラック', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 18, 81, 'B09X1F1S4W', 'true', 2000, 'JPY', 2479, 479, 19, 70, 5, 'https://www.amazon.jp/dp/B09X1F1S4W/?tag=46490EC-22', 350, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ピンク DE-C37-5...', 'https://m.media-amazon.com/images/I/41jQgmJZ45L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ピンク DE-C37-5...', '2479', '2000', 100, '1', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ピンク DE-C37-5...', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ピンク DE-C37-5...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 24, 86, 'B09BJC6S8V', 'true', 2585, 'JPY', 2960, 375, 13, 294, 5, 'https://www.amazon.jp/dp/B09BJC6S8V/?tag=46490EC-22', 1470, 'false', 'false', 'false', 'true', 'モバイルバッテリー ケーブル内蔵 軽量 小型 10000mAh VEEKTOMX 4本コード付き かわいい タイプc/lightning/Micro USB出入力 5台同時充電 LED残量表示 260g 持ち運び便利 スマホ充電器 携帯充電器 ...', 'https://m.media-amazon.com/images/I/61u0mfn0iEL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー ケーブル内蔵 軽量 小型 10000mAh VEEKTOMX 4本コード付き かわいい タイプc/lightning/Micro USB出入力 5台同時充電 LED残量表示 260g 持ち運び便利 スマホ充電器 携帯充電器 ...', '2960', '2585', 100, '1', 'モバイルバッテリー ケーブル内蔵 軽量 小型 10000mAh VEEKTOMX 4本コード付き かわいい タイプc/lightning/Micro USB出入力 5台同時充電 LED残量表示 260g 持ち運び便利 スマホ充電器 携帯充電器 ...', 'モバイルバッテリー ケーブル内蔵 軽量 小型 10000mAh VEEKTOMX 4本コード付き かわいい タイプc/lightning/Micro USB出入力 5台同時充電 LED残量表示 260g 持ち運び便利 スマホ充電器 携帯充電器 ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 26, 88, 'B0BRXXXTSD', 'true', 2553, 'JPY', 4199, 1646, 39, 289, 5, 'https://www.amazon.jp/dp/B0BRXXXTSD/?tag=46490EC-22', 1445, 'false', 'false', 'false', 'true', '【2023業界初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C入...', 'https://m.media-amazon.com/images/I/61V6clEcPgL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023業界初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C入...', '4199', '2553', 100, '1', '【2023業界初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C入...', '【2023業界初登場】モバイルバッテリー 20000mAh大容量 22.5W/20W急速充電 74Wh ３台同時充電 PSE技術基準適合 LCD電量残量表示 PD3.0& QC3.0 AFC/FCP/SFCP対応 最大3.0A出力 USB-C入...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 27, 89, 'B0BQYR6R22', 'true', 3280, 'JPY', 4180, 900, 22, 727, 5, 'https://www.amazon.jp/dp/B0BQYR6R22/?tag=46490EC-22', 3635, 'false', 'false', 'false', 'true', 'Ｖｅｎｔｅｌａｎｄ 【2023新登場・４ケーブル内蔵】 モバイルバッテリー 大容量 20000mAh 軽量 モバイル バッテリー 5台同時充電 小型 スマホ 急速充電 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ ...', 'https://m.media-amazon.com/images/I/61MKDKgWvBL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Ｖｅｎｔｅｌａｎｄ 【2023新登場・４ケーブル内蔵】 モバイルバッテリー 大容量 20000mAh 軽量 モバイル バッテリー 5台同時充電 小型 スマホ 急速充電 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ ...', '4180', '3280', 100, '1', 'Ｖｅｎｔｅｌａｎｄ 【2023新登場・４ケーブル内蔵】 モバイルバッテリー 大容量 20000mAh 軽量 モバイル バッテリー 5台同時充電 小型 スマホ 急速充電 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ ...', 'Ｖｅｎｔｅｌａｎｄ 【2023新登場・４ケーブル内蔵】 モバイルバッテリー 大容量 20000mAh 軽量 モバイル バッテリー 5台同時充電 小型 スマホ 急速充電 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 28, 90, 'B0B28LMVD7', 'true', 3264, 'JPY', 4080, 816, 20, 724, 5, 'https://www.amazon.jp/dp/B0B28LMVD7/?tag=46490EC-22', 3620, 'false', 'false', 'false', 'true', 'iWALK モバイルバッテリー 超小型 iPhone 4800mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 急速充電 iPhone 14/14 Pro Max/13/13 Pro Max/12/12 Pro/11/X/...', 'https://m.media-amazon.com/images/I/51rFNZweJ4L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'iWALK モバイルバッテリー 超小型 iPhone 4800mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 急速充電 iPhone 14/14 Pro Max/13/13 Pro Max/12/12 Pro/11/X/...', '4080', '3264', 100, '1', 'iWALK モバイルバッテリー 超小型 iPhone 4800mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 急速充電 iPhone 14/14 Pro Max/13/13 Pro Max/12/12 Pro/11/X/...', 'iWALK モバイルバッテリー 超小型 iPhone 4800mAh Lightning コネクター内蔵 コードレス 軽量 直接充電 急速充電 iPhone 14/14 Pro Max/13/13 Pro Max/12/12 Pro/11/X/...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 29, 91, 'B0BZ88ZWYW', 'true', 3280, 'JPY', 4380, 1100, 25, 135, 5, 'https://www.amazon.jp/dp/B0BZ88ZWYW/?tag=46490EC-22', 675, 'false', 'false', 'false', 'true', '【業界新型モデル 小型・急速】 モバイルバッテリー 軽量 小型 10000mAh 大容量バッテリー PD20W/QC3.0搭載 急速充電 携帯充電器 2台同時充電 type-C入出力 パススルー機能搭載 スマホ充電器 LCD残量表示 アウトド...', 'https://m.media-amazon.com/images/I/61F5LAFS44L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【業界新型モデル 小型・急速】 モバイルバッテリー 軽量 小型 10000mAh 大容量バッテリー PD20W/QC3.0搭載 急速充電 携帯充電器 2台同時充電 type-C入出力 パススルー機能搭載 スマホ充電器 LCD残量表示 アウトド...', '4380', '3280', 100, '1', '【業界新型モデル 小型・急速】 モバイルバッテリー 軽量 小型 10000mAh 大容量バッテリー PD20W/QC3.0搭載 急速充電 携帯充電器 2台同時充電 type-C入出力 パススルー機能搭載 スマホ充電器 LCD残量表示 アウトド...', '【業界新型モデル 小型・急速】 モバイルバッテリー 軽量 小型 10000mAh 大容量バッテリー PD20W/QC3.0搭載 急速充電 携帯充電器 2台同時充電 type-C入出力 パススルー機能搭載 スマホ充電器 LCD残量表示 アウトド...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 31, 93, 'B09X1DRY2Y', 'true', 2082, 'JPY', 2479, 397, 16, 137, 5, 'https://www.amazon.jp/dp/B09X1DRY2Y/?tag=46490EC-22', 685, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ホワイト DE-C37-...', 'https://m.media-amazon.com/images/I/41YGCtkYvyL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ホワイト DE-C37-...', '2479', '2082', 100, '1', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ホワイト DE-C37-...', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ホワイト DE-C37-...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 34, 96, 'B09KLPS4N5', 'true', 1499, 'JPY', 2099, 600, 29, 159, 5, 'https://www.amazon.jp/dp/B09KLPS4N5/?tag=46490EC-22', 795, 'false', 'false', 'false', 'false', 'モバイルバッテリー 12000mAh 大容量 ストラップ付き 急速充電 2台同時充電可能 ダブルUSB出力 TYPE-CとMicro入力ポート 残量表示 指紋防止 スマホ充電器 携帯充電器 【PSE認証済】 iPhone/iPad/Androi...', 'https://m.media-amazon.com/images/I/512r+tQFiyL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 12000mAh 大容量 ストラップ付き 急速充電 2台同時充電可能 ダブルUSB出力 TYPE-CとMicro入力ポート 残量表示 指紋防止 スマホ充電器 携帯充電器 【PSE認証済】 iPhone/iPad/Androi...', '2099', '1499', 100, '1', 'モバイルバッテリー 12000mAh 大容量 ストラップ付き 急速充電 2台同時充電可能 ダブルUSB出力 TYPE-CとMicro入力ポート 残量表示 指紋防止 スマホ充電器 携帯充電器 【PSE認証済】 iPhone/iPad/Androi...', 'モバイルバッテリー 12000mAh 大容量 ストラップ付き 急速充電 2台同時充電可能 ダブルUSB出力 TYPE-CとMicro入力ポート 残量表示 指紋防止 スマホ充電器 携帯充電器 【PSE認証済】 iPhone/iPad/Androi...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 36, 98, 'B09X1CJ6QB', 'true', 2045, 'JPY', 2479, 434, 18, 57, 5, 'https://www.amazon.jp/dp/B09X1CJ6QB/?tag=46490EC-22', 285, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ダークグレー DE-C3...', 'https://m.media-amazon.com/images/I/41pW5zAsHtL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ダークグレー DE-C3...', '2479', '2045', 100, '1', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ダークグレー DE-C3...', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 ダークグレー DE-C3...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 39, 101, 'B09X1CGP6P', 'true', 2066, 'JPY', 2479, 413, 17, 55, 5, 'https://www.amazon.jp/dp/B09X1CGP6P/?tag=46490EC-22', 275, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 グリーン DE-C37-...', 'https://m.media-amazon.com/images/I/41M8gvf6ZjL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 グリーン DE-C37-...', '2479', '2066', 100, '1', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 グリーン DE-C37-...', 'エレコム モバイルバッテリー 5000mAh 12W コンパクト 薄型 軽量 入力(Type-C×1) 出力(Type-C×1、USB-A×1) PSE認証 おまかせ充電対応 【iPhone Android 各種対応】 グリーン DE-C37-...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 41, 103, 'B0BLZ51N2T', 'true', 2399, 'JPY', 3799, 1400, 37, 2152, 5, 'https://www.amazon.jp/dp/B0BLZ51N2T/?tag=46490EC-22', 10760, 'false', 'false', 'false', 'true', 'モバイルバッテリー 大容量 急速充電【Ailewu独創10000mAh超薄型】軽量 小型 モバイル 充電器 バッテリー 22.5W PD&QC3.0対応 携帯充電器 Type-c入出力ポート 2台同時充電 power bank LEDライト付き...', 'https://m.media-amazon.com/images/I/611oSyVn+NL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 急速充電【Ailewu独創10000mAh超薄型】軽量 小型 モバイル 充電器 バッテリー 22.5W PD&QC3.0対応 携帯充電器 Type-c入出力ポート 2台同時充電 power bank LEDライト付き...', '3799', '2399', 100, '1', 'モバイルバッテリー 大容量 急速充電【Ailewu独創10000mAh超薄型】軽量 小型 モバイル 充電器 バッテリー 22.5W PD&QC3.0対応 携帯充電器 Type-c入出力ポート 2台同時充電 power bank LEDライト付き...', 'モバイルバッテリー 大容量 急速充電【Ailewu独創10000mAh超薄型】軽量 小型 モバイル 充電器 バッテリー 22.5W PD&QC3.0対応 携帯充電器 Type-c入出力ポート 2台同時充電 power bank LEDライト付き...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 44, 106, 'B07VWPW48C', 'true', 2206, 'JPY', 2780, 574, 21, 3344, 5, 'https://www.amazon.jp/dp/B07VWPW48C/?tag=46490EC-22', 16720, 'false', 'false', 'false', 'true', 'モバイルバッテリー 10000mAh 新版 大容量 3ケーブル内蔵（Lightning+Micro USB+Type C) 軽量 薄型 急速充電 スマホ充電器 携帯バッテリー 持ち運び便利 4台同時充電でき 残量表示 スタンド機能搭載 防災グッ...', 'https://m.media-amazon.com/images/I/51xpFxZM0LL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 10000mAh 新版 大容量 3ケーブル内蔵（Lightning+Micro USB+Type C) 軽量 薄型 急速充電 スマホ充電器 携帯バッテリー 持ち運び便利 4台同時充電でき 残量表示 スタンド機能搭載 防災グッ...', '2780', '2206', 100, '1', 'モバイルバッテリー 10000mAh 新版 大容量 3ケーブル内蔵（Lightning+Micro USB+Type C) 軽量 薄型 急速充電 スマホ充電器 携帯バッテリー 持ち運び便利 4台同時充電でき 残量表示 スタンド機能搭載 防災グッ...', 'モバイルバッテリー 10000mAh 新版 大容量 3ケーブル内蔵（Lightning+Micro USB+Type C) 軽量 薄型 急速充電 スマホ充電器 携帯バッテリー 持ち運び便利 4台同時充電でき 残量表示 スタンド機能搭載 防災グッ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 46, 108, 'B0B498C299', 'true', 2009, 'JPY', 4080, 2071, 51, 521, 5, 'https://www.amazon.jp/dp/B0B498C299/?tag=46490EC-22', 2605, 'false', 'false', 'false', 'true', 'NIKYPJ モバイルバッテリー 小型 軽量 コンパクト USB-C コネクター内蔵 4800mAh 直接充電 急速充電 AQUOS/Xperia/Galaxy/OPPO/Pixel/HUAWEI/ゲーム機など充電対応 PSE認証済 Android用', 'https://m.media-amazon.com/images/I/51ha0LWim6L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'NIKYPJ モバイルバッテリー 小型 軽量 コンパクト USB-C コネクター内蔵 4800mAh 直接充電 急速充電 AQUOS/Xperia/Galaxy/OPPO/Pixel/HUAWEI/ゲーム機など充電対応 PSE認証済 Android用', '4080', '2009', 100, '1', 'NIKYPJ モバイルバッテリー 小型 軽量 コンパクト USB-C コネクター内蔵 4800mAh 直接充電 急速充電 AQUOS/Xperia/Galaxy/OPPO/Pixel/HUAWEI/ゲーム機など充電対応 PSE認証済 Android用', 'NIKYPJ モバイルバッテリー 小型 軽量 コンパクト USB-C コネクター内蔵 4800mAh 直接充電 急速充電 AQUOS/Xperia/Galaxy/OPPO/Pixel/HUAWEI/ゲーム機など充電対応 PSE認証済 Android用', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 48, 110, 'B09Q63QJLD', 'true', 3280, 'JPY', 3680, 400, 11, 259, 5, 'https://www.amazon.jp/dp/B09Q63QJLD/?tag=46490EC-22', 1295, 'false', 'false', 'false', 'true', 'スポンサー広告 - モバイルバッテリー 大容量 10000mAh【折畳みプラグ&2本ケーブル内蔵】22.5W 急速充電 PD3.0 & QC3.0対応 折畳みプラグ コード付き VEEKTOMX パススルー機能 軽量 227g コンセント一体型...', 'https://m.media-amazon.com/images/I/814bgrzH3FL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - モバイルバッテリー 大容量 10000mAh【折畳みプラグ&2本ケーブル内蔵】22.5W 急速充電 PD3.0 & QC3.0対応 折畳みプラグ コード付き VEEKTOMX パススルー機能 軽量 227g コンセント一体型...', '3680', '3280', 100, '1', 'スポンサー広告 - モバイルバッテリー 大容量 10000mAh【折畳みプラグ&2本ケーブル内蔵】22.5W 急速充電 PD3.0 & QC3.0対応 折畳みプラグ コード付き VEEKTOMX パススルー機能 軽量 227g コンセント一体型...', 'スポンサー広告 - モバイルバッテリー 大容量 10000mAh【折畳みプラグ&2本ケーブル内蔵】22.5W 急速充電 PD3.0 & QC3.0対応 折畳みプラグ コード付き VEEKTOMX パススルー機能 軽量 227g コンセント一体型...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 51, 113, 'B0BWCLXLPF', 'true', 3980, 'JPY', 5180, 1200, 23, 350, 5, 'https://www.amazon.jp/dp/B0BWCLXLPF/?tag=46490EC-22', 1750, 'false', 'false', 'false', 'true', '【2023新登場＆30W急速充電】モバイルバッテリー 大容量 15000mAh 軽量 小型 携帯バッテリー コンセント一体型 折りたたみ式プラグ type-C入出力ポート 携帯充電器 2IN1 ケーブル内蔵 三台同時充電 パススルー機能 スマホ...', 'https://m.media-amazon.com/images/I/71TbDQEkgiL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場＆30W急速充電】モバイルバッテリー 大容量 15000mAh 軽量 小型 携帯バッテリー コンセント一体型 折りたたみ式プラグ type-C入出力ポート 携帯充電器 2IN1 ケーブル内蔵 三台同時充電 パススルー機能 スマホ...', '5180', '3980', 100, '1', '【2023新登場＆30W急速充電】モバイルバッテリー 大容量 15000mAh 軽量 小型 携帯バッテリー コンセント一体型 折りたたみ式プラグ type-C入出力ポート 携帯充電器 2IN1 ケーブル内蔵 三台同時充電 パススルー機能 スマホ...', '【2023新登場＆30W急速充電】モバイルバッテリー 大容量 15000mAh 軽量 小型 携帯バッテリー コンセント一体型 折りたたみ式プラグ type-C入出力ポート 携帯充電器 2IN1 ケーブル内蔵 三台同時充電 パススルー機能 スマホ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 56, 118, 'B0BQBMM44F', 'true', 1930, 'JPY', 2580, 650, 25, 315, 5, 'https://www.amazon.jp/dp/B0BQBMM44F/?tag=46490EC-22', 1575, 'false', 'false', 'false', 'false', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', 'https://m.media-amazon.com/images/I/51NxL91mBiL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '2580', '1930', 100, '1', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 9, 124, 'B0B2JNWBMX', 'true', 1350, 'JPY', 1788, 438, 25, 29, 5, 'https://www.amazon.jp/dp/B0B2JNWBMX/?tag=46490EC-22', 145, 'false', 'false', 'false', 'false', 'モバイルバッテリー 6800mAh 軽量 小型 コンパクト 急速充電 2台同時充電可能 TYPE-CとMicro USB2つ入力ポート 残量表示 携帯充電器 スマホ充電器 薄型 残量表示 【PSE認証済】 iPhone/iPad/Android...', 'https://m.media-amazon.com/images/I/3169prLYZiL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 6800mAh 軽量 小型 コンパクト 急速充電 2台同時充電可能 TYPE-CとMicro USB2つ入力ポート 残量表示 携帯充電器 スマホ充電器 薄型 残量表示 【PSE認証済】 iPhone/iPad/Android...', '1788', '1350', 100, '1', 'モバイルバッテリー 6800mAh 軽量 小型 コンパクト 急速充電 2台同時充電可能 TYPE-CとMicro USB2つ入力ポート 残量表示 携帯充電器 スマホ充電器 薄型 残量表示 【PSE認証済】 iPhone/iPad/Android...', 'モバイルバッテリー 6800mAh 軽量 小型 コンパクト 急速充電 2台同時充電可能 TYPE-CとMicro USB2つ入力ポート 残量表示 携帯充電器 スマホ充電器 薄型 残量表示 【PSE認証済】 iPhone/iPad/Android...', '1', '1', 'xxx', 20000, 1, 1, 39),
(2, 60, 122, 'B09KX4L8PV', 'true', 3999, 'JPY', 4695, 696, 15, 10489, 5, 'https://www.amazon.jp/dp/B09KX4L8PV/?tag=46490EC-22', 52445, 'false', 'false', 'false', 'true', '[2個セット] モバイルバッテリー 10000mAh (大容量 最軽量 3台同時充電 USB-C 入力+出力ポート)【PSE認証済 最薄型 急速充電 LEDライト付き 低電流モード搭載】携帯充電器 小型 アウトドア/災害/緊急用の必携品 モバイ...', 'https://m.media-amazon.com/images/I/51EMtQVDTdL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '[2個セット] モバイルバッテリー 10000mAh (大容量 最軽量 3台同時充電 USB-C 入力+出力ポート)【PSE認証済 最薄型 急速充電 LEDライト付き 低電流モード搭載】携帯充電器 小型 アウトドア/災害/緊急用の必携品 モバイ...', '4695', '3999', 100, '1', '[2個セット] モバイルバッテリー 10000mAh (大容量 最軽量 3台同時充電 USB-C 入力+出力ポート)【PSE認証済 最薄型 急速充電 LEDライト付き 低電流モード搭載】携帯充電器 小型 アウトドア/災害/緊急用の必携品 モバイ...', '[2個セット] モバイルバッテリー 10000mAh (大容量 最軽量 3台同時充電 USB-C 入力+出力ポート)【PSE認証済 最薄型 急速充電 LEDライト付き 低電流モード搭載】携帯充電器 小型 アウトドア/災害/緊急用の必携品 モバイ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 8, 123, 'B0C4Y6MTQB', 'true', 3280, 'JPY', 3980, 700, 18, 6, 5, 'https://www.amazon.jp/dp/B0C4Y6MTQB/?tag=46490EC-22', 30, 'false', 'false', 'false', 'true', '【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバンク コンパクト アウ...', 'https://m.media-amazon.com/images/I/710wwcRVQWL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバンク コンパクト アウ...', '3980', '3280', 100, '1', '【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバンク コンパクト アウ...', '【新登場・超軽量・小型】 モバイルバッテリー 大容量 15000mAh ４ケーブル内蔵 5台同時充電モバイル バッテリー ワイヤレス充電 スマホ 急速充電 LCD残量表示 携帯バッテリー 持ち運び便利 携帯充電器 パワーバンク コンパクト アウ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 10, 125, 'B0C1C89Y4S', 'true', 2959, 'JPY', 3980, 1021, 26, 56, 5, 'https://www.amazon.jp/dp/B0C1C89Y4S/?tag=46490EC-22', 280, 'false', 'false', 'false', 'true', 'モバイルバッテリー 軽量 小型 15000mAh大容量 PD 22.5W急速充電 薄型 コンパクト 持ち運び便利 2種ケーブル内蔵 Type-C＆Lightning 残量表示 USB3.0出力ポート スマホ充電器 携帯バッテリー PSE認証済 ...', 'https://m.media-amazon.com/images/I/51c4uqhsQlL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 軽量 小型 15000mAh大容量 PD 22.5W急速充電 薄型 コンパクト 持ち運び便利 2種ケーブル内蔵 Type-C＆Lightning 残量表示 USB3.0出力ポート スマホ充電器 携帯バッテリー PSE認証済 ...', '3980', '2959', 100, '1', 'モバイルバッテリー 軽量 小型 15000mAh大容量 PD 22.5W急速充電 薄型 コンパクト 持ち運び便利 2種ケーブル内蔵 Type-C＆Lightning 残量表示 USB3.0出力ポート スマホ充電器 携帯バッテリー PSE認証済 ...', 'モバイルバッテリー 軽量 小型 15000mAh大容量 PD 22.5W急速充電 薄型 コンパクト 持ち運び便利 2種ケーブル内蔵 Type-C＆Lightning 残量表示 USB3.0出力ポート スマホ充電器 携帯バッテリー PSE認証済 ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 16, 131, 'B0BTHQRBGT', 'true', 2830, 'JPY', 3980, 1150, 29, 115, 5, 'https://www.amazon.jp/dp/B0BTHQRBGT/?tag=46490EC-22', 575, 'false', 'false', 'false', 'true', 'Philips（フィリップス）【モバイルバッテリー 10000mAh】PD 20W 大容量バッテリー 急速充電器 PD/QC 3.0対応/3台同時充電/USB-C入出力ポート 薄型軽量/持ち運び便利 DLP1815 (ホワイト)', 'https://m.media-amazon.com/images/I/61AjDoxysBL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Philips（フィリップス）【モバイルバッテリー 10000mAh】PD 20W 大容量バッテリー 急速充電器 PD/QC 3.0対応/3台同時充電/USB-C入出力ポート 薄型軽量/持ち運び便利 DLP1815 (ホワイト)', '3980', '2830', 100, '1', 'Philips（フィリップス）【モバイルバッテリー 10000mAh】PD 20W 大容量バッテリー 急速充電器 PD/QC 3.0対応/3台同時充電/USB-C入出力ポート 薄型軽量/持ち運び便利 DLP1815 (ホワイト)', 'Philips（フィリップス）【モバイルバッテリー 10000mAh】PD 20W 大容量バッテリー 急速充電器 PD/QC 3.0対応/3台同時充電/USB-C入出力ポート 薄型軽量/持ち運び便利 DLP1815 (ホワイト)', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 17, 132, 'B0B9SN68HD', 'true', 1699, 'JPY', 1999, 300, 15, 3160, 5, 'https://www.amazon.jp/dp/B0B9SN68HD/?tag=46490EC-22', 15800, 'false', 'false', 'false', 'false', 'モバイル バッテリー 10000mAh (モバイルバッテリー 大容量 軽量 小型 3台同時充電) USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載 高速充電 携帯充電器 アウトドア/災害/緊急用の便利グッズ モバイル・バ...', 'https://m.media-amazon.com/images/I/71pYppTtLlL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイル バッテリー 10000mAh (モバイルバッテリー 大容量 軽量 小型 3台同時充電) USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載 高速充電 携帯充電器 アウトドア/災害/緊急用の便利グッズ モバイル・バ...', '1999', '1699', 100, '1', 'モバイル バッテリー 10000mAh (モバイルバッテリー 大容量 軽量 小型 3台同時充電) USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載 高速充電 携帯充電器 アウトドア/災害/緊急用の便利グッズ モバイル・バ...', 'モバイル バッテリー 10000mAh (モバイルバッテリー 大容量 軽量 小型 3台同時充電) USB-C入出力ポート PSE認証済 LEDライト付き 低電流モード搭載 高速充電 携帯充電器 アウトドア/災害/緊急用の便利グッズ モバイル・バ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 20, 135, 'B08WS4L87W', 'true', 2828, 'JPY', 3400, 572, 17, 188, 5, 'https://www.amazon.jp/dp/B08WS4L87W/?tag=46490EC-22', 940, 'false', 'false', 'false', 'true', 'スポンサー広告 - マグセーフ モバイルバッテリー 軽量 小型 磁石 ワイヤレス充電 magsafe モバイル バッテリー iPhone モバイルバッテリー マグネット 急速充電 PD 20W usb-c qi モバイルバッテリーランキング 大...', 'https://m.media-amazon.com/images/I/61fKpNEg5kL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'スポンサー広告 - マグセーフ モバイルバッテリー 軽量 小型 磁石 ワイヤレス充電 magsafe モバイル バッテリー iPhone モバイルバッテリー マグネット 急速充電 PD 20W usb-c qi モバイルバッテリーランキング 大...', '3400', '2828', 100, '1', 'スポンサー広告 - マグセーフ モバイルバッテリー 軽量 小型 磁石 ワイヤレス充電 magsafe モバイル バッテリー iPhone モバイルバッテリー マグネット 急速充電 PD 20W usb-c qi モバイルバッテリーランキング 大...', 'スポンサー広告 - マグセーフ モバイルバッテリー 軽量 小型 磁石 ワイヤレス充電 magsafe モバイル バッテリー iPhone モバイルバッテリー マグネット 急速充電 PD 20W usb-c qi モバイルバッテリーランキング 大...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 23, 137, 'B0B4H3D98M', 'true', 6490, 'JPY', 6990, 500, 7, 388, 5, 'https://www.amazon.jp/dp/B0B4H3D98M/?tag=46490EC-22', 1940, 'false', 'false', 'false', 'true', 'Anker 622 Magnetic Battery (MagGo) (アップグレード版 マグネット式ワイヤレス充電対応 5000mAh コンパクト モバイルバッテリー)【マグネット式/ワイヤレス出力 (7.5W) / USB-Cポート入出力/...', 'https://m.media-amazon.com/images/I/61wNCQ0NdgL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'Anker 622 Magnetic Battery (MagGo) (アップグレード版 マグネット式ワイヤレス充電対応 5000mAh コンパクト モバイルバッテリー)【マグネット式/ワイヤレス出力 (7.5W) / USB-Cポート入出力/...', '6990', '6490', 100, '1', 'Anker 622 Magnetic Battery (MagGo) (アップグレード版 マグネット式ワイヤレス充電対応 5000mAh コンパクト モバイルバッテリー)【マグネット式/ワイヤレス出力 (7.5W) / USB-Cポート入出力/...', 'Anker 622 Magnetic Battery (MagGo) (アップグレード版 マグネット式ワイヤレス充電対応 5000mAh コンパクト モバイルバッテリー)【マグネット式/ワイヤレス出力 (7.5W) / USB-Cポート入出力/...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 24, 138, 'B0BHC79DP1', 'true', 2280, 'JPY', 2980, 700, 23, 876, 5, 'https://www.amazon.jp/dp/B0BHC79DP1/?tag=46490EC-22', 4380, 'false', 'false', 'false', 'true', 'モバイルバッテリー 大容量 15000mAh モバイルバッテリー ケーブル内蔵 5台同時充電 小型 軽量 スマホ 充電器 急速充電 LED懐中灯付 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ 旅行/出張/緊急用/...', 'https://m.media-amazon.com/images/I/61DZd4OHU-L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 15000mAh モバイルバッテリー ケーブル内蔵 5台同時充電 小型 軽量 スマホ 充電器 急速充電 LED懐中灯付 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ 旅行/出張/緊急用/...', '2980', '2280', 100, '1', 'モバイルバッテリー 大容量 15000mAh モバイルバッテリー ケーブル内蔵 5台同時充電 小型 軽量 スマホ 充電器 急速充電 LED懐中灯付 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ 旅行/出張/緊急用/...', 'モバイルバッテリー 大容量 15000mAh モバイルバッテリー ケーブル内蔵 5台同時充電 小型 軽量 スマホ 充電器 急速充電 LED懐中灯付 残量表示 携帯バッテリー 持ち運び便利 携帯充電器 コンパクト 防災グッズ 旅行/出張/緊急用/...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 33, 147, 'B0BQBQBYZZ', 'true', 1930, 'JPY', 2580, 650, 25, 315, 5, 'https://www.amazon.jp/dp/B0BQBQBYZZ/?tag=46490EC-22', 1575, 'false', 'false', 'false', 'false', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', 'https://m.media-amazon.com/images/I/61oumXcTmFL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '2580', '1930', 100, '1', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '【2023新登場＆PD20W急速充電】 モバイルバッテリー 小型 軽量 10000mAh 携帯充電器 USB-A+Type-C入出力ポート LCD残量表示 スマホ充電器 PSE技術基準適合 回路保護 パススルー機能 iPhone&Android...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 34, 148, 'B0C697XKKH', 'true', 1969, 'JPY', 2399, 430, 18, 22, 5, 'https://www.amazon.jp/dp/B0C697XKKH/?tag=46490EC-22', 110, 'false', 'false', 'false', 'false', 'モバイルバッテリー 10000mAh 大容量【Ailewu新作-業界最薄モバイル・バッテリー】軽量 小型 モバイル 充電器 バッテリー PD&QC3.0対応 急速充電 携帯充電器 2台同時充電 Type-C+Micro入力 power bank...', 'https://m.media-amazon.com/images/I/71v6qcJZ9qL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 10000mAh 大容量【Ailewu新作-業界最薄モバイル・バッテリー】軽量 小型 モバイル 充電器 バッテリー PD&QC3.0対応 急速充電 携帯充電器 2台同時充電 Type-C+Micro入力 power bank...', '2399', '1969', 100, '1', 'モバイルバッテリー 10000mAh 大容量【Ailewu新作-業界最薄モバイル・バッテリー】軽量 小型 モバイル 充電器 バッテリー PD&QC3.0対応 急速充電 携帯充電器 2台同時充電 Type-C+Micro入力 power bank...', 'モバイルバッテリー 10000mAh 大容量【Ailewu新作-業界最薄モバイル・バッテリー】軽量 小型 モバイル 充電器 バッテリー PD&QC3.0対応 急速充電 携帯充電器 2台同時充電 Type-C+Micro入力 power bank...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 36, 150, 'B0BTS4XFCX', 'true', 1790, 'JPY', 3690, 1900, 51, 618, 5, 'https://www.amazon.jp/dp/B0BTS4XFCX/?tag=46490EC-22', 3090, 'false', 'false', 'false', 'false', 'モバイルバッテリー 軽量 薄型 大容量 10000mAh 2023最新 QC3.0対応+USB Type-C出力&PD22.5W 超急速充電 スマホ充電器 携帯充電器 小型モバイル・バッテリー 3台同時充電でき LCD残量表示 旅行/出張/アウ...', 'https://m.media-amazon.com/images/I/51fDl+v4n4L._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 軽量 薄型 大容量 10000mAh 2023最新 QC3.0対応+USB Type-C出力&PD22.5W 超急速充電 スマホ充電器 携帯充電器 小型モバイル・バッテリー 3台同時充電でき LCD残量表示 旅行/出張/アウ...', '3690', '1790', 100, '1', 'モバイルバッテリー 軽量 薄型 大容量 10000mAh 2023最新 QC3.0対応+USB Type-C出力&PD22.5W 超急速充電 スマホ充電器 携帯充電器 小型モバイル・バッテリー 3台同時充電でき LCD残量表示 旅行/出張/アウ...', 'モバイルバッテリー 軽量 薄型 大容量 10000mAh 2023最新 QC3.0対応+USB Type-C出力&PD22.5W 超急速充電 スマホ充電器 携帯充電器 小型モバイル・バッテリー 3台同時充電でき LCD残量表示 旅行/出張/アウ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 38, 152, 'B0BV9RDZDY', 'true', 3998, 'JPY', 4899, 901, 18, 4140, 5, 'https://www.amazon.jp/dp/B0BV9RDZDY/?tag=46490EC-22', 20700, 'false', 'false', 'false', 'true', '【業界新設計初売り】モバイルバッテリー 軽量 小型 コンセント一体型 20W PD&QC3.0対応 モバイル 充電器 バッテリー 2台同時充電 携帯充電器 わずか147g 充電器 モバイルバッテリー iPhone 大容量 PSE認証済 スマホ充...', 'https://m.media-amazon.com/images/I/61mpY4HjXPL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【業界新設計初売り】モバイルバッテリー 軽量 小型 コンセント一体型 20W PD&QC3.0対応 モバイル 充電器 バッテリー 2台同時充電 携帯充電器 わずか147g 充電器 モバイルバッテリー iPhone 大容量 PSE認証済 スマホ充...', '4899', '3998', 100, '1', '【業界新設計初売り】モバイルバッテリー 軽量 小型 コンセント一体型 20W PD&QC3.0対応 モバイル 充電器 バッテリー 2台同時充電 携帯充電器 わずか147g 充電器 モバイルバッテリー iPhone 大容量 PSE認証済 スマホ充...', '【業界新設計初売り】モバイルバッテリー 軽量 小型 コンセント一体型 20W PD&QC3.0対応 モバイル 充電器 バッテリー 2台同時充電 携帯充電器 わずか147g 充電器 モバイルバッテリー iPhone 大容量 PSE認証済 スマホ充...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 40, 154, 'B0BYN9Q1B3', 'true', 3043, 'JPY', 3580, 537, 15, 93, 5, 'https://www.amazon.jp/dp/B0BYN9Q1B3/?tag=46490EC-22', 465, 'false', 'false', 'false', 'true', '【2023新登場 & 30000mAh大容量 & 4台同時充電】 モバイルバッテリー 大容量 急速充電 ケーブル内蔵 スマホ充電器 携帯バッテリー 5V/2.1A PSE認証済 残量表示 Micro USB/Type-C/USB-A入力 4wa...', 'https://m.media-amazon.com/images/I/613xvaXAMHL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, '【2023新登場 & 30000mAh大容量 & 4台同時充電】 モバイルバッテリー 大容量 急速充電 ケーブル内蔵 スマホ充電器 携帯バッテリー 5V/2.1A PSE認証済 残量表示 Micro USB/Type-C/USB-A入力 4wa...', '3580', '3043', 100, '1', '【2023新登場 & 30000mAh大容量 & 4台同時充電】 モバイルバッテリー 大容量 急速充電 ケーブル内蔵 スマホ充電器 携帯バッテリー 5V/2.1A PSE認証済 残量表示 Micro USB/Type-C/USB-A入力 4wa...', '【2023新登場 & 30000mAh大容量 & 4台同時充電】 モバイルバッテリー 大容量 急速充電 ケーブル内蔵 スマホ充電器 携帯バッテリー 5V/2.1A PSE認証済 残量表示 Micro USB/Type-C/USB-A入力 4wa...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 43, 157, 'B0BLBZZZRK', 'true', 2959, 'JPY', 6299, 3340, 53, 317, 5, 'https://www.amazon.jp/dp/B0BLBZZZRK/?tag=46490EC-22', 1585, 'false', 'false', 'false', 'true', 'モバイルバッテリー 大容量 15000mAh 45W PD QC 急速充電【USB-C入出力ポート PSE認証済 スタンド機能搭載 LED残量表示 低電流モード搭載】モバイル・バッテリー 携帯充電器 アウトドア/防災/緊急用の必携品 バッテリー...', 'https://m.media-amazon.com/images/I/61-EpK1mPnS._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 15000mAh 45W PD QC 急速充電【USB-C入出力ポート PSE認証済 スタンド機能搭載 LED残量表示 低電流モード搭載】モバイル・バッテリー 携帯充電器 アウトドア/防災/緊急用の必携品 バッテリー...', '6299', '2959', 100, '1', 'モバイルバッテリー 大容量 15000mAh 45W PD QC 急速充電【USB-C入出力ポート PSE認証済 スタンド機能搭載 LED残量表示 低電流モード搭載】モバイル・バッテリー 携帯充電器 アウトドア/防災/緊急用の必携品 バッテリー...', 'モバイルバッテリー 大容量 15000mAh 45W PD QC 急速充電【USB-C入出力ポート PSE認証済 スタンド機能搭載 LED残量表示 低電流モード搭載】モバイル・バッテリー 携帯充電器 アウトドア/防災/緊急用の必携品 バッテリー...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 49, 163, 'B08X6ST4F1', 'true', 1599, 'JPY', 2599, 1000, 38, 77, 5, 'https://www.amazon.jp/dp/B08X6ST4F1/?tag=46490EC-22', 385, 'false', 'false', 'false', 'false', 'モバイルバッテリー 大容量 12000mAh 2A急速充電 2USBポート 2台同時充電可能 TYPE-CとMicro2つ入力ポート コンパクト 軽量 洗練されたデザイン 残量表示 携帯充電器 スマホ充電器 旅行/出張/緊急用 防災グッズ iP...', 'https://m.media-amazon.com/images/I/51U6YF+HOCL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 大容量 12000mAh 2A急速充電 2USBポート 2台同時充電可能 TYPE-CとMicro2つ入力ポート コンパクト 軽量 洗練されたデザイン 残量表示 携帯充電器 スマホ充電器 旅行/出張/緊急用 防災グッズ iP...', '2599', '1599', 100, '1', 'モバイルバッテリー 大容量 12000mAh 2A急速充電 2USBポート 2台同時充電可能 TYPE-CとMicro2つ入力ポート コンパクト 軽量 洗練されたデザイン 残量表示 携帯充電器 スマホ充電器 旅行/出張/緊急用 防災グッズ iP...', 'モバイルバッテリー 大容量 12000mAh 2A急速充電 2USBポート 2台同時充電可能 TYPE-CとMicro2つ入力ポート コンパクト 軽量 洗練されたデザイン 残量表示 携帯充電器 スマホ充電器 旅行/出張/緊急用 防災グッズ iP...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 50, 164, 'B0BZVDHL26', 'true', 2580, 'JPY', 2780, 200, 7, 66, 5, 'https://www.amazon.jp/dp/B0BZVDHL26/?tag=46490EC-22', 330, 'false', 'false', 'false', 'true', 'モバイルバッテリー 小型 軽量 5000mAh コネクター内蔵 残量表示 バッテリー 大容量 持ち運び便利充電器 Type-C 急速充電 2台同時 旅行/出張/アウトドア/キャンプ/停電対策/防災グッズ パススルー機能 モバイルばってりー iP...', 'https://m.media-amazon.com/images/I/312BVKHq7tL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'モバイルバッテリー 小型 軽量 5000mAh コネクター内蔵 残量表示 バッテリー 大容量 持ち運び便利充電器 Type-C 急速充電 2台同時 旅行/出張/アウトドア/キャンプ/停電対策/防災グッズ パススルー機能 モバイルばってりー iP...', '2780', '2580', 100, '1', 'モバイルバッテリー 小型 軽量 5000mAh コネクター内蔵 残量表示 バッテリー 大容量 持ち運び便利充電器 Type-C 急速充電 2台同時 旅行/出張/アウトドア/キャンプ/停電対策/防災グッズ パススルー機能 モバイルばってりー iP...', 'モバイルバッテリー 小型 軽量 5000mAh コネクター内蔵 残量表示 バッテリー 大容量 持ち運び便利充電器 Type-C 急速充電 2台同時 旅行/出張/アウトドア/キャンプ/停電対策/防災グッズ パススルー機能 モバイルばってりー iP...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 52, 166, 'B0BCTP8J6S', 'true', 1980, 'JPY', 2580, 600, 23, 155, 5, 'https://www.amazon.jp/dp/B0BCTP8J6S/?tag=46490EC-22', 775, 'false', 'false', 'false', 'false', 'VRURC モバイルバッテリー 小型 軽量 Android用【USB-C コネクター内蔵 / 5000mAh /直接充電 / 20W急速充電 / PD/QC3.0対応】コンパクト Xperia/Galaxy/HUAWEI/ゲーム機など充電対応 ...', 'https://m.media-amazon.com/images/I/71+J9acurQL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'VRURC モバイルバッテリー 小型 軽量 Android用【USB-C コネクター内蔵 / 5000mAh /直接充電 / 20W急速充電 / PD/QC3.0対応】コンパクト Xperia/Galaxy/HUAWEI/ゲーム機など充電対応 ...', '2580', '1980', 100, '1', 'VRURC モバイルバッテリー 小型 軽量 Android用【USB-C コネクター内蔵 / 5000mAh /直接充電 / 20W急速充電 / PD/QC3.0対応】コンパクト Xperia/Galaxy/HUAWEI/ゲーム機など充電対応 ...', 'VRURC モバイルバッテリー 小型 軽量 Android用【USB-C コネクター内蔵 / 5000mAh /直接充電 / 20W急速充電 / PD/QC3.0対応】コンパクト Xperia/Galaxy/HUAWEI/ゲーム機など充電対応 ...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 56, 170, 'B0B5GQDBSD', 'true', 1584, 'JPY', 1980, 396, 20, 516, 5, 'https://www.amazon.jp/dp/B0B5GQDBSD/?tag=46490EC-22', 2580, 'false', 'false', 'false', 'false', 'iWALK モバイルバッテリー 小型 軽量 3350mAh アイフォン 充電 外付け 直接充電 急速充電 iPhone/ipod対応 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', 'https://m.media-amazon.com/images/I/719DcbMRpgL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'iWALK モバイルバッテリー 小型 軽量 3350mAh アイフォン 充電 外付け 直接充電 急速充電 iPhone/ipod対応 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', '1980', '1584', 100, '1', 'iWALK モバイルバッテリー 小型 軽量 3350mAh アイフォン 充電 外付け 直接充電 急速充電 iPhone/ipod対応 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', 'iWALK モバイルバッテリー 小型 軽量 3350mAh アイフォン 充電 外付け 直接充電 急速充電 iPhone/ipod対応 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Max/1...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 59, 173, 'B0BMFHSKG2', 'true', 3184, 'JPY', 3980, 796, 20, 321, 5, 'https://www.amazon.jp/dp/B0BMFHSKG2/?tag=46490EC-22', 1605, 'false', 'false', 'false', 'true', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning かわいい コードレス 軽量 直接充電 急速充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Ma...', 'https://m.media-amazon.com/images/I/81amfnOnTjL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning かわいい コードレス 軽量 直接充電 急速充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Ma...', '3980', '3184', 100, '1', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning かわいい コードレス 軽量 直接充電 急速充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Ma...', 'iWALK モバイルバッテリー 超小型 iPhone 4500mAh Lightning かわいい コードレス 軽量 直接充電 急速充電 iPhone 14/13/13 Pro Max/13 Mini/12/12 Mini/12 Pro Ma...', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 60, 174, 'B09TB31VPV', 'true', 4680, 'JPY', 5980, 1300, 22, 269, 5, 'https://www.amazon.jp/dp/B09TB31VPV/?tag=46490EC-22', 1345, 'false', 'false', 'false', 'true', 'エレコム モバイルバッテリー NESTOUT 8000mAh Type-C×1 / USB-A×1 【 防水・防塵・耐衝撃 IP67 】 アウトドア キャンプ グレー DE-NEST-8000GY', 'https://m.media-amazon.com/images/I/61TlVVPFCrL._AC_UL320_.jpg', '2023-06-12 11:37:12', 0, 'エレコム モバイルバッテリー NESTOUT 8000mAh Type-C×1 / USB-A×1 【 防水・防塵・耐衝撃 IP67 】 アウトドア キャンプ グレー DE-NEST-8000GY', '5980', '4680', 100, '1', 'エレコム モバイルバッテリー NESTOUT 8000mAh Type-C×1 / USB-A×1 【 防水・防塵・耐衝撃 IP67 】 アウトドア キャンプ グレー DE-NEST-8000GY', 'エレコム モバイルバッテリー NESTOUT 8000mAh Type-C×1 / USB-A×1 【 防水・防塵・耐衝撃 IP67 】 アウトドア キャンプ グレー DE-NEST-8000GY', '1', '1', 'xxx', 20000, 1, 1, 39),
(3, 4, 13, 'B09V7V9FCF', 'true', 13200, 'JPY', 16500, 3300, 20, 49, 5, 'https://www.amazon.jp/dp/B09V7V9FCF/?tag=46490EC-22', 245, 'false', 'false', 'false', 'true', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー ヨーロピアンティーケトル 1.7L 」 ガラス電気ケトル 6段階温度設定 保温 蒸らし機能 空焚き防止 自動電源OFF 【日本正規販売品】 ENFINIGY Kettles...', 'https://m.media-amazon.com/images/I/61ckZjIHMIL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー ヨーロピアンティーケトル 1.7L 」 ガラス電気ケトル 6段階温度設定 保温 蒸らし機能 空焚き防止 自動電源OFF 【日本正規販売品】 ENFINIGY Kettles...', '16500', '13200', 100, '1', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー ヨーロピアンティーケトル 1.7L 」 ガラス電気ケトル 6段階温度設定 保温 蒸らし機能 空焚き防止 自動電源OFF 【日本正規販売品】 ENFINIGY Kettles...', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー ヨーロピアンティーケトル 1.7L 」 ガラス電気ケトル 6段階温度設定 保温 蒸らし機能 空焚き防止 自動電源OFF 【日本正規販売品】 ENFINIGY Kettles...', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 3, 12, 'B085DW6R4K', 'true', 18973, 'JPY', 27280, 8307, 30, 170, 5, 'https://www.amazon.jp/dp/B085DW6R4K/?tag=46490EC-22', 850, 'false', 'false', 'false', 'true', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー テーブルブレンダー 1400ml 」ミキサー ジューサー スムージー 1000W レシピブック付き 【日本正規販売品】ZWILLING ENFINIGY TABLE BLE...', 'https://m.media-amazon.com/images/I/71wetdt90oL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー テーブルブレンダー 1400ml 」ミキサー ジューサー スムージー 1000W レシピブック付き 【日本正規販売品】ZWILLING ENFINIGY TABLE BLE...', '27280', '18973', 100, '1', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー テーブルブレンダー 1400ml 」ミキサー ジューサー スムージー 1000W レシピブック付き 【日本正規販売品】ZWILLING ENFINIGY TABLE BLE...', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー テーブルブレンダー 1400ml 」ミキサー ジューサー スムージー 1000W レシピブック付き 【日本正規販売品】ZWILLING ENFINIGY TABLE BLE...', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 40, 153, 'B08CXV7YL3', 'true', 58618, 'JPY', 85800, 27182, 32, 4, 5, 'https://www.amazon.jp/dp/B08CXV7YL3/?tag=46490EC-22', 20, 'false', 'false', 'false', 'true', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダープロ 1800ml 」 ミキサー ジューサー スムージー ホット スープ DCモーター 多機能 1200W 5年保証 レシピブック付き 【日本正規販売品】 ...', 'https://m.media-amazon.com/images/I/71s+d3gkCGL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダープロ 1800ml 」 ミキサー ジューサー スムージー ホット スープ DCモーター 多機能 1200W 5年保証 レシピブック付き 【日本正規販売品】 ...', '85800', '58618', 100, '1', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダープロ 1800ml 」 ミキサー ジューサー スムージー ホット スープ DCモーター 多機能 1200W 5年保証 レシピブック付き 【日本正規販売品】 ...', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダープロ 1800ml 」 ミキサー ジューサー スムージー ホット スープ DCモーター 多機能 1200W 5年保証 レシピブック付き 【日本正規販売品】 ...', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 11, 72, 'B0BFJLJYST', 'true', 13736, 'JPY', 18000, 4264, 24, 19, 5, 'https://www.amazon.jp/dp/B0BFJLJYST/?tag=46490EC-22', 95, 'false', 'false', 'false', 'true', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー コーヒーメーカー 」 自動 アロマ抽出 大容量 10杯 保温機能 予約タイマー クリーニングモード 水硬度設定 【日本正規販売品】 Enfinigy Glass Drip ...', 'https://m.media-amazon.com/images/I/81dO5YsrjkL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー コーヒーメーカー 」 自動 アロマ抽出 大容量 10杯 保温機能 予約タイマー クリーニングモード 水硬度設定 【日本正規販売品】 Enfinigy Glass Drip ...', '18000', '13736', 100, '1', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー コーヒーメーカー 」 自動 アロマ抽出 大容量 10杯 保温機能 予約タイマー クリーニングモード 水硬度設定 【日本正規販売品】 Enfinigy Glass Drip ...', 'スポンサー広告 - ZWILLING ツヴィリング 「 エンフィニジー コーヒーメーカー 」 自動 アロマ抽出 大容量 10杯 保温機能 予約タイマー クリーニングモード 水硬度設定 【日本正規販売品】 Enfinigy Glass Drip ...', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 44, 105, 'B000XFG2QI', 'true', 13081, 'JPY', 14300, 1219, 9, 1820, 5, 'https://www.amazon.jp/dp/B000XFG2QI/?tag=46490EC-22', 9100, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング 「 ツインポルックス 中華 包丁 15cm 」 骨切り 【日本正規販売品】 TWIN Pollux Chinese chef\'s knife 30795-180', 'https://m.media-amazon.com/images/I/61q3StWnelL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング 「 ツインポルックス 中華 包丁 15cm 」 骨切り 【日本正規販売品】 TWIN Pollux Chinese chef\'s knife 30795-180', '14300', '13081', 100, '1', 'ZWILLING ツヴィリング 「 ツインポルックス 中華 包丁 15cm 」 骨切り 【日本正規販売品】 TWIN Pollux Chinese chef\'s knife 30795-180', 'ZWILLING ツヴィリング 「 ツインポルックス 中華 包丁 15cm 」 骨切り 【日本正規販売品】 TWIN Pollux Chinese chef\'s knife 30795-180', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 6, 15, 'B00008R9OZ', 'true', 4935, 'JPY', 5500, 565, 10, 50, 5, 'https://www.amazon.jp/dp/B00008R9OZ/?tag=46490EC-22', 250, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツインM 料理バサミ ドイツ製 」 ステンレス キッチン ハサミ 【日本正規販売品】 43944-000', 'https://m.media-amazon.com/images/I/61CkG-5TPYL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインM 料理バサミ ドイツ製 」 ステンレス キッチン ハサミ 【日本正規販売品】 43944-000', '5500', '4935', 100, '1', 'Zwilling ツヴィリング 「 ツインM 料理バサミ ドイツ製 」 ステンレス キッチン ハサミ 【日本正規販売品】 43944-000', 'Zwilling ツヴィリング 「 ツインM 料理バサミ ドイツ製 」 ステンレス キッチン ハサミ 【日本正規販売品】 43944-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 8, 17, 'B07GBPT5WZ', 'true', 9146, 'JPY', 13200, 4054, 31, 636, 5, 'https://www.amazon.jp/dp/B07GBPT5WZ/?tag=46490EC-22', 3180, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツインフィン 2 マルチパーパスナイフ 180mm 日本製 」 三徳 包丁 オールステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 Twin Fin 30917-181', 'https://m.media-amazon.com/images/I/717rNWilUcL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインフィン 2 マルチパーパスナイフ 180mm 日本製 」 三徳 包丁 オールステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 Twin Fin 30917-181', '13200', '9146', 100, '1', 'Zwilling ツヴィリング 「 ツインフィン 2 マルチパーパスナイフ 180mm 日本製 」 三徳 包丁 オールステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 Twin Fin 30917-181', 'Zwilling ツヴィリング 「 ツインフィン 2 マルチパーパスナイフ 180mm 日本製 」 三徳 包丁 オールステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 Twin Fin 30917-181', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 10, 19, 'B09M4F5J2J', 'true', 4836, 'JPY', 6050, 1214, 20, 52, 5, 'https://www.amazon.jp/dp/B09M4F5J2J/?tag=46490EC-22', 260, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング 「 エンフィニジー 電動ミル ブラック 」 ソルト ペッパー ミル 充電式 粗さ調節可能 【日本正規販売品】 Enfinigy 53103-701', 'https://m.media-amazon.com/images/I/61t7DreQ3pL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング 「 エンフィニジー 電動ミル ブラック 」 ソルト ペッパー ミル 充電式 粗さ調節可能 【日本正規販売品】 Enfinigy 53103-701', '6050', '4836', 100, '1', 'ZWILLING ツヴィリング 「 エンフィニジー 電動ミル ブラック 」 ソルト ペッパー ミル 充電式 粗さ調節可能 【日本正規販売品】 Enfinigy 53103-701', 'ZWILLING ツヴィリング 「 エンフィニジー 電動ミル ブラック 」 ソルト ペッパー ミル 充電式 粗さ調節可能 【日本正規販売品】 Enfinigy 53103-701', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 9, 123, 'B085DWKB5H', 'true', 26293, 'JPY', 43780, 17487, 40, 48, 5, 'https://www.amazon.jp/dp/B085DWKB5H/?tag=46490EC-22', 240, 'false', 'false', 'false', 'true', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダー 1800ml 」 ミキサー ジューサー スムージー 多機能 1400W レシピブック付き 3年保証 【日本正規販売品】 ZWILLING ENFINIGY...', 'https://m.media-amazon.com/images/I/71rxK7gny2L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダー 1800ml 」 ミキサー ジューサー スムージー 多機能 1400W レシピブック付き 3年保証 【日本正規販売品】 ZWILLING ENFINIGY...', '43780', '26293', 100, '1', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダー 1800ml 」 ミキサー ジューサー スムージー 多機能 1400W レシピブック付き 3年保証 【日本正規販売品】 ZWILLING ENFINIGY...', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パワーブレンダー 1800ml 」 ミキサー ジューサー スムージー 多機能 1400W レシピブック付き 3年保証 【日本正規販売品】 ZWILLING ENFINIGY...', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 15, 23, 'B01KG034CY', 'true', 4285, 'JPY', 4620, 335, 7, 3133, 5, 'https://www.amazon.jp/dp/B01KG034CY/?tag=46490EC-22', 15665, 'false', 'false', 'true', 'true', 'Zwilling ツヴィリング 「 ダブルウォール グラス コーヒーマグ 350ml 2pcs セット 」 断熱 保冷 保温 取っ手 二重構造 カップ お茶 電子レンジ対応 【日本正規販売品】 39500-112', 'https://m.media-amazon.com/images/I/51woBVw+WuS._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ダブルウォール グラス コーヒーマグ 350ml 2pcs セット 」 断熱 保冷 保温 取っ手 二重構造 カップ お茶 電子レンジ対応 【日本正規販売品】 39500-112', '4620', '4285', 100, '1', 'Zwilling ツヴィリング 「 ダブルウォール グラス コーヒーマグ 350ml 2pcs セット 」 断熱 保冷 保温 取っ手 二重構造 カップ お茶 電子レンジ対応 【日本正規販売品】 39500-112', 'Zwilling ツヴィリング 「 ダブルウォール グラス コーヒーマグ 350ml 2pcs セット 」 断熱 保冷 保温 取っ手 二重構造 カップ お茶 電子レンジ対応 【日本正規販売品】 39500-112', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 16, 24, 'B07YDJF2HH', 'true', 4460, 'JPY', 4950, 490, 10, 1898, 5, 'https://www.amazon.jp/dp/B07YDJF2HH/?tag=46490EC-22', 9490, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング 「 ピコ フライパン 16cm コーティング 」 フッ素 ステンレス 【日本正規販売品 】 66659-160', 'https://m.media-amazon.com/images/I/71+Nm9oSklL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング 「 ピコ フライパン 16cm コーティング 」 フッ素 ステンレス 【日本正規販売品 】 66659-160', '4950', '4460', 100, '1', 'ZWILLING ツヴィリング 「 ピコ フライパン 16cm コーティング 」 フッ素 ステンレス 【日本正規販売品 】 66659-160', 'ZWILLING ツヴィリング 「 ピコ フライパン 16cm コーティング 」 フッ素 ステンレス 【日本正規販売品 】 66659-160', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 23, 31, 'B08H1SNW7R', 'true', 10055, 'JPY', 14800, 4745, 32, 354, 5, 'https://www.amazon.jp/dp/B08H1SNW7R/?tag=46490EC-22', 1770, 'false', 'false', 'false', 'true', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パーソナルブレンダー 550ml 」ミキサー ジューサー スムージー 小型 ボトルブレンダー レシピブック付き 【日本正規販売品】 ZWILLING ENFINIGY PE...', 'https://m.media-amazon.com/images/I/61mk72NV2HL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パーソナルブレンダー 550ml 」ミキサー ジューサー スムージー 小型 ボトルブレンダー レシピブック付き 【日本正規販売品】 ZWILLING ENFINIGY PE...', '14800', '10055', 100, '1', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パーソナルブレンダー 550ml 」ミキサー ジューサー スムージー 小型 ボトルブレンダー レシピブック付き 【日本正規販売品】 ZWILLING ENFINIGY PE...', 'スポンサー広告 - Zwilling ツヴィリング 「 エンフィニジー パーソナルブレンダー 550ml 」ミキサー ジューサー スムージー 小型 ボトルブレンダー レシピブック付き 【日本正規販売品】 ZWILLING ENFINIGY PE...', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 24, 32, 'B009T3I7YK', 'true', 5672, 'JPY', 7150, 1478, 21, 71, 5, 'https://www.amazon.jp/dp/B009T3I7YK/?tag=46490EC-22', 355, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ジョイ シチューポット 16cm 」 両手 鍋 ステンレス IH対応 【日本正規販売品】 Zwilling Joy 64042-160', 'https://m.media-amazon.com/images/I/81iL4PO0d2L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ジョイ シチューポット 16cm 」 両手 鍋 ステンレス IH対応 【日本正規販売品】 Zwilling Joy 64042-160', '7150', '5672', 100, '1', 'Zwilling ツヴィリング 「 ジョイ シチューポット 16cm 」 両手 鍋 ステンレス IH対応 【日本正規販売品】 Zwilling Joy 64042-160', 'Zwilling ツヴィリング 「 ジョイ シチューポット 16cm 」 両手 鍋 ステンレス IH対応 【日本正規販売品】 Zwilling Joy 64042-160', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 28, 36, 'B015IZIHCE', 'true', 7117, 'JPY', 8800, 1683, 19, 246, 5, 'https://www.amazon.jp/dp/B015IZIHCE/?tag=46490EC-22', 1230, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング フィット 三徳包丁 180mm 日本製 」 三徳 包丁 ステンレス 岐阜県関市製 【日本正規販売品】32987-181', 'https://m.media-amazon.com/images/I/71I1pw1W2sL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング フィット 三徳包丁 180mm 日本製 」 三徳 包丁 ステンレス 岐阜県関市製 【日本正規販売品】32987-181', '8800', '7117', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング フィット 三徳包丁 180mm 日本製 」 三徳 包丁 ステンレス 岐阜県関市製 【日本正規販売品】32987-181', 'Zwilling ツヴィリング 「 ツヴィリング フィット 三徳包丁 180mm 日本製 」 三徳 包丁 ステンレス 岐阜県関市製 【日本正規販売品】32987-181', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 29, 37, 'B09V7V81QZ', 'true', 5182, 'JPY', 8800, 3618, 41, 49, 5, 'https://www.amazon.jp/dp/B09V7V81QZ/?tag=46490EC-22', 245, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング 「 エンフィニジー 電気ケトル 1L シルバー 」 電気ポット 空焚き防止 自動電源OFF コンパクト 【日本正規販売品】 ENFINIGY Kettles 53105-201', 'https://m.media-amazon.com/images/I/51pJb5J38fL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング 「 エンフィニジー 電気ケトル 1L シルバー 」 電気ポット 空焚き防止 自動電源OFF コンパクト 【日本正規販売品】 ENFINIGY Kettles 53105-201', '8800', '5182', 100, '1', 'ZWILLING ツヴィリング 「 エンフィニジー 電気ケトル 1L シルバー 」 電気ポット 空焚き防止 自動電源OFF コンパクト 【日本正規販売品】 ENFINIGY Kettles 53105-201', 'ZWILLING ツヴィリング 「 エンフィニジー 電気ケトル 1L シルバー 」 電気ポット 空焚き防止 自動電源OFF コンパクト 【日本正規販売品】 ENFINIGY Kettles 53105-201', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 31, 39, 'B08T5WWKW5', 'true', 7778, 'JPY', 8800, 1022, 12, 126, 5, 'https://www.amazon.jp/dp/B08T5WWKW5/?tag=46490EC-22', 630, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング「 プロ SS フライパン 3PLY 20cm 」 ステンレス 全面3層構造 IH対応 10年保証 【日本正規販売品】 65128-200', 'https://m.media-amazon.com/images/I/61ft1QmZlVL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング「 プロ SS フライパン 3PLY 20cm 」 ステンレス 全面3層構造 IH対応 10年保証 【日本正規販売品】 65128-200', '8800', '7778', 100, '1', 'ZWILLING ツヴィリング「 プロ SS フライパン 3PLY 20cm 」 ステンレス 全面3層構造 IH対応 10年保証 【日本正規販売品】 65128-200', 'ZWILLING ツヴィリング「 プロ SS フライパン 3PLY 20cm 」 ステンレス 全面3層構造 IH対応 10年保証 【日本正規販売品】 65128-200', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 33, 41, 'B01MU8PF0M', 'true', 2955, 'JPY', 5390, 2435, 45, 208, 5, 'https://www.amazon.jp/dp/B01MU8PF0M/?tag=46490EC-22', 1040, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 カッティングボード Lサイズ 」 まな板 滑り止め 両面【日本正規販売品 】 35012-102', 'https://m.media-amazon.com/images/I/71-7s52xTqL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 カッティングボード Lサイズ 」 まな板 滑り止め 両面【日本正規販売品 】 35012-102', '5390', '2955', 100, '1', 'Zwilling ツヴィリング 「 カッティングボード Lサイズ 」 まな板 滑り止め 両面【日本正規販売品 】 35012-102', 'Zwilling ツヴィリング 「 カッティングボード Lサイズ 」 まな板 滑り止め 両面【日本正規販売品 】 35012-102', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 40, 48, 'B0753GTKWM', 'true', 4033, 'JPY', 5500, 1467, 27, 366, 5, 'https://www.amazon.jp/dp/B0753GTKWM/?tag=46490EC-22', 1830, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツインシャープ プラス 」 包丁 研ぎ 器 【日本正規販売品】 32604-000', 'https://m.media-amazon.com/images/I/71lITz2JTOL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインシャープ プラス 」 包丁 研ぎ 器 【日本正規販売品】 32604-000', '5500', '4033', 100, '1', 'Zwilling ツヴィリング 「 ツインシャープ プラス 」 包丁 研ぎ 器 【日本正規販売品】 32604-000', 'Zwilling ツヴィリング 「 ツインシャープ プラス 」 包丁 研ぎ 器 【日本正規販売品】 32604-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 42, 50, 'B08GMDRP6Y', 'true', 3010, 'JPY', 3300, 290, 9, 124, 5, 'https://www.amazon.jp/dp/B08GMDRP6Y/?tag=46490EC-22', 620, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ストレーナー付ボトル 420ml ホワイト 」 ストレーナー 茶こし マグ ボトル 水筒 ステンレス 保冷 保温 【日本正規販売品】ZWILLING THERMO 39500-511', 'https://m.media-amazon.com/images/I/519K-DZG1YL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ストレーナー付ボトル 420ml ホワイト 」 ストレーナー 茶こし マグ ボトル 水筒 ステンレス 保冷 保温 【日本正規販売品】ZWILLING THERMO 39500-511', '3300', '3010', 100, '1', 'Zwilling ツヴィリング 「 ストレーナー付ボトル 420ml ホワイト 」 ストレーナー 茶こし マグ ボトル 水筒 ステンレス 保冷 保温 【日本正規販売品】ZWILLING THERMO 39500-511', 'Zwilling ツヴィリング 「 ストレーナー付ボトル 420ml ホワイト 」 ストレーナー 茶こし マグ ボトル 水筒 ステンレス 保冷 保温 【日本正規販売品】ZWILLING THERMO 39500-511', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 43, 51, 'B00008WUU8', 'true', 1680, 'JPY', 3300, 1620, 49, 4034, 5, 'https://www.amazon.jp/dp/B00008WUU8/?tag=46490EC-22', 20170, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツインL 料理ばさみ 」 キッチン ハサミ 【日本正規販売品】 41370-001', 'https://m.media-amazon.com/images/I/51eExxjAMlL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインL 料理ばさみ 」 キッチン ハサミ 【日本正規販売品】 41370-001', '3300', '1680', 100, '1', 'Zwilling ツヴィリング 「 ツインL 料理ばさみ 」 キッチン ハサミ 【日本正規販売品】 41370-001', 'Zwilling ツヴィリング 「 ツインL 料理ばさみ 」 キッチン ハサミ 【日本正規販売品】 41370-001', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 46, 54, 'B00O4DU4UU', 'true', 46200, 'JPY', 49500, 3300, 7, 128, 5, 'https://www.amazon.jp/dp/B00O4DU4UU/?tag=46490EC-22', 640, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ボブ・クレーマー ユーロ ステンレス シェフナイフ 200mm 日本製」 ダマスカス 牛刀 多層鋼 岐阜県関市製【日本正規販売品】 Bob Kramer Chef Knife 34891-201', 'https://m.media-amazon.com/images/I/81Qakx4z25L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ボブ・クレーマー ユーロ ステンレス シェフナイフ 200mm 日本製」 ダマスカス 牛刀 多層鋼 岐阜県関市製【日本正規販売品】 Bob Kramer Chef Knife 34891-201', '49500', '46200', 100, '1', 'Zwilling ツヴィリング 「 ボブ・クレーマー ユーロ ステンレス シェフナイフ 200mm 日本製」 ダマスカス 牛刀 多層鋼 岐阜県関市製【日本正規販売品】 Bob Kramer Chef Knife 34891-201', 'Zwilling ツヴィリング 「 ボブ・クレーマー ユーロ ステンレス シェフナイフ 200mm 日本製」 ダマスカス 牛刀 多層鋼 岐阜県関市製【日本正規販売品】 Bob Kramer Chef Knife 34891-201', '1', '1', 'xxx', 20000, 1, 1, 8);
INSERT INTO `tbl_product` (`page`, `position`, `global_position`, `asin`, `discounted`, `current_price`, `currency`, `before_price`, `savings_amount`, `savings_percent`, `total_reviews`, `rating`, `url`, `score`, `sponsored`, `amazonChoice`, `bestSeller`, `amazonPrime`, `title`, `thumbnail`, `import_date`, `p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 47, 55, 'B07WRK8LFR', 'true', 12630, 'JPY', 13640, 1010, 7, 637, 5, 'https://www.amazon.jp/dp/B07WRK8LFR/?tag=46490EC-22', 3185, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 バイタリティ フライパン 26cm 」 ステンレス 底厚 3層構造 IH対応 食洗器対応 10年保証 【日本正規販売品】 66470-260 専用蓋付きセット', 'https://m.media-amazon.com/images/I/51KDY4GJqTL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 バイタリティ フライパン 26cm 」 ステンレス 底厚 3層構造 IH対応 食洗器対応 10年保証 【日本正規販売品】 66470-260 専用蓋付きセット', '13640', '12630', 100, '1', 'Zwilling ツヴィリング 「 バイタリティ フライパン 26cm 」 ステンレス 底厚 3層構造 IH対応 食洗器対応 10年保証 【日本正規販売品】 66470-260 専用蓋付きセット', 'Zwilling ツヴィリング 「 バイタリティ フライパン 26cm 」 ステンレス 底厚 3層構造 IH対応 食洗器対応 10年保証 【日本正規販売品】 66470-260 専用蓋付きセット', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 52, 60, 'B00008WV9H', 'true', 4624, 'JPY', 6600, 1976, 30, 246, 5, 'https://www.amazon.jp/dp/B00008WV9H/?tag=46490EC-22', 1230, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツインシャープ セレクト 」 包丁 研ぎ器 シャープナー 【日本正規販売品】 32601-000', 'https://m.media-amazon.com/images/I/71f6H9saVuL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインシャープ セレクト 」 包丁 研ぎ器 シャープナー 【日本正規販売品】 32601-000', '6600', '4624', 100, '1', 'Zwilling ツヴィリング 「 ツインシャープ セレクト 」 包丁 研ぎ器 シャープナー 【日本正規販売品】 32601-000', 'Zwilling ツヴィリング 「 ツインシャープ セレクト 」 包丁 研ぎ器 シャープナー 【日本正規販売品】 32601-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 54, 62, 'B07LBTTCBN', 'true', 2276, 'JPY', 2860, 584, 20, 97, 5, 'https://www.amazon.jp/dp/B07LBTTCBN/?tag=46490EC-22', 485, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ ピザカッター 」 ステンレス ホイール 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-037', 'https://m.media-amazon.com/images/I/71m7HbNHh+L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ ピザカッター 」 ステンレス ホイール 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-037', '2860', '2276', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ ピザカッター 」 ステンレス ホイール 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-037', 'Zwilling ツヴィリング 「 ツヴィリング プロ ピザカッター 」 ステンレス ホイール 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-037', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 55, 63, 'B0000TCHXO', 'true', 1882, 'JPY', 2200, 318, 14, 147, 5, 'https://www.amazon.jp/dp/B0000TCHXO/?tag=46490EC-22', 735, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ フローティングピーラー 」 横型T字 皮むき 【日本正規販売品】39750-000', 'https://m.media-amazon.com/images/I/61yFT4tP-YL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ フローティングピーラー 」 横型T字 皮むき 【日本正規販売品】39750-000', '2200', '1882', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ フローティングピーラー 」 横型T字 皮むき 【日本正規販売品】39750-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ フローティングピーラー 」 横型T字 皮むき 【日本正規販売品】39750-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 57, 65, 'B0000DGS5R', 'true', 4400, 'JPY', 4950, 550, 11, 41, 5, 'https://www.amazon.jp/dp/B0000DGS5R/?tag=46490EC-22', 205, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン ポルックス ペティナイフ 130mm 日本製 」 包丁 小刀 果物 ナイフ ステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 30725-130', 'https://m.media-amazon.com/images/I/71Q76OYKgnL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン ポルックス ペティナイフ 130mm 日本製 」 包丁 小刀 果物 ナイフ ステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 30725-130', '4950', '4400', 100, '1', 'Zwilling ツヴィリング 「 ツイン ポルックス ペティナイフ 130mm 日本製 」 包丁 小刀 果物 ナイフ ステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 30725-130', 'Zwilling ツヴィリング 「 ツイン ポルックス ペティナイフ 130mm 日本製 」 包丁 小刀 果物 ナイフ ステンレス 食洗機対応 岐阜県関市製 【日本正規販売品】 30725-130', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 25, 86, 'B0000TCHT8', 'true', 1444, 'JPY', 1870, 426, 23, 524, 5, 'https://www.amazon.jp/dp/B0000TCHT8/?tag=46490EC-22', 2620, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピーラー 」 縦型 皮むき 【日本正規販売品】 39700-000', 'https://m.media-amazon.com/images/I/61BffztbNiL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピーラー 」 縦型 皮むき 【日本正規販売品】 39700-000', '1870', '1444', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピーラー 」 縦型 皮むき 【日本正規販売品】 39700-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピーラー 」 縦型 皮むき 【日本正規販売品】 39700-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(1, 59, 67, 'B01893C32C', 'true', 7576, 'JPY', 8800, 1224, 14, 514, 5, 'https://www.amazon.jp/dp/B01893C32C/?tag=46490EC-22', 2570, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 マデュラ プラス 深型フライパン 24cm イタリア製 」 IH対応 アルミ 炒め 鍋 フッ素 コーティング 【日本正規販売品】 66290-246', 'https://m.media-amazon.com/images/I/81TjFW2cNOL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 マデュラ プラス 深型フライパン 24cm イタリア製 」 IH対応 アルミ 炒め 鍋 フッ素 コーティング 【日本正規販売品】 66290-246', '8800', '7576', 100, '1', 'Zwilling ツヴィリング 「 マデュラ プラス 深型フライパン 24cm イタリア製 」 IH対応 アルミ 炒め 鍋 フッ素 コーティング 【日本正規販売品】 66290-246', 'Zwilling ツヴィリング 「 マデュラ プラス 深型フライパン 24cm イタリア製 」 IH対応 アルミ 炒め 鍋 フッ素 コーティング 【日本正規販売品】 66290-246', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 9, 70, 'B076HNFC5L', 'true', 6859, 'JPY', 7700, 841, 11, 46, 5, 'https://www.amazon.jp/dp/B076HNFC5L/?tag=46490EC-22', 230, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ヒノキカッティングボード L 」まな板 日本製 【日本正規販売品】35100-086', 'https://m.media-amazon.com/images/I/91XcZ5tUbZL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ヒノキカッティングボード L 」まな板 日本製 【日本正規販売品】35100-086', '7700', '6859', 100, '1', 'Zwilling ツヴィリング 「 ヒノキカッティングボード L 」まな板 日本製 【日本正規販売品】35100-086', 'Zwilling ツヴィリング 「 ヒノキカッティングボード L 」まな板 日本製 【日本正規販売品】35100-086', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 15, 76, 'B07TSD6BG6', 'true', 3259, 'JPY', 4070, 811, 20, 73, 5, 'https://www.amazon.jp/dp/B07TSD6BG6/?tag=46490EC-22', 365, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ シリコン ターナー 」 耐熱 フライ返し 食洗機対応 ZWILLING Pro【日本正規販売品】 37160-010', 'https://m.media-amazon.com/images/I/61qz6ZzZDyL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ シリコン ターナー 」 耐熱 フライ返し 食洗機対応 ZWILLING Pro【日本正規販売品】 37160-010', '4070', '3259', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ シリコン ターナー 」 耐熱 フライ返し 食洗機対応 ZWILLING Pro【日本正規販売品】 37160-010', 'Zwilling ツヴィリング 「 ツヴィリング プロ シリコン ターナー 」 耐熱 フライ返し 食洗機対応 ZWILLING Pro【日本正規販売品】 37160-010', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 16, 77, 'B0000TCHV6', 'true', 2000, 'JPY', 2200, 200, 9, 279, 5, 'https://www.amazon.jp/dp/B0000TCHV6/?tag=46490EC-22', 1395, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ナイロンホットプレートターナー 」 フライ返し 【日本正規販売品】 39732-000', 'https://m.media-amazon.com/images/I/61RZ07Vf3dL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ナイロンホットプレートターナー 」 フライ返し 【日本正規販売品】 39732-000', '2200', '2000', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ナイロンホットプレートターナー 」 フライ返し 【日本正規販売品】 39732-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ナイロンホットプレートターナー 」 フライ返し 【日本正規販売品】 39732-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 17, 78, 'B005PXZKCA', 'true', 12457, 'JPY', 18700, 6243, 33, 1242, 5, 'https://www.amazon.jp/dp/B005PXZKCA/?tag=46490EC-22', 6210, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 クラシック 料理ばさみ サテン 」 ステンレス キッチン はさみ ドイツ製 【日本正規販売品】 43923-200', 'https://m.media-amazon.com/images/I/51d3uwK3krL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 クラシック 料理ばさみ サテン 」 ステンレス キッチン はさみ ドイツ製 【日本正規販売品】 43923-200', '18700', '12457', 100, '1', 'Zwilling ツヴィリング 「 クラシック 料理ばさみ サテン 」 ステンレス キッチン はさみ ドイツ製 【日本正規販売品】 43923-200', 'Zwilling ツヴィリング 「 クラシック 料理ばさみ サテン 」 ステンレス キッチン はさみ ドイツ製 【日本正規販売品】 43923-200', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 18, 79, 'B09S36G7YZ', 'true', 2192, 'JPY', 2530, 338, 13, 8, 5, 'https://www.amazon.jp/dp/B09S36G7YZ/?tag=46490EC-22', 40, 'false', 'false', 'false', 'true', 'ZWILLING ツヴィリング 「 マルチ ボウル 16cm 2pcsセット 」 食洗機対応 電子レンジ対応 【日本正規販売品】 36200-003', 'https://m.media-amazon.com/images/I/41eKPpxFfgL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツヴィリング 「 マルチ ボウル 16cm 2pcsセット 」 食洗機対応 電子レンジ対応 【日本正規販売品】 36200-003', '2530', '2192', 100, '1', 'ZWILLING ツヴィリング 「 マルチ ボウル 16cm 2pcsセット 」 食洗機対応 電子レンジ対応 【日本正規販売品】 36200-003', 'ZWILLING ツヴィリング 「 マルチ ボウル 16cm 2pcsセット 」 食洗機対応 電子レンジ対応 【日本正規販売品】 36200-003', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 21, 82, 'B07PQNSP8G', 'true', 2715, 'JPY', 3244, 529, 16, 31, 5, 'https://www.amazon.jp/dp/B07PQNSP8G/?tag=46490EC-22', 155, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ スープ レードル 」 ステンレス おたま 大 食洗機対応 ZWILLING Pro 【日本正規販売品】 37160-000', 'https://m.media-amazon.com/images/I/61snlrJ9LBL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ スープ レードル 」 ステンレス おたま 大 食洗機対応 ZWILLING Pro 【日本正規販売品】 37160-000', '3244', '2715', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ スープ レードル 」 ステンレス おたま 大 食洗機対応 ZWILLING Pro 【日本正規販売品】 37160-000', 'Zwilling ツヴィリング 「 ツヴィリング プロ スープ レードル 」 ステンレス おたま 大 食洗機対応 ZWILLING Pro 【日本正規販売品】 37160-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 24, 85, 'B0000TCHYI', 'true', 2500, 'JPY', 2750, 250, 9, 36, 5, 'https://www.amazon.jp/dp/B0000TCHYI/?tag=46490EC-22', 180, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ レードル 小 」 おたま 【日本正規販売品】 39783-000 シルバー', 'https://m.media-amazon.com/images/I/610WJUhDsYL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ レードル 小 」 おたま 【日本正規販売品】 39783-000 シルバー', '2750', '2500', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ レードル 小 」 おたま 【日本正規販売品】 39783-000 シルバー', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ レードル 小 」 おたま 【日本正規販売品】 39783-000 シルバー', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 27, 88, 'B002DGTH8A', 'true', 12116, 'JPY', 14300, 2184, 15, 378, 5, 'https://www.amazon.jp/dp/B002DGTH8A/?tag=46490EC-22', 1890, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツインスペシャル パスタ&ベジタブルクッカー 」 ステンレス パスタ鍋 4.5L IH対応 【日本正規販売品 】 40990-005', 'https://m.media-amazon.com/images/I/61GGHjuoPzL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツインスペシャル パスタ&ベジタブルクッカー 」 ステンレス パスタ鍋 4.5L IH対応 【日本正規販売品 】 40990-005', '14300', '12116', 100, '1', 'Zwilling ツヴィリング 「 ツインスペシャル パスタ&ベジタブルクッカー 」 ステンレス パスタ鍋 4.5L IH対応 【日本正規販売品 】 40990-005', 'Zwilling ツヴィリング 「 ツインスペシャル パスタ&ベジタブルクッカー 」 ステンレス パスタ鍋 4.5L IH対応 【日本正規販売品 】 40990-005', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 30, 91, 'B00021XW3Y', 'true', 1500, 'JPY', 1650, 150, 9, 20, 5, 'https://www.amazon.jp/dp/B00021XW3Y/?tag=46490EC-22', 100, 'false', 'false', 'true', 'false', 'Zwilling ツヴィリング 「 カーディナル メニューナイフ 」 カトラリー テーブルウェア ディナーナイフ 【日本正規販売品 】 12731-001', 'https://m.media-amazon.com/images/I/51xB0kExswL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 カーディナル メニューナイフ 」 カトラリー テーブルウェア ディナーナイフ 【日本正規販売品 】 12731-001', '1650', '1500', 100, '1', 'Zwilling ツヴィリング 「 カーディナル メニューナイフ 」 カトラリー テーブルウェア ディナーナイフ 【日本正規販売品 】 12731-001', 'Zwilling ツヴィリング 「 カーディナル メニューナイフ 」 カトラリー テーブルウェア ディナーナイフ 【日本正規販売品 】 12731-001', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 31, 92, 'B002OL1D4A', 'true', 700, 'JPY', 770, 70, 9, 154, 5, 'https://www.amazon.jp/dp/B002OL1D4A/?tag=46490EC-22', 770, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ハンゼアティック メニューフォーク 」 テーブルウェア カトラリー ディナーフォーク 【日本正規販売品 】 12733-002', 'https://m.media-amazon.com/images/I/51p9eVD5HeL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ハンゼアティック メニューフォーク 」 テーブルウェア カトラリー ディナーフォーク 【日本正規販売品 】 12733-002', '770', '700', 100, '1', 'Zwilling ツヴィリング 「 ハンゼアティック メニューフォーク 」 テーブルウェア カトラリー ディナーフォーク 【日本正規販売品 】 12733-002', 'Zwilling ツヴィリング 「 ハンゼアティック メニューフォーク 」 テーブルウェア カトラリー ディナーフォーク 【日本正規販売品 】 12733-002', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 32, 93, 'B08WH7NMPW', 'true', 1900, 'JPY', 2090, 190, 9, 115, 5, 'https://www.amazon.jp/dp/B08WH7NMPW/?tag=46490EC-22', 575, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 フレッシュ & セーブ ガラス製 真空コンテナ Sサイズ 350ml 」 耐熱ガラス 保存容器 2020年モデル 【日本正規販売品】Fresh & Save 36809-100', 'https://m.media-amazon.com/images/I/61v-S8QywnL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 フレッシュ & セーブ ガラス製 真空コンテナ Sサイズ 350ml 」 耐熱ガラス 保存容器 2020年モデル 【日本正規販売品】Fresh & Save 36809-100', '2090', '1900', 100, '1', 'Zwilling ツヴィリング 「 フレッシュ & セーブ ガラス製 真空コンテナ Sサイズ 350ml 」 耐熱ガラス 保存容器 2020年モデル 【日本正規販売品】Fresh & Save 36809-100', 'Zwilling ツヴィリング 「 フレッシュ & セーブ ガラス製 真空コンテナ Sサイズ 350ml 」 耐熱ガラス 保存容器 2020年モデル 【日本正規販売品】Fresh & Save 36809-100', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 33, 94, 'B00WJPVIU0', 'true', 7660, 'JPY', 8250, 590, 7, 514, 5, 'https://www.amazon.jp/dp/B00WJPVIU0/?tag=46490EC-22', 2570, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 マデュラ プラス フライパン 24cm イタリア製 」 IH対応 アルミ フッ素 コーティング 【日本正規販売品】 66299-246', 'https://m.media-amazon.com/images/I/71AbOp02p8L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 マデュラ プラス フライパン 24cm イタリア製 」 IH対応 アルミ フッ素 コーティング 【日本正規販売品】 66299-246', '8250', '7660', 100, '1', 'Zwilling ツヴィリング 「 マデュラ プラス フライパン 24cm イタリア製 」 IH対応 アルミ フッ素 コーティング 【日本正規販売品】 66299-246', 'Zwilling ツヴィリング 「 マデュラ プラス フライパン 24cm イタリア製 」 IH対応 アルミ フッ素 コーティング 【日本正規販売品】 66299-246', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 34, 95, 'B07M8FL9FZ', 'true', 3516, 'JPY', 3740, 224, 6, 15, 5, 'https://www.amazon.jp/dp/B07M8FL9FZ/?tag=46490EC-22', 75, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ しゃもじ 」ステンレス シリコン 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-034', 'https://m.media-amazon.com/images/I/61ektpPBscL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ しゃもじ 」ステンレス シリコン 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-034', '3740', '3516', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ しゃもじ 」ステンレス シリコン 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-034', 'Zwilling ツヴィリング 「 ツヴィリング プロ しゃもじ 」ステンレス シリコン 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-034', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 40, 101, 'B00021XVPS', 'true', 1322, 'JPY', 1650, 328, 20, 38, 5, 'https://www.amazon.jp/dp/B00021XVPS/?tag=46490EC-22', 190, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ アップルコアラー 」 りんご 芯抜き【日本正規販売品】 39705-000', 'https://m.media-amazon.com/images/I/71QuG42rwoL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ アップルコアラー 」 りんご 芯抜き【日本正規販売品】 39705-000', '1650', '1322', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ アップルコアラー 」 りんご 芯抜き【日本正規販売品】 39705-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ アップルコアラー 」 りんご 芯抜き【日本正規販売品】 39705-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 45, 106, 'B0000ACOUU', 'true', 17027, 'JPY', 26400, 9373, 36, 357, 5, 'https://www.amazon.jp/dp/B0000ACOUU/?tag=46490EC-22', 1785, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 プロフェッショナル S シェフナイフ 200mm 幅広 ドイツ製 」 牛刀 洋包丁 包丁 全鋼 ステンレス 食洗機対応 ゾーリンゲン 【日本正規販売品】31021-201', 'https://m.media-amazon.com/images/I/318rBEXj6CL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 プロフェッショナル S シェフナイフ 200mm 幅広 ドイツ製 」 牛刀 洋包丁 包丁 全鋼 ステンレス 食洗機対応 ゾーリンゲン 【日本正規販売品】31021-201', '26400', '17027', 100, '1', 'Zwilling ツヴィリング 「 プロフェッショナル S シェフナイフ 200mm 幅広 ドイツ製 」 牛刀 洋包丁 包丁 全鋼 ステンレス 食洗機対応 ゾーリンゲン 【日本正規販売品】31021-201', 'Zwilling ツヴィリング 「 プロフェッショナル S シェフナイフ 200mm 幅広 ドイツ製 」 牛刀 洋包丁 包丁 全鋼 ステンレス 食洗機対応 ゾーリンゲン 【日本正規販売品】31021-201', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 47, 108, 'B00TYKAM6Y', 'true', 5918, 'JPY', 7700, 1782, 23, 459, 5, 'https://www.amazon.jp/dp/B00TYKAM6Y/?tag=46490EC-22', 2295, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン 料理バサミ 黒 」 ステンレス キッチン はさみ 【日本正規販売品】43967-200', 'https://m.media-amazon.com/images/I/61kvcj6fLtL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン 料理バサミ 黒 」 ステンレス キッチン はさみ 【日本正規販売品】43967-200', '7700', '5918', 100, '1', 'Zwilling ツヴィリング 「 ツイン 料理バサミ 黒 」 ステンレス キッチン はさみ 【日本正規販売品】43967-200', 'Zwilling ツヴィリング 「 ツイン 料理バサミ 黒 」 ステンレス キッチン はさみ 【日本正規販売品】43967-200', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 48, 109, 'B0000TCHXE', 'true', 2958, 'JPY', 3850, 892, 23, 33, 5, 'https://www.amazon.jp/dp/B0000TCHXE/?tag=46490EC-22', 165, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ 味噌こしセット 」 【日本正規販売品】 39749-000', 'https://m.media-amazon.com/images/I/81VNPb3jPBL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ 味噌こしセット 」 【日本正規販売品】 39749-000', '3850', '2958', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ 味噌こしセット 」 【日本正規販売品】 39749-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ 味噌こしセット 」 【日本正規販売品】 39749-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 49, 110, 'B0000TCHTS', 'true', 1882, 'JPY', 2200, 318, 14, 139, 5, 'https://www.amazon.jp/dp/B0000TCHTS/?tag=46490EC-22', 695, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピザカッター 」 【日本正規販売品】 39707-000', 'https://m.media-amazon.com/images/I/61eZmeaJ97L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピザカッター 」 【日本正規販売品】 39707-000', '2200', '1882', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピザカッター 」 【日本正規販売品】 39707-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ピザカッター 」 【日本正規販売品】 39707-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 50, 111, 'B0019JTLLK', 'true', 1700, 'JPY', 1870, 170, 9, 295, 5, 'https://www.amazon.jp/dp/B0019JTLLK/?tag=46490EC-22', 1475, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズグレーター 200mm 」 チーズ下ろし 【日本正規販売品】 39708-000', 'https://m.media-amazon.com/images/I/71dkPKz8K3L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズグレーター 200mm 」 チーズ下ろし 【日本正規販売品】 39708-000', '1870', '1700', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズグレーター 200mm 」 チーズ下ろし 【日本正規販売品】 39708-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズグレーター 200mm 」 チーズ下ろし 【日本正規販売品】 39708-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 19, 132, 'B0016ILZEU', 'true', 3000, 'JPY', 3850, 850, 22, 76, 5, 'https://www.amazon.jp/dp/B0016ILZEU/?tag=46490EC-22', 380, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 チャイルド カトラリーセット 4pcs テディ 」 テーブルウェア 子供 ギフト 【日本正規販売品】 07012-210', 'https://m.media-amazon.com/images/I/61Em+loEbzL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 チャイルド カトラリーセット 4pcs テディ 」 テーブルウェア 子供 ギフト 【日本正規販売品】 07012-210', '3850', '3000', 100, '1', 'Zwilling ツヴィリング 「 チャイルド カトラリーセット 4pcs テディ 」 テーブルウェア 子供 ギフト 【日本正規販売品】 07012-210', 'Zwilling ツヴィリング 「 チャイルド カトラリーセット 4pcs テディ 」 テーブルウェア 子供 ギフト 【日本正規販売品】 07012-210', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 55, 116, 'B0000TCHUC', 'true', 1582, 'JPY', 1870, 288, 15, 30, 5, 'https://www.amazon.jp/dp/B0000TCHUC/?tag=46490EC-22', 150, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ホイスク 」 泡立て ホイッパー 【日本正規販売品】 39715-000', 'https://m.media-amazon.com/images/I/61nLm049ZQL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ホイスク 」 泡立て ホイッパー 【日本正規販売品】 39715-000', '1870', '1582', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ホイスク 」 泡立て ホイッパー 【日本正規販売品】 39715-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ホイスク 」 泡立て ホイッパー 【日本正規販売品】 39715-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 56, 117, 'B07LBPK7TN', 'true', 2637, 'JPY', 2860, 223, 8, 21, 5, 'https://www.amazon.jp/dp/B07LBPK7TN/?tag=46490EC-22', 105, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズスライサー 」 ステンレス スライス 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-020', 'https://m.media-amazon.com/images/I/61suvQGHXZL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズスライサー 」 ステンレス スライス 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-020', '2860', '2637', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズスライサー 」 ステンレス スライス 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-020', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズスライサー 」 ステンレス スライス 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-020', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 57, 118, 'B01M1HBX96', 'true', 20000, 'JPY', 30800, 10800, 35, 42, 5, 'https://www.amazon.jp/dp/B01M1HBX96/?tag=46490EC-22', 210, 'false', 'false', 'false', 'true', 'MIYABI ミヤビ 「 5000FC-D 牛刀 200mm 日本製 」 ダマスカス シェフナイフ 包丁 多層鋼 ステンレス 岐阜県関市製【日本正規販売品】 34681-201', 'https://m.media-amazon.com/images/I/51SxqZ3L27L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'MIYABI ミヤビ 「 5000FC-D 牛刀 200mm 日本製 」 ダマスカス シェフナイフ 包丁 多層鋼 ステンレス 岐阜県関市製【日本正規販売品】 34681-201', '30800', '20000', 100, '1', 'MIYABI ミヤビ 「 5000FC-D 牛刀 200mm 日本製 」 ダマスカス シェフナイフ 包丁 多層鋼 ステンレス 岐阜県関市製【日本正規販売品】 34681-201', 'MIYABI ミヤビ 「 5000FC-D 牛刀 200mm 日本製 」 ダマスカス シェフナイフ 包丁 多層鋼 ステンレス 岐阜県関市製【日本正規販売品】 34681-201', '1', '1', 'xxx', 20000, 1, 1, 8),
(2, 59, 120, 'B075RYT3FM', 'true', 7132, 'JPY', 8140, 1008, 12, 107, 5, 'https://www.amazon.jp/dp/B075RYT3FM/?tag=46490EC-22', 535, 'false', 'false', 'false', 'true', 'スポンサー広告 - Ballarini バッラリーニ 「 トリノ 深型フライパン 24cm イタリア製 」 炒め鍋 IH対応 グラニチウム 5層コーティング 【日本正規販売品】 75001-765', 'https://m.media-amazon.com/images/I/819dcBCLqeL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Ballarini バッラリーニ 「 トリノ 深型フライパン 24cm イタリア製 」 炒め鍋 IH対応 グラニチウム 5層コーティング 【日本正規販売品】 75001-765', '8140', '7132', 100, '1', 'スポンサー広告 - Ballarini バッラリーニ 「 トリノ 深型フライパン 24cm イタリア製 」 炒め鍋 IH対応 グラニチウム 5層コーティング 【日本正規販売品】 75001-765', 'スポンサー広告 - Ballarini バッラリーニ 「 トリノ 深型フライパン 24cm イタリア製 」 炒め鍋 IH対応 グラニチウム 5層コーティング 【日本正規販売品】 75001-765', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 8, 122, 'B001FSJF34', 'true', 2736, 'JPY', 3300, 564, 17, 1040, 5, 'https://www.amazon.jp/dp/B001FSJF34/?tag=46490EC-22', 5200, 'false', 'false', 'false', 'true', 'Henckels ヘンケルス 「 HIスタイル 三徳包丁 ブラック 180mm 日本製 」三徳 包丁 ステンレス 食洗機対応 岐阜県関市製【日本正規販売品】 16717-481', 'https://m.media-amazon.com/images/I/71xQ3zzMLbL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Henckels ヘンケルス 「 HIスタイル 三徳包丁 ブラック 180mm 日本製 」三徳 包丁 ステンレス 食洗機対応 岐阜県関市製【日本正規販売品】 16717-481', '3300', '2736', 100, '1', 'Henckels ヘンケルス 「 HIスタイル 三徳包丁 ブラック 180mm 日本製 」三徳 包丁 ステンレス 食洗機対応 岐阜県関市製【日本正規販売品】 16717-481', 'Henckels ヘンケルス 「 HIスタイル 三徳包丁 ブラック 180mm 日本製 」三徳 包丁 ステンレス 食洗機対応 岐阜県関市製【日本正規販売品】 16717-481', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 15, 128, 'B00015M7I2', 'true', 6631, 'JPY', 8887, 2256, 25, 270, 5, 'https://www.amazon.jp/dp/B00015M7I2/?tag=46490EC-22', 1350, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン トリバサミ 」鶏 鳥 料理 ハサミ 【日本正規販売品】42914-001', 'https://m.media-amazon.com/images/I/41esiE1KFhL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン トリバサミ 」鶏 鳥 料理 ハサミ 【日本正規販売品】42914-001', '8887', '6631', 100, '1', 'Zwilling ツヴィリング 「 ツイン トリバサミ 」鶏 鳥 料理 ハサミ 【日本正規販売品】42914-001', 'Zwilling ツヴィリング 「 ツイン トリバサミ 」鶏 鳥 料理 ハサミ 【日本正規販売品】42914-001', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 17, 130, 'B07LB54YXM', 'true', 2255, 'JPY', 2535, 280, 11, 30, 5, 'https://www.amazon.jp/dp/B07LB54YXM/?tag=46490EC-22', 150, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ ミートフォーク 」 ステンレス カービング 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-003', 'https://m.media-amazon.com/images/I/41WRfmOgasL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ ミートフォーク 」 ステンレス カービング 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-003', '2535', '2255', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ ミートフォーク 」 ステンレス カービング 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-003', 'Zwilling ツヴィリング 「 ツヴィリング プロ ミートフォーク 」 ステンレス カービング 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-003', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 22, 135, 'B00V9PXDWW', 'true', 5007, 'JPY', 6050, 1043, 17, 8, 5, 'https://www.amazon.jp/dp/B00V9PXDWW/?tag=46490EC-22', 40, 'false', 'false', 'false', 'true', 'ZWILLING ツインフィン用 ナイフブロック4本用単品 30847-550', 'https://m.media-amazon.com/images/I/81qaqyNGDpL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ZWILLING ツインフィン用 ナイフブロック4本用単品 30847-550', '6050', '5007', 100, '1', 'ZWILLING ツインフィン用 ナイフブロック4本用単品 30847-550', 'ZWILLING ツインフィン用 ナイフブロック4本用単品 30847-550', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 26, 139, 'B0019JRPPY', 'true', 2332, 'JPY', 2750, 418, 15, 14, 5, 'https://www.amazon.jp/dp/B0019JRPPY/?tag=46490EC-22', 70, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ポテトマッシャー 」 【日本正規販売品】39759-000', 'https://m.media-amazon.com/images/I/61m+TR43bsL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ポテトマッシャー 」 【日本正規販売品】39759-000', '2750', '2332', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ポテトマッシャー 」 【日本正規販売品】39759-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ ポテトマッシャー 」 【日本正規販売品】39759-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 29, 142, 'B0019JPLYQ', 'true', 1656, 'JPY', 1870, 214, 11, 110, 5, 'https://www.amazon.jp/dp/B0019JPLYQ/?tag=46490EC-22', 550, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズスライサー 」 スライス チーズカッター 【日本正規販売品】 39709-000', 'https://m.media-amazon.com/images/I/71rBkdij91L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズスライサー 」 スライス チーズカッター 【日本正規販売品】 39709-000', '1870', '1656', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズスライサー 」 スライス チーズカッター 【日本正規販売品】 39709-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ チーズスライサー 」 スライス チーズカッター 【日本正規販売品】 39709-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 33, 146, 'B000X1YC7S', 'true', 1282, 'JPY', 1650, 368, 22, 4140, 5, 'https://www.amazon.jp/dp/B000X1YC7S/?tag=46490EC-22', 20700, 'false', 'false', 'false', 'false', 'Henckels ヘンケルス 「 ケルン 料理ばさみ 」 キッチンハサミ 【日本正規販売品】 11515-001', 'https://m.media-amazon.com/images/I/71O0mHqBdHL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Henckels ヘンケルス 「 ケルン 料理ばさみ 」 キッチンハサミ 【日本正規販売品】 11515-001', '1650', '1282', 100, '1', 'Henckels ヘンケルス 「 ケルン 料理ばさみ 」 キッチンハサミ 【日本正規販売品】 11515-001', 'Henckels ヘンケルス 「 ケルン 料理ばさみ 」 キッチンハサミ 【日本正規販売品】 11515-001', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 34, 147, 'B06WLMP1QN', 'true', 13537, 'JPY', 22000, 8463, 38, 17, 5, 'https://www.amazon.jp/dp/B06WLMP1QN/?tag=46490EC-22', 85, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ディプロム シェフナイフ 210mm 日本製 」 牛刀 洋包丁 包丁 ステンレス 岐阜県関市製【日本正規販売品】 54201-211', 'https://m.media-amazon.com/images/I/41iMCGZR4nL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ディプロム シェフナイフ 210mm 日本製 」 牛刀 洋包丁 包丁 ステンレス 岐阜県関市製【日本正規販売品】 54201-211', '22000', '13537', 100, '1', 'Zwilling ツヴィリング 「 ディプロム シェフナイフ 210mm 日本製 」 牛刀 洋包丁 包丁 ステンレス 岐阜県関市製【日本正規販売品】 54201-211', 'Zwilling ツヴィリング 「 ディプロム シェフナイフ 210mm 日本製 」 牛刀 洋包丁 包丁 ステンレス 岐阜県関市製【日本正規販売品】 54201-211', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 36, 149, 'B08G84HX9F', 'true', 3076, 'JPY', 3300, 224, 7, 4, 5, 'https://www.amazon.jp/dp/B08G84HX9F/?tag=46490EC-22', 20, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ナウ S 料理バサミ ブルー 」キッチン ハサミ 【日本正規販売品】Now S 41180-001', 'https://m.media-amazon.com/images/I/61ZSMNSM3PL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ナウ S 料理バサミ ブルー 」キッチン ハサミ 【日本正規販売品】Now S 41180-001', '3300', '3076', 100, '1', 'Zwilling ツヴィリング 「 ナウ S 料理バサミ ブルー 」キッチン ハサミ 【日本正規販売品】Now S 41180-001', 'Zwilling ツヴィリング 「 ナウ S 料理バサミ ブルー 」キッチン ハサミ 【日本正規販売品】Now S 41180-001', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 42, 155, 'B07LBTJGYM', 'true', 2734, 'JPY', 2970, 236, 8, 17, 5, 'https://www.amazon.jp/dp/B07LBTJGYM/?tag=46490EC-22', 85, 'false', 'false', 'false', 'true', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズナイフ 」 ステンレス スライス スライサー 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-017', 'https://m.media-amazon.com/images/I/61BMTqEG55L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズナイフ 」 ステンレス スライス スライサー 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-017', '2970', '2734', 100, '1', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズナイフ 」 ステンレス スライス スライサー 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-017', 'Zwilling ツヴィリング 「 ツヴィリング プロ チーズナイフ 」 ステンレス スライス スライサー 食洗機対応 ZWILLING Pro 【日本正規販売品】37160-017', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 47, 160, 'B0000TCHTI', 'true', 1500, 'JPY', 1650, 150, 9, 22, 5, 'https://www.amazon.jp/dp/B0000TCHTI/?tag=46490EC-22', 110, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ グレープフルーツナイフ 」 【日本正規販売品】 39703-000', 'https://m.media-amazon.com/images/I/61aVv811QkL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ グレープフルーツナイフ 」 【日本正規販売品】 39703-000', '1650', '1500', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ グレープフルーツナイフ 」 【日本正規販売品】 39703-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ グレープフルーツナイフ 」 【日本正規販売品】 39703-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 48, 161, 'B00021XVPI', 'true', 1422, 'JPY', 1650, 228, 14, 2, 5, 'https://www.amazon.jp/dp/B00021XVPI/?tag=46490EC-22', 10, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ メロンボーラー 」 【日本正規販売品】 39704-000', 'https://m.media-amazon.com/images/I/6108bZVTULL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 ツイン キュイジーヌ メロンボーラー 」 【日本正規販売品】 39704-000', '1650', '1422', 100, '1', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ メロンボーラー 」 【日本正規販売品】 39704-000', 'Zwilling ツヴィリング 「 ツイン キュイジーヌ メロンボーラー 」 【日本正規販売品】 39704-000', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 49, 162, 'B002OL1D7W', 'true', 591, 'JPY', 757, 166, 22, 112, 5, 'https://www.amazon.jp/dp/B002OL1D7W/?tag=46490EC-22', 560, 'false', 'false', 'false', 'false', 'Zwilling ツヴィリング 「 プランゾー メニュースプーン 」 カトラリー テーブルウェア ディナースプーン 12050-703', 'https://m.media-amazon.com/images/I/411jXFBOOIL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'Zwilling ツヴィリング 「 プランゾー メニュースプーン 」 カトラリー テーブルウェア ディナースプーン 12050-703', '757', '591', 100, '1', 'Zwilling ツヴィリング 「 プランゾー メニュースプーン 」 カトラリー テーブルウェア ディナースプーン 12050-703', 'Zwilling ツヴィリング 「 プランゾー メニュースプーン 」 カトラリー テーブルウェア ディナースプーン 12050-703', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 50, 163, 'B09HQ23QVY', 'true', 1871, 'JPY', 1980, 109, 6, 24, 5, 'https://www.amazon.jp/dp/B09HQ23QVY/?tag=46490EC-22', 120, 'false', 'false', 'false', 'true', 'ヘンケルス カッティングボード', 'https://m.media-amazon.com/images/I/211xFAVH0+L._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'ヘンケルス カッティングボード', '1980', '1871', 100, '1', 'ヘンケルス カッティングボード', 'ヘンケルス カッティングボード', '1', '1', 'xxx', 20000, 1, 1, 8),
(3, 60, 173, 'B075RYL2NP', 'true', 6945, 'JPY', 7480, 535, 7, 269, 5, 'https://www.amazon.jp/dp/B075RYL2NP/?tag=46490EC-22', 1345, 'false', 'false', 'false', 'true', 'スポンサー広告 - Ballarini バッラリーニ 「 ローマ フライパン 28cm イタリア製 」 ガス火専用 グラニチウム 5層コーティング 【日本正規販売品】 75001-791', 'https://m.media-amazon.com/images/I/81V+s3-7cJL._AC_UL400_.jpg', '2023-06-12 11:37:30', 0, 'スポンサー広告 - Ballarini バッラリーニ 「 ローマ フライパン 28cm イタリア製 」 ガス火専用 グラニチウム 5層コーティング 【日本正規販売品】 75001-791', '7480', '6945', 100, '1', 'スポンサー広告 - Ballarini バッラリーニ 「 ローマ フライパン 28cm イタリア製 」 ガス火専用 グラニチウム 5層コーティング 【日本正規販売品】 75001-791', 'スポンサー広告 - Ballarini バッラリーニ 「 ローマ フライパン 28cm イタリア製 」 ガス火専用 グラニチウム 5層コーティング 【日本正規販売品】 75001-791', '1', '1', 'xxx', 20000, 1, 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(103, '103.jpg', 77),
(104, '104.jpg', 78);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days. No questions asked.', 'service-5.png'),
(6, 'Free Shipping', 'Enjoy free shipping in U.A.E. More countries to be added sooner.', 'service-6.png'),
(7, 'Fast Delivery', 'Items are shipped in 24 hours.', 'service-7.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `home` varchar(255) NOT NULL,
  `visitor_counter` int(100) DEFAULT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `home`, `visitor_counter`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.jpg', 'https://4649.blog', 120, '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2023. All Rights Reserved. | Nơi tập hợp sale trên Amazon', 'Tokyo, Japan', 'support@4649.blog', '', '', '', 'support@4649.blog', 'Visitor Email Message from4649.blog', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 10, 10, 10, '4649.blog | Nơi tập hợp sale Amazon mọi lúc mọi nơi', 'sale amazon, giảm giá amazon, amazon coupon, amazon khuyến mãi, amazon deal', '4649.blog nơi tập hợp toàn bộ sale chất lượng của amazon', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Sản phẩm sale nhiều nhất', 'Tìm sản phẩm sale nhiều nhất tại đây', 'Sản phẩm sale mới nhất', 'Sản phẩm sale mới nhất', 'Sản phẩm sale được review nhiều nhất', 'Sản phẩm sale được review nhiều nhất', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Follow 4649.blog để có những thông tin mới nhất', 'admin@fashionys.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: USA', '<!-- Google Analytics -->\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-8564299-3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'xxxxxxxxxxxxxxxxxx\');\r\n</script>\r\n', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'ようこそ 4649.blog', 'Sale về  các sản phẩm về làm đẹp ', 'Các sản phẩm làm đẹp', '', 'Right'),
(2, 'slider-2.png', 'ようこそ 4649.blog', '', 'Read More', '#', 'Right'),
(3, 'slider-3.png', 'ようこそ 4649.blog', '', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/hoisansaleonhat', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/hoisansaleonhat', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(2, 'Amazon Flash Sale', 1),
(3, 'Amazon Basic', 1),
(4, 'Amazon danh mục', 1),
(1, 'Amazon hàng nhập khẩu', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Hammad Hassan', 'hai.phanson@gmail.com', '', '25f9e794323b453885f5181f1b624d0b', 'user-1.jpg', 'Super Admin', 'Active'),
(13, 'Syed Hammad Hassan Bukhari', 'hai.phanson@gmail.com', '', '25f9e794323b453885f5181f1b624d0b', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
