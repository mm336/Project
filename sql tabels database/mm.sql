-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2020 at 07:42 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `superadmin` int(11) NOT NULL DEFAULT 0,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'm.png',
  `blocked_date` timestamp NULL DEFAULT NULL,
  `online_at` datetime DEFAULT NULL,
  `projects_count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `points` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `add_by` int(11) NOT NULL DEFAULT 0,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `superadmin`, `img`, `blocked_date`, `online_at`, `projects_count`, `points`, `add_by`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'محمد سمير ابراهيم علي', 'admin@yahoo.com', '01154838995', '2020-01-10 22:00:00', '$2y$10$q8X68GMJQ2pcR86w.eJLVerWDgQ/Lpujt3VXIXcuCLSrBAgg.0Pca', 1, '1188553244.jpg', NULL, NULL, '∞', '∞', 0, NULL, NULL, '2020-01-11 18:03:13', '2020-02-06 11:07:51'),
(2, 'mohammed', 'myloveforever336@yahoo.com', '01135698554', '2020-01-10 22:00:00', '$2y$10$3ElB8M24qQC.j.2NAGzX8OchFkAtQIhmZgjh17Z7oW1WQ4kpCnry6', 0, 'https://ui-avatars.com/api/?background=0D8ABC&color=fff&length=1&rounded=true&bold=true&size=65&name=mohammed', NULL, NULL, '0', '0', 1, NULL, NULL, '2020-01-11 18:18:37', '2020-02-06 11:01:36'),
(3, 'osama', 'osamasamir30@yahoo.com', '01154838996', '2020-01-28 22:00:00', '$2y$10$mmOZc.aGM8GJDmCvjwUEcOpMhFg8iSooI3VNsHs6rMI3mSxzyY/Gq', 2, 'https://ui-avatars.com/api/?background=0D8ABC&color=fff&length=1&rounded=true&bold=true&size=65&name=osama', NULL, NULL, '0', '0', 1, NULL, NULL, '2020-01-29 19:38:55', '2020-02-06 11:01:36'),
(4, 'samir', 'mohammed_samir336@yahoo.com', '01126589332', '2020-01-29 22:00:00', '$2y$10$xlTVRgmz1cBayznBT66Ts.VGCXe8.om5NjW3ph7AOPOQMThMeFbX6', 0, 'https://ui-avatars.com/api/?background=0D8ABC&color=fff&length=1&rounded=true&bold=true&size=65&name=samir', NULL, NULL, '0', '0', 3, NULL, NULL, '2020-01-29 20:09:51', '2020-02-06 11:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `posts_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text_comments`, `name_comments`, `email_comments`, `users_id`, `posts_id`, `created_at`, `updated_at`) VALUES
(1, 'so kute the robot', 'malak samir', 'osamasamijjr30@yahoo.com', NULL, 11, '2020-01-17 15:52:03', '2020-01-17 15:52:03'),
(3, 'sadsad', 'mmmm', 'osamasassmir30@yahoo.com', NULL, 29, '2020-01-28 16:16:38', '2020-01-28 16:16:38'),
(4, 'dsfsd', 'mohammed', 'myloveforever336@yahoo.com', 3, 29, '2020-01-28 16:48:03', '2020-01-28 16:48:03'),
(5, 'dsfd', 'mohammed', 'myloveforever336@yahoo.com', 3, 35, '2020-01-28 18:12:46', '2020-01-28 18:12:46'),
(6, 'gfhfg', 'محمد سمير', 'seca_mandaa@yahoo.com', 14, 37, '2020-01-29 19:07:38', '2020-01-29 19:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `sub`, `text`, `users_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Osama Samir', 'osamasamir30@yahoo.com', 'sadsa', 'sdsad', 1, 1, '2020-01-28 20:27:39', '2020-01-28 20:32:33'),
(2, 'nn', 'mylovefofrever336@yahoo.com', 'fd', 'hh', NULL, 1, '2020-01-28 20:38:01', '2020-02-06 11:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `checked` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_22_200958_create_contacts_table', 1),
(5, '2019_11_22_210455_create_admin_password_resets_table', 1),
(6, '2019_11_22_210455_create_admins_table', 1),
(7, '2019_12_03_133832_create_videos_table', 2),
(8, '2019_12_08_191853_create_profiles_table', 2),
(9, '2019_12_19_115433_create_visitors_table', 2),
(10, '2020_01_01_140231_create_events_table', 2),
(11, '2020_01_03_173440_create_news_table', 2),
(12, '2020_01_06_173107_create_tests_table', 2),
(13, '2019_11_22_204155_create_posts_table', 3),
(14, '2019_11_22_204117_create_comments_table', 4),
(15, '2019_11_26_173938_create_replies_table', 5),
(16, '2019_12_02_153830_create_reps_table', 6),
(17, '2020_01_01_000000_add_locale_column', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('myloveforever336@yahoo.com', '$2y$10$haizX02tAawxrJ2FSkonP.LLqCoWlqfw3OXmglaUnfiJMXUHvseNC', '2020-01-28 12:56:12'),
('mohammed_samir336@yahoo.com', '$2y$10$LZvCS8hb0NQXOM.byCxzkO1ZVd6NdSb1sLHIqvfkG77fnT.1uwGw.', '2020-01-28 12:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Entertainment',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Games',
  `view_count` int(11) NOT NULL DEFAULT 0,
  `videos_id` bigint(20) UNSIGNED DEFAULT NULL,
  `del_videos_id` int(11) DEFAULT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `header`, `author`, `img`, `p1`, `p2`, `p3`, `tag`, `cat`, `type`, `view_count`, `videos_id`, `del_videos_id`, `admins_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'American live music lorem ipsum dolor sit amet consectetur', 'Mohammed Samir', 'post-25.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus ', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'american , Mohammed , Entertainment , Games	', 'Life', 'healthy', 2, NULL, NULL, 1, NULL, '2017-01-10 22:00:00', '2020-01-12 12:48:57'),
(4, 'You wish lorem ipsum dolor sit amet consectetur', 'Mohammed', '1611676656.jpg', '<p><span style=\"background-color: #ecf0f1; color: #b96ad9;\"><strong>Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva</strong></span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'consectetur , Mohammed , Mobile , Technology', 'Technology', 'Mobile', 4, NULL, NULL, 1, NULL, '2017-03-11 20:00:06', '2020-01-27 14:09:55'),
(5, 'Bitcoin lorem ipsum dolor sit amet consectetur', 'Osama ', '384650001.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Bitcoin , Osama , Economy , Business', 'Business', 'Economy', 2, NULL, NULL, 1, NULL, '2017-05-08 20:08:38', '2020-01-17 16:32:26'),
(6, 'You wish lorem ipsum dolor sit amet consecteturd', 'Mohammed', '1164862514.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'consecteturd , Mohammed , Business , Money', 'Business', 'Money', 3, NULL, NULL, 1, NULL, '2017-07-19 21:01:11', '2020-01-26 18:43:22'),
(8, 'Motobike Vestibulum vene-natis purus nec nibh volutpat', 'John Alvarado', 'post-14.jpg', '<p>Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus</p>', '<p>Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend fneque blandit. Sed tempor magna sed congue auctor. Mauris eu tu</p>', 'John Alvarado , Motobike , Modern , Slideshow , Beachs , Travel', 'Travel', 'Beachs', 2, 6, NULL, 1, NULL, '2017-09-12 12:33:00', '2020-01-26 19:13:03'),
(9, 'You wish lorem ipsum dolor sit amet consectetun', 'Mohammed', 'post-30.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Mohammed, consectetun , Games , Entertainment', 'Entertainment', 'Games', 0, NULL, NULL, 1, NULL, '2017-11-23 12:41:55', '2020-01-12 12:41:55'),
(10, 'Nulla non interdum metus non laoreet nisi tellus', 'Jack Sims', 'post-40.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Nulla , Jack Sims , Beauty , Fashion', 'Fashion', 'Beauty', 1, NULL, NULL, 1, NULL, '2017-12-03 12:46:53', '2020-01-12 12:47:03'),
(11, 'Robot lorem ipsum dolor sit amet consectetur', 'Osama', 'post-43.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Robot , Osama , Technology', 'Technology', 'Robots', 2, NULL, NULL, 1, NULL, '2018-01-25 12:52:25', '2020-01-17 15:46:23'),
(12, 'Health lorem ipsum dolor sit amet consectetur', 'Mohammed', 'post-44.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Health , Mohammed , Life', 'Life', 'healthy', 1, 7, NULL, 1, NULL, '2018-02-06 12:56:46', '2020-01-12 16:33:45'),
(13, 'You wish lorem ipsum dolor sit amet consectetub', 'John Alvarado', 'post-28.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'consectetub , John Alvarado , Celebrity , Entertainment', 'Entertainment', 'Celebrity', 1, 9, NULL, 1, NULL, '2018-04-30 17:49:54', '2020-01-12 17:50:08'),
(14, 'American live music lorem ipsum dolor sit amet consectetun', 'John Alvarado', 'post-09.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'American ,  consectetun , John Alvarado, Music , Entertainment', 'Entertainment', 'Music', 1, NULL, NULL, 1, NULL, '2018-06-13 14:57:39', '2020-01-13 14:58:06'),
(15, 'You wish lorem ipsum dolor sit amet consectesn', 'Mohammed', 'entertaiment-12.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'consectesn , Mohammed , Movies , Entertainment', 'Entertainment', 'Movies', 0, NULL, NULL, 1, NULL, '2018-08-27 15:20:00', '2020-01-13 15:20:00'),
(16, 'Fashion ipsum dolor sit amet, consectetur adipiscing elit.', 'Osama Samir', 'post-12.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Fashion , consectetur , Osama , Samir , Zeba , Shoes , Promo , video', 'Fashion', 'Shoe', 0, 10, NULL, 1, NULL, '2018-10-05 15:27:29', '2020-01-13 15:27:29'),
(17, 'Bitcon lorem ipsum dolor sit amet consecteturd', 'Mohammed Samir', 'post-46.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Bitcon , consecteturd , Mohammed , Samir , Money , Finance , Business', 'Business', 'Finance', 1, NULL, NULL, 1, NULL, '2019-03-14 15:31:33', '2020-01-27 12:19:59'),
(18, 'College Football Playoff National Championship', 'Osama Samir', '1787273593.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Football , Championship , Osama , Games , Entertainment , Technology', 'Entertainment', 'Games', 0, NULL, NULL, 1, NULL, '2019-06-21 22:00:00', '2019-05-19 16:44:17'),
(19, 'Airport New 12 lorem ipsum dolor sit amet', 'Mohammed', 'post-16.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Mohammed , Airport , Flight , Travel', 'Travel', 'Flight', 0, NULL, NULL, 1, NULL, '2019-07-01 16:51:26', '2020-01-13 16:51:26'),
(20, 'CREATING A 3RD PERSON ACTION', 'Jack Sims', '1622071057.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'CREATING , ACTION , Jack Sims , Games , Entertainment', 'Entertainment', 'Games', 1, 11, NULL, 1, NULL, '2019-08-23 18:34:52', '2020-01-13 18:37:29'),
(21, 'Games metus orci, malesuada et lectus vitae', 'Mohammed Samir', 'post-35.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Games , vitae , Mohammed ,', 'Entertainment', 'Games', 0, NULL, NULL, 1, NULL, '2019-09-03 19:30:18', '2020-01-13 19:30:18'),
(22, 'American live music lorem ipsum dolor sit amet Hollywood', 'Osama Samir', 'entertaiment-08.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Hollywood , American , Osama ,', 'Entertainment', 'Celebrity', 1, 12, NULL, 1, NULL, '2019-10-29 19:35:00', '2020-01-17 16:19:54'),
(23, 'E! Online 2020 Oscar nominations', 'John Alvarado', 'post-06.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Online , Oscar , John Alvarado , Celebrity , Entertainment', 'Entertainment', 'Celebrity', 1, NULL, NULL, 1, NULL, '2019-11-11 19:42:49', '2020-01-23 20:38:12'),
(24, 'Gala metus orci, malesuada et lectus vitae', 'Mohammed Samir', '298456633.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Gala , vitae , Mohammed , Celebrity , Entertainments', 'Entertainment', 'Celebrity', 0, NULL, NULL, 1, NULL, '2019-12-18 19:49:09', '2020-01-13 19:49:09'),
(25, 'Healthy metus orci, malesuada et lectus vitae', 'Osama Samir', 'post-38.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Healthy , Life , Life Style , Osama', 'Life', 'healthy', 0, NULL, NULL, 1, NULL, '2020-01-05 19:59:13', '2020-01-13 19:59:13'),
(26, 'Apsum dolor sit amet, consectetur adipiscing elit', 'Osama Samir', 'post-37.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Apsum , Life , Life Style , Osama', 'Life', 'healthy', 0, NULL, NULL, 1, NULL, '2020-01-06 20:10:12', '2020-01-13 20:10:12'),
(27, 'Econometric Models for Industrial Organization', 'Paul Krugman', 'latest-02.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Paul Krugman , Econometric , Money , Business , Economy , videos', 'Business', 'Economy', 2, 13, NULL, 1, NULL, '2020-01-13 20:15:59', '2020-01-27 12:48:50'),
(28, 'Apple iPhone X lorem ipsum dolor sit amet consectetur', 'John Alvarado', 'entertaiment-18.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Apple , iPhone , John Alvarado , Technology , Mobile', 'Technology', 'Mobile', 0, NULL, NULL, 1, NULL, '2020-01-13 20:21:43', '2020-01-13 20:21:43'),
(29, 'Digital camera ...!', 'Jack Sims', '1160174965.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Computers , Digital , camera', 'Technology', 'Camera', 2, 14, NULL, 1, NULL, '2020-01-13 20:28:44', '2020-01-28 17:45:37'),
(30, 'Success lorem ipsum hotels sit amet consectetur', 'Mohammed Samir', 'post-22.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Hotels , People , Success , Mohammed , Travel', 'Travel', 'Hotels', 1, NULL, NULL, 1, NULL, '2020-01-13 20:33:02', '2020-01-28 17:59:35'),
(31, 'Pellentesque dui nibh, pellen-tesque ut dapibus ut', 'Jack Sims', 'post-03.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Pellentesque , Jack Sims , Culture , Travel', 'Travel', 'Culture', 1, NULL, NULL, 1, NULL, '2020-01-13 20:35:13', '2020-01-28 17:56:35'),
(32, 'Motobike Vestibulum vene-natis purus nec nibh volutpnt', 'Mohammed Samir', 'post-04.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Motobike , volutpat  , Mohammed , Entertainment , Sport', 'Entertainment', 'sport', 1, NULL, NULL, 1, NULL, '2020-01-13 20:36:59', '2020-01-28 17:54:34'),
(33, 'Microsoft quisque at ipsum vel orci eleifend ultrices', 'Jack Sims', 'post-01.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Microsoft , quisque , Jack Sims , Money , Business', 'Business', 'Money', 2, NULL, NULL, 1, NULL, '2020-01-13 20:39:56', '2020-01-28 20:21:49'),
(34, 'Hilton Launches New Hotel Brand - Tempo by Hilton', 'Jack Sims', 'latest-05.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Hilton , Hotels , Tempo , Vacation Time , Travel , Videos', 'Travel', 'Hotels', 1, 15, NULL, 1, NULL, '2020-01-17 15:10:51', '2020-01-28 17:59:06'),
(35, 'Hotel Website Design in 2020', 'Mohammed Samir', 'blog-list-06.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Design , Guide , Hotels , Travel', 'Travel', 'Hotels', 3, NULL, NULL, 1, NULL, '2020-01-17 15:12:53', '2020-01-28 19:37:56'),
(36, 'Holiday Inn Lima Miraflores Opens in Peru', 'Osama Samir', '165895838.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Holiday , Holiday Inn Lima Miraflores , Peru , Osama Samir , Hotels , Travel', 'Travel', 'Hotels', 2, NULL, NULL, 1, NULL, '2020-01-17 15:16:53', '2020-01-28 19:09:45'),
(37, 'China Trade Deal Details Protections for American Firms', 'Ana Swanson', '14dc-chinatrade-01-jumbo.jpg', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Trade , Firms , Ana Swanson , Economy , Business', 'Business', 'Economy', 3, NULL, NULL, 1, NULL, '2020-01-17 15:28:54', '2020-01-30 13:05:14'),
(38, 'Labor Dept. Rule to Curb Lawsuits by Franchise Workers', 'Noam Scheiber', '12employer1-jumbo.jpg', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva', 'Labor Dept , Franchise Workers , Noam Scheiber , Economy , Business', 'Business', 'Economy', 2, NULL, NULL, 1, NULL, '2020-01-17 15:32:26', '2020-01-30 18:56:41'),
(39, 'Fenty Beauty Launched a Mascara, and My Eyelashes Will Never Be the Same', 'VICTORIA MOORHOUSE', 'fenty-beauty-full-frontal-mascara-review.jpg', '<p class=\"f1-s-11 cl6 p-b-25 text-danger\">\r\n Curabitur volutpat bibendum molestie. Vestibulum ornare gravida semper. Aliquam a dui suscipit, fringilla metus id, maximus leo. Vivamus sapien arcu, mollis eu pharetra vitae, condimentum in orci. Integer eu sodales dolor. Maecenas elementum arcu eu conva  </p>', 'Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu tu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus', 'Fenty Beauty ,  Mascara , Beauty , VICTORIA MOORHOUSE , Fashion', 'Fashion', 'Beauty', 4, NULL, NULL, 1, NULL, '2020-01-17 15:37:09', '2020-01-27 14:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_phone` int(11) DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admins_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `job`, `about`, `Website`, `birth`, `facebook`, `profile_phone`, `users_id`, `admins_id`, `created_at`, `updated_at`) VALUES
(1, 'محمد سمير ابراهيم علي', 'admin@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-01-11 18:03:13', '2020-01-11 18:03:13'),
(2, 'mohammed', 'myloveforever336@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-01-11 18:18:37', '2020-01-11 18:18:37'),
(3, 'Osama Samir', 'osamasamir30@yahoo.com', 'Web developer', NULL, NULL, '1993-03-05', NULL, NULL, 1, NULL, '2020-01-11 18:21:58', '2020-01-28 20:12:10'),
(4, 'محمد سمير', 'mohammed_samir336@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2020-01-17 18:56:56', '2020-01-17 18:56:56'),
(5, 'mohammed', 'myloveforever336@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2020-01-17 19:14:30', '2020-01-17 19:14:30'),
(14, 'محمد سمير', 'seca_mandaa@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, '2020-01-29 18:17:07', '2020-01-29 18:17:07'),
(15, 'osama', 'osamasamir30@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2020-01-29 19:38:55', '2020-01-29 19:38:55'),
(16, 'samir', 'mohammed_samir336@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-01-29 20:09:51', '2020-01-29 20:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `reply_id` bigint(20) UNSIGNED NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_reply` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_comments_id` bigint(20) UNSIGNED NOT NULL,
  `reply_users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `reply`, `name_reply`, `email_reply`, `reply_comments_id`, `reply_users_id`, `created_at`, `updated_at`) VALUES
(1, 'bghjkf', 'محمد', 'mohammed_samir336@yahoo.com', 5, 2, '2020-01-28 19:25:46', '2020-01-28 19:25:46'),
(2, 'asdsa', 'محمد سمير', 'seca_mandaa@yahoo.com', 6, 14, '2020-01-29 19:10:43', '2020-01-29 19:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `reps`
--

CREATE TABLE `reps` (
  `rep_id` bigint(20) UNSIGNED NOT NULL,
  `reptext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_rep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_rep` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rep_comments_id` bigint(20) UNSIGNED NOT NULL,
  `rep_users_id` bigint(20) UNSIGNED NOT NULL,
  `rep_rep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reps`
--

INSERT INTO `reps` (`rep_id`, `reptext`, `name_rep`, `email_rep`, `rep_comments_id`, `rep_users_id`, `rep_rep_id`, `created_at`, `updated_at`) VALUES
(1, 'nnnnnnnnnnnnnnn', 'محمد سمير', 'mohammed_samir336@yahoo.com', 5, 2, 1, '2020-01-28 19:30:06', '2020-01-28 19:30:06'),
(2, 'sadsad', 'محمد سمير', 'seca_mandaa@yahoo.com', 6, 14, 2, '2020-01-29 19:11:05', '2020-01-29 19:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'm.png',
  `blocked_date` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_at` datetime DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''en''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `phone_verified_at`, `img`, `blocked_date`, `password`, `online_at`, `api_token`, `remember_token`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'Osama Samir', 'osamasamir30@yahoo.com', '2020-01-10 22:00:00', '+2001154838995', '2020-01-11 18:23:34', 'https://ui-avatars.com/api/?background=F24A26&color=fff&length=1&rounded=true&bold=true&size=65&name=Osama Samir', NULL, '$2y$10$4q7tNgK1MyOZJQhjwl0NqO3LLRNPJo1APcOqMQABlFk0MVSd.Kr5.', NULL, NULL, NULL, 'ar', '2019-12-22 18:21:51', '2020-01-29 19:39:33'),
(2, 'محمد سمير', 'mohammed_samir336@yahoo.com', '2018-12-22 22:00:00', '+201154838995', '2018-12-22 22:00:00', 'https://ui-avatars.com/api/?background=F24A26&color=fff&length=1&rounded=true&bold=true&size=65&name=محمد سمير', NULL, '$2y$10$WCuT/XZ1Jzf.qF8w265txedLDOsv21nNKoKn1lpxP2k7weBPoRuQe', NULL, NULL, NULL, 'ar', '2019-12-23 18:56:52', '2020-01-30 13:04:35'),
(3, 'mohammed', 'myloveforever336@yahoo.com', '2019-12-22 22:00:00', '+201136598226', '2019-12-22 22:00:00', 'https://ui-avatars.com/api/?background=F24A26&color=fff&length=1&rounded=true&bold=true&size=65&name=mohammed', NULL, '$2y$10$vBnsga3QG8jsURJ2bsNBDeR6kxrWugUY7wi90m8c.8jnoDA.mx17e', NULL, NULL, NULL, 'ar', '2020-01-23 22:00:00', '2020-02-05 15:09:26'),
(14, 'محمد سمير', 'seca_mandaa@yahoo.com', '2020-01-28 22:00:00', '+2001125686995', '2020-01-28 22:00:00', 'https://ui-avatars.com/api/?background=F24A26&color=fff&length=1&rounded=true&bold=true&name=محمد سمير', NULL, '$2y$10$dm5SpxZPvcMpPlHZJRvXfOONZDm.299ZmDFvzfhMYRvVo9bGA2KM6', NULL, NULL, NULL, 'ar', '2020-01-29 18:16:56', '2020-02-05 14:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_img` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'video-placeholder.png',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Games',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins_id` bigint(20) UNSIGNED NOT NULL,
  `video_view_count` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `url`, `video_img`, `type`, `author`, `admins_id`, `video_view_count`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Music lorem ipsum dolor sit amet consectetur', '<iframe src=\"https://www.youtube.com/embed/wTcNtgA6gHs\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:1280;height:720;\"></iframe>', 'https://www.youtube.com/watch?v=wTcNtgA6gHs', 'https://mdbootstrap.com/img/screens/yt/screen-video-2.jpg', 'Music\r\n', 'Mohammed', 1, 2, NULL, '2020-01-11 19:11:30', '2020-01-12 21:37:57'),
(6, 'Modern Travel Slideshow', '<iframe src=\"https://www.youtube.com/embed/KdC2jgp6ruo\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:480;height:360;\"></iframe>', 'https://www.youtube.com/watch?v=KdC2jgp6ruo', 'https://i.ytimg.com/vi/KdC2jgp6ruo/hqdefault.jpg', 'Beachs', 'John Alvarado', 1, 1, NULL, '2020-01-12 12:33:00', '2020-01-26 19:13:02'),
(7, 'Starting a Healthy Lifestyle!', '<iframe src=\"https://www.youtube.com//embed/0aNNYEUARAk\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:1280;height:720;\"></iframe>\r\n', 'https://www.youtube.com/watch?v=0aNNYEUARAk', 'https://mdbootstrap.com/img/screens/yt/screen-video-3.jpg\r\n\r\n', 'healthy', 'Mohammed', 1, 1, NULL, '2020-01-12 12:56:46', '2020-01-12 16:33:45'),
(9, 'The best San Diego Comic-Con', '<iframe src=\"https://www.cnet.com/videos/secure/the-best-san-diego-comic-con-celebrity-disguises/\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:435;height:275;\"></iframe>', 'https://www.cnet.com/videos/the-best-san-diego-comic-con-celebrity-disguises/', 'https://cnet4.cbsistatic.com/img/DKT6bG_PnpQpjZI-OO8xVrDTAqQ%3D/2019/07/15/924c0927-dc41-4073-9ea8-f6779523a6f7/top5-071519-comicon.jpg', 'Celebrity', 'John Alvarado', 1, 2, NULL, '2020-01-12 17:49:54', '2020-01-13 15:00:26'),
(10, 'Zeba Shoes Promo Video', '<iframe src=\"https://www.youtube.com/embed/njTn8dE_eWs\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:1280;height:720;\"></iframe>', 'https://www.youtube.com/watch?v=njTn8dE_eWs', 'https://i.ytimg.com/vi/njTn8dE_eWs/maxresdefault.jpg', 'Shoe', 'Osama Samir', 1, 1, NULL, '2020-01-13 15:27:29', '2020-01-13 15:33:20'),
(11, 'Video Game Deals, Coupons and Promo Codes', '<iframe src=\"https://www.youtube.com/embed/n4b8FRUDNZo\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:1280;height:720;\"></iframe>', 'https://www.youtube.com/watch?v=n4b8FRUDNZo', 'https://i.ytimg.com/vi/n4b8FRUDNZo/maxresdefault.jpg', 'Games', 'Jack Sims', 1, 1, NULL, '2020-01-13 18:34:52', '2020-01-13 18:37:51'),
(12, 'Latest Celebrity Gossip', '<iframe src=\"https://www.youtube.com/embed/AHR2fg8pZds\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:480;height:360;\"></iframe>', 'https://www.youtube.com/watch?v=AHR2fg8pZds', 'https://i.ytimg.com/vi/AHR2fg8pZds/hqdefault.jpg', 'Celebrity', 'Osama Samir', 1, 1, NULL, '2020-01-13 19:35:00', '2020-01-17 15:54:17'),
(13, 'Paul Krugman Teaches Economics and Society', '<iframe src=\"https://www.youtube.com/embed/JRhvnlQHKc0\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:480;height:360;\"></iframe>', 'https://www.youtube.com/watch?v=JRhvnlQHKc0', 'https://i.ytimg.com/vi/JRhvnlQHKc0/hqdefault.jpg', 'Economy', 'Paul Krugman', 1, 0, NULL, '2020-01-13 20:15:59', '2020-01-13 20:16:55'),
(14, 'How Will Computers Change in Five Years?', '<iframe src=\"https://www.youtube.com/embed/YwfJVwknvRo\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:480;height:360;\"></iframe>', 'https://www.youtube.com/watch?v=YwfJVwknvRo', 'https://i.ytimg.com/vi/YwfJVwknvRo/hqdefault.jpg', 'Camera', 'Jack Sims', 1, 2, NULL, '2020-01-13 20:28:44', '2020-01-17 15:54:13'),
(15, 'Vacation Time: Commute', '<iframe src=\"https://www.youtube.com/embed/BOv5wRZmfoo\" frameborder=\"0\" allowTransparency=\"true\" style=\"border:none;overflow:hidden;width:1280;height:720;\"></iframe>', 'https://www.youtube.com/watch?v=BOv5wRZmfoo', 'https://i.ytimg.com/vi/BOv5wRZmfoo/maxresdefault.jpg', 'Hotels', 'Jack Sims', 1, 1, NULL, '2020-01-17 15:10:51', '2020-01-17 15:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitors` int(11) NOT NULL DEFAULT 0,
  `visit_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visitors`, `visit_at`, `created_at`, `updated_at`) VALUES
(368, 8, '2020-02-05', '2020-01-28 18:07:51', '2020-02-05 16:12:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_users_id_foreign` (`users_id`),
  ADD KEY `comments_posts_id_foreign` (`posts_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_users_id_foreign` (`users_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_admins_id_foreign` (`admins_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_header_unique` (`header`),
  ADD KEY `posts_admins_id_foreign` (`admins_id`),
  ADD KEY `posts_videos_id_foreign` (`videos_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_profile_phone_unique` (`profile_phone`),
  ADD KEY `profiles_users_id_foreign` (`users_id`),
  ADD KEY `profiles_admins_id_foreign` (`admins_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `replies_reply_comments_id_foreign` (`reply_comments_id`),
  ADD KEY `replies_reply_users_id_foreign` (`reply_users_id`);

--
-- Indexes for table `reps`
--
ALTER TABLE `reps`
  ADD PRIMARY KEY (`rep_id`),
  ADD KEY `reps_rep_comments_id_foreign` (`rep_comments_id`),
  ADD KEY `reps_rep_users_id_foreign` (`rep_users_id`),
  ADD KEY `reps_rep_rep_id_foreign` (`rep_rep_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_users_id_foreign` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_title_unique` (`title`),
  ADD KEY `videos_admins_id_foreign` (`admins_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `reply_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reps`
--
ALTER TABLE `reps`
  MODIFY `rep_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_videos_id_foreign` FOREIGN KEY (`videos_id`) REFERENCES `videos` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `profiles_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_reply_comments_id_foreign` FOREIGN KEY (`reply_comments_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `replies_reply_users_id_foreign` FOREIGN KEY (`reply_users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reps`
--
ALTER TABLE `reps`
  ADD CONSTRAINT `reps_rep_comments_id_foreign` FOREIGN KEY (`rep_comments_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reps_rep_rep_id_foreign` FOREIGN KEY (`rep_rep_id`) REFERENCES `replies` (`reply_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reps_rep_users_id_foreign` FOREIGN KEY (`rep_users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_admins_id_foreign` FOREIGN KEY (`admins_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
