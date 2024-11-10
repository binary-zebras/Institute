-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 09:00 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'ashri', 'dadhich', 'admin@admin.com', '$2y$10$BPILoICVDDHd9dLIvQcQ7eJXCuVCL9r688VBSZe3u9ppQSkF/iANO', 'OtnFSgviGXeEOR91zIdXQ5e0PFiTzQo3gbtntnS7e8i88vnPfR62FJRucdFl', '2017-09-27 01:15:14', '2017-10-02 04:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `subject` varchar(225) DEFAULT NULL,
  `contact` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `contact`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sudarshan', NULL, '9782197283', 'sr@mail.com', NULL, '2018-06-25 02:11:09', '2018-06-25 02:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(225) NOT NULL,
  `contact` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `contact`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'sud', 'sud5858@gmail.com', '9782197283', '$2y$10$hyKP.udBAKY4yWGY7xX4nur38kE2glLycXA43BQACtxmGohoUf5Va', 'p3MRJ3wk1v3gjG1Od7pHtntXidBVvxU1ALPgRRjNNx0kPw9ZHQexs0zmHkxn', '2018-06-11 06:55:48', '2018-05-29 01:48:38'),
(7, 'arun', 'arun@gmail.com', '9785452555', '$2y$10$blFCW2xxsNyTFcorK9jbl.jY.u.odpvDjJ/QRUJA2mWLs1zjtSlEC', 'Iwz2JjseOReb2MhpuXeprzHN1FYrUNTeHWfg5cGUjIc8DnR72LEisk1rQbRR', '2018-05-24 06:06:41', '2018-05-23 23:29:55'),
(8, 'srishti', 'sr@mail.com', '7014865182', '$2y$10$lzfkFzZnS13mjyhW9p71EeL2co.w9apiBftPVFGG/yQeE77kaj.xC', '8VZSqnAdxIlrSGLvuOmN4kS3WRvRvwEAY4S0zwYx', '2018-06-14 05:30:07', '2018-06-14 05:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(9, 'sud', 'docs/7219a66f002a2c4e618de27d910644ff.xlsx', '2018-05-30 05:39:46', '2018-05-30 05:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `identity` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `name`, `identity`, `password`, `created_at`, `updated_at`) VALUES
(1, 'sudarshan dadheech', 'sud123', '123456', '2018-04-18 01:34:57', '2018-04-18 01:34:57'),
(2, 'Dinesh', 'dinesh123', '123456', '2018-04-18 01:36:01', '2018-04-18 01:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(225) NOT NULL,
  `msz` text NOT NULL,
  `rollno` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LDC', 'ldc', 'Package/ac05b9f012d19e4a2d73e98bfe5f76a2.jpg', 1, '2018-06-29 06:49:11', '2018-06-29 01:19:11'),
(2, 'UPSC', 'upsc', 'Package/398edfee3d6d674f034940e77ee97ee8.jpg', 1, '2018-06-29 06:49:22', '2018-06-29 01:19:22'),
(3, 'RAS', 'ras', 'Package/b32867c4c3383baa1573ab026918c4ef.jpg', 1, '2018-06-29 06:49:32', '2018-06-29 01:19:32'),
(4, 'SSC', 'ssc', 'Package/423ecae41dc1ff5581a131ea15b508c2.jpg', 1, '2018-06-29 06:49:44', '2018-06-29 01:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `packs`
--

CREATE TABLE `packs` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `msz` text,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pack` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sud@gmail.com', '$2y$10$6ArUqAtgVEUc/8lDts8JZOWzTMHgllaPznrYvzJjsbh99178jWiaa', '2018-05-28 02:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, 'slider1', 'slider/1390c287a716047711f709e35a7bbeae.jpg', 1, '2018-05-22 01:52:28', '2018-05-22 01:52:28'),
(9, 'slider2', 'slider/066a4faee27de40e607618378dd83b66.jpg', 1, '2018-05-22 02:10:09', '2018-05-22 02:10:09'),
(10, 'sld3', 'slider/02d9b1f65f1dbbf1f2fb08b2fb6810ca.jpg', 1, '2018-05-22 02:10:24', '2018-05-22 02:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `packages_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `url`, `packages_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Math', 'math', '1', 'Subject/1aa99e1c1773339375f744b9786816aa.jpg', 1, '2018-07-02 06:54:04', '2018-07-02 01:24:04'),
(3, 'Math', 'math', '3', 'Subject/0151ec3d05f32f3875c450036aeb1a4b.jpg', 1, '2018-07-02 06:54:23', '2018-07-02 01:24:23'),
(5, 'Math', 'math', '4', 'Subject/6828728ef9a7b7cce5d4ed8420941da5.jpg', 1, '2018-07-02 06:54:44', '2018-07-02 01:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(255) NOT NULL,
  `name` varchar(225) NOT NULL,
  `profile` varchar(225) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `profile`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'sudarshan', 'WebDevloper', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown<br />\r\n&nbsp;belly, slightly domed and divided by arches into stiff sections.</p>', 'testimonial/19a83106d1e293e2636ab4e75f75d9e7.jpg', 1, '2018-05-21 04:34:34', '2018-05-21 04:34:34'),
(5, 'Raghu Sharma', 'Bank  insurence', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown&lt;br /&gt;<br />\r\n&amp;nbsp;belly, slightly domed and divided by arches into stiff sections.</p>', 'testimonial/becd218144a1786cb2e4dd80f9479587.jpg', 1, '2018-05-21 04:48:30', '2018-05-21 04:48:30'),
(6, 'Ramanuj Sharma', 'broker', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown<br />\r\n&nbsp;belly, slightly domed and divided by arches into stiff sections.</p>', 'testimonial/d7457b04343236b73d2f470c53852b52.jpg', 1, '2018-05-21 05:06:47', '2018-05-21 05:06:47'),
(7, 'Kartik Kumar', 'WebDesigner', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown<br />\r\n&nbsp;belly, slightly domed and divided by arches into stiff sections.</p>', 'testimonial/2194bf429661563769cd2a900475a106.jpg', 1, '2018-05-21 05:07:26', '2018-05-21 05:07:26'),
(8, 'Kumar Ranjan', 'CEO, Maruti', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown<br />\r\n&nbsp;belly, slightly domed and divided by arches into stiff sections.</p>', 'testimonial/374f882a053a1476c069390ad1885081.jpg', 1, '2018-05-21 05:08:25', '2018-05-21 05:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `subjects_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sudarshan dadheech', 'sud@gmail.com', '$2y$10$8t6ji6AOIgS8HzwwfvUm.e7S8z.DJBNwWXIombiYdirAT7bpZp9dO', 'lMdvqI9Bp7W3EyFmi3pi9cy3szmquIiEoM4Y39lXgoth6YmVbIymEiLr9f3h', '2018-04-17 02:51:07', '2018-04-17 02:51:07'),
(2, 'aman', 'aman@gmail.com', '$2y$10$xvOSoVN4FGAVYXZ3GvppNOa/ky679v5tSgeQNCIfa4KOb6VCOfBDO', 'GuDLClhYkN8dKLN28H5fevJtcnAqfog4vYSSpYkRsK2Ci81J9E0h44mvqa8D', '2018-05-29 00:28:42', '2018-05-29 00:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `topics_id` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `url`, `image`, `topics_id`, `status`, `type`, `created_at`, `updated_at`) VALUES
(5, 'sudarshan', 'math', 'videos/357fef9a0a8fabfd20afd55be124b87a.mp4', '1', 1, '1', '2018-07-02 00:21:45', '2018-07-02 00:21:45'),
(8, 'zxcfsz', 'asdasd', 'videos/5e6be8cafe913ebd30c839fb5828a682.mp4', '1', 1, '0', '2018-07-02 00:58:11', '2018-07-02 00:58:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packs`
--
ALTER TABLE `packs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `packs`
--
ALTER TABLE `packs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
