-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2023 at 07:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'alifhossain174@gmail.com', '+8801969005035', '2023-03-01 17:41:48', '$2y$10$vQL1LhwaZmVChOJZlMzskO3bMCVDelneLgBX.7QWxxLZteI1rr2/m', 'f9pNF29KXY6q2GxFAxisX7hAMHit2tx69syqp9vbAe5LQK8Ofw5bChd1TRcI', '2023-03-01 11:00:04', '2023-03-01 17:34:43'),
(3, 'Alberto Runolfsson', 'reichert.hubert@example.net', '1-248-356-5650', '2023-03-01 17:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5TPzaYeYlw', '2023-03-01 17:41:05', '2023-03-01 17:41:05'),
(4, 'Mrs. Myra Kutch MD', 'alexanne.howe@example.org', '(351) 801-3213', '2023-03-01 17:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wDR1EKjBBA', '2023-03-01 17:41:05', '2023-03-01 17:41:05'),
(5, 'Katheryn Reynolds', 'jaydon13@example.org', '781.338.2772', '2023-03-01 17:41:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GD1Sjc8NN5', '2023-03-01 17:41:05', '2023-03-01 17:41:05'),
(2023, 'Lourdes Kunze', 'keebler.madisyn@example.org', '878-476-9948', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Csjnpm0Sx6', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2024, 'Garrison Lang', 'ecorkery@example.org', '360.288.6459', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TmhY4xIm0I', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2025, 'Jackeline Welch', 'adickens@example.org', '531-884-1922', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MAg3ekOweD', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2026, 'Mr. Easton Miller', 'dandre.leffler@example.com', '+1-650-822-7866', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oK336E5tmq', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2027, 'August Hansen', 'fjacobs@example.com', '808-364-0018', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rK0eex0ctQ', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2028, 'Salvatore Hill', 'tortiz@example.org', '+1-762-969-0373', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eCbv88TGLE', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2029, 'Devon Beahan IV', 'mpaucek@example.org', '1-856-906-6693', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fhOMqfPDRz', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2030, 'Jorge Quitzon Sr.', 'berniece11@example.org', '+1-727-346-3123', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SpdJEamzyK', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2031, 'Lera Powlowski', 'camren.mcglynn@example.net', '1-240-731-4912', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'suyP7lR1DR', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2032, 'Frederique Homenick', 'xnienow@example.org', '+16307763175', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rt6CvvOYFR', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2033, 'Ms. Fleta Cole MD', 'laurianne85@example.org', '1-775-489-3275', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JTf0DUGeGW', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2034, 'Ladarius Walter', 'leonor.schuster@example.net', '223-412-0946', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'myJ08RYTSQ', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2035, 'Roberta Langosh IV', 'athena.terry@example.org', '1-380-249-3844', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1pOfQrcokM', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2036, 'Lawson Farrell I', 'marietta.friesen@example.net', '+16618242851', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KPNJIKhMKk', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2037, 'Camilla Gleichner', 'xstiedemann@example.com', '+1-208-372-1193', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KvdmRthD55', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2038, 'Uriel Green', 'qjohnston@example.net', '747.806.3550', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cW9CHaRCTX', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2039, 'Ms. Hillary Muller II', 'spinka.olaf@example.org', '+1-703-692-9108', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g1C0tmi4ve', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2040, 'Prof. Claude Runolfsson', 'eharvey@example.net', '+1 (531) 323-6938', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g9vKYBGOwz', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2041, 'Alberto Steuber', 'larry.batz@example.org', '+1-270-963-1623', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'reNgaDkNhY', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2042, 'Elisabeth Hodkiewicz', 'ziemann.mathilde@example.com', '786-629-1332', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '32KMN56v8V', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2043, 'Roy Stroman', 'ibrahim47@example.org', '1-845-845-4543', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0QvtmPwYpr', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2044, 'Miss Alexane Ferry', 'fabian12@example.org', '+1-681-967-8749', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AjEzamXHAd', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2045, 'Mr. Kaley Fadel PhD', 'green.naomi@example.net', '+1-435-647-9179', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xoRDLQGDsj', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2046, 'Angus Armstrong V', 'oconnelly@example.org', '(678) 239-5486', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MVj3YbPPvJ', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2047, 'Mr. Elian O\'Reilly DDS', 'jacobson.kathryn@example.net', '1-717-755-8038', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OKtpE8sNyg', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2048, 'Prof. Elijah Moen PhD', 'cgreenholt@example.net', '(586) 770-2920', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bDb26A0X2a', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2049, 'Nya Nolan', 'carrie.schoen@example.org', '1-602-554-1782', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UwWzqo26LY', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2050, 'Sebastian Fadel', 'spinka.olin@example.org', '+1.606.678.2547', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OD0hXfBPlK', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2051, 'Adolf Ryan', 'demetris.klein@example.com', '+1.309.941.4177', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EfHlUiI4bV', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2052, 'Sonny Koss', 'tfisher@example.org', '(380) 478-4606', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aKwdoHYaky', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2053, 'Dr. Leo O\'Hara II', 'tamara.ryan@example.net', '+1.925.305.9931', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BmoOjlZObQ', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2054, 'Prof. Matteo Lubowitz', 'ronaldo91@example.net', '678-625-4236', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pMCpQgSzTY', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2055, 'Ursula Klein', 'merritt89@example.com', '+1-786-993-3158', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'La9Ujo6blP', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2056, 'Hillary DuBuque PhD', 'aric61@example.net', '831.359.4145', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jnyiN8TH4D', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2057, 'Stevie Zulauf', 'braeden85@example.net', '+1-231-721-1945', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DrT4TaCbgu', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2058, 'Obie Bauch', 'zmacejkovic@example.org', '+1-573-781-8569', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PbCEWiwOoC', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2059, 'Jeanette McGlynn Sr.', 'damian15@example.org', '+1-563-966-9844', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PTGFoI98H8', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2060, 'Clare Cormier', 'grayce22@example.com', '+1 (380) 595-8510', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pKOrWSuEeW', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2061, 'Jamar Gerhold', 'koss.bernard@example.org', '1-435-851-0077', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7xpeSbxvqx', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2062, 'Mr. Paolo Pollich III', 'christop23@example.org', '+1-936-739-1133', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ww80TeicHH', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2063, 'Marc Stiedemann', 'delphine.luettgen@example.com', '+17476699067', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e9PIhywlKT', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2064, 'Tyreek Stanton', 'dstamm@example.org', '559-284-1441', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EjZq33AfEh', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2065, 'Mr. Stewart Kirlin', 'ramon24@example.net', '(404) 565-6003', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Qv6xqBNAbM', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2066, 'Deja Hartmann', 'wstamm@example.com', '1-276-312-1549', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eD7ySTkijs', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2067, 'Merl Koss', 'roxane.brown@example.com', '+1.806.272.8718', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rqqnohktEM', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2068, 'Kaya Haag 2', 'altenwerth.jayce@example.net', '1-407-223-9104-0', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fgN9LkhuHB', '2023-03-01 17:43:34', '2023-03-01 18:12:55'),
(2069, 'Remington Hammes', 'lortiz@example.org', '+1 (878) 945-4603', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pTVCjATRml', '2023-03-01 17:43:34', '2023-03-01 17:43:34'),
(2070, 'Prof. Llewellyn Ritchie', 'kayleigh37@example.com', '+1-757-837-5165', '2023-03-01 17:43:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r4LArfsj1U', '2023-03-02 17:43:34', '2023-03-02 17:43:34');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2073;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
