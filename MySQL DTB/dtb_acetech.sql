-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 05:08 PM
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
-- Database: `dtb_acetech`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `securityQuestion` enum('What is your mother''s maiden name?','What is the name of your first pet?','What is the name of the street you grew up on?','What is your father''s middle name?') NOT NULL,
  `securityAnswer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `role`, `username`, `password`, `email`, `securityQuestion`, `securityAnswer`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin', 'bellezacarlolorenzo@gmail..com', 'What is your mother\'s maiden name?', 'Liganor', '2025-01-01 03:59:51'),
(2, 'user', 'user', 'user', 'sterbensarashina@gmail.com', 'What is your mother\'s maiden name?', 'Santos', '2025-01-04 11:34:11'),
(3, 'user', 'Sterben', '1234', 'belleza.carlo012505@gmail.com', 'What is your mother\'s maiden name?', 'Liganor', '2025-01-14 12:53:02'),
(4, 'user', 'sarashina', '1234', 'sterbenml25@gmail.com', 'What is your mother\'s maiden name?', 'Belleza', '2025-01-14 13:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clients`
--

CREATE TABLE `tbl_clients` (
  `id` int(11) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_task` enum('Repair','Upgrade','Maintenance') NOT NULL,
  `parts_needed` varchar(255) DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_clients`
--

INSERT INTO `tbl_clients` (`id`, `client_id`, `client_name`, `client_task`, `parts_needed`, `status`, `assigned_to`, `created_at`) VALUES
(1, '20241218-1', 'Emily Bennett', 'Upgrade', 'XFX RX6600 8GB', 'Pending', 'Carlo Lorenzo Belleza', '2024-12-18 02:18:20'),
(2, '20241218-2', 'James Carter', 'Upgrade', 'XFX RX6600XT 8GB', 'Completed', 'Ken Takakura', '2024-12-18 02:18:39'),
(3, '20241218-3', 'John Anderson', 'Upgrade', 'Intel Core i9-13900K', 'Pending', 'Carlo Lorenzo Belleza', '2024-12-18 02:18:52'),
(4, '20241218-4', 'Sarah Collins', 'Upgrade', 'ADATA 512GB SU650 2.5\" Solid State Drive', 'Pending', 'Carlo Lorenzo Belleza', '2024-12-18 02:19:16'),
(5, '20241218-5', 'Michael Davis', 'Upgrade', 'XFX RX6600XT 8GB', 'Pending', 'Angel Krystel Concepcion', '2024-12-18 02:19:28'),
(6, '20241218-6', 'Elizabeth Moore', 'Upgrade', 'TEAMFORCE T-Force Dark Zα 16GB 3200Mhz', 'Pending', 'Aljane Cloe Calibo', '2024-12-18 02:19:41'),
(7, '20241218-7', 'William Harris', 'Upgrade', 'COOLER MASTER MWE V2 650W 80+ BRONZE Power Supply', 'Pending', 'Aljane Cloe Calibo', '2024-12-18 02:19:52'),
(8, '20241218-8', 'Laura White', 'Repair', NULL, 'Pending', 'Aljane Cloe Calibo', '2024-12-18 02:20:02'),
(9, '20241218-9', 'Robert Taylor', 'Maintenance', NULL, 'Pending', 'Angel Krystel Concepcion', '2024-12-18 02:20:12'),
(10, '20241218-10', 'Anna Morgan', 'Maintenance', NULL, 'Pending', 'Ken Takakura', '2024-12-18 02:20:20'),
(11, '20250114-1', 'Ethan Blake', 'Upgrade', 'XFX RX6600XT 8GB', 'Pending', 'Ken Takakura', '2025-01-14 14:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `employee_position` varchar(255) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `employee_phone` varchar(50) NOT NULL,
  `employee_employment` varchar(255) NOT NULL,
  `employee_manager` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`id`, `employee_id`, `full_name`, `employee_position`, `employee_email`, `employee_phone`, `employee_employment`, `employee_manager`) VALUES
(1, 'EMP-20250111012046-00423178', 'Ken Takakura', 'Manager', 'kentakakura123@gmail.com', '09353127968', 'Full Time', 'Momo Ayase'),
(2, 'EMP-20250111012230-6B2D8064', 'Momo Ayase', 'Manager', 'momoayase789@gmail.com', '09626291369', 'Full Time', 'Ken Takakura'),
(3, 'EMP-20250111040316-5C62649C', 'Aljane Cloe Calibo', 'Computer Technician', 'aljanecalibo123@gmail.com', '09176543210', 'Full Time', 'Momo Ayase'),
(4, 'EMP-20250111042247-A85EF70A', 'Angel Krystel Concepcion', 'Network Technician', 'angelkconcepcion456@gmail.com', '09228765431', 'Full Time', 'Ken Takakura'),
(7, 'EMP-20250111042430-F427E5FB', 'Carlo Lorenzo Belleza', 'IT Support Specialist', 'carlolbelleza567@gmail.com', '09565678901', 'Full Time', 'Momo Ayase'),
(9, 'EMP-20250115214909-9077AE63', 'Giohannes Babia', 'Computer Technician', 'babiagiohannes@gmail.com', '09626291379', 'Intern', 'Momo Ayase');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `product_type` enum('Graphics Card','Motherboard','Processor','Ram','Storage','PC Case','Power Supply') NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_stock` int(50) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `product_type`, `product_id`, `product_name`, `product_stock`, `product_price`, `created_at`) VALUES
(1, 'Graphics Card', 'GRC-20250111-001', 'XFX RX6600XT 8GB', 19, 13000.50, '2025-01-10 18:29:59'),
(2, 'Graphics Card', 'GRC-20250111-002', 'XFX RX6600 8GB', 9, 13000.00, '2025-01-10 18:52:27'),
(3, 'Ram', 'RAM-20250111-001', 'TEAMFORCE T-Force Dark Zα 16GB 3200Mhz', 99, 2499.00, '2025-01-10 20:20:44'),
(4, 'Power Supply', 'PSU-20250111-001', 'COOLER MASTER MWE V2 650W 80+ BRONZE Power Supply', 49, 3500.00, '2025-01-10 20:37:33'),
(5, 'Processor', 'PRC-20250111-001', 'AMD Ryzen™ 3 3200G Processor with Radeon™ Vega 8 Graphics', 18, 4050.00, '2025-01-10 20:37:49'),
(6, 'Processor', 'PRC-20250111-002', 'Intel® Core™ i5-13400 Processor (20M Cache, up to 4.60 GHz)', 7, 12000.00, '2025-01-10 20:37:58'),
(7, 'Motherboard', 'MBR-20250111-001', 'MSI B450M-A PRO MAX II AMD AM4 mATX Motherboard', 36, 3550.00, '2025-01-10 20:38:13'),
(8, 'Storage', 'STG-20250111-001', 'WESTERN DIGITAL Green 1TB 2.5\" Solid State Drive', 60, 3250.00, '2025-01-10 20:38:24'),
(9, 'Storage', 'STG-20250111-002', 'ADATA 512GB SU650 2.5\" Solid State Drive', 49, 1800.00, '2025-01-10 20:38:38'),
(10, 'Motherboard', 'MBR-20250111-002', 'ASUS PRIME B760M-A WIFI D4 Motherboard', 49, 8950.00, '2025-01-10 20:38:53'),
(11, 'Processor', 'PRC-20250111-002', 'AMD Ryzen™ 5 7600X Desktop Processor (4.7GHz)', 10, 14350.00, '2025-01-10 20:39:05'),
(12, 'Ram', 'RAM-20250111-002', 'KINGSTON 32GB DDR5 5200MHz FURY BEAST 2x16 RAM', 10, 6400.00, '2025-01-10 20:39:18'),
(15, 'Storage', 'STG-20250111-003', 'Crucial P3 Plus 1TB M.2 NVMe Gen4 SSD', 50, 4430.00, '2025-01-10 20:43:49'),
(17, 'Graphics Card', 'GRC-20250113-004', 'ASUS 8GB RX 6600 8GB', 42, 13000.00, '2025-01-13 07:44:28'),
(18, 'Power Supply', 'PSU-20250113-002', 'Silverstone 1000w Power Supply', 2, 5000.00, '2025-01-13 07:46:55'),
(20, 'Graphics Card', 'GRC-20250113-005', 'XFX RX580 2048SP 8GB', 63, 3450.00, '2025-01-13 07:55:33'),
(21, 'Ram', 'RAM-20250113-003', 'Team Elite 8GB SODIMM DD64 ', 4, 1350.00, '2025-01-13 07:59:10'),
(22, 'Ram', 'RAM-20250113-004', 'Vengeance RGB PRO 16GB', 41, 4526.00, '2025-01-13 07:59:46'),
(23, 'Processor', 'PRC-20250113-003', 'Intel Core i9-13900K', 42, 32000.00, '2025-01-13 11:36:06'),
(24, 'Processor', 'PRC-20250113-004', 'AMD Ryzen 9 7950X', 34, 38000.00, '2025-01-13 11:36:28'),
(25, 'Processor', 'PRC-20250113-005', 'Intel Core i7-13700K', 65, 22000.00, '2025-01-13 11:37:15'),
(26, 'Processor', 'PRC-20250113-006', 'AMD Ryzen 7 7800X3D', 32, 26000.00, '2025-01-13 11:37:37'),
(27, 'Processor', 'PRC-20250113-007', 'Intel Core i5-13600K', 43, 17000.00, '2025-01-13 11:37:57'),
(28, 'Processor', 'PRC-20250113-008', 'AMD Ryzen 5 7600X', 23, 15000.00, '2025-01-13 11:38:48'),
(29, 'Processor', 'PRC-20250113-009', 'Intel Core i3-12100F', 23, 7500.00, '2025-01-13 11:39:05'),
(30, 'Processor', 'PRC-20250113-010', 'AMD Ryzen 5 5500', 32, 9000.00, '2025-01-13 11:39:41'),
(31, 'Processor', 'PRC-20250113-011', 'Intel Core i5-12600K', 23, 17500.00, '2025-01-13 11:39:53'),
(32, 'Processor', 'PRC-20250113-012', 'AMD Ryzen 7 5700G', 32, 18000.00, '2025-01-13 11:40:06'),
(33, 'PC Case', 'PCC-20250113-001', 'Cooler Master MasterBox Q300L', 32, 3500.00, '2025-01-13 11:58:44'),
(34, 'PC Case', 'PCC-20250113-002', 'NZXT H510', 14, 5500.00, '2025-01-13 11:58:57'),
(35, 'PC Case', 'PCC-20250113-003', 'Corsair 4000D Airflow', 2, 4800.00, '2025-01-13 11:59:14'),
(36, 'PC Case', 'PCC-20250113-004', 'Phanteks P400A', 34, 5000.00, '2025-01-13 11:59:27'),
(37, 'PC Case', 'PCC-20250113-005', 'Deepcool MATREXX 55', 23, 3500.00, '2025-01-13 11:59:58'),
(38, 'PC Case', 'PCC-20250113-006', 'Fractal Design Meshify C', 12, 6500.00, '2025-01-13 12:00:13'),
(39, 'PC Case', 'PCC-20250113-007', 'Lian Li PC-O11 Dynamic', 12, 10000.00, '2025-01-13 12:00:43'),
(40, 'PC Case', 'PCC-20250113-008', 'Thermaltake Versa H21', 11, 3000.00, '2025-01-13 12:00:53'),
(41, 'PC Case', 'PCC-20250113-009', 'Cooler Master MasterBox NR600', 11, 4500.00, '2025-01-13 12:01:04'),
(42, 'PC Case', 'PCC-20250113-010', 'Xigmatek Omega X', 10, 4200.00, '2025-01-13 12:01:15'),
(43, 'Motherboard', 'MBR-20250114-003', 'ASUS ROG Strix Z790-E Gaming WiFi', 23, 30000.00, '2025-01-14 10:26:50'),
(44, 'Motherboard', 'MBR-20250114-004', 'MSI MAG B550 TOMAHAWK WIFI', 15, 10500.00, '2025-01-14 10:27:14'),
(46, 'Graphics Card', 'GRC-20250115-006', 'NVIDIA GTX 1080Ti', 22, 8999.00, '2025-01-14 16:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_producttypes`
--

CREATE TABLE `tbl_producttypes` (
  `id` int(11) NOT NULL,
  `product_type` enum('Graphics Card','Motherboard','Processor','Ram','Storage','PC Case','Power Supply') NOT NULL,
  `employments` enum('Full Time','Part Time','Intern') NOT NULL,
  `position` enum('Computer Technician','Network Technician','Data Recovery Specialist','Software Specialist','IT Support Specialist','Manager') NOT NULL,
  `tasks` enum('Repair','Upgrade','Maintenance') NOT NULL,
  `status` enum('Pending','In Progress','Completed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_producttypes`
--

INSERT INTO `tbl_producttypes` (`id`, `product_type`, `employments`, `position`, `tasks`, `status`) VALUES
(3, 'Graphics Card', 'Full Time', 'Computer Technician', 'Repair', 'Pending'),
(4, 'Motherboard', 'Part Time', 'Network Technician', 'Upgrade', 'In Progress'),
(5, 'Processor', 'Intern', 'Data Recovery Specialist', 'Maintenance', 'Completed'),
(6, 'Ram', '', 'Software Specialist', '', ''),
(7, 'Storage', '', 'IT Support Specialist', '', ''),
(8, 'PC Case', '', 'Manager', '', ''),
(9, 'Power Supply', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reports`
--

CREATE TABLE `tbl_reports` (
  `id` int(11) NOT NULL,
  `report_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reports`
--

INSERT INTO `tbl_reports` (`id`, `report_id`, `date`, `category`, `amount`, `status`, `full_name`, `created_at`) VALUES
(1, '804548d8-2a9d-413e-b056-252878bd186d', '2024-12-18', 'Purchase', 13150.00, 'Pending', 'Emily Bennett', '2024-12-18 02:20:28'),
(2, 'a620f864-18e4-43be-a640-e9448517c95b', '2024-12-18', 'Purchase', 13150.50, 'Completed', 'James Carter', '2024-12-18 02:20:39'),
(3, 'e406a030-c1b4-406c-a249-12ad3824ea38', '2024-12-18', 'Purchase', 32150.00, 'Pending', 'John Anderson', '2024-12-18 02:20:46'),
(4, 'c8ef21f9-7c8e-4e4e-b81e-e55ce607aac4', '2024-12-18', 'Purchase', 1950.00, 'Pending', 'Sarah Collins', '2024-12-18 02:20:51'),
(5, '3ca15c82-dd23-4a7a-bee9-8173001c0b93', '2024-12-18', 'Purchase', 13150.50, 'Pending', 'Michael Davis', '2024-12-18 02:20:56'),
(6, 'bebab4f7-1869-491a-b641-dae6c0d68db6', '2024-12-18', 'Purchase', 2649.00, 'Pending', 'Elizabeth Moore', '2024-12-18 02:21:11'),
(7, '7ab63a0f-b7a4-406b-a8bd-21f956e42f97', '2024-12-18', 'Purchase', 3650.00, 'Pending', 'William Harris', '2024-12-18 02:21:20'),
(8, '4d0cecc2-ac1d-47ff-97da-7ee4c4a1ec5c', '2024-12-18', 'Service', 1850.00, 'Pending', 'Laura White', '2024-12-18 02:21:33'),
(9, '3345b8d6-324a-4f6b-8dfb-f38b2be86ee0', '2024-12-18', 'Service', 1350.00, 'Pending', 'Robert Taylor', '2024-12-18 02:21:43'),
(10, '343a1d69-e04e-417d-8729-16280b27d084', '2024-12-18', 'Service', 1350.00, 'Pending', 'Anna Morgan', '2024-12-18 02:21:49'),
(11, 'f84ee154-bce1-4f8c-9169-6f87cdbc86bc', '2025-01-14', 'Purchase', 13150.50, 'Pending', 'Ethan Blake', '2025-01-14 14:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timerecord`
--

CREATE TABLE `tbl_timerecord` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `attendance_status` varchar(50) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_timerecord`
--

INSERT INTO `tbl_timerecord` (`id`, `employee_id`, `date`, `time_in`, `time_out`, `attendance_status`, `remarks`) VALUES
(1, 'EMP-20250115214909-9077AE63', '2025-01-14', '07:15:46', NULL, 'Present', 'On time'),
(2, 'EMP-20250111042430-F427E5FB', '2025-01-14', '07:15:55', NULL, 'Present', 'On time'),
(3, 'EMP-20250111012046-00423178', '2025-01-14', NULL, NULL, 'Absent', 'Did not log in today'),
(4, 'EMP-20250111012230-6B2D8064', '2025-01-14', NULL, NULL, 'Absent', 'Did not log in today'),
(5, 'EMP-20250111040316-5C62649C', '2025-01-14', NULL, NULL, 'Absent', 'Did not log in today'),
(6, 'EMP-20250111042247-A85EF70A', '2025-01-14', NULL, NULL, 'Absent', 'Did not log in today');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_producttypes`
--
ALTER TABLE `tbl_producttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_timerecord`
--
ALTER TABLE `tbl_timerecord`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_clients`
--
ALTER TABLE `tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_producttypes`
--
ALTER TABLE `tbl_producttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_timerecord`
--
ALTER TABLE `tbl_timerecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
