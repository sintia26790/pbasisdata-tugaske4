-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2026 at 02:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praktik_loop`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_belanja` ()   BEGIN
    DECLARE v_total_belanja INT DEFAULT 0;
    DECLARE v_tambah INT DEFAULT 50000;
    
    WHILE v_total_belanja < 500000 DO
        SET v_total_belanja = v_total_belanja + v_tambah;
        SELECT CONCAT('Tambah Rp50.000, Total Belanja: Rp', v_total_belanja) AS status;
    END WHILE;
    
    SELECT 'Target belanja Rp500.000 telah tercapai.' AS pesan_akhir;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_total_20` ()   BEGIN
    DECLARE v_counter INT DEFAULT 1;
    DECLARE v_total INT DEFAULT 0;
    
    WHILE v_counter <= 20 DO
        SET v_total = v_total + v_counter;
        SET v_counter = v_counter + 1;
    END WHILE;
    
    SELECT CONCAT('Total angka 1 sampai 20 adalah: ', v_total) AS hasil;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `latihan_loop_10` ()   BEGIN
    DECLARE v_counter INT DEFAULT 1;
    
    loop_angka: LOOP
        SELECT v_counter AS angka;
        SET v_counter = v_counter + 1;
        
        IF v_counter > 10 THEN
            LEAVE loop_angka;
        END IF;
    END LOOP loop_angka;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tampil_genap_20` ()   BEGIN
    DECLARE i INT DEFAULT 2;
    
    WHILE i <= 20 DO
        SELECT i AS bilangan_genap;
        SET i = i + 2;
    END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(50) DEFAULT 'Informatika',
  `angkatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `angkatan`) VALUES
('IK2411053', 'SINTIA', 'Informatika', 2024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
