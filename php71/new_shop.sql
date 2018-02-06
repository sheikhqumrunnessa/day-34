-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2018 at 08:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'Iphone', 1, '2018-01-27 10:53:19', '2018-01-27 11:48:45'),
(2, 'Samsung', 'Samsung', 1, '2018-01-27 10:57:25', '2018-01-31 11:22:07'),
(4, 'Lenovo', 'Lenovo', 1, '2018-01-27 11:42:53', '2018-01-31 11:22:06'),
(5, 'OPPO', 'OPPO', 1, '2018-01-27 11:43:10', '2018-01-27 11:43:10'),
(6, 'Nokia', 'Nokia', 1, '2018-01-27 11:43:20', '2018-01-31 11:22:04'),
(7, 'Symphony', 'Symphony', 1, '2018-01-27 11:43:33', '2018-01-27 11:43:33'),
(9, 'LG', 'LG', 1, '2018-01-27 11:44:24', '2018-01-27 11:44:24'),
(10, 'Google', 'Google', 1, '2018-01-27 11:44:48', '2018-01-27 11:48:33'),
(11, 'Sony', 'Sony', 1, '2018-01-27 11:45:33', '2018-01-27 11:45:33'),
(12, 'HTC', 'HTC', 1, '2018-01-27 11:45:40', '2018-01-27 11:50:48'),
(27, 'Nokia', 'Nokia', 0, '2018-01-28 09:30:01', '2018-01-28 13:08:01'),
(28, 'Febric', 'Febric', 1, '2018-01-29 09:09:06', '2018-01-29 09:09:06'),
(29, 'Jens', 'Jens', 1, '2018-01-31 11:22:28', '2018-01-31 11:22:28'),
(30, 'Pant', 'Pant', 1, '2018-01-31 11:22:36', '2018-01-31 11:22:36'),
(31, 'Shirt', 'Shirt', 1, '2018-01-31 11:22:45', '2018-01-31 11:22:45'),
(32, 'Apex', 'Apex', 1, '2018-01-31 11:23:31', '2018-01-31 11:23:31'),
(33, 'Bata', 'Bata', 1, '2018-01-31 11:23:39', '2018-01-31 11:23:39'),
(34, 'Jennys', 'Jennys', 1, '2018-01-31 11:26:04', '2018-01-31 11:26:04'),
(35, 'Nike', 'Nike', 1, '2018-01-31 11:26:10', '2018-01-31 11:26:10'),
(36, 'Hash Puppies', 'Hash Puppies', 1, '2018-01-31 11:27:46', '2018-01-31 11:27:46'),
(37, 'Book', 'Book', 1, '2018-01-31 11:28:26', '2018-01-31 11:28:26'),
(38, 'Pens', 'Pens', 1, '2018-01-31 11:28:44', '2018-01-31 11:28:44'),
(39, 'Pencil', 'Pencil', 1, '2018-01-31 11:28:56', '2018-01-31 11:28:56'),
(40, 'Paper', 'Paper', 1, '2018-01-31 11:29:06', '2018-01-31 11:29:06'),
(41, 'Asus', 'Asus', 1, '2018-01-31 11:29:55', '2018-01-31 11:29:55'),
(42, 'Dell', 'Dell', 1, '2018-01-31 11:30:47', '2018-01-31 11:30:47'),
(43, 'Mack', 'Mack', 1, '2018-01-31 11:30:55', '2018-01-31 11:30:55'),
(44, 'Lenovo', 'Lenovo', 1, '2018-01-31 11:31:06', '2018-01-31 11:31:06'),
(45, 'Toshiba', 'Toshiba', 1, '2018-01-31 11:31:17', '2018-01-31 11:31:17'),
(46, 'Cricket', 'Cricket', 1, '2018-01-31 14:23:47', '2018-01-31 14:23:47'),
(47, 'Football', 'Football', 1, '2018-01-31 14:23:55', '2018-01-31 14:23:55'),
(48, 'Tennis', 'Tennis', 1, '2018-01-31 14:24:04', '2018-01-31 14:24:04'),
(49, 'Basketball', 'Basketball', 1, '2018-01-31 14:24:22', '2018-01-31 14:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(10, 'Cloth', 'The related words fabric and cloth are often used in textile assembly trades (such as tailoring and dressmaking) as synonyms for textile.', 1, '2018-01-31 10:34:45', '2018-01-31 10:34:45'),
(11, 'Mobile', 'A mobile phone, known as a cell phone in North America, is a portable telephone that can make and receive calls over a radio frequency link while the user is moving within a telephone service area.', 1, '2018-01-31 10:35:52', '2018-01-31 10:35:52'),
(12, 'Electronics', 'Electronics is the study of how to control the flow of electrons. It deals with circuits made up of components that control the flow of electricity', 1, '2018-01-31 10:37:10', '2018-01-31 10:37:10'),
(13, 'Cars', 'Shop for new cars and new car prices at Kelley Blue Book\'s KBB.com. Search and compare hundreds of new car vehicle categories and models.', 1, '2018-01-31 10:38:28', '2018-01-31 10:38:28'),
(14, 'Sports', 'Sport or sports includes all forms of competitive physical activity or games which, through casual or organised participation.', 1, '2018-01-31 10:39:45', '2018-01-31 10:39:45'),
(15, 'Education', 'Education is the backbone of a nation.', 0, '2018-01-31 10:40:33', '2018-01-31 21:56:40'),
(16, 'Business', 'An organization or economic system where goods and services are exchanged for one another or for money', 0, '2018-01-31 10:41:23', '2018-01-31 21:56:45'),
(17, 'Jobs', 'Quickly search more than 200k job openings from local employers who want to hire YOU. Find your perfect job and apply today. Jobs.com - a better job search experience.', 0, '2018-01-31 10:42:18', '2018-01-31 21:56:49'),
(18, 'House', 'A house is a building that functions as a home, ranging from simple dwellings such as rudimentary huts of nomadic tribes and the improvised shacks in shantytowns to complex, fixed structures of wood.', 0, '2018-01-31 10:43:01', '2018-01-31 21:57:36'),
(19, 'Service', 'Service (economics), the non-material equivalent of a good in economics and marketing, within a service–product continuum.', 0, '2018-01-31 10:43:42', '2018-01-31 21:57:39'),
(20, 'Shoes', 'Shoes', 1, '2018-01-31 11:23:18', '2018-01-31 11:23:18'),
(21, 'Cumputer', 'Cumputer', 1, '2018-01-31 11:29:42', '2018-01-31 11:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_24_082704_create_categories_table', 2),
(4, '2018_01_27_164516_create_brands_table', 3),
(5, '2018_01_29_141136_create_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(7, 10, 31, 'Shirt', 500.00, 1, '1', '<p>1</p>', 'product-images/Shirt.jpg', 1, '2018-01-31 13:37:03', '2018-01-31 13:37:03'),
(8, 11, 2, 'Note-8', 520000.00, 1, 'Samsung', '<p>Samsung</p>', 'product-images/Note-8.jpg', 1, '2018-01-31 13:47:18', '2018-01-31 13:47:18'),
(9, 20, 33, 'Bata', 1000.00, 1, 'Bata', '<p>Bata</p>', 'product-images/Bata.jpg', 1, '2018-01-31 13:49:27', '2018-01-31 13:49:27'),
(10, 11, 1, 'Iphone-6s-Plus', 50000.00, 1, 'Iphone', '<p>Iphone</p>', 'product-images/Iphone-6s-Plus.jpg', 1, '2018-01-31 13:52:15', '2018-01-31 13:52:15'),
(11, 10, 30, 'Pant', 1000.00, 20, 'Full pant', '<p>Full pant</p>', 'product-images/Pant.jpg', 1, '2018-01-31 13:52:57', '2018-01-31 13:52:57'),
(12, 11, 11, 'Sony', 200000.00, 1, 'sony', '<p>sony</p>', 'product-images/Sony.jpg', 1, '2018-01-31 13:56:25', '2018-01-31 13:56:25'),
(13, 15, 38, 'Metador', 5.00, 50000, 'Metador', '<p>Metador</p>', 'product-images/Metador.jpg', 1, '2018-01-31 13:57:31', '2018-01-31 13:57:31'),
(14, 11, 6, 'Nokia-10', 5000.00, 1, 'Nokia', '<p>Nokia</p>', 'product-images/Nokia-10.jpg', 1, '2018-01-31 14:17:37', '2018-01-31 14:17:37'),
(15, 11, 5, 'OPPO-F5', 10000.00, 1, 'OPPO F5', '<p>OPPO F5</p>', 'product-images/OPPO-F5.jpg', 1, '2018-01-31 14:18:26', '2018-01-31 14:18:26'),
(16, 20, 32, 'Apex', 2000.00, 1, 'Apex', '<p>Apex</p>', 'product-images/Apex.jpg', 1, '2018-01-31 14:19:13', '2018-01-31 14:19:13'),
(17, 11, 1, 'Iphone-X', 100000.00, 1, 'Iphone-X', '<p>Iphone-X</p>', 'product-images/Iphone-X.jpg', 1, '2018-01-31 14:19:49', '2018-01-31 14:19:49'),
(18, 10, 28, 'T-shirt', 1000.00, 1, 'T-shirt', '<p>T-shirt</p>', 'product-images/T-shirt.png', 1, '2018-01-31 14:20:59', '2018-01-31 14:20:59'),
(19, 21, 42, 'Dell', 5000.00, 1, 'Dell', '<p>Dell</p>', 'product-images/Dell.png', 1, '2018-01-31 14:22:13', '2018-01-31 14:22:13'),
(20, 21, 4, 'Lenovo-10', 120120.00, 1, 'Lenovo-10', '<p>Lenovo-10</p>', 'product-images/Lenovo-10.png', 1, '2018-01-31 14:23:01', '2018-01-31 14:23:01'),
(22, 20, 36, 'Boot', 5000.00, 1, 'Boot', '<p>Boot</p>', 'product-images/Boot.png', 1, '2018-01-31 14:33:50', '2018-01-31 14:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sofiqul Islam', 'sofiqul@gmail.com', '$2y$10$ogr0OWXTbiEd4SVyya3zCeYtq8YPJH9GX56CV8YAtI0RrshweCa0e', 'AsrHFqwTXeNfEmUayTPMN6KH70pitrZvdkuHKlVqm7gZEWh1E2SSnatwzGqT', '2018-01-22 11:30:30', '2018-01-22 11:30:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
