-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2018 at 03:59 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arfa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(2, 1, 'MALAY CUISINE', '2018-12-09 06:03:56'),
(3, 1, 'WESTERN CUISINE', '2018-12-09 06:04:17'),
(4, 1, 'CHINESE CUISINE', '2018-12-09 06:35:51'),
(5, 1, 'INDIAN CUISINE', '2018-12-09 06:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(0, 1, 'NAANA', 'NANA', 'SEDAP KE?', '2018-12-09 06:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(6, 4, 1, 'Restoran Tong Sheng', 'Restoran-Tong-Sheng', '<p>The restaurant starts its business at 5.30pm, but the queue starts&nbsp;forming an hour before it even opens. We arrived at 5.40pm, and were only seated around 9pm.</p>\r\n\r\n<p>Run&nbsp;by a father (Master Lee) and son (Chef Lee) duo, Restoran Tong Sheng is established in 2009. Master Lee has been honing his culinary skills since the age of 12 as a hokkien mee chef.</p>\r\n', 'noimage.jpg', '2018-12-09 06:40:38'),
(9, 5, 1, 'Restaurant Thaqwa Corner', 'Restaurant-Thaqwa-Corner', '<p>CUISINES</p>\r\n\r\n<p>Asian, Malaysian</p>\r\n\r\n<p>LOCATION</p>\r\n\r\n<p>No 1 Jalan Balakong,&nbsp;Balakong 43300,&nbsp;Malaysia</p>\r\n', 'noimage.jpg', '2018-12-10 07:47:11'),
(10, 2, 1, 'Ehsan Corner', 'Ehsan-Corner', '<p>Malay Restaurant</p>\r\n\r\n<p>Sungai Besi</p>\r\n', 'noimage.jpg', '2018-12-10 07:48:33'),
(11, 4, 1, 'Makette Steamboat & Grill', 'Makette-Steamboat-Grill', '<p>Makette, bukan sekadar steamboat.&nbsp;</p>\r\n', 'noimage.jpg', '2018-12-10 07:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`, `role`) VALUES
(1, 'afeeq', '22010', 'afeeq@gmail.com', 'afeeq', 'b63121f9b67cb74b4f8116fe6a34f226', '2018-12-09 05:13:48', 0),
(2, 'ali', '11111', 'ali@yahoo.com', 'ali', '86318e52f5ed4801abe1d13d509443de', '2018-12-09 05:14:22', 0),
(3, 'admin', '232323', 'admin@yahoo.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-12-09 05:27:07', 1),
(4, 'm', '68100', 'm@gmail.com', 'ma', 'b74df323e3939b563635a2cba7a7afba', '2018-12-10 05:15:18', 0),
(5, 'arep', '111111', 'arep@gmail.com', 'arep', '74b87337454200d4d33f80c4663dc5e5', '2018-12-10 06:21:59', 0),
(6, 'farah', '2334', 'farah@gmail.com', 'farah', '9b0f4d720720fd55436ac7f07ac8a840', '2018-12-10 08:26:37', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
