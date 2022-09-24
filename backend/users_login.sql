-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2022 at 11:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('1-7yd8L3equ_jkgB94h9q-MxZle2-lX9', '2022-09-24 15:00:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 15:00:35', '2022-09-23 15:00:35'),
('6nhi3gJNKtSeH7SMzeBPjCSe6KTVm43M', '2022-09-24 11:04:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:04:18', '2022-09-23 11:04:18'),
('7fJaR-Fla4sdSsMKP78L1NkKWp-w7FWX', '2022-09-24 23:48:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:48:45', '2022-09-23 23:48:45'),
('7W3RznjD9OTNZ8Kgf1uIgm1wZEhBfkx2', '2022-09-24 10:57:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:57:31', '2022-09-23 10:57:31'),
('Bj87goAmQ2nRiSJkS0AOqu5KahR2iHtR', '2022-09-24 10:56:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:56:18', '2022-09-23 10:56:18'),
('BQLFCT4PLMo7pAh-C8bw2kX61IEfGMdu', '2022-09-24 22:53:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:53:35', '2022-09-23 22:53:35'),
('BrcQcpXkHVuuF6C_JMx5AEJ8elM5ZJHW', '2022-09-24 10:57:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:57:15', '2022-09-23 10:57:15'),
('bsdLmZGczmT3VyRK4NyQ2zeaX_eaLHzt', '2022-09-24 14:02:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"e55f42be-7e27-4056-846d-923a6afe6dfb\"}', '2022-09-23 13:38:13', '2022-09-23 14:02:58'),
('d-Rdoa59QkknRs0Gr9QbaGiQSaUJ-dRI', '2022-09-24 21:49:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:49:13', '2022-09-23 21:49:13'),
('enFx7xil2LUv9Jww8yqU3a5AFrfEkoSo', '2022-09-24 23:49:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:49:10', '2022-09-23 23:49:10'),
('eR875vSso54B-EECQHKSOFAOr-8bv4TW', '2022-09-24 23:49:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:49:21', '2022-09-23 23:49:21'),
('EY5QBnIM2y32B_tv9mYarlzY6xUtg25v', '2022-09-24 10:54:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:54:26', '2022-09-23 10:54:26'),
('fEsGm-0xeE1Fd7U6iho7vhdM3iOQ1FON', '2022-09-24 11:05:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:05:59', '2022-09-23 11:05:59'),
('fk3plJ7pWlijO3f5rgtsGlo0Rl2Fg46y', '2022-09-24 22:51:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:51:30', '2022-09-23 22:51:30'),
('GrQ2xGehIoa2rxKyc8f0lV2tzKt4S544', '2022-09-24 10:57:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:57:03', '2022-09-23 10:57:03'),
('H6g5i-aN2vBpVXR7iUr4LrWPIsOOV2kw', '2022-09-25 09:31:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 02:47:39', '2022-09-24 09:31:01'),
('h85rx17TNg_8vfU_7i19RSl2p3h7TDQv', '2022-09-24 10:55:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:55:28', '2022-09-23 10:55:28'),
('HAffBln4Q-L3yUVbxGmuPefEljia0aNn', '2022-09-24 22:21:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:21:37', '2022-09-23 22:21:37'),
('HbPclcjWqbaWdSkj7Gk2BaA2j80hAK2h', '2022-09-24 22:51:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:51:21', '2022-09-23 22:51:21'),
('ijsULy3j9pNy418Dx-NkVUqlx7tVCgNp', '2022-09-24 21:50:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:50:15', '2022-09-23 21:50:15'),
('jbyMclcaS9ja1b2ES_PBsDIfHgqeRPM_', '2022-09-24 14:54:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 14:54:50', '2022-09-23 14:54:50'),
('je4zTu8pLDFIZLAEGS8OFIkaeT6unfDQ', '2022-09-24 13:38:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 13:38:13', '2022-09-23 13:38:13'),
('JfLpfihDDxcQtPPB2fBQ_XSS8lH1-yZz', '2022-09-24 21:47:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:47:44', '2022-09-23 21:47:44'),
('jjroFGkEI-GqXWh-LCf3t0bnCvWgjBB9', '2022-09-24 23:49:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:49:26', '2022-09-23 23:49:26'),
('jriPcnDVg9_fn6BSFKkVjcAUGjLCiFKD', '2022-09-24 11:05:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:05:59', '2022-09-23 11:05:59'),
('jT7xTo6N9-eyY2ajwLNrjR3ug7jrXq21', '2022-09-24 22:53:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:53:05', '2022-09-23 22:53:05'),
('KcOACYeuvOLuEoAKeDa6anx4a3j6i8V8', '2022-09-24 11:05:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:05:54', '2022-09-23 11:05:54'),
('kFqQi2ToRzU0WYlhc_UWZc1-VFfLfdkf', '2022-09-24 10:55:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:55:48', '2022-09-23 10:55:48'),
('LILaBEV4elYHj1blYPDt9krOw6USJ7hW', '2022-09-24 22:34:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:34:32', '2022-09-23 22:34:32'),
('Lp6xeEdLP7KceAJLxaMB6dKGGxXyVh-N', '2022-09-24 21:50:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:50:25', '2022-09-23 21:50:25'),
('l_lVSwKcobO0PYQMQl1exTNVBn6L8cG-', '2022-09-24 22:41:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:41:00', '2022-09-23 22:41:00'),
('M3uGQUIxwjpKR8eKBNxMf0UA-u0WckRT', '2022-09-24 21:47:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:47:29', '2022-09-23 21:47:29'),
('med-zP5XRwalJCM919jDwGGi9E9bRnoi', '2022-09-24 15:25:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 15:25:48', '2022-09-23 15:25:48'),
('M__Xv9zkAInvED5BLMMN1I11nHEz5rUi', '2022-09-24 10:58:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:58:07', '2022-09-23 10:58:07'),
('p-yyYyO-NG-TR-iBO4E9rXvPtlghSmZb', '2022-09-24 21:49:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:49:53', '2022-09-23 21:49:53'),
('pd7U2s2aeiAk7xCbE03Ivvb4CqsChrCw', '2022-09-24 11:05:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:05:59', '2022-09-23 11:05:59'),
('pq28oRHN_7EWPHnA4ibjF45t_ye4KnCP', '2022-09-24 14:55:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 14:55:16', '2022-09-23 14:55:16'),
('PSBBs_ODIi90qI9ne11D_CgU0S9OQ819', '2022-09-24 22:51:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:51:56', '2022-09-23 22:51:56'),
('pybI4qSTLkx0PItdkyQH0vgGvtQRGMo4', '2022-09-24 23:48:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:48:50', '2022-09-23 23:48:50'),
('qHpsEVJTarqdNsxhKZ8VD13X_h5USevz', '2022-09-24 22:53:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:53:17', '2022-09-23 22:53:17'),
('r_E-Coj30ncDaRWuX4QALt7O4dK2o0xX', '2022-09-24 14:53:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 14:53:29', '2022-09-23 14:53:29'),
('SzWH32Y9xDxR8dxVHBdhAMVcEjY4wLDL', '2022-09-24 23:49:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:49:16', '2022-09-23 23:49:16'),
('tmCgN4VEVlojzsoI8-FZKefcDSJoYL8m', '2022-09-24 11:05:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:05:59', '2022-09-23 11:05:59'),
('uaP6ZUgBGPz65Xe0TxlLz_gMU0TYCp7c', '2022-09-24 11:03:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 11:03:30', '2022-09-23 11:03:30'),
('UkiTm_l7whfpPUeGvuKg9avEbFu3isu7', '2022-09-25 09:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-24 09:30:58', '2022-09-24 09:30:58'),
('v1pK-YyxRioncLvgS6Y-VTmHnyTXLP_r', '2022-09-24 21:49:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:49:07', '2022-09-23 21:49:07'),
('VbeWEB-5QSLImoXso0uy8PQiQE4vD0l9', '2022-09-24 21:49:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:47:29', '2022-09-23 21:49:14'),
('Vp-9Oz4TIPT2DaDoQhvGdYPRfkLyuR58', '2022-09-24 23:50:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 23:50:54', '2022-09-23 23:50:54'),
('vq3p__-aG5lpLl8ArZ050t-gzKIhy2Eu', '2022-09-24 22:52:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:52:46', '2022-09-23 22:52:46'),
('VWVPJfLIHLpdGCCU651T3AKXsEltZbNQ', '2022-09-25 09:30:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-24 09:30:44', '2022-09-24 09:30:44'),
('vyqpE1kncA8cyuGfozkbAGISlwR6KPhp', '2022-09-24 21:50:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:50:09', '2022-09-23 21:50:09'),
('wY1ZiYiBXEhdRFISFXX47No4EeHbG4ZQ', '2022-09-24 21:50:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:50:34', '2022-09-23 21:50:34'),
('wyOH-eGBGTXD-Ya4tRFdg3uG9ZbZIU2x', '2022-09-24 21:47:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:47:34', '2022-09-23 21:47:34'),
('x23UGU_Vwfh4AkfJqV2Cob6C-JRcy7by', '2022-09-24 10:56:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:56:05', '2022-09-23 10:56:05'),
('X5Zm2WrDUBiyyC0J_X2mZEgobp84VGFn', '2022-09-24 10:57:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 10:57:39', '2022-09-23 10:57:39'),
('xnZ4Y9lC391NS0Bs3CnydZRhObuzGaWi', '2022-09-24 14:55:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 14:55:09', '2022-09-23 14:55:09'),
('xWlgCPUt5dH61PSiTyV0fMuYpJd89I0O', '2022-09-24 22:41:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:41:10', '2022-09-23 22:41:10'),
('Y0pWWZb6NZh71XK6HTVogAqzvU_njepa', '2022-09-24 22:41:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 22:41:05', '2022-09-23 22:41:05'),
('yKb8TctlExxhy-XDl8uxIUxjozN6UUuw', '2022-09-24 21:47:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:47:39', '2022-09-23 21:47:39'),
('YOjY2xvL8mXcqXIIPd3SAGT5l5ntIsaS', '2022-09-25 09:30:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-24 09:30:51', '2022-09-24 09:30:51'),
('Z8EG7_Asw-DToKW8jWiPrjoQK1jhHqum', '2022-09-24 14:55:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 14:55:31', '2022-09-23 14:55:31'),
('ZWIOKJTGcW8rs40iXrAmEnY5dnxFVGFZ', '2022-09-24 21:48:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-09-23 21:48:48', '2022-09-23 21:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'e55f42be-7e27-4056-846d-923a6afe6dfb', 'Musa Turay', 'info@turaymusa.com', '$argon2id$v=19$m=4096,t=3,p=1$MDDKdLacxUuElPUuADNhxA$ELyFOyMUAkfkW5QunHG9LX2AqSgK0XSaUDGGAfMNoSc', 'admin', '2022-09-22 11:15:03', '2022-09-22 11:15:03'),
(2, 'd9297021-9197-4a50-aa53-4c644d7b45e2', 'Nfa Turay', 'info@turaymathic.com', '$argon2id$v=19$m=4096,t=3,p=1$8a1S6AXec8INRdvIlyBKBg$nLLJyyY6xozIi6QRweow6sx4y8+5nA5ORRIvA3r4U3k', 'admin', '2022-09-22 11:21:11', '2022-09-22 11:28:10'),
(4, '283ff0f5-d133-4a57-a22b-c9dd5289de03', 'Mohamed Turay', 'turaymohamed@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$oP5frKWCCsRZMciUVOE0Bg$wcmCuD0sJwuzAriQPys9ePOB7pxGM9+kO4ZyGsqriow', 'user', '2022-09-22 12:18:54', '2022-09-22 12:18:54'),
(5, '4630ac61-216c-43f9-80eb-dcfd126837ec', 'Salim Jalloh', 'salimjalloh@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$Dv3Q8YBPNRhSeVXB5bqgcg$qnizC+ezyDdk0KrVdVMmfjxYIxmDOOAjYRHVgMRIxC0', 'user', '2022-09-22 12:22:05', '2022-09-22 12:22:05'),
(6, '811d6ef0-1eb5-4827-8a2b-cf5e59f0aaa0', 'Musa Enoch Ngawuja', 'men270992@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$9jUJl9IgV9Rqj+FeXMCf+g$BAkrWxbhIcQx0per2Fd53jKua6DBEwc9eQnqVtah6ek', 'user', '2022-09-22 12:38:07', '2022-09-22 12:38:07'),
(7, '4a3a8e1d-753f-4313-916b-9e6b70f1e132', 'Orange Sierra Leone', 'orange@orange.com', '$argon2id$v=19$m=4096,t=3,p=1$9rui4rft54WIHoAF7fSMaA$uR75M6I3wPFB7CGTR+YcYmPpAAeBTfDtJ18d8DxwNMM', 'admin', '2022-09-22 13:15:12', '2022-09-22 13:15:12'),
(8, 'c687c105-8672-497d-abf6-573cb1abc1a4', 'Musaa', 'turay@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$tHy6HXAlwGW0YmKV7eKYDw$tEZ6LnIZ/A3Q9cBik7lktltGeaj8Q06DAkfuKG1OEqU', 'admin', '2022-09-22 14:18:00', '2022-09-22 14:18:00'),
(9, '9fe86033-7d71-4c3e-b2a7-995953e2beec', 'Test Admin', 'test@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$ahk7MuDXfe7vlHIo7mH+pA$WQbrDMhxrZT47p+0K5aQwm//4AHthATp+otauAFP7rE', 'admin', '2022-09-23 14:55:09', '2022-09-23 14:55:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
