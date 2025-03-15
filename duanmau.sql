-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2021 lúc 04:42 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'sản phẩm đẹp quá', 0, 17, '05:37:42pm 12/10/2021'),
(2, 'sách hay', 0, 13, '05:39:16pm 12/10/2021'),
(11, 'sản phẩm đẹp quá', 0, 17, '05:45:14pm 12/10/2021'),
(12, 'sản phẩm đẹp quá', 0, 13, '06:07:52pm 12/10/2021'),
(13, 'sách đáng để đọc', 0, 13, '06:08:00pm 12/10/2021'),
(14, 'nên mua để đọc thử', 0, 13, '06:08:17pm 12/10/2021'),
(15, 'sách có chút khó hiêur', 0, 13, '06:08:58pm 12/10/2021'),
(20, 'Hàng đắt thế ad', 0, 15, '03:53:23pm 15/10/2021'),
(21, 'Hàng hiệu mà không đắt bro', 0, 15, '03:53:39pm 15/10/2021'),
(33, 'sản phẩm đẹp quá', 0, 18, '07:07:39am 20/10/2021'),
(34, 'mũ đẹp', 0, 18, '07:08:05am 20/10/2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(10, 'Đồng Hồ Nam'),
(17, 'Điện thoại'),
(22, 'Balo'),
(23, 'Túi sách'),
(24, 'Nón'),
(25, 'Trang sức'),
(26, 'Máy tính'),
(28, 'Áo'),
(29, 'Sách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(9, 'Iphone 12 promax', 2000.00, 'dien thoai.jpg', 'szcafasfsafasf', 54, 17),
(12, 'CJ C3079 Mens Watch', 30.00, '1.jpg', 'Đồng hồ giành cho cả nam lẫn nữ', 12, 10),
(13, 'Book of the law of mind', 10.00, 'Luattamthuc.webp', 'Luật Tâm Thức” sẽ giải đáp tất cả những khía cạnh mà có thể bạn không nhận thức được chúng tồn tại, và có thể khám phá những vùng đất mình chưa từng biết đến. Qua cuốn sách, tác giả Ngô Sa Thạch sẽ giải thích bằng những góc độ gần gũi và đặc biệt về: Nguồn gốc vũ trụ là những quy luật tự nhiên chi phối sự hình thành của mọi vật, trí tuệ cổ xưa khi thông hiểu và ứng dụng các quy luật tự nhiên. Năng lượng và tần số rung động sẽ giải thích những hiện tượng tâm linh như quy hồi tiền kiếp, tiên đoán sự kiện, du hành thời gian. Con người là tổ hợp thân-tâm-trí, nghiệp quả, sứ mệnh trong các kiếp, sự tiến hoá của tâm thức. Thay đổi cuộc sống bằng cách thay đổi tâm thức, hiểu đúng về các quy luật vũ trụ để thu hút năng lượng cải thiện cuộc sống của mình và cả vũ trụ. Giúp bạn hiểu rõ hơn về luật tâm thức, nâng cao hiểu biết tránh dẫn tới những mù quáng. Sa đà vào thế giới tâm linh mê tín. Cuốn sách cũng cho bạn thấy rằng những kiến thức người xưa để lại chúng không hề cao siêu huyền bí mà lại liên quan vô cùng chặt chẽ tới khoa học hiện đại ngày này.', 555, 29),
(14, 'Kappa mens wind jacket K0B12FJ01 990', 87.00, 'ao.jpg', '', 66, 28),
(15, 'Rolex mens watch', 56000.00, 'rolex.jpg', '', 24, 10),
(16, 'High configuration desktop case', 120.00, 'case.jpg', '', 123, 26),
(17, 'New generation Compacto anti-theft backpack – Mark Ryden', 123.00, 'balo1.jpg', 'anh danh đẹp trai', 65, 22),
(18, 'Mens hat, cap', 10.00, 'nonnam.jpg', '', 76, 24),
(22, 'Laptop Dell Gaming G3 3500 G3500Cw(Core i7-107...)', 1200.00, 'laptopdeell.webp', 'Key Features\r\n2.8 GHz Intel Core i7 4-Core (11th Gen)\r\n8GB of DDR4 RAM | 256GB SSD\r\n14\" 1920 x 1080 IPS Display\r\nIntegrated Intel Iris Xe Graphics\r\nShow More\r\nStay productive on the go with the portable 14\" Latitude 3420 Laptop from Dell. Designed to power through your workload at home or on the go, this laptop features a 2.8 GHz 11th Gen Intel Core i7 4-core processor and 8GB of onboard RAM. Store important files on the integrated 256GB SSD. A 14\" Full HD display and integrated Intel Iris Xe Graphics provide accurate visuals. Stay in touch with friends and coworkers with the HD webcam, integrated microphone, and dual speakers.\r\nMore Details', 0, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'admin', '12345', 'admin@gmail.com', 'Quan 12, TP HCM', '012345678', 0),
(2, 'admin2', '123456', 'admin2@gmail.com', NULL, NULL, 0),
(5, 'admintest', '123', '', NULL, NULL, 1),
(25, 'user123', '123user', 'user123@gmail.com', 'Quan 3, TP HCM', '012345679', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
