-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2024 at 11:23 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21754358_82130348project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `NAME`) VALUES
(1, 'business'),
(2, 'formal'),
(3, 'sports'),
(4, 'casual');

-- --------------------------------------------------------

--
-- Table structure for table `fashionp`
--

CREATE TABLE `fashionp` (
  `pid` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `production` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `brand` varchar(100) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fashionp`
--

INSERT INTO `fashionp` (`pid`, `NAME`, `production`, `price`, `brand`, `cid`, `photo_url`) VALUES
(101, 'Product A', '20-2-2022', 15000, 'AQ', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmpQ3d36N-qoZz1DaxOrci4B8fVZlVXD0P--elu-TdUdE1Ptr2l92CL6cgLDce8y2a0uI&usqp=CAU'),
(102, 'Product B', '20-2-2022', 12000, 'QA', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfuZygQMfvJT1mFrsHhpiFZJwMY7mICjhqdNhkpGkm1FbG-R7fd9RA2FW5gbr9fjI9kbA&usqp=CAU'),
(103, 'Product C', '20-2-2022', 18000, 'AP', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNoINA9h33ADJpehpQuFClj891GVCmTQyLIj9zfYWwM7mNjueOM0KKvsxOijAUuPvPtGc&usqp=CAU'),
(104, 'Product D', '20-2-2022', 13500, 'NM', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBZODWJj8AbAJ3AbaqNva-1NIG4s2K5e3r7BALMcfECuqQiXneOBjKCY9ac-1OCT06860&usqp=CAU'),
(105, 'Product E', '20-2-2022', 20000, 'CT', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbHFgriJ_Awe5ThdZJz9OK5FKTLBKmY0BiLHCo8eFgDRhn6O4koiJqhd6VVqWShIeg2eY&usqp=CAU'),
(106, 'Product F', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIdUSrtWRZzln0yypijCwLwBwslPbQlpWywojHjOe26PrLOmKDhfRJlPjW8FBi8D0IJWQ&usqp=CAU'),
(107, 'Product AA', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTypWtXmRVFkyHI6x7GcwbMeXgePl2QcOEDdMZe8FLjacsE36zehF7kckEcmQLy2cVE37s&usqp=CAU'),
(108, 'Product BB', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn9CmVRPkQ9SzrFQSZTQM96aT-YWOcIVZNt_WQZ6cRJ7JYyPgDrUOw0xb-ieDZAo3YYYo&usqp=CAU'),
(109, 'Product CC', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfElj5J-NPtNraQrM2qav7e5ERCuTlGg09hNsXb4qGa51ywc7anmYj_7ft0GJRrf5Gifk&usqp=CAU'),
(110, 'Product DD', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9s_B2klr65T9TNFaa-LAmNvw_hLQ_Mu5y9Nt4Re47D1_-WkNierpcJ5T_8YuDr--MLwA&usqp=CAU'),
(111, 'Product EE', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIt8-uS2EF3zXZ6VrO3fmu8n_QJIoWm524ZYW9jnLfEz1Z9FzhduxMuzJhBowaGm4KFb8&usqp=CAU'),
(112, 'Product FF', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSraYjThCq5WaXUUtXyFuwyqDUyeMnqD1Zn0ig_c_k9auYDwuSchzXcxyC3L3w5xVf2APM&usqp=CAU'),
(113, 'Product AAA', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOmCwp6YiPeDNZ5WInEFzCyvSZj4uYKVSSzmixgtLYji7NB5xPipWlrrZjC20-PJAbxIY&usqp=CAU'),
(114, 'Product BBB', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQkVxBQoQcyje4kYijzhJohZR9-m2oRn1VL2pnFXOgkdZftZER-lWtX5OZVptUNQhho2M&usqp=CAU'),
(115, 'Product CCC', '20-2-2022', 12500, 'FG', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1b07xC_-jRodANXbiZJPa3PpmeBJYqIveNfGnG7BgO5TuwTosg6brllKHVu4yn1A77yI&usqp=CAU'),
(116, 'Product DDD', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ370cyDjH2KYNfV9GD7YXnUOPY6APXeWOTvoS0YLT8tHZqGQUNvsERo8un6UKHbV0cOcg&usqp=CAU'),
(117, 'Product EEE', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnY_eKtiwmHsa_mDVc4LuIloFpU7DsCc1uoz9sz8V1zPvNfgUVuVmY3LszK6tr6ZdApc4&usqp=CAU'),
(118, 'Product FFF', '20-2-2022', 12500, 'FG', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHp3WTTaEfUeqonc9S07pe66D7cGdiqBnEgdahx9fcCTCkW7UD3txchV2cLG8CKRhor4Y&usqp=CAU'),
(119, 'Product AAAA', '20-2-2022', 12500, 'FG', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSykfvtPe3sKYe7i8nfa93cwqrKadoF5Xdga_7glmDwB_HZvvFW_xXPyYMgbBePDtrfocA&usqp=CAU'),
(120, 'Product BBBB', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsJui8O0b5Imhj54nV3qjJVHTGTUvSN15gash3EcF9Z1jEa0tWNiazBYizbQMu_4gM44g&usqp=CAU'),
(121, 'Product CCCC', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5gHTESpVd48MmS3PZXCAQVLXxFd64-FEdG6TO9VG16ZH7H5ihG-esjniyT7QDMeHNgns&usqp=CAU'),
(122, 'Product DDDD', '20-2-2022', 12500, 'FG', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpEW7xRXWbLoh64yvijomnOUaSKLgq7S1i-uDl72ZXVzT1hXVr6gUKKxel7HAzHwaxr00&usqp=CAU'),
(123, 'Product EEEE', '20-2-2022', 12500, 'FG', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFY3Yx0tW-4eSJUKy4pthmgewY2jyJhKCj8yiExDEZhRdGKkNML3aI6i1GZvG-amJKtws&usqp=CAU'),
(124, 'Product FFFF', '20-2-2022', 12500, 'FG', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUwmvGhN4yI458NU_3W5F3cIKiW235GXH9JudSxcdO5m5mn7xbLpRsNsTxrc93bRUbIxg&usqp=CAU'),
(125, 'Product AAAAA', '20-2-2022', 12500, 'FG', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ370cyDjH2KYNfV9GD7YXnUOPY6APXeWOTvoS0YLT8tHZqGQUNvsERo8un6UKHbV0cOcg&usqp=CAU'),
(126, 'Product BBBBB', '20-2-2022', 12500, 'FG', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ370cyDjH2KYNfV9GD7YXnUOPY6APXeWOTvoS0YLT8tHZqGQUNvsERo8un6UKHbV0cOcg&usqp=CAU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `fashionp`
--
ALTER TABLE `fashionp`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cid` (`cid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fashionp`
--
ALTER TABLE `fashionp`
  ADD CONSTRAINT `fashionp_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
