-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2024 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(225) NOT NULL,
  `year_level` int(225) NOT NULL,
  `semester` int(11) NOT NULL DEFAULT 1,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `year_level`, `semester`, `course_code`, `course_name`) VALUES
(1, 1, 1, 'THEO 1', 'Salvation of History'),
(2, 1, 1, 'COMP 1', 'Introduction to Computing'),
(3, 1, 1, 'PROG 1', 'Computer Programming 1'),
(4, 1, 1, 'HCI', 'Human Computer Interaction'),
(5, 1, 1, 'GE 1', 'Mathematics in the Modern World'),
(6, 1, 1, 'GE 2', 'Understanding the Self'),
(7, 1, 1, 'Math Prep', 'Pre-Calculus for Non-STEM (Analytic Geometry)'),
(8, 1, 1, 'PE 1', 'Physical Fitness'),
(9, 1, 1, 'CWTS1', 'Civic Welfare and Training Service'),
(10, 1, 2, 'THEO 2', 'The Creed'),
(11, 1, 2, 'PROG 2', 'Computer Programming 2'),
(12, 1, 2, 'DISCRETE 1', 'Discrete Mathematics 1'),
(13, 1, 2, 'WEB1', 'Web Development'),
(14, 1, 2, 'GE 3', 'Readings in Philippine History'),
(15, 1, 2, 'GE 4', 'Purposive Communication'),
(16, 1, 2, 'PE 2', 'Rhythmic Activities'),
(17, 1, 2, 'DATASTRUCT 1', 'Data Structures and Algorithms'),
(18, 1, 2, 'CWTS2', 'Civic Welfare and Training Service'),
(19, 2, 1, 'THEO 3', 'Church and Sacraments'),
(20, 2, 1, 'OOP', 'Object-Oriented Programming'),
(21, 2, 1, 'IM 1', 'Information Management'),
(22, 2, 1, 'ACCTG', 'Fundamentals of Accounting'),
(23, 2, 1, 'PT', 'Platform Technologies'),
(24, 2, 1, 'GE 5', 'The Contemporary World'),
(25, 2, 1, 'GE 6', 'Art Appreciation'),
(26, 2, 1, 'GEEL 1', 'Living in the IT Era'),
(27, 2, 1, 'PE 3', 'Individual/Dual Sports'),
(37, 2, 2, 'THEO 4', 'The Commandments'),
(38, 2, 2, 'IM2', 'Fundamentals of Database Systems'),
(39, 2, 2, 'QM', 'Quantitative Methods'),
(40, 2, 2, 'NET 1', 'Data Communications and Networking 1'),
(41, 2, 2, 'IPT 1', 'Integrative Programming and Technologies'),
(42, 2, 2, 'GEEL 2', 'Plane Trigonometry'),
(43, 2, 2, 'GE 7', 'Science and Technology'),
(44, 2, 2, 'GEEL 3', 'Reading Visual Arts'),
(45, 2, 2, 'PE 4', 'Team Sports/Games');

-- --------------------------------------------------------

--
-- Table structure for table `documentappointments`
--

CREATE TABLE `documentappointments` (
  `doc_id` int(225) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(255) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documentappointments`
--

INSERT INTO `documentappointments` (`doc_id`, `name`, `time`, `isAvailable`) VALUES
(1, 'Susie Windler', 6, 1),
(2, 'Mr. Reuben Tremblay MD', 7, 0),
(3, 'Madeline Waelchi', 2, 1),
(4, 'Ceasar Dach', 4, 1),
(5, 'Rafael Metz V', 1, 1),
(6, 'Karson Kirlin II', 8, 0),
(7, 'Ila O\'Keefe', 9, 0),
(8, 'Erich Hand', 5, 0),
(9, 'Mona Blanda I', 10, 0),
(10, 'Donna Zieme', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(255) NOT NULL,
  `program_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`, `program_description`) VALUES
(1, 'Computer Science', 'Study of computers and computational systems.'),
(2, 'Mathematics', 'Study of numbers, quantities, and shapes.'),
(3, 'Physics', 'Study of matter, energy, and the fundamental forces of nature.'),
(4, 'Chemistry', 'Study of substances, their properties, and reactions.');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bq0lhIoAZPwX1VExHy71Nf4wBrgFojXpSNCHFMBM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDJRaWNVS3ZaVHBKMU1GME8zRUs3MjJMbE1DbEltU21Tb0ZSdko3NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722774338);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `year_level` int(225) NOT NULL,
  `program` varchar(64) NOT NULL,
  `average_grade` int(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `year_level`, `program`, `average_grade`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miss Ilene Langworth V', 'uleffler@example.net', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 1, 'Computer Science', 3, 'msiGpgmf9i', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(2, 'Clementina Carter', 'kertzmann.oral@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 1, 'Engineering', 4, 'piDRrvxhso', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(3, 'Newton Rempel', 'jrohan@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 4, 'Business Administration', 2, 'RvpXQmzGmD', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(4, 'Stacy Howe', 'bergnaum.joel@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 1, 'Business Administration', 4, 'z9C6PJYsRj', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(5, 'Davon O\'Reilly', 'eudora.wilderman@example.net', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 2, 'Engineering', 3, 'b9R01KBRA8', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(6, 'Adolphus Larson', 'barney73@example.net', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 3, 'Business Administration', 3, 'bmGoON8njt', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(7, 'Marcelino Langosh', 'friedrich.ruecker@example.com', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 2, 'Business Administration', 3, 'P0j9wGuX6x', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(8, 'Alberto Welch', 'rbechtelar@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 4, 'Computer Science', 3, 'HSlHx3r9CY', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(9, 'Bret Jones', 'alejandra.kiehn@example.net', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 3, 'Business Administration', 4, 'eDjFmBOzFA', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(10, 'Elva Senger II', 'aileen.larkin@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 4, 'Computer Science', 4, '6Y4sYJ5cWz', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(11, 'Mrs. Kamille Johns', 'schaefer.sabryna@example.com', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 3, 'Business Administration', 4, 'uS10K3Na3i', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(12, 'Brock Nitzsche', 'luigi.rau@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 3, 'Engineering', 3, 'pFwYkoW7AS', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(13, 'Mrs. Vena Oberbrunner', 'eda85@example.com', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 4, 'Computer Science', 3, '4xoiUCViyb', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(14, 'Myles Hermann IV', 'wendell.bartell@example.net', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 2, 'Business Administration', 3, '2gia0IuHhV', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(15, 'Mose Gerhold', 'hbauch@example.org', '2024-07-26 20:28:41', '$2y$12$jtczgi3gA7c5uoerx2XRVO3XqCngvv4un9cqC8KRqYhNNr0bethOu', 4, 'Business Administration', 3, '6o4U0c28EU', '2024-07-26 20:28:41', '2024-07-26 20:28:41'),
(16, 'Tremayne Lowe PhD', 'veronica.adams@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 2, 'Engineering', 3, '3N83zQieMy', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(17, 'Sylvester Hauck', 'lebsack.john@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 1, 'Computer Science', 3, 'i7KxPYyaEx', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(18, 'Miss Isabel Hamill', 'hammes.jessie@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 2, 'Computer Science', 3, 'zuPVgBcT1k', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(19, 'John Rippin', 'frankie.wilderman@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 1, 'Engineering', 3, 'BCIuXSWjQv', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(20, 'Ernesto Cummerata PhD', 'cristian43@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Engineering', 2, 'GQDGcy9MwY', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(21, 'Doris Brown', 'russel.cierra@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Engineering', 3, 'IaNmT4Xtyg', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(22, 'Lucinda Mann', 'chyna.bechtelar@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Engineering', 3, 'DDcpHA3pGx', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(23, 'Madie Dietrich DDS', 'layla.oreilly@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Engineering', 4, 'vYoMBDms5z', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(24, 'Unique Yundt', 'mccullough.manuela@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 2, 'Business Administration', 4, 'MpH9oBQVR2', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(25, 'Norval Simonis', 'kathleen.littel@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 1, 'Computer Science', 2, 'e9ZNXwHUlK', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(26, 'Prof. Luther Johnston', 'weissnat.rollin@example.org', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Business Administration', 3, '8RhrTo6aDk', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(27, 'Ivah Keeling', 'ritchie.kailee@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 4, 'Engineering', 3, 'ce2gzqqbLz', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(28, 'Dr. Brando Durgan', 'rosemarie.murazik@example.com', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 1, 'Business Administration', 4, 'Rf56XfNLm4', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(29, 'Jennie Balistreri', 'dickens.emil@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 2, 'Computer Science', 2, 'brkhtwoYeZ', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(30, 'Celestine Schneider', 'vhodkiewicz@example.net', '2024-07-27 01:11:48', '$2y$12$5gz8oBhCz33ZZRgmN/wN4Ohz1azM1AO7ycZAFITjzCLAb3uXCvoiK', 3, 'Business Administration', 3, '11VK5MtfSc', '2024-07-27 01:11:48', '2024-07-27 01:11:48'),
(31, 'Jany Heathcote', 'cummerata.brandy@example.net', '2024-07-27 01:14:06', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 1, 'Engineering', 3, 'pt1VDNtssg', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(32, 'Miss Kailee O\'Conner MD', 'quigley.thalia@example.net', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 1, 'Computer Science', 3, 'OzFaxRj5Ul', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(33, 'Earnest Steuber', 'holly.rice@example.net', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 4, 'Engineering', 2, 'LnwHLd2RpE', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(34, 'Justine Stanton PhD', 'johnston.dean@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 1, 'Business Administration', 3, '7txyG4KCZx', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(35, 'Ms. Ebba Adams', 'clarissa05@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 1, 'Computer Science', 3, 'fcDvGDXoB9', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(36, 'Bessie Schowalter', 'stillman@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 3, 'Engineering', 4, 'G01i9HBgKi', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(37, 'Elvera Altenwerth', 'wyman.rasheed@example.org', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 4, 'Business Administration', 2, 'iciZRZ83K7', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(38, 'Joy Zemlak', 'adonis29@example.net', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 4, 'Engineering', 3, 'UX2z4N6tA4', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(39, 'Dr. Austen Howe', 'rosenbaum.cullen@example.org', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 3, 'Computer Science', 3, '3evNaB4c3m', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(40, 'Dr. Janessa Cormier DVM', 'quincy.lind@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 2, 'Computer Science', 2, 'YaYAqp9vXj', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(41, 'Sabina Paucek', 'gisselle67@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 2, 'Business Administration', 3, 'YEeMLk5bMq', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(42, 'Elmore Kling', 'anya56@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 3, 'Computer Science', 4, 'EoH94lI9L7', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(43, 'Dr. Maudie Barton II', 'torp.savanna@example.org', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 1, 'Computer Science', 3, 'AKvVQgbwPO', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(44, 'Alba Tillman V', 'roderick.kreiger@example.com', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 2, 'Business Administration', 2, 'ta764LKlAB', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(45, 'Miss Anya Hackett', 'ima78@example.org', '2024-07-27 01:14:07', '$2y$12$4EMKoGH2vNC24wa0egfo9unLIcMZoIoTgJLiAQwb6ZMokO6K989Uq', 2, 'Computer Science', 3, 'AYyGT8jllq', '2024-07-27 01:14:07', '2024-07-27 01:14:07'),
(46, 'Tito Schmidt', 'jesse08@example.net', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 2, 'Business Administration', 3, 'qpBkAqwenu', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(47, 'Houston Bartell', 'alvah.heathcote@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 4, 'Engineering', 4, 'nqHjUCGLpH', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(48, 'Mortimer Cassin', 'osinski.myrl@example.net', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 3, 'Computer Science', 4, 'hXLO3eY38G', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(49, 'Mr. Gaetano Crist', 'lue.weber@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 4, 'Engineering', 3, '3avsr3k2Ft', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(50, 'Autumn Sporer', 'strosin.norma@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 2, 'Business Administration', 4, '2qpSXFxQpw', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(51, 'Einar Lockman Jr.', 'misty.dicki@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 4, 'Engineering', 3, 'HvrNsBMq38', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(52, 'Carrie Fay V', 'lisette.hodkiewicz@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 4, 'Engineering', 2, 'JstsvGk3Og', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(53, 'Percival Rohan', 'larson.travon@example.net', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 1, 'Engineering', 3, 'vzMUkUa2jr', '2024-07-27 01:15:12', '2024-07-27 01:15:12'),
(54, 'Alexandre Reichert', 'josephine41@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 1, 'Computer Science', 4, 'LI2w29TQL6', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(55, 'Kira Littel', 'reynolds.claudine@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 3, 'Business Administration', 4, 'U43iAeHZY3', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(56, 'Mr. Ashton Jaskolski Sr.', 'nhills@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 1, 'Business Administration', 3, 'ChWRXBkNeU', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(57, 'Prof. Eleazar Strosin IV', 'kchamplin@example.com', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 2, 'Engineering', 3, '52V8enMqMq', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(58, 'Miss Lenna Collier PhD', 'kris.vicente@example.net', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 2, 'Business Administration', 4, 'hx6wZGJf4B', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(59, 'Prof. Arthur Cronin II', 'kgrant@example.org', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 1, 'Engineering', 2, 'CqUjayddqX', '2024-07-27 01:15:13', '2024-07-27 01:15:13'),
(60, 'Dr. Javier Gerhold DVM', 'jewell25@example.org', '2024-07-27 01:15:12', '$2y$12$mLNIiSfl9WfvrOsJ1jqYS.kA9egDeO5AQ2R1JVC3y0vwm0zFgEAXG', 3, 'Business Administration', 2, 'IeR4KsXyuG', '2024-07-27 01:15:13', '2024-07-27 01:15:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `documentappointments`
--
ALTER TABLE `documentappointments`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `documentappointments`
--
ALTER TABLE `documentappointments`
  MODIFY `doc_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
