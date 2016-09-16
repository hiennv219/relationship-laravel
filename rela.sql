-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2016 at 01:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rela`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `feedback` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `feedback`, `created_at`, `updated_at`, `is_published`) VALUES
(1, 1, 'Binh luan 1', '2016-08-15 01:20:51', '2016-08-15 01:21:45', 0),
(2, 2, 'Binh luan 2', '2016-08-15 01:27:05', '2016-08-15 01:27:05', 0),
(3, 1, 'Binh luan 1.1', '2016-08-15 01:20:51', '2016-08-15 01:21:45', 0),
(4, 1, 'Binh luan 1.2', '2016-08-15 01:20:51', '2016-08-15 01:21:45', 1),
(5, 1, 'Binh luan 1.3', '2016-08-15 01:20:51', '2016-08-15 01:21:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `likeable_id` int(11) NOT NULL,
  `likeable_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `likeable_id`, `likeable_type`) VALUES
(1, 1, 'App\\Post'),
(2, 1, 'App\\Post'),
(3, 1, 'App\\Post'),
(4, 1, 'App\\Post'),
(5, 1, 'App\\Post'),
(6, 1, 'App\\Post'),
(7, 1, 'App\\Post'),
(8, 1, 'App\\Post'),
(9, 1, 'App\\Post'),
(10, 1, 'App\\Post'),
(11, 1, 'App\\Post'),
(12, 1, 'App\\Post'),
(13, 1, 'App\\Post'),
(14, 1, 'App\\Post'),
(15, 1, 'App\\Post'),
(16, 1, 'App\\Comment'),
(17, 1, 'App\\Comment'),
(18, 1, 'App\\Comment'),
(19, 1, 'App\\Comment');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_08_15_080635_create_posts_table', 2),
('2016_08_15_080643_create_comments_table', 2),
('2016_08_15_102128_create_roles_table', 3),
('2016_08_15_103020_create_roleuser_table', 3),
('2016_08_15_105246_create_role_user_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_genid` int(11) NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `user_genid`, `number`, `created_at`, `updated_at`) VALUES
(1, 1, '0919795685', NULL, NULL),
(2, 2, '09197956888', NULL, NULL),
(3, 3, '01674586625', NULL, NULL),
(4, 4, '0888685623', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(1, 'bai viet so 1', '1.jpg', 'Noi dung bai viet so 1', '2016-08-15 01:19:01', '2016-08-15 01:19:42'),
(2, 'bai viet so 2', '2.jpg', 'Noi dung bai viet so 2', '2016-08-15 01:24:04', '2016-08-15 01:24:04'),
(3, 'bai viet so 3', '3.jpg', 'Noi dung bai viet so 3', '2016-08-15 01:24:15', '2016-08-15 01:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'editor', NULL, NULL),
(3, 'guest', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 1, 1, 'App\\Post'),
(2, 2, 1, 'App\\Post'),
(3, 3, 1, 'App\\Post'),
(4, 4, 1, 'App\\Post'),
(5, 5, 1, 'App\\Post'),
(6, 6, 1, 'App\\Post'),
(7, 7, 1, 'App\\Post'),
(8, 8, 1, 'App\\Post'),
(10, 8, 1, 'App\\Video'),
(11, 10, 1, 'App\\Video');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(2, 'Thời sự'),
(3, 'Vốn sống'),
(5, 'Nhân cách'),
(6, 'Thể lực'),
(8, 'Tri thức'),
(10, 'Tony Buổi Sáng');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Angel Daniel', 'hbraun@example.com', '$2y$10$Rh/QA8jI.Ln/UMXH2/vcTuh7s2/o9kqGhftAd1RGeI5NPrWKeDTpC', 'Zc87NCAqQS', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(2, 'Bonita Skiles', 'stiedemann.kaycee@example.org', '$2y$10$/.YzF2kxOQbpQr4MQVB58uwAKeOHAkwK8m7kVpESavCJ1eVJb5cXC', 'PKWTV57LSy', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(3, 'Jarrett Koch II', 'weldon66@example.org', '$2y$10$SSJ01qDHrwgeq.mG3Eb/6eFM.KfhRaPSg3yO5SAGRz9Fs9j2fzKai', 'BOUmkDoGZX', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(4, 'Hank Gleason III', 'hagenes.ruben@example.org', '$2y$10$KqgHyjW/ldU/dgXkMYLbbe5LdQtVeZRBO4eL7iL7YEJD.9VdsJTwe', 'dwH41yZZLM', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(5, 'Vicky Zemlak', 'clarissa.harber@example.org', '$2y$10$kA/oLW58ctEZTYkhvfFZq.HtQZJvyyKVl.FKfDU.DOQ/n2CcsNjuq', 'w5zBZadh1X', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(6, 'Ms. Kaylin Kirlin', 'maribel76@example.net', '$2y$10$35zocchyim0iDNRYv6YQY.Gllrxsd1IoLJ.P2V8YesIwdOK9JxjY6', 'KpcyWjMaYN', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(7, 'Ms. Nakia Abbott Sr.', 'marcella.toy@example.org', '$2y$10$B8KlhcW1zJlMXjgYputvF.GQYkyJmvZEaUYPtW0IrbGnDRLUdWSXa', '2r3WcQnfir', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(8, 'Prof. Saige Buckridge MD', 'emerson.koepp@example.com', '$2y$10$.m/s8xU8fwJpI7QoYD0CBOoxEg0wcLpB/svpx9bQUhx27Dd3fVwSa', '4mfzGfxjaA', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(9, 'Ms. Madilyn Hammes', 'angel.boyer@example.com', '$2y$10$wUIPxomFNs0xdayM7PdYLuq4Pp0FGg6yZLUzagLGiafLsWZt3S.sq', 'LWFBRtHokN', '2016-08-14 22:32:14', '2016-08-14 22:32:14'),
(10, 'Prof. Shaun Nikolaus Jr.', 'gutkowski.shania@example.org', '$2y$10$TbGFprHZzVWDNl847X0vE.0254oVo/ir.n3uRZqv19F.ONCS3sAdG', 'uZ5YTotjmd', '2016-08-14 22:32:14', '2016-08-14 22:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`) VALUES
(1, 'Cafe buổi sáng'),
(2, 'Trên đường băng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
