
CREATE TABLE `admin` (
  `maAdmin` int(11) NOT NULL,
  `hoTen` varchar(100) NOT NULL,
  `sdt` char(10) NOT NULL,
  `diaChi` varchar(200) NOT NULL,
  `email` char(100) NOT NULL,
  `tenDN` varchar(30) NOT NULL,
  `matKhau` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maAdmin`, `hoTen`, `sdt`, `diaChi`, `email`, `tenDN`, `matKhau`) VALUES
(1, 'Đặng Văn Phúc', '0355435103', 'Lai Uyên, Bàu Bàng, Bình Dương', 'VanPhuc@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_dondathang`
--

CREATE TABLE `ct_dondathang` (
  `maDH` int(10) NOT NULL,
  `maSP` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`maDH`, `maSP`, `gia_ban`, `sl_dat`) VALUES
(44, '42', 50000, 2),
(43, '41', 120000, 1),
(41, '22', 15000, 1),
(42, '40', 25000, 1),
(0, '41', 120000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `maDH` int(10) NOT NULL,
  `maKH` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`maDH`, `maKH`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(43, 49, '2021-03-02 18:09:40', '17/01/2021', 'đâsdasđ', 1),
(41, 47, '2021-07-03 00:24:09', '30/11/2020', 'Bình Dương', 1),
(42, 47, '2021-01-16 08:31:23', '30/11/2020', 'Bình Dương', 1),
(44, 50, '2021-04-13 21:42:00', '06/03/2020', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `maHang` int(11) NOT NULL,
  `tenHang` varchar(40) NOT NULL,
  `hinh` char(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang`
--

INSERT INTO `hang` (`maHang`, `tenHang`, `hinh`) VALUES
(1, 'Macbook', 'macbook.PNG'),
(2, 'Dell', 'dell.PNG'),
(3, 'Lenovo', 'lenovo.PNG'),
(4, 'Acer', 'acer.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKH` int(11) NOT NULL,
  `hoTenKH` varchar(100) NOT NULL,
  `sdt` char(10) NOT NULL,
  `diaChi` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tenDN` varchar(15) NOT NULL,
  `matKhau` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKH`, `hoTenKH`, `sdt`, `diaChi`, `email`, `tenDN`, `matKhau`) VALUES
(1, 'Phạm Ngọc Yến Nhi', '0333599035', 'Tân Hiệp, Phú Giáo, Bình Dương', 'yennhi@gmail.com', 'YenNhi', '123456'),
(2, 'Nguyễn Quốc Nhựt', '0947420100', 'Mỹ Phước, Bến Cát, Bình Dương', 'quocnhut@gmail.com', 'QuocNhut', '12345'),
(52, 'Nguyễn Ngọc Cẩm Tú', '0123456789', 'Bạch Đằng, Tân Uyên, Bình Dương', 'camtu@gmail.com', 'CamTu', '12345'),
(69, 'Tăng Hải Phú', '0123456789', 'Bình Dương', 'haiphu@gmail.com', 'HaiPhu', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSP` int(11) NOT NULL,
  `tenSP` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinhAnh` varchar(100) NOT NULL,
  `moTa` varchar(300) NOT NULL,
  `maHang` int(11) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trangThai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`maSP`, `tenSP`, `gia`, `hinhAnh`, `moTa`, `maHang`, `ngay_d`, `trangThai`) VALUES
(1, 'Dell XS150', 15000000, 'dell.jpg', 'mỏng nhẹ, thiết kế hiện đại, cấu hình mạnh mẽ với vi xử lý core i5', 2, '2021-07-03 20:16:02', 10),
(2, 'Macbook Pro 14', 54000000, 'macbookpro.jpg', 'Thiết kế tinh tế, siêu mỏng, trang bị cấu hình A13 Bionic 8 nhân 16 luồng', 1, '2021-07-03 09:23:29', 15),
(3, 'Lenovo Thinkpart', 23000000, 'lenovo.jpg', 'Thiết kế mạnh mẽ, sử dụng chất liệu cartbon, cấu hình vượt trội trong tầm giá', 3, '2021-07-03 09:21:07', 5),
(4, 'Acer Plus X180P', 32000000, 'acer.jpg', 'sức mạnh vô đối, sử dụng công nghệ intel latium plus cùng với là  hỗ trợ ssd pcel có tốc độ xử nhanh, mượt.', 4, '2021-07-03 09:24:02', 13),
(5, 'Macbook air 11', 34000000, 'macbookair2.jpg', 'Macbook E là sản phẩm tầm trung của dòng Macbook,với thiết kế sang trọng, cấu hình mạnh mẽ, với tính năng nâng cấp.', 1, '2021-07-03 22:19:55', 11),
(6, 'Lenovo Thinkpart X150F', 26000000, 'lenovo1.jpg', 'Lenovo là sản phẩm nâng cấp từ lenovo thinkpart với cấu hình mạnh mẽ', 3, '2021-07-03 20:07:39', 10),
(7, 'Dell XF150', 16000000, 'dell1.jpg', 'thiết kế đẹp, tính năng nâng cấp cấu hình mạnh mẽ', 2, '2021-07-03 22:19:06', 10),
(8, 'Dell Vostro 10', 17000000, 'dell2.jpg', 'Thiết kế cứng cáp mạnh mẽ, sử dụng cấu hình tầm trung', 2, '2021-07-03 22:19:20', 10),
(9, 'Macbook air 13.3 Pro', 27000000, 'macbookair1.jpg', 'Thiết kế siêu đẹp, trang bị tính năng cao cấp nhất', 1, '2021-07-03 22:17:30', 10),
(10, 'MacBook Air 13-inch', 44000000, 'macbookair.jpg', 'Apple MacBook Air 13-inch 1.6GHz Core i5 (Early 2015) MMGF2LL/A - Very Good Condition', 1, '2021-07-03 22:07:25', 10),
(11, 'MacBook Pro 13-inch', 33000000, 'macbookpro1.jpg', 'Apple MacBook Pro 13-inch (Glossy) 2.5GHz Core i5 (Mid 2012) MD101LL/A - Good Condition', 1, '2021-07-03 22:17:57', 10),
(12, ' Lenovo IdeaPad Laptop Compute', 28000000, 'lenovo2.jpg', '2020 Lenovo IdeaPad Laptop ComputerAMD A6-9220e 1.6GHz 4GB Memory 64GB eMMC Flash Memory 14\" AMD Radeon R4 AC WiFi Microsoft Office 365 Platinum Gray', 3, '2021-07-03 22:22:19', 10),
(13, 'Lenovo IdeaPad 3 15\"', 25000000, 'lenovo3.jpg', '\r\nLenovo IdeaPad 3 15\" Laptop, 15.6\" HD (1366 x 768) Display, AMD Ryzen 3 3250U Processor, 4GB DDR4 Onboard RAM, 128GB SSD, AMD Radeon Vega 3 Graphics,', 3, '2021-07-03 22:25:45', 10),
(14, 'Lenovo IdeaPad 3', 21000000, 'lenovo4.jpg', 'Lenovo IdeaPad 3 15 Intel i3-10110U 8GB 256GB SSD 15.6-inch Touch Screen Laptop', 3, '2021-07-03 22:26:15', 10),
(15, 'Acer Chromebook 311 Touch - CB', 18000000, 'acer1.jpg', '2020 Lenovo IdeaPad Laptop ComputerAMD A6-9220e 1.6GHz 4GB Memory 64GB eMMC Flash Memory 14\" AMD Radeon R4 AC WiFi Microsoft Office 365 Platinum Gray', 4, '2021-07-03 22:28:36', 10),
(16, 'Aspire 1 Laptop - A114-32-C3N0', 22000000, 'acer2.jpg', 'Windows 10 Home\r\nIntel® Celeron® N4000 Dual-core (2 Core™)\r\n4 MB DDR4 SDRAM\r\n64 GB Flash\r\n14\" HD (1366 x 768) LCD display\r\nIntel® UHD Graphics 600', 4, '2021-07-03 22:32:26', 10),
(17, 'Acer Chromebook 314 & Wireless', 32000000, 'acer4.jpg', 'Chrome OS\r\nIntel® Celeron® N4020 processor Dual-core 1.10 GHz\r\nIntel® UHD Graphics 600 shared memory\r\n14\" HD (1366 x 768) 16:9\r\n4 GB, LPDDR4\r\n32 GB Flash Memory\r\nIncludes an Acer Wireless Mouse', 4, '2021-07-03 22:34:00', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maAdmin`),
  ADD UNIQUE KEY `tenDN` (`tenDN`);

--
-- Chỉ mục cho bảng `ct_dondathang`
--
ALTER TABLE `ct_dondathang`
  ADD PRIMARY KEY (`maDH`,`maSP`),
  ADD KEY `maDH` (`maDH`),
  ADD KEY `maSP` (`maSP`),
  ADD KEY `maDH2` (`maDH`),
  ADD KEY `maDH3` (`maDH`,`maSP`),
  ADD KEY `maDH4` (`maDH`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`maDH`);

--
-- Chỉ mục cho bảng `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`maHang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKH`),
  ADD UNIQUE KEY `tenDN` (`tenDN`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `maAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `maDH` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `hang`
--
ALTER TABLE `hang`
  MODIFY `maHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `maKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `maSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;