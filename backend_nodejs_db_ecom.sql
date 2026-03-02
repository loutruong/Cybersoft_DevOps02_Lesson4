-- -------------------------------------------------------------
-- TablePlus 6.0.0(550)
--
-- https://tableplus.com/
--
-- Database: db_ecom
-- Generation Time: 2026-02-26 21:00:48.5330
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `attributes` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `sku` varchar(32) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `gia` decimal(12,0) NOT NULL,
  `so_luong` int NOT NULL,
  `danh_muc` varchar(64) DEFAULT NULL,
  `mo_ta` text,
  `ngay_tao` datetime NOT NULL,
  `ngay_cap_nhat` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ftx_ten_ngram` (`ten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `shipping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `products` (`id`, `product_name`, `price`, `manufacturer`, `attributes`) VALUES
(1, 'product A', 111, 'abc', NULL),
(2, 'product B', 22, 'bbb', NULL),
(3, 'product z', 200, 'mo ta', NULL),
(4, 'product h', 222, 'aaa', NULL);

INSERT INTO `shipping` (`id`, `email`, `first_name`, `last_name`, `phone`, `address`, `order_id`) VALUES
(1, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 17),
(2, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 18),
(3, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 19),
(4, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 20),
(5, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 21),
(6, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 22),
(7, 'khaitruong2112@gmail.com', 'khai', 'truong', '911', '119 p nhieuloc hcm', 23);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;