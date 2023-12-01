-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2023 lúc 07:35 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `works_lab7`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cust_id` bigint(20) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cust_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cust_id`, `address`, `email`, `cust_name`, `phone`) VALUES
(1, '566 Nguyễn Thái Sơn, P4, Gò Vấp, TP HCM', 'sonpham28052002@gmail.com', 'Phạm Thanh Sơn', '0346676956'),
(2, '456 Đường ABC, Quận 1, TP HCM', 'customer2@email.com', 'Nguyễn Văn An', '0901234567'),
(3, '789 Đường XYZ, Quận 2, TP HCM', 'customer3@email.com', 'Trần Thị Bình', '0912345678'),
(4, '101 Đường DEF, Quận 3, TP HCM', 'customer4@email.com', 'Lê Văn Cao', '0923456789'),
(5, '202 Đường MNO, Quận 4, TP HCM', 'customer5@email.com', 'Phạm Thị Dương', '0934567890'),
(6, '303 Đường HIJ, Quận 5, TP HCM', 'customer6@email.com', 'Vũ Văn Việt', '0945678901'),
(7, '404 Đường STU, Quận 6, TP HCM', 'customer7@email.com', 'Hồ Thị Phương', '0956789012'),
(8, '505 Đường NOP, Quận 7, TP HCM', 'customer8@email.com', 'Đỗ Văn Giang', '0967890123'),
(9, '606 Đường QWE, Quận 8, TP HCM', 'customer9@email.com', 'Ngô Thị Hương', '0978901234'),
(10, '707 Đường ZXC, Quận 9, TP HCM', 'customer10@email.com', 'Trương Văn In', '0989012345'),
(11, '808 Đường UIO, Quận 10, TP HCM', 'customer11@email.com', 'Hoàng Thị Khánh', '0990123456'),
(12, '909 Đường ASD, Quận 11, TP HCM', 'customer12@email.com', 'Lý Văn Lý', '0911122334'),
(13, '111 Đường JKL, Quận 12, TP HCM', 'customer13@email.com', 'Bùi Thị Minh', '0912233445'),
(14, '222 Đường TYU, Quận Bình Tân, TP HCM', 'customer14@email.com', 'Phan Văn Nhật', '0913344556'),
(15, '333 Đường POU, Quận Bình Thạnh, TP HCM', 'customer15@email.com', 'Mai Thị Ôn', '0914455667'),
(16, '444 Đường RET, Quận Tân Phú, TP HCM', 'customer16@email.com', 'Nguyễn Văn Phương', '0915566778'),
(17, '555 Đường JKH, Quận Tân Bình, TP HCM', 'customer17@email.com', 'Trần Thị Quyên', '0916677889'),
(18, '666 Đường XCV, Quận Phú Nhuận, TP HCM', 'customer18@email.com', 'Lê Thị Rỡ', '0917788990'),
(19, '777 Đường TYR, Quận Thủ Đức, TP HCM', 'customer19@email.com', 'Phạm Văn Sang', '0918899001'),
(20, '888 Đường WER, Quận Gò Vấp, TP HCM', 'customer20@email.com', 'Vũ Thị Tính', '0919900112');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `emp_id` bigint(20) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `full_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` between 0 and 2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`emp_id`, `address`, `dob`, `email`, `full_name`, `phone`, `status`) VALUES
(1, '1/6 Nguyễn Văn Nghi, P4, Gò Vấp, TP HCM', '2020-09-09 14:52:16.000000', 'leonpham17042002@gmail.com', 'Phạm Thái Bảo', '0346676954', 1),
(2, '123 Đường ABC, Quận 1, TP HCM', '1995-01-15 08:30:00.000000', 'employee2@email.com', 'Nguyễn Văn Anh', '0901234567', 1),
(3, '456 Đường XYZ, Quận 2, TP HCM', '1990-03-20 12:45:00.000000', 'employee3@email.com', 'Trần Thị Biên', '0912345678', 1),
(4, '789 Đường DEF, Quận 3, TP HCM', '1985-07-10 10:15:00.000000', 'employee4@email.com', 'Lê Văn Cừ', '0923456789', 1),
(5, '101 Đường MNO, Quận 4, TP HCM', '1988-05-05 15:20:00.000000', 'employee5@email.com', 'Phạm Thị Diệu', '0934567890', 1),
(6, '202 Đường HIJ, Quận 5, TP HCM', '1992-11-30 09:00:00.000000', 'employee6@email.com', 'Vũ Văn Kiên', '0945678901', 1),
(7, '303 Đường STU, Quận 6, TP HCM', '1986-04-25 14:10:00.000000', 'employee7@email.com', 'Hồ Thị Phúc', '0956789012', 1),
(8, '404 Đường NOP, Quận 7, TP HCM', '1994-08-12 11:30:00.000000', 'employee8@email.com', 'Đỗ Văn Giàu', '0967890123', 1),
(9, '505 Đường QWE, Quận 8, TP HCM', '1983-02-18 13:50:00.000000', 'employee9@email.com', 'Ngô Thị Hoa', '0978901234', 1),
(10, '606 Đường ZXC, Quận 9, TP HCM', '1991-06-06 10:00:00.000000', 'employee10@email.com', 'Trương Văn Iêm', '0989012345', 1),
(11, '707 Đường UIO, Quận 10, TP HCM', '1990-09-22 09:45:00.000000', 'employee11@email.com', 'Hoàng Thị Khoa', '0990123456', 1),
(12, '808 Đường ASD, Quận 11, TP HCM', '1987-03-05 13:15:00.000000', 'employee12@email.com', 'Lý Văn Liêm', '0911122334', 1),
(13, '909 Đường JKL, Quận 12, TP HCM', '1993-12-20 11:20:00.000000', 'employee13@email.com', 'Bùi Thị Nhung', '0912233445', 1),
(14, '111 Đường TYU, Quận Bình Tân, TP HCM', '1989-05-15 08:30:00.000000', 'employee14@email.com', 'Phan Văn Nhiên', '0913344556', 1),
(15, '222 Đường POU, Quận Bình Thạnh, TP HCM', '1996-03-20 12:45:00.000000', 'employee15@email.com', 'Mai Thị Tiền', '0914455667', 1),
(16, '333 Đường RET, Quận Tân Phú, TP HCM', '1998-07-10 10:15:00.000000', 'employee16@email.com', 'Nguyễn Văn Phát', '0915566778', 1),
(17, '444 Đường JKH, Quận Tân Bình, TP HCM', '1997-05-05 15:20:00.000000', 'employee17@email.com', 'Trần Thị Quỳnh', '0916677889', 1),
(18, '555 Đường XCV, Quận Phú Nhuận, TP HCM', '1994-11-30 09:00:00.000000', 'employee18@email.com', 'Lê Thị Hiệu', '0917788990', 1),
(19, '666 Đường TYR, Quận Thủ Đức, TP HCM', '1991-04-25 14:10:00.000000', 'employee19@email.com', 'Phạm Văn Sáng', '0918899001', 1),
(20, '777 Đường WER, Quận Gò Vấp, TP HCM', '1988-08-12 11:30:00.000000', 'employee20@email.com', 'Vũ Thị Thanh', '0919900112', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `cus_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `cus_id`, `employee_id`) VALUES
(1, '2023-09-05 16:22:10.000000', 1, 1),
(2, '2023-09-06 09:45:20.000000', 2, 2),
(3, '2023-09-07 14:30:15.000000', 3, 3),
(4, '2023-09-08 11:10:30.000000', 4, 4),
(5, '2023-09-09 17:55:45.000000', 5, 5),
(6, '2023-09-10 08:20:40.000000', 6, 6),
(7, '2023-09-11 12:15:25.000000', 7, 7),
(8, '2023-09-12 10:05:50.000000', 8, 8),
(9, '2023-09-13 15:40:55.000000', 9, 9),
(10, '2023-09-14 09:30:10.000000', 10, 10),
(11, '2023-09-15 14:15:05.000000', 11, 11),
(12, '2023-09-16 13:05:20.000000', 12, 12),
(13, '2023-09-17 16:50:15.000000', 13, 13),
(14, '2023-09-18 11:40:30.000000', 14, 14),
(15, '2023-09-19 14:25:25.000000', 15, 15),
(16, '2023-09-20 10:35:40.000000', 16, 16),
(17, '2023-09-21 15:05:35.000000', 17, 17),
(18, '2023-09-22 09:15:50.000000', 18, 18),
(19, '2023-09-23 14:50:45.000000', 19, 19),
(20, '2023-09-24 12:00:10.000000', 20, 20),
(21, '2023-12-01 00:00:00.000000', 1, 1),
(22, '2023-12-01 00:00:00.000000', 1, 1),
(23, '2023-11-01 00:00:00.000000', 1, 1),
(24, '2023-11-22 00:00:00.000000', 1, 1),
(25, '2023-12-01 00:00:00.000000', 1, 1),
(26, '2023-11-19 00:00:00.000000', 1, 1),
(27, '2023-11-01 00:00:00.000000', 1, 1),
(28, '2023-11-24 00:00:00.000000', 1, 1),
(29, '2023-11-11 00:00:00.000000', 1, 1),
(30, '2023-12-01 00:00:00.000000', 1, 1),
(31, '2023-11-17 00:00:00.000000', 1, 1),
(32, '2023-11-21 00:00:00.000000', 1, 1),
(33, '2023-10-11 00:00:00.000000', 1, 1),
(34, '2023-09-01 00:00:00.000000', 1, 1),
(35, '2023-12-01 00:00:00.000000', 1, 1),
(36, '2023-11-05 00:00:00.000000', 1, 1),
(37, '2023-12-01 00:00:00.000000', 1, 1),
(38, '2023-11-24 00:00:00.000000', 1, 1),
(39, '2023-11-28 00:00:00.000000', 1, 1),
(40, '2023-11-29 00:00:00.000000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`note`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(NULL, 3000, 10, 1, 1),
(NULL, 1500000, 1, 1, 9),
(NULL, 4000, 10, 1, 10),
(NULL, 300000, 1, 1, 11),
(NULL, 5000000, 1, 23, 2),
(NULL, 5000000, 1, 23, 3),
(NULL, 5000000, 3, 24, 1),
(NULL, 1000000, 3, 24, 2),
('', 500000, 1, 32, 4),
('', 500000, 1, 33, 1),
('', 500000, 1, 33, 2),
('', 500000, 1, 33, 3),
('', 500000, 1, 33, 4),
('', 400000, 1, 33, 5),
('', 500000, 1, 34, 3),
('', 500000, 1, 34, 4),
('', 500000, 1, 35, 3),
('', 500000, 1, 35, 4),
('', 500000, 1, 36, 2),
('', 500000, 1, 36, 3),
('', 500000, 1, 36, 4),
('', 500000, 1, 37, 3),
('', 500000, 1, 37, 4),
('', 400000, 1, 37, 5),
('', 500000, 1, 38, 2),
('', 500000, 1, 38, 3),
('', 500000, 1, 38, 4),
('', 500000, 1, 39, 1),
('', 500000, 1, 39, 2),
('', 500000, 1, 39, 4),
('', 400000, 1, 39, 5),
('', 500000, 1, 39, 6),
('', 500000, 1, 40, 2),
('', 500000, 1, 40, 3),
('', 500000, 1, 40, 4),
('', 400000, 1, 40, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manufacturer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL CHECK (`status` between 0 and 2),
  `unit` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `description`, `manufacturer`, `name`, `status`, `unit`) VALUES
(1, 'bút bi xanh dành cho học sinh sinh viên', 'Kim Đồng', 'Bút Bi Xanh', 1, 'Cái'),
(2, 'Sách vở lớp 1', 'Nhà Xuất Bản Giáo Dục', 'Sách Vở Lớp 1', 1, 'Cuốn'),
(3, 'Áo thun trắng unisex', 'H&M', 'Áo Thun Trắng', 1, 'Cái'),
(4, 'Máy tính xách tay Dell Inspiron', 'Dell', 'Máy Tính Dell', 1, 'Cái'),
(5, 'Quyển sổ tay ghi chú', 'Artline', 'Sổ Tay Ghi Chú', 1, 'Quyển'),
(6, 'Bút mực đen chất lượng', 'Pilot', 'Bút Mực Đen', 1, 'Cái'),
(7, 'Máy ảnh DSLR Canon EOS', 'Canon', 'Máy Ảnh Canon', 1, 'Cái'),
(8, 'Giày thể thao Nike Air Max', 'Nike', 'Giày Nike Air Max', 0, 'Đôi'),
(9, 'Balo du lịch thời trang', 'Samsonite', 'Balo Du Lịch', 1, 'Cái'),
(10, 'Điện thoại di động iPhone 12', 'Apple', 'iPhone 12', 1, 'Cái'),
(11, 'Chuột máy tính không dây', 'Logitech', 'Chuột Máy Tính', 1, 'Cái'),
(12, 'Loa Bluetooth JBL Flip', 'JBL', 'Loa Bluetooth', 1, 'Cái'),
(13, 'Máy sấy tóc Panasonic', 'Panasonic', 'Máy Sấy Tóc', 1, 'Cái'),
(14, 'Đèn bàn LED đa năng', 'Philips', 'Đèn Bàn LED', 1, 'Cái'),
(15, 'Gương trang điểm đẹp', 'IKEA', 'Gương Trang Điểm', 1, 'Cái'),
(16, 'Thảm trải sàn màu xanh', 'IKEA', 'Thảm Trải Sàn', 1, 'Cái'),
(17, 'Áo khoác phao nam', 'North Face', 'Áo Khoác Phao', 1, 'Cái'),
(18, 'Máy pha cà phê Nespresso', 'Nespresso', 'Máy Pha Cà Phê', 1, 'Cái'),
(19, 'Bàn làm việc gỗ tự nhiên', 'IKEA', 'Bàn Làm Việc', 1, 'Cái'),
(20, 'Ghế xoay văn phòng', 'IKEA', 'Ghế Văn Phòng', 1, 'Cái'),
(21, 'Bình nước thể thao', 'Nike', 'Bình Nước Thể Thao', 1, 'Cái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `image_id` bigint(20) NOT NULL,
  `alternative` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`image_id`, `alternative`, `path`, `product_id`) VALUES
(1, NULL, 'https://i.pinimg.com/736x/a8/41/f9/a841f929e74fb4e10295c5d0dfcfefc8.jpg', 1),
(2, NULL, 'https://i.pinimg.com/originals/5b/03/bc/5b03bc9bd6378b68acba54e4b839a55e.png', 2),
(3, NULL, 'https://i.pinimg.com/originals/c8/5a/ee/c85aee8192e07f0f30f6a97f1a3535a6.png', 3),
(4, NULL, 'https://i.pinimg.com/originals/ef/fd/c1/effdc1c882f1e0aa384e0e022affe051.png', 4),
(5, NULL, 'https://i.pinimg.com/474x/24/78/57/247857634c072b06060c905e0e190c67.jpg', 5),
(6, NULL, 'https://i.pinimg.com/474x/9b/18/73/9b18732a7a63f92f806e6c220033e80b.jpg', 6),
(7, NULL, 'https://i.pinimg.com/736x/c0/27/38/c027385e5f68b0b88c7a583854be6a11.jpg', 7),
(8, NULL, 'https://i.pinimg.com/474x/27/00/71/270071da8bb651f058d0ed070c8d836f.jpg', 8),
(9, NULL, 'https://i.pinimg.com/474x/4d/03/8f/4d038ffef19cb23a97c924fc3ed72184.jpg', 9),
(10, NULL, 'https://i.pinimg.com/474x/1a/c2/bd/1ac2bd9645e73b0f67d64d1a31378240.jpg', 10),
(11, NULL, 'https://i.pinimg.com/736x/fb/95/42/fb9542a80462161b3ebc49f3d506d813.jpg', 11),
(12, NULL, 'https://i.pinimg.com/736x/17/a4/07/17a407d6aac6ea9c9d2bb6c7026dc708.jpg', 12),
(13, NULL, 'https://i.pinimg.com/474x/fc/cb/aa/fccbaacfd3943cdca219790cb58ce527.jpg', 13),
(14, NULL, 'https://i.pinimg.com/474x/66/50/5b/66505b554fae7bf1a7aa86a20b5003ee.jpg', 14),
(15, NULL, 'https://i.pinimg.com/474x/1e/4b/e6/1e4be69b502c20fbbc9acd1c43bba0d0.jpg', 15),
(16, NULL, 'https://i.pinimg.com/474x/36/45/b9/3645b94ef9a9bde5220a6903ae1a19a8.jpg', 16),
(17, NULL, 'https://i.pinimg.com/474x/26/61/db/2661db43f963757f5c536c212eea2e45.jpg', 17),
(18, NULL, 'https://i.pinimg.com/736x/fc/98/43/fc984363a3929ff433f641b4bc4b6c04.jpg', 18),
(19, NULL, 'https://i.pinimg.com/474x/67/59/38/67593860772a86fc757ed77fac24e14a.jpg', 19),
(20, NULL, 'https://i.pinimg.com/474x/2a/00/16/2a0016911618f9078a23cb12b4308769.jpg', 20),
(21, NULL, 'https://i.pinimg.com/474x/7d/f1/aa/7df1aaac39d984705cb4b491a239cbfa.jpg', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_price`
--

CREATE TABLE `product_price` (
  `price_date_time` datetime(6) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` double NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_price`
--

INSERT INTO `product_price` (`price_date_time`, `note`, `price`, `product_id`) VALUES
('2023-09-09 16:31:37.000000', 'Khuyễn Mãi 9-9', 3000, 1),
('2023-12-01 03:10:30.000000', NULL, 500000, 2),
('2023-12-01 03:11:04.000000', NULL, 500000, 9),
('2023-12-01 03:11:15.000000', NULL, 500000, 3),
('2023-12-01 03:11:28.000000', NULL, 500000, 17),
('2023-12-01 03:11:43.000000', NULL, 500000, 19),
('2023-12-01 03:11:50.000000', NULL, 500000, 21),
('2023-12-01 03:11:58.000000', NULL, 500000, 1),
('2023-12-01 03:12:06.000000', NULL, 500000, 6),
('2023-12-01 03:12:12.000000', NULL, 500000, 11),
('2023-12-01 03:12:32.000000', NULL, 500000, 8),
('2023-12-01 03:13:14.000000', NULL, 500000, 15),
('2023-12-01 03:13:21.000000', NULL, 500000, 12),
('2023-12-01 03:13:26.000000', NULL, 500000, 7),
('2023-12-01 03:13:40.000000', NULL, 500000, 18),
('2023-12-01 03:13:48.000000', NULL, 500000, 13),
('2023-12-01 03:13:54.000000', NULL, 500000, 4),
('2023-12-01 03:50:00.000000', NULL, 500000, 20),
('2023-12-01 23:03:26.000000', NULL, 400000, 5),
('2023-12-01 23:04:10.000000', NULL, 300000, 10),
('2023-12-01 23:04:31.000000', NULL, 1200000, 14),
('2023-12-01 23:04:45.000000', NULL, 130000, 16);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK5u324hx6p8cu83aycaopvegwf` (`cus_id`),
  ADD KEY `FKog5v9ga2g2ukytypn4ocip6b4` (`employee_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`image_id`,`product_id`),
  ADD KEY `FK6oo0cvcdtb6qmwsga468uuukk` (`product_id`);

--
-- Chỉ mục cho bảng `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`price_date_time`,`product_id`),
  ADD KEY `FKeupemu63ifqfc4txkskyy1hyi` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK5u324hx6p8cu83aycaopvegwf` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `FKog5v9ga2g2ukytypn4ocip6b4` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`emp_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FKb8bg2bkty0oksa3wiq5mp5qnc` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `product_price`
--
ALTER TABLE `product_price`
  ADD CONSTRAINT `FKeupemu63ifqfc4txkskyy1hyi` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
