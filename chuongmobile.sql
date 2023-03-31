-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2022 lúc 12:16 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chuongmobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_product`, `cmt`) VALUES
(21, 37, 15, 'quá đẹp'),
(22, 37, 15, 'sản phẩm hợp với túi tiền'),
(23, 37, 30, 'sản phẩm chất lượng'),
(24, 37, 23, 'sản phẩm không được tốt'),
(25, 37, 26, 'Dễ dàng sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsumuahang`
--

CREATE TABLE `lichsumuahang` (
  `id` int(11) NOT NULL,
  `sanpham` varchar(1000) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL,
  `diachigiaohang` varchar(2000) NOT NULL,
  `ngaydat` varchar(20) NOT NULL,
  `ngaygui` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lichsumuahang`
--

INSERT INTO `lichsumuahang` (`id`, `sanpham`, `soluong`, `thanhtoan`, `hinhthucthanhtoan`, `diachigiaohang`, `ngaydat`, `ngaygui`, `id_user`) VALUES
(16, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', 1, 4549000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', '30/10/2022', '30/10/2022', 37),
(17, 'Điện thoại Nokia G50', 1, 6000000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', '30/10/2022', '30/10/2022', 37),
(18, 'Điện thoại Xiaomi Poco X3 Pro Chính Hãng', 1, 6545000, 1, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', '30/10/2022', '19/11/2022', 37),
(19, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', 1, 4549000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', '19/11/2022', '22/11/2022', 37),
(20, 'Điện thoại Samsung Galaxy A5', 1, 5000000, 2, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', '22/11/2022', '22/11/2022', 37);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `option`
--

INSERT INTO `option` (`id`, `name`, `value`) VALUES
(1, 'payment', '{\"bankname\":\"Sacombank\",\"stk\":\"070097154854\",\"ctkbank\":\"NGUYEN DUC LOC\",\"sdt\":\"0342433432\",\"ctkmomo\":\"NGUYEN DUC LOC\"}'),
(2, 'menu', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloai`
--

CREATE TABLE `phanloai` (
  `id` int(11) NOT NULL,
  `tenphanloai` varchar(200) NOT NULL,
  `capdo` int(11) NOT NULL,
  `id_phanloaicha` int(11) NOT NULL,
  `showmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phanloai`
--

INSERT INTO `phanloai` (`id`, `tenphanloai`, `capdo`, `id_phanloaicha`, `showmenu`) VALUES
(0, 'Chưa phân loại', 1, 0, 0),
(22, 'SAMSUNG', 1, 27, 1),
(25, 'SAMSUNG CŨ', 2, 22, 0),
(27, 'NOKIA', 1, 0, 1),
(28, 'IPHONE', 1, 0, 1),
(30, 'XIAOMI', 1, 0, 1),
(37, 'OPPO', 1, 0, 1),
(38, 'VIVO', 1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_phanloai` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `img` varchar(2000) NOT NULL,
  `giaban` int(11) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `posts` text NOT NULL,
  `thuonghieu` varchar(100) NOT NULL,
  `xuatxu` varchar(100) NOT NULL,
  `kichthuocman` varchar(100) NOT NULL,
  `dophangiai` varchar(100) NOT NULL,
  `trongluong` varchar(100) NOT NULL,
  `dungluongpin` varchar(100) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `tocdocpu` varchar(100) NOT NULL,
  `rom` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL,
  `camerasau` varchar(100) NOT NULL,
  `cameratruoc` varchar(100) NOT NULL,
  `loaisim` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL,
  `hotro4g` varchar(100) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `bluetooth` varchar(50) NOT NULL,
  `thenho` varchar(100) NOT NULL,
  `gpu` varchar(50) NOT NULL,
  `phukien` varchar(200) NOT NULL,
  `congsac` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `jacktaynghe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_phanloai`, `ten`, `img`, `giaban`, `tinhtrang`, `soluong`, `posts`, `thuonghieu`, `xuatxu`, `kichthuocman`, `dophangiai`, `trongluong`, `dungluongpin`, `cpu`, `tocdocpu`, `rom`, `ram`, `camerasau`, `cameratruoc`, `loaisim`, `wifi`, `hotro4g`, `gps`, `bluetooth`, `thenho`, `gpu`, `phukien`, `congsac`, `pin`, `jacktaynghe`) VALUES
(15, 28, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', './upload/img/iphone-13-pro-max-1-1.jpg', 27000000, 'Hàng mới', 7, '<p><strong>iPhone 13 Pro Max sẽ l&agrave; chiếc điện thoại th&ocirc;ng minh cao cấp được mong chờ nhất năm 2021. Chắc hẳn bạn cũng c&oacute; nhiều thắc mắc về d&ograve;ng iPhone 13 series cần được giải đ&aacute;p. B&agrave;i viết n&agrave;y sẽ đưa tất tần tật những th&ocirc;ng tin về mẫu điện thoại cao cấp nhất của Apple năm nay đến c&aacute;c bạn.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-2.jpg\"><img alt=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-2.jpg\" title=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<h2 dir=\"ltr\"><strong>iPhone 13 Pro Max &ndash; Chiếc điện thoại hiệu năng cao h&agrave;ng đầu</strong></h2>\r\n\r\n<p dir=\"ltr\">Năm ngo&aacute;i, sự ra mắt của iPhone 12 series đ&atilde; ph&aacute; vỡ nhiều kỷ lục của h&atilde;ng. Ch&iacute;nh v&igrave; vậy chiếc đi&ecirc;̣n thoại iPhone 13 Pro Max đang l&agrave; sự lựa chọn khi&ecirc;́n bao tín đ&ocirc;̀ c&ocirc;ng ngh&ecirc;̣ mong đợi. Mẫu sản phẩm mới sở hữu nhiều n&acirc;ng cấp về camera, thiết kế hay sự trở lại của Touch ID đều l&agrave; điểm thu h&uacute;t người d&ugrave;ng.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>iPhone 13 Pro Max sở hữu thi&ecirc;́t k&ecirc;́ tinh tế v&agrave; nhiều màu sắc n&ocirc;̉i b&acirc;̣t</strong></h3>\r\n\r\n<p dir=\"ltr\">iPhone 13 Pro Max vẫn giữ ng&ocirc;n ngữ thiết kế &lsquo;ho&agrave;i cổ&rsquo; với c&aacute;c cạnh viền vu&ocirc;ng vức như iPhone 12 series. Sự thay đổi lớn nhất ở vẻ ngo&agrave;i năm na ch&iacute;nh l&agrave; phần cụm camera: Cụm camera sau lồi, to, s&aacute;t viền hơn v&agrave; được bảo vệ bởi một lớp k&iacute;nh. Đồng thời, sau bao năm chờ đợi phần tai thỏ tr&ecirc;n m&agrave;n h&igrave;nh cuối c&ugrave;ng cũng được thu nhỏ.</p>\r\n\r\n<p dir=\"ltr\">Chất liệu ho&agrave;n thiện iPhone 13 Pro Max l&agrave; thép kh&ocirc;ng gỉ cùng kính Corning Gorilla Glass đời mới. Đặc biệt, phần viền th&eacute;p c&ograve;n được phủ một lớp chống b&aacute;m v&acirc;n tay &ndash; tr&aacute;nh b&aacute;m bẩn như người tiền nhiệm. Ngo&agrave;i ra, m&aacute;y cũng được trang bị khả năng ngăn bụi v&agrave; chống nước theo ti&ecirc;u chuẩn IP68.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-4.jpg\"><img alt=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-4.jpg\" title=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">Một trong những điều được nhiều người để &yacute; trước khi mua thiết bị ch&iacute;nh l&agrave; m&agrave;u sắc. Năm nay iPhone 13 Pro Max sẽ mang đến những m&agrave;u sắc cơ bản l&agrave; Trắng, Đen nh&aacute;m, Xanh Th&aacute;i B&igrave;nh Dương, đặc biệt l&agrave; c&oacute; th&ecirc;m m&agrave;u V&agrave;ng đồng v&agrave; Cam lạ mắt.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>Màn hình thu nhỏ tai thỏ với t&ocirc;́c đ&ocirc;̣ làm mới 120Hz</strong></h3>\r\n\r\n<p dir=\"ltr\">Yếu tố được mong chờ được cải tiến từ l&acirc;u l&agrave; tai thỏ cuối c&ugrave;ng cũng được Apple thu gọn. iPhone 13 Pro Max trang bị m&agrave;n h&igrave;nh Super Retina XDR OLED 6.7 inch, nhờ thu nhỏ notch m&agrave; tỷ lệ hiển thị m&agrave;n h&igrave;nh được tối ưu (tăng l&ecirc;n). D&ugrave; k&iacute;ch thước phần khuyết nhỏ hơn trước, nhưng TrueDepth, FaceID, camera selfie &ndash; những cảm biến quan trọng đều được giữ nguy&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">D&ugrave; nhiều người mong đợi Apple sẽ ho&agrave;n to&agrave;n bỏ phần tai thỏ, nhưng điều n&agrave;y l&agrave; rất kh&oacute; ở thời điểm hiện tại. Tuy chưa thể giấu cảm biến TrueDepth (để loại bỏ phần khuyến ho&agrave;n to&agrave;n) nhưng h&atilde;ng đ&atilde; thu nhỏ diện t&iacute;ch của n&oacute;. C&ograve;n phần Touch ID &ndash; sự trở lại rất hợp với bối cảnh hiện tại sẽ được t&iacute;ch hợp dưới m&agrave;n h&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Trải nghiệm h&igrave;nh ảnh tr&ecirc;n iPhone 13 Pro Max tăng l&ecirc;n rất nhiều nhờ ProMotion &ndash; t&iacute;nh năng gi&uacute;p m&agrave;n h&igrave;nh đạt tốc độ qu&eacute;t 120Hz. V&acirc;ng, một t&iacute;nh năng được nhiều iFan mong chờ &ndash; tốc độ l&agrave;m mới cao, chuyển động h&igrave;nh ảnh mượt m&agrave; hơn lần đầu xuất hiện tr&ecirc;n mẫu iPhone Pro Max 2021.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-6.jpg\"><img alt=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-6.jpg\" title=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cạnh đ&oacute; iPhone 13 Pro Max vẫn sở hữu c&aacute;c t&iacute;nh năng hỗ trợ trải nghiệm m&agrave;n h&igrave;nh như Dolby Vision, True-tone, HDR10.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cảm biến camera n&acirc;ng cấp, tính năng chụp ảnh tốt hơn</strong></h3>\r\n\r\n<p dir=\"ltr\">Khả năng chụp ảnh l&agrave; một trong những yếu tố người d&ugrave;ng iPhone quan t&acirc;m h&agrave;ng đầu. Tất nhi&ecirc;n camera iPhone 13 Pro Max mới sở hữu nhiều n&acirc;ng cấp về cảm biến v&agrave; khả năng chụp ảnh tuyệt vời kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng.</p>\r\n\r\n<p dir=\"ltr\">Ng&ocirc;n ngữ thiết kế camera kh&oacute; c&oacute; thể thay đổi trong thời gian ngắn. iPhone Pro Max mới vẫn trang bị cụm camera ba ống k&iacute;nh đặt trong m&ocirc;-đun h&igrave;nh vu&ocirc;ng tương tự iPhone 12 Pro Max. Thay đổi nằm ở cảm biến với camera g&oacute;c rộng 6 thấu k&iacute;nh gi&uacute;p cải thiện những bức ảnh khi chụp trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n\r\n<p dir=\"ltr\"><strong><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-8.jpg\"><img alt=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-8.jpg\" title=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" /></a></strong></p>\r\n\r\n<p dir=\"ltr\">Apple sẽ mang cảm biến LiDar v&agrave; t&iacute;nh năng ProRAW l&ecirc;n tất cả c&aacute;c mẫu iPhone 13 series, thay v&igrave; độc quyền cho mẫu Pro như trước. Việc trang bị LiDar nhằm tăng trải nghiệm thực tế ảo (AR) ở c&aacute;c d&ograve;ng sản phẩm cho người d&ugrave;ng. C&ograve;n ProRAW l&agrave; gi&uacute;p bạn c&oacute; được những file ảnh kỹ thuật số v&agrave; DNG chất lượng cao, để cắt gh&eacute;p chỉnh sửa ở bất kỳ phần mềm n&agrave;o.</p>\r\n\r\n<p dir=\"ltr\">Tuy nhi&ecirc;n ProRAW đ&ograve;i hỏi iPhone phải c&oacute; RAM lớn để đủ dung lượng lưu trữ. Do đ&oacute; iPhone 13 v&agrave; 13 Mini sẽ có RAM 6 GB c&ograve;n iPhone 13 Pro v&agrave; 13 Pro Max sẽ có tùy chọn RAM 8 &ndash; 12 GB.</p>\r\n\r\n<p dir=\"ltr\">Camera selfie của iPhone 13 Pro Max kh&ocirc;ng c&oacute; nhiều thay đổi so với mẫu m&aacute;y tiền nhiệm. Thiết bị c&oacute; g&oacute;c chụp selfie rộng hơn v&agrave; sở hữu c&aacute;c t&iacute;nh năng kh&aacute;c như Slow-motione, memoji, animoji gi&uacute;p người d&ugrave;ng c&oacute; nhiều lựa chọn hơn khi chụp ảnh.</p>\r\n\r\n<h3 dir=\"ltr\"><strong>Vi xử lý n&acirc;ng c&acirc;́p hi&ecirc;̣u năng, loại bỏ hoàn toàn c&ocirc;̉ng k&ecirc;́t n&ocirc;́i</strong></h3>\r\n\r\n<p dir=\"ltr\">Như mọi năm, thế hệ iPhone 2021 sẽ sở hữu vi xử l&yacute; được n&acirc;ng cấp mới gi&uacute;p thiết bị cải thiện hiệu năng v&agrave; khả năng hỗ trợ 5G đ&aacute;ng kể. Con chip iPhone 13 Pro Max mang trong m&igrave;nh năm nay l&agrave; A15 Bionic được cải tiến v&agrave; n&acirc;ng cấp vừa cải thiện hiệu năng m&aacute;y vừa gi&uacute;p kết nối internet tốc độ cao tốt hơn.</p>\r\n\r\n<p dir=\"ltr\"><a href=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-9.jpg\"><img alt=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" src=\"https://www.techone.vn/wp-content/uploads/2021/09/dien-thoai-iphone-13-pro-max-1tb-vn-a-9.jpg\" title=\"Điện thoại iPhone 13 Pro Max 1TB VN/A\" /></a></p>\r\n\r\n<p dir=\"ltr\">Trước đ&oacute; c&oacute; nhiều tin đồn về iPhone 13 Pro Max ho&agrave;n to&agrave;n kh&ocirc;ng c&ograve;n cổng kết nối. Điều nhiều người quan t&acirc;m ch&uacute; &yacute; hợp với &yacute; tưởng / yếu tố bảo vệ m&ocirc;i trường m&agrave; h&atilde;ng đang theo đuổi. Đặc biệt v&agrave;o năm ngo&aacute;i, Apple đ&atilde; loại bỏ phụ kiện sạc khỏi hộp iPhone.</p>\r\n\r\n<p dir=\"ltr\">N&ecirc;́u iPhone 13 Pro Max kh&ocirc;ng còn c&ocirc;̉ng sạc như tin đồn, người dùng mẫu iPhone cao cấp n&agrave;y sẽ phải mua th&ecirc;m phụ kiện MagSafe đ&ecirc;̉ sạc pin đi&ecirc;̣n thoại. Tuy nhi&ecirc;n, điều n&agrave;y ở thời điểm hiện tại l&agrave; hơi kh&oacute; c&oacute; khả năng xảy ra. MagSafe chưa th&ecirc;̉ thay th&ecirc;́ hẳn vị trí của sạc c&oacute; d&acirc;y, n&ecirc;n hẳn rằng iPhone 13 Pro Max vẫn sẽ c&oacute; c&ocirc;̉ng&nbsp;Lightning.</p>', 'Iphone', 'Hoa Kì', '78.1 x 7.4 x 160.8 mm', '2778 x 1284 Pixels', '240 g', '4352 mAh', 'Apple A15 Bionic', '3.22 GHz', '1TB', '6GB', '12.0 MP', '12.0 MP', '1 eSIM, 1 Nano SIM', '802.11 ax', '5G', 'A-GPS, GALILEO, GLONASS, QZSS', 'v5.0', 'Không', 'Apple GPU 5 nhân', 'Sạc Lightning', 'Lightning', 'Không', 'Lightning'),
(19, 22, 'Điện thoại Samsung Galaxy A5', './upload/img/images (1).jpg', 5000000, 'Cũ', 32, '<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại chính hãng tại Thegioididong.com \"><strong><span style=\"color:blue\">Điện thoại th&ocirc;ng minh</span></strong></a>&nbsp;<strong>Samsung Galaxy A5 nổi bật với m&agrave;n h&igrave;nh Super AMOLED c&ugrave;ng thiết kế nguy&ecirc;n khối bằng kim loại vu&ocirc;ng vức sang trọng v&agrave; tinh tế.</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong>Thiết kế nguy&ecirc;n khối đẹp mắt</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Galaxy A5 c&oacute; thiết kế đặc trưng của d&ograve;ng A khi c&aacute;c cạnh được cắt kim cương bắt s&aacute;ng v&agrave; l&agrave;m vu&ocirc;ng vức hơn tạo sự kh&aacute;c lạ, tuy nhi&ecirc;n khi cầm l&acirc;u m&aacute;y bạn sẽ thấy đau tay khi bị cấn.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'SAMSUNG', 'Hàn Quốc', '5', 'HD (720 x 1280 Pixels)', 'Nặng 123 g', '2300 mAh', 'Snapdragon 410 4 nhân', '1.2 GHz', '16 GB', '2 GB', '13 MP', '5 MP', '1 Nano SIM', 'Wi-Fi hotspot,  Dual-band (2.4 GHz/5 GHz),  Wi-Fi 802.11 a/b/g/n', 'Có', 'GPSG, LONASS', 'A2DP,  LE,  EDR, v4.0', 'MicroSD', 'Adreno 306', 'Không', 'Micro USB', 'Có', '3.5 mm'),
(20, 22, 'Điện thoại Samsung Galaxy S21 5G', './upload/img/images (2).jpg', 18000000, 'Mới', 20, '<h3>&nbsp;</h3>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21\" target=\"_blank\" title=\"Tham khảo điện thoại Galaxy S21 tại thegioididong.com\">Galaxy S21 5G</a>&nbsp;nằm trong series S21 đến từ&nbsp;<a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung kinh doanh tại thegioididong.com\">Samsung</a>&nbsp;nổi bật với thiết kế tr&agrave;n viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ h&agrave;ng đầu.</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\">&ldquo;Bộ c&aacute;nh&rdquo; mới nổi bật v&agrave; sang trọng</span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nổi bật với cụm camera sau được thiết kế đầy mới lạ, phần khu&ocirc;n h&igrave;nh chữ nhật chứa bộ 3 camera &ocirc;m trọn cạnh tr&aacute;i của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại kinh doanh tại thegioididong.com\">smartphone</a>, viền khu&ocirc;n cong uyển chuyển, hạn chế tối đa độ nh&ocirc; ra so với mặt lưng, mang lại c&aacute;i nh&igrave;n tổng thể h&agrave;i h&ograve;a, độc đ&aacute;o.</span></span></span></span></p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 30, 'Xiaomi Poco X3 GT', './upload/img/xiaomi-poco-x3-gt-600x600.jpg', 5063654, 'Mới', 15, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Điện Thoại Xiaomi Poco X3 GT - hiệu năng mạnh mẽ, camera cực đỉnh</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">H&atilde;ng điện thoại POCO đ&atilde; t&aacute;ch th&agrave;nh một d&ograve;ng điện thoại độc lập. Ngay sau đ&oacute;, POCO cho ra đời những d&ograve;ng smartphone&nbsp;chất lượng cao nhưng mang t&ecirc;n&nbsp;<strong>Xiaomi Poco X3 GT</strong>. Mẫu&nbsp;<a href=\"https://cellphones.com.vn/mobile/hang-sap-ve/xiaomi.html\" target=\"_self\" title=\"Điện thoại Xiaomi chính hãng\"><span style=\"color:blue\">điện thoại Xiaomi</span></a>&nbsp;với hiệu năng mạnh mẽ v&agrave; camera sống động hứa hẹn mang lại trải nghiệm th&uacute; vị cho người d&ugrave;ng.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Chip Dimensity 1100 hoạt động mạnh mẽ</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Điện thoại POCO X3 GT sẽ được trang bị con chip Dimensity 1100, hệ thống con chip n&agrave;y cho ph&eacute;p m&aacute;y hoạt động với hiệu năng mạnh mẽ. Con chip n&agrave;y được sản xuất với tiến tr&igrave;nh 6nm của h&atilde;ng với GPU Mali-G77.</span></span></span></span></p>', 'Xiaomi', 'Trung quá»‘c', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CÃ³'),
(22, 30, 'Điện thoại Xiaomi Poco X3 Pro Chính Hãng', './upload/img/xiaomi-poco-x3-pro-600x600-1-600x600.jpg', 6545000, 'Mới', 150, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Xiaomi POCO X3 Pro&nbsp;ra mắt nổi bật với thiết kế kh&aacute; độc đ&aacute;o với cụm camera, m&agrave;n h&igrave;nh mượt m&agrave; như lụa, pin khủng, sạc cực nhanh v&agrave; loa chất lượng ph&ograve;ng thu hứa hẹn sẽ mang lại trải nghiệm người d&ugrave;ng ấn tượng.</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Thiết kế hiện đại, thời trang</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Ấn tượng đầu ti&ecirc;n của POCO X3 Pro ch&iacute;nh l&agrave; mặt lưng m&aacute;y được ho&agrave;n thiện dạng trơn, đổ b&oacute;ng, trong khi khu vực hai b&ecirc;n đ&atilde; được l&agrave;m nh&aacute;m để mang lại cảm gi&aacute;c cầm tốt hơn thế hệ tiền nhiệm.</span></span></span></span></p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 27, 'Điện thoại Nokia G50', './upload/img/nokia-g50-1-600x600.jpg', 6000000, 'Mới', 150, '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đ&aacute;nh gi&aacute; Nokia G50 - Thỏa sức lướt mạng 5G si&ecirc;u tốc</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Hãng đi&ecirc;̣n thoại lừng danh Nokia v&acirc;̃n chưa ngừng cu&ocirc;̣c chơi trong thị ph&acirc;̀n smartphone. Bằng chứng l&agrave; việc hãng vừa tung ra thị trường sản ph&acirc;̉m mới mang t&ecirc;n&nbsp;<strong>Nokia G50</strong>&nbsp;- h&ocirc;̃ trợ mạng 5G với mức giá ph&ocirc;̉ th&ocirc;ng cho t&acirc;́t cả người y&ecirc;u c&ocirc;ng ngh&ecirc;̣.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Phong cách đ&ocirc;̣c đáo, màn hình hi&ecirc;̉n thị r&ocirc;̣ng</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Đi&ecirc;̣n thoại Nokia G50 5G ti&ecirc;́p tục đi theo ng&ocirc;n ngữ thi&ecirc;́t k&ecirc;́ đã làm n&ecirc;n thành c&ocirc;ng của dòng smartphone Nokia G - phong cách đ&ocirc;̣c đáo. Từng đường nét tr&ecirc;n chiếc smartphone n&agrave;y mang hình dáng t&ocirc;́i giản, tinh t&ecirc;́ và thời thượng, với lựa chọn màu&nbsp;Ocean Blue và màu&nbsp;Midnight Sun&nbsp;bắt mắt. Đ&ocirc;̀ng thời, điện thoại Nokia cũng có th&acirc;n máy b&ecirc;̀n bỉ, mỏng gọn và nhẹ nhàng tr&ecirc;n tay giúp người dùng sử dụng thoải mái.</span></span></span></span></p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 22, 'Điện thoại Samsung Galaxy Z Flip4 512GB', './upload/img/samsung-galaxy-z-flip4-xanh-512gb-1.jpg', 24000000, 'Hàng mới', 10, '<h3>Mới đ&acirc;y tại sự kiện Unpacked 2022 to&agrave;n cầu diễn ra ng&agrave;y 10/08 th&igrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-flip4-5g-512gb\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm kinh doanh tại Thế Giới Di Động\">Samsung Galaxy Z Flip4 512GB</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện với một vẻ ngo&agrave;i cuốn h&uacute;t đầy bắt mắt. M&aacute;y được n&acirc;ng cấp độ bền so với thế hệ cũ nhờ sử dụng nhiều vật liệu cao cấp để chế tạo, từ đ&oacute; l&agrave;m tăng mức độ uy t&iacute;n gi&uacute;p người d&ugrave;ng c&oacute; thể an t&acirc;m trang bị v&agrave; sử dụng trong thời gian d&agrave;i.</h3>\r\n\r\n<h3>Diện mạo thời thượng hợp xu hướng</h3>\r\n\r\n<p>Samsung Galaxy Z Flip4 sử dụng ng&ocirc;n ngữ thiết kế vu&ocirc;ng vắn khi được tạo h&igrave;nh với c&aacute;c cạnh v&agrave; hai mặt đều v&aacute;t phẳng. Với bộ khung s&aacute;ng b&oacute;ng c&ugrave;ng m&agrave;u sắc trẻ trung ở mặt lưng gi&uacute;p bạn c&oacute; thể nổi bật hơn ở những nơi đ&ocirc;ng người khi cầm nắm sử dụng tr&ecirc;n tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080555.jpg\" onclick=\"return false;\"><img alt=\"Ngoại hình vuông vắn - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" src=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080555.jpg\" title=\"Ngoại hình vuông vắn - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" /></a></p>\r\n\r\n<p>Ở phi&ecirc;n bản Galaxy Z Flip4 n&agrave;y sẽ c&oacute; 4 phi&ecirc;n bản m&agrave;u sắc kh&aacute;c nhau gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i chọn lựa, v&igrave; sở hữu tone m&agrave;u trung t&iacute;nh n&ecirc;n đ&acirc;y được xem l&agrave; d&ograve;ng sản phẩm ph&ugrave; hợp với mọi lứa tuổi hay bất kỳ giới t&iacute;nh n&agrave;o đi chăng nữa.</p>\r\n\r\n<p>Galaxy Z Flip4 l&agrave; một trong những chiếc smartphone theo kiểu gập c&oacute; thiết kế bền bỉ nhất từ trước cho đến nay nhờ c&oacute; mặt lưng v&agrave; m&agrave;n h&igrave;nh đều được trang bị k&iacute;nh cường lực Corning Gorilla Glass Victus+ cao cấp. Đ&acirc;y được xem l&agrave; loại m&agrave;n h&igrave;nh c&oacute; độ bền bỉ cực cao gi&uacute;p người d&ugrave;ng c&oacute; thể giảm thiểu được thiệt hại trong những lần v&ocirc; t&igrave;nh l&agrave;m rơi thiết bị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080558.jpg\" onclick=\"return false;\"><img alt=\"Mặt kính cường lực - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" src=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080558.jpg\" title=\"Mặt kính cường lực - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" /></a></p>\r\n\r\n<p>M&aacute;y được bao bọc bởi bộ khung l&agrave;m từ nh&ocirc;m Armor Aluminum cao cấp, đ&acirc;y được xem l&agrave; loại vật liệu bền bỉ v&agrave; đ&atilde; được kiểm chứng thực tế qua nhiều d&ograve;ng sản phẩm trước đ&acirc;y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung đang kinh doanh tại Thế Giới Di Động\">Samsung</a>. Kh&ocirc;ng chỉ đem đến khả năng chống va đập tốt m&agrave; bộ khung n&agrave;y c&ograve;n gi&uacute;p m&aacute;y c&oacute; th&ecirc;m một vẻ ngo&agrave;i sang trọng hơn nhờ độ s&aacute;ng b&oacute;ng của n&oacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080600.jpg\" onclick=\"return false;\"><img alt=\"Khung nhôm cao cấp - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" src=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080600.jpg\" title=\"Khung nhôm cao cấp - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" /></a></p>\r\n\r\n<p>Galaxy Z Flip4 sử dụng tỉ lệ thiết kế 22:9 gi&uacute;p cho m&aacute;y c&oacute; một th&acirc;n h&igrave;nh thon gọn cũng như bề rộng được tối ưu để người d&ugrave;ng c&oacute; thể cầm nắm sử dụng thoải m&aacute;i. Sau khi gập th&igrave; m&aacute;y chỉ c&oacute; độ d&agrave;i khoảng 84.8 mm vậy n&ecirc;n m&aacute;y ho&agrave;n to&agrave;n c&oacute; thể nằm gọn trong l&ograve;ng b&agrave;n tay hay bỏ t&uacute;i một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080602.jpg\" onclick=\"return false;\"><img alt=\"Nhỏ nhắn sau khi gấp gọn - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" src=\"https://cdn.tgdd.vn/Products/Images/42/285696/samsung-galaxy-z-flip4-5g-512gb-100822-080602.jpg\" title=\"Nhỏ nhắn sau khi gấp gọn - Samsung Galaxy Z Flip4 512GB - ĐỘC QUYỀN\" /></a></p>\r\n\r\n<p>Với ti&ecirc;u chuẩn kh&aacute;ng nước cao cấp IPX8 được hỗ trợ tr&ecirc;n Galaxy Z Flip4, Samsung mạnh dạn c&ocirc;ng bố đ&acirc;y l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;gập c&oacute; khả năng kh&aacute;ng nước tốt nhất tr&ecirc;n thị trường di động t&iacute;nh đến thời điểm hiện tại. Giờ đ&acirc;y người d&ugrave;ng c&oacute; thể an t&acirc;m hơn trong những lần v&ocirc; t&igrave;nh tiếp x&uacute;c với nước.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chong-nuoc-va-chong-bui-tren-smart-phone-771130\" target=\"_blank\">Ti&ecirc;u chuẩn chống nước IP l&agrave; g&igrave;? C&oacute; &yacute; nghĩa g&igrave;? C&aacute;c chuẩn IP hiện nay</a></p>', 'SAMSUNG', 'Hàn Quốc', 'Chính 6.7', 'Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)', 'Nặng 187 g', '3700 mAh', 'Snapdragon 8+ Gen 1 8 nhân', '1 nhân 3.18 GHz, 3 nhân 2.7 GHz & 4 nhân 2 GHz', '512 GB', '8 GB', '2 camera 12 MP', '10 MP', '1 Nano SIM & 1 eSIM', 'Dual-band (2.4 GHz/5 GHz), Wi-Fi 802.11 a/b/g/n/ac/ax, Wi-Fi MIMO, 6 GHz', '5G', 'GLONASS,  GPS, GALILEO,  QZSS,  BEIDOU', 'v5.2', 'Không', 'Adreno 670', 'Không', 'Type-C', 'Không', 'Type-C'),
(27, 37, 'Điện thoại OPPO A57 128GB', './upload/img/oppo-a57-128gb-1.jpg', 4690000, 'Hàng cũ', 12, '<h3><a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\" title=\"Điện thoại smartphone OPPO chính hãng, giá rẻ, trả góp 0%\" type=\"Điện thoại smartphone OPPO chính hãng, giá rẻ, trả góp 0%\">OPPO</a>&nbsp;đ&atilde; bổ sung th&ecirc;m v&agrave;o d&ograve;ng sản phẩm OPPO A gi&aacute; rẻ một thiết bị mới c&oacute; t&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-a57-128gb\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">OPPO A57 128GB</a>. Kh&aacute;c với mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-a57-5g\" target=\"_blank\" title=\"OPPO A57 5G - Cập nhật thông tin, hình ảnh, đánh giá\" type=\"OPPO A57 5G - Cập nhật thông tin, hình ảnh, đánh giá\">A57 5G</a>&nbsp;đ&atilde; được ra mắt trước đ&oacute;, điện thoại d&ograve;ng A mới c&oacute; m&agrave;n h&igrave;nh HD+, camera ch&iacute;nh 13 MP v&agrave; pin 5000 mAh.</h3>\r\n\r\n<h3>Thiết kế trẻ trung</h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-oppo-a\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">Điện thoại OPPO A</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh giọt nước ở mặt trước. Khung viền c&ograve;n được v&aacute;t phẳng tạo cảm gi&aacute;c sang trọng khi cầm tr&ecirc;n tay. Thiết bị được giới thiệu với hai m&agrave;u sắc trẻ trung: Glowing Green v&agrave; Glowing Black.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-310522-084901.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế và màn hình - OPPO A57 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-310522-084901.jpg\" title=\"Thiết kế và màn hình - OPPO A57 4G\" /></a></p>\r\n\r\n<p>OPPO trang bị cho m&aacute;y m&agrave;n h&igrave;nh IPS LCD k&iacute;ch thước 6.56 inch, hỗ trợ độ ph&acirc;n giải HD+ (720 x 1612 pixels), mật độ điểm ảnh khoảng 269 PPI.&nbsp;</p>\r\n\r\n<h3>Hiệu năng ổn định trong tầm gi&aacute;</h3>\r\n\r\n<p>B&ecirc;n trong OPPO A57 được trang bị bộ vi xử l&yacute; Helio G35 đến từ MediaTek, c&ugrave;ng RAM 4 GB v&agrave; bộ nhớ trong 128 GB. Kết hợp c&ugrave;ng giao diện ColorOS 12.1 dựa tr&ecirc;n Android 12 được c&agrave;i sẵn, thiết bị hứa hẹn hiệu năng ổn định, chạy tốt c&aacute;c t&aacute;c vụ cơ bản thường d&ugrave;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-3_1280x719.jpg\" onclick=\"return false;\"><img alt=\"Thông số kỹ thuật - OPPO A57 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-3_1280x719.jpg\" title=\"Thông số kỹ thuật - OPPO A57 4G\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-sac-sieu-nhanh\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">Điện thoại hỗ trợ sạc si&ecirc;u nhanh</a>&nbsp;cho khả năng sạc 33 W c&ugrave;ng với đ&oacute; l&agrave; vi&ecirc;n pin 5000 mAh. Thiết bị c&ograve;n hỗ trợ c&aacute;c t&iacute;nh năng kết nối như: 4G VoLTE, Wi-Fi, Bluetooth 5.3, GPS, cổng USB-C v&agrave; cổng cắm tai nghe 3.5 mm để người d&ugrave;ng dễ d&agrave;ng thưởng thức &acirc;m nhạc.</p>\r\n\r\n<h3>Hỗ trợ chụp ảnh quay phim</h3>\r\n\r\n<p>Thiết bị c&oacute; một camera 8 MP khẩu độ&nbsp;f/2.0 ở mặt trước để chụp ảnh selfie, mặt lưng c&oacute; camera ch&iacute;nh 13 MP khẩu độ f/2.2, cảm biến độ s&acirc;u 2 MP khẩu độ&nbsp;f/2.4 chuy&ecirc;n chụp ảnh ch&acirc;n dung v&agrave; đ&egrave;n flash LED để hỗ trợ chụp trong những t&igrave;nh huống thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-2_1280x720.jpg\" onclick=\"return false;\"><img alt=\"Máy ảnh - OPPO A57 4G\" src=\"https://cdn.tgdd.vn/Products/Images/42/282090/oppo-a57-4g-2_1280x720.jpg\" title=\"Máy ảnh - OPPO A57 4G\" /></a></p>\r\n\r\n<p>Hệ thống camera sau của&nbsp;OPPO A57 128GB c&oacute; thể quay video 1080p ở tốc độ 30 FPS. Ngo&agrave;i ra m&aacute;y c&ograve;n hỗ trợ chụp HDR v&agrave; chế độ to&agrave;n cảnh (panorama).</p>\r\n\r\n<p>OPPO A57 128GB chắc chắn sẽ được đ&ocirc;ng đảo người ti&ecirc;u d&ugrave;ng đ&oacute;n nhận do c&oacute; mức gi&aacute; rẻ m&agrave; sở hữu nhiều th&ocirc;ng số kỹ thuật nổi bật. Một chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Điện thoại, smartphone chính hãng giá rẻ, trả góp 0%\" type=\"Điện thoại, smartphone chính hãng giá rẻ, trả góp 0%\">điện thoại</a>&nbsp;gi&aacute; rẻ đ&aacute;ng để sắm.</p>', 'OPPO', 'Trung Quốc', '6.56', 'HD+ (720 x 1612 Pixels)', '', '5000 mAh', 'MediaTek Helio G35 8 nhân', '2.3 GHz', '128 GB', '4 GB', 'Chính 13 MP & Phụ 2 MP', '8 MP', '2 Nano SIM', 'Wi-Fi 802.11 a/b/g/n/ac  Wi-Fi Direct  Wi-Fi hotspot  Dual-band (2.4 GHz/5 GHz)', 'Có', 'GPS  GLONASS  GALILEO  QZSS  BEIDOU', 'v5.3', 'Không', 'IMG PowerVR GE8320', 'Không', 'Type-C', 'Không', '3.5 mm'),
(28, 38, 'Điện thoại Vivo Y22s 4GB', './upload/img/vivo-y22s-vang-1.jpg', 5000000, 'Mới', 50, '<h3>Vivo dường như ng&agrave;y c&agrave;ng ch&uacute; trọng v&agrave;o vẻ đẹp của từng sản phẩm khi c&oacute; kh&aacute; nhiều mẫu smartphone mới được tr&igrave;nh l&agrave;ng với bề ngo&agrave;i hết sức đẹp mắt, nổi bật trong khoảng thời gian gần đ&acirc;y (09/2022) c&oacute; lẽ l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/vivo-y22s-4gb\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">Vivo Y22s (4GB/128GB)</a>&nbsp;khi sở hữu cho m&igrave;nh một diện mạo vu&ocirc;ng vức, thời thượng c&ugrave;ng mức gi&aacute; b&aacute;n cũng kh&ocirc;ng k&eacute;m phần ấn tượng.</h3>\r\n\r\n<h3>Vẻ đẹp thu h&uacute;t mọi &aacute;nh nh&igrave;n</h3>\r\n\r\n<p>Y22s l&agrave; một chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-vivo-y\" target=\"_blank\" title=\"Tham khảo điện thoại Vivo dòng Y đang kinh doanh tại Thế Giới Di Động\">điện thoại Vivo d&ograve;ng Y</a>&nbsp;c&oacute; lối tạo h&igrave;nh vu&ocirc;ng vức, c&aacute;c chi tiết được h&atilde;ng gia c&ocirc;ng tinh tế đến từng đường n&eacute;t nhỏ nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090050.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế thời thượng - Vivo Y22s 4GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090050.jpg\" title=\"Thiết kế thời thượng - Vivo Y22s 4GB\" /></a></p>\r\n\r\n<p>Tr&igrave;nh l&agrave;ng với hai phi&ecirc;n bản m&agrave;u sắc trẻ trung, d&ugrave; bạn đang thuộc độ tuổi n&agrave;o hay giới t&iacute;nh n&agrave;o đi nữa th&igrave; Y22s cũng sẽ đem đến cho bạn một c&aacute;i nh&igrave;n tươi tắn, hiện đại nhờ tone m&agrave;u trung t&iacute;nh v&agrave; kiểu ho&agrave;n thiện độc đ&aacute;o ở phần mặt lưng.</p>\r\n\r\n<h3>Trải nghiệm tốt hơn tr&ecirc;n m&agrave;n h&igrave;nh chất lượng</h3>\r\n\r\n<p>Đến với phần m&agrave;n h&igrave;nh của Y22s th&igrave; m&aacute;y sẽ được trang bị một tấm nền IPS LCD đi k&egrave;m với độ ph&acirc;n giải HD+ (720 x 1612 Pixels), m&agrave;u sắc tr&ecirc;n m&agrave;n ảnh t&aacute;i hiện nịnh mắt, tuy sở hữu độ ph&acirc;n giải kh&ocirc;ng qu&aacute; cao nhưng đ&acirc;y vẫn được xem l&agrave; mức đủ để bạn c&oacute; thể chi&ecirc;m ngưỡng trọn vẹn mọi nội dung.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">Điện thoại</a>&nbsp;được trang bị m&agrave;n h&igrave;nh c&oacute; k&iacute;ch thước l&ecirc;n tới 6.55 inch v&igrave; thế người d&ugrave;ng c&oacute; thể thoải m&aacute;i hơn trong việc sử dụng song song hai ứng dụng, trải nghiệm chơi game cũng sẽ tốt hơn bởi giờ đ&acirc;y c&aacute;c ph&iacute;m chức năng được đặt c&aacute;ch xa nhau để hạn chế t&igrave;nh trạng ấn nhầm ph&iacute;m trong l&uacute;c thao t&aacute;c.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090054.jpg\" onclick=\"return false;\"><img alt=\"Màn hình chát lượng - Vivo Y22s 4GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090054.jpg\" title=\"Màn hình chát lượng - Vivo Y22s 4GB\" /></a></p>\r\n\r\n<p>Đối với những tựa game FPS cao điển h&igrave;nh như bắn s&uacute;ng, việc trang bị một m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t 90 Hz như tr&ecirc;n Vivo Y22s quả l&agrave; một lợi thế bởi c&aacute;c thao t&aacute;c được phản hồi nhanh ch&oacute;ng v&agrave; mượt m&agrave; để bạn dễ d&agrave;ng thắng trong c&aacute;c v&aacute;n game.</p>\r\n\r\n<h3>Thỏa sức chụp ảnh với nhiều t&iacute;nh năng</h3>\r\n\r\n<p>Mặt lưng của m&aacute;y sẽ được trang bị bộ đ&ocirc;i camera với cảm biến ch&iacute;nh c&oacute; độ ph&acirc;n giải tới 50 MP, nhờ vậy m&agrave; chất lượng ảnh thu lại c&oacute; độ chi tiết cao gi&uacute;p bạn c&oacute; thể mang đi in ấn m&agrave; kh&ocirc;ng cần qu&aacute; lo lắng đến t&igrave;nh trạng vỡ ảnh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090059.jpg\" onclick=\"return false;\"><img alt=\"Camera chụp ảnh sắc nét - Vivo Y22s 4GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090059.jpg\" title=\"Camera chụp ảnh sắc nét - Vivo Y22s 4GB\" /></a></p>\r\n\r\n<p>Nhằm cải thiện chất lượng ảnh trong c&aacute;c điều kiện m&ocirc;i trường &aacute;nh s&aacute;ng kh&aacute;c nhau hay l&agrave;m phong ph&uacute; bộ sưu tập của người d&ugrave;ng th&igrave; h&atilde;ng cũng đ&atilde; bổ sung h&agrave;ng loạt c&aacute;c t&iacute;nh năng như: Ban đ&ecirc;m, live photo, quay chậm, si&ecirc;u độ ph&acirc;n giải, to&agrave;n cảnh,...</p>\r\n\r\n<h3>Hiệu năng đ&aacute;p ứng tốt nhiều t&aacute;c vụ</h3>\r\n\r\n<p>B&ecirc;n trong thiết bị sẽ được trang bị con chip Snapdragon 680 8 nh&acirc;n đến từ nh&agrave; Qualcomm, đ&acirc;y l&agrave; bộ vi xử l&yacute; được ưa chuộng v&agrave; thường thấy tr&ecirc;n c&aacute;c mẫu smartphone tầm trung bởi sự ổn định cũng như hiệu năng kh&aacute; cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090056.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng mạnh mẽ - Vivo Y22s 4GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/291696/vivo-y22s-4gb-220922-090056.jpg\" title=\"Hiệu năng mạnh mẽ - Vivo Y22s 4GB\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-ram-4gb\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">Điện thoại RAM 4 GB</a>&nbsp;đi k&egrave;m với sự tối ưu giao diện của hệ điều h&agrave;nh Android 12, hứa hẹn sẽ mang lại sự ổn định đối với hầu hết c&aacute;c t&aacute;c vụ đa nhiệm thường ng&agrave;y.</p>', 'VIVO', 'Trung Quốc', '6.55\" - Tần số quét 90 Hz', 'HD+ (720 x 1612 Pixels)', '', '5000 mAh', 'Snapdragon 680 8 nhân', '4 nhân 2.4 GHz & 4 nhân 1.9 GHz', '128 GB', '4 GB', 'Chính 50 MP & Phụ 2 MP', '8 MP', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)', 'Có', 'GLONASS  GPS  GALILEO  QZSS  BEIDOU', 'v5.0', 'Không', 'Adreno 610', 'Không', 'Type-C', 'Không', '3.5 mm'),
(29, 28, 'Điện thoại iPhone 14 Pro Max 128GB', './upload/img/iphone-14-pro-den-1-1.jpg', 33000000, 'Mới', 15, '<h3>Cuối c&ugrave;ng th&igrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-14-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại đang kinh doanh tại Thế Giới Di Động\">iPhone 14 Pro Max</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức lộ diện tại sự kiện ra mắt thường ni&ecirc;n v&agrave;o ng&agrave;y 08/09 đến từ nh&agrave; Apple, kết th&uacute;c bao lời đồn đo&aacute;n bằng một bộ th&ocirc;ng số cực kỳ ấn tượng c&ugrave;ng vẻ ngo&agrave;i đẹp mắt sang trọng.&nbsp;Từ ng&agrave;y 14/10/2022 người d&ugrave;ng đ&atilde; c&oacute; thể mua sắm c&aacute;c sản phẩm iPhone 14 series&nbsp;với đầy đủ phi&ecirc;n bản tại Thế Giới Di Động.</h3>\r\n\r\n<h3>Thiết kế cao cấp v&agrave; vẻ ngo&agrave;i s&agrave;nh điệu</h3>\r\n\r\n<p>Sản phẩm c&oacute; trong m&igrave;nh một diện mạo bắt mắt nhờ lối tạo h&igrave;nh vu&ocirc;ng vức bắt trend tương tự thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone-13-series\" target=\"_blank\" title=\"Xem thêm iPhone 13 series đang kinh doanh tại Thế Giới Di Động\">iPhone 13 series</a>, đ&acirc;y được xem l&agrave; kiểu thiết kế rất th&agrave;nh c&ocirc;ng tr&ecirc;n c&aacute;c thế hệ trước khi tạo n&ecirc;n cơn sốt to&agrave;n cầu về kiểu d&aacute;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Xem thêm Điện thoại chính hãng, giá rẻ đang kinh doanh tại Thế Giới Di Động\">điện thoại</a>&nbsp;cho đến nay.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế vuông vức - iPhone 14 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-080922-101659.jpg\" title=\"Thiết kế vuông vức - iPhone 14 Pro Max 128GB\" /></a></p>\r\n\r\n<p>Mặt lưng l&agrave;m từ k&iacute;nh c&ugrave;ng khung th&eacute;p kh&ocirc;ng gỉ gi&uacute;p cho iPhone c&oacute; th&ecirc;m độ bền bỉ để đồng h&agrave;nh c&ugrave;ng bạn được l&acirc;u d&agrave;i hơn, kh&ocirc;ng những thế n&oacute; c&ograve;n l&agrave;m cho thiết bị của bạn trở n&ecirc;n sang trọng v&agrave; đẳng cấp hơn.</p>\r\n\r\n<h3>Đột ph&aacute; với thiết kế Dynamic island</h3>\r\n\r\n<p>Để tối ưu được kh&ocirc;ng gian hiển thị th&igrave; Apple cũng đ&atilde; ch&iacute;nh thức loại bỏ tai thỏ huyền thoại để thay thế v&agrave;o đ&oacute; l&agrave; kiểu bố tr&iacute; h&igrave;nh vi&ecirc;n thuốc độc đ&aacute;o, vừa đem lại v&ugrave;ng hiển thị rộng r&atilde;i hơn m&agrave; đ&acirc;y c&ograve;n l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n chiếc iPhone 14 Pro Max.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg\" onclick=\"return false;\"><img alt=\"Hình notch mới mẻ - iPhone 14 Pro Max\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-030207.jpg\" title=\"Hình notch mới mẻ - iPhone 14 Pro Max\" /></a></p>\r\n\r\n<p>Đ&acirc;y được xem l&agrave; một điểm mới về phần m&agrave;n h&igrave;nh tr&ecirc;n d&ograve;ng sản phẩm Pro Max năm nay v&igrave; cụm tai thỏ đ&atilde; được lược bỏ v&agrave; thay thế v&agrave;o đ&oacute; l&agrave; thiết kế h&igrave;nh notch vi&ecirc;n thuốc, đi k&egrave;m với đ&oacute; sẽ l&agrave; t&iacute;nh năng&nbsp;Dynamic Island để biến cụm n&agrave;y trở n&ecirc;n th&uacute; vị hơn qua những th&ocirc;ng b&aacute;o hay th&ocirc;ng tin trạng th&aacute;i.</p>\r\n\r\n<h3>iPhone 14 Pro Max với nhiều m&agrave;u sắc rực rỡ</h3>\r\n\r\n<h4><strong>T&iacute;m - iPhone 14 Pro Max Deep Purple</strong></h4>\r\n\r\n<p>Một điểm đặc biệt tr&ecirc;n phi&ecirc;n bản n&agrave;y l&agrave; m&agrave;u Deep Purple (t&iacute;m) mới chưa từng c&oacute; tr&ecirc;n những phi&ecirc;n bản trước đ&acirc;y, v&igrave; thế đ&acirc;y chắc hẳn l&agrave; một đặc điểm nhận diện dễ d&agrave;ng tr&ecirc;n iPhone 14 Pro Max, điều n&agrave;y gi&uacute;p bạn trở th&agrave;nh một người d&ugrave;ng rất c&oacute; sức h&uacute;t khi sở hữu cho m&igrave;nh một thiết bị mới nhất đến từ nh&agrave; Apple.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu tím - iPhone 14 Pro Max\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054600.jpg\" title=\"Phiên bản màu tím - iPhone 14 Pro Max\" /></a></p>\r\n\r\n<h4><strong>V&agrave;ng - Gold&nbsp;</strong></h4>\r\n\r\n<p>Đối với phi&ecirc;n bản m&agrave;u v&agrave;ng n&agrave;y ta thấy được một diện mạo đẳng cấp v&agrave; cực kỳ sang trọng khi đi k&egrave;m với một bộ khung b&oacute;ng bẩy, tất cả điều n&agrave;y l&agrave;m cho người d&ugrave;ng cảm gi&aacute;c như m&aacute;y được ho&agrave;n thiện với bộ khung từ v&agrave;ng nguy&ecirc;n chất, mang lại một c&aacute;i nh&igrave;n thời thượng hơn mỗi khi bạn cầm nắm điện thoại tr&ecirc;n tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu vàng - iPhone 14 Pro Max\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054558.jpg\" title=\"Phiên bản màu vàng - iPhone 14 Pro Max\" /></a></p>\r\n\r\n<h4><strong>Bạc - Silver</strong></h4>\r\n\r\n<p>M&agrave;u bạc c&oacute; lẽ l&agrave; một phi&ecirc;n bản kh&aacute; được ưa chuộng tr&ecirc;n thị trường điện thoại iPhone trong khoảng thời gian gần đ&acirc;y, bởi tone m&agrave;u trẻ trung c&ugrave;ng phong c&aacute;ch tối giản n&ecirc;n phi&ecirc;n bản n&agrave;y rất dễ phối m&agrave;u với c&aacute;c m&oacute;n phụ kiện như ốp lưng hay d&acirc;y đeo, cho d&ugrave; m&oacute;n phụ kiện của bạn l&agrave; m&agrave;u n&agrave;o đi chăng nữa th&igrave; kết quả sau khi trang bị vẫn sẽ cực kỳ ưng &yacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu bạc - iPhone 14 Pro Max\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054556.jpg\" title=\"Phiên bản màu bạc - iPhone 14 Pro Max\" /></a></p>\r\n\r\n<h4><strong>Đen - Space Black</strong></h4>\r\n\r\n<p>Từ trước cho đến n&agrave;y th&igrave; c&aacute;c d&ograve;ng điện thoại iPhone lu&ocirc;n c&oacute; sự xuất hiện của phi&ecirc;n bản m&agrave;u đen bởi độ h&uacute;t kh&aacute;ch của n&oacute; phải n&oacute;i l&agrave; cực kỳ đ&ocirc;ng đảo, với c&aacute;c t&iacute;n đồ thời trang theo những tone m&agrave;u tối hay những ai bị m&ecirc; hoặc bởi sự huyền b&iacute; m&agrave; m&agrave;u đen mang lại th&igrave; đ&acirc;y chắc hẳn l&agrave; phi&ecirc;n bản m&agrave; người d&ugrave;ng kh&oacute; l&ograve;ng bỏ qua của d&ograve;ng điện thoại iPhone 14 Pro Max.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg\" onclick=\"return false;\"><img alt=\"Phiên bản màu đen - iPhone 14 Pro Max\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-300922-054554.jpg\" title=\"Phiên bản màu đen - iPhone 14 Pro Max\" /></a></p>', 'IPHONE', 'Hoa Kì', '6.7\" - Tần số quét 120 Hz', '2796 x 1290 Pixels', 'Nặng 240 g', '4323 mAh', 'Apple A16 Bionic 6 nhân', '3.46 GHz', '128 GB', '6GB', 'Chính 48 MP & Phụ 12 MP, 12 MP', '12.0 MP', '1 Nano SIM & 1 eSIM', 'Wi-Fi hotspot  Wi-Fi 802.11 a/b/g/n/ac/ax  Wi-Fi MIMO', '5G', 'GPS  GLONASS  GALILEO  QZSS  BEIDOU', 'v5.3', 'Không', 'Apple GPU 5 nhân', 'Không', 'Lightning', 'Không', 'Lightning'),
(30, 27, 'Điện thoại Nokia G11 Plus 32GB', './upload/img/nokia-g11-plus-xam-1-1.jpg', 2900000, 'Mới', 5, '<h3>Sau khi ra mắt Nokia G11 v&agrave;o đầu năm 2022, nh&agrave; sản xuất Phần Lan đ&atilde; tiếp tục mang đến cho người d&ugrave;ng th&ecirc;m một sự lựa chọn tốt hơn đ&oacute; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/nokia-g11-plus\" target=\"_blank\" title=\"Nokia G11 Plus 32GB - Cập nhật thông tin, hình ảnh, đánh giá\" type=\"Nokia G11 Plus 32GB - Cập nhật thông tin, hình ảnh, đánh giá\">Nokia G11 Plus 32GB</a>. Một thiết bị sở hữu m&agrave;n h&igrave;nh 90 Hz, camera ch&iacute;nh 50 MP v&agrave; chạy hệ điều h&agrave;nh Android 12 với hai năm cập nhật phần mềm.</h3>\r\n\r\n<h3>M&agrave;n h&igrave;nh 90 Hz mượt m&agrave;, v&acirc;n tay tiện lợi</h3>\r\n\r\n<p>Nokia G11 Plus được trang bị m&agrave;n h&igrave;nh 6.51 inch, độ ph&acirc;n giải HD+ đủ để hiển thị sắc n&eacute;t mọi chi tiết của h&igrave;nh ảnh. Hơn nữa m&agrave;n h&igrave;nh c&ograve;n hỗ trợ tốc độ l&agrave;m tươi cao l&ecirc;n đến 90 Hz, phản hồi một c&aacute;ch mượt m&agrave; khi người d&ugrave;ng thực hiện c&aacute;c thao t&aacute;c cuộn v&agrave; lướt, đồng thời tạo lợi thế khi chơi game c&oacute; tốc độ khung h&igrave;nh cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030407.jpg\" onclick=\"return false;\"><img alt=\"Màn hình 90 Hz mượt mà, vân tay tiện lợi - Nokia G11 Plus 32GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030407.jpg\" title=\"Màn hình 90 Hz mượt mà, vân tay tiện lợi - Nokia G11 Plus 32GB\" /></a></p>\r\n\r\n<p>Để hỗ trợ người d&ugrave;ng c&oacute; thể mở kh&oacute;a nhanh thiết bị v&agrave; đảm bảo th&ocirc;ng tin c&aacute; nh&acirc;n được an to&agrave;n,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-nokia\" target=\"_blank\" title=\"Điện thoại smartphone Nokia chính hãng, giá rẻ, trả góp 0%\" type=\"Điện thoại smartphone Nokia chính hãng, giá rẻ, trả góp 0%\">Nokia</a>&nbsp;trang bị cho&nbsp;G11 Plus một cảm biến v&acirc;n tay ở mặt lưng. Một vị tr&iacute; l&yacute; tưởng m&agrave; đa số c&aacute;c nh&agrave; sản xuất chọn để trang bị tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Điện thoại, smartphone chính hãng giá rẻ, trả góp 0%\" type=\"Điện thoại, smartphone chính hãng giá rẻ, trả góp 0%\">điện thoại</a>.</p>\r\n\r\n<h3>Hiệu năng ổn định, sử dụng l&acirc;u d&agrave;i</h3>\r\n\r\n<p>Nokia G11 Plus được trang bị bộ vi xử l&yacute; Unisoc T606 k&egrave;m với đ&oacute;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-nokia-ram-3gb\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">điện thoại RAM 3 GB</a>&nbsp;v&agrave; bộ nhớ trong 32 GB, hỗ trợ mở rộng th&ecirc;m l&ecirc;n đến 512 GB bằng thẻ nhớ MicroSD một c&aacute;ch tiện dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030405.jpg\" onclick=\"return false;\"><img alt=\"Hiệu năng ổn định, sử dụng lâu dài - Nokia G11 Plus 32GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030405.jpg\" title=\"Hiệu năng ổn định, sử dụng lâu dài - Nokia G11 Plus 32GB\" /></a></p>\r\n\r\n<p>Đặc biệt nh&agrave; sản xuất Phần Lan c&ograve;n c&agrave;i đặt sẵn cho m&aacute;y hệ điều h&agrave;nh Android 12, cũng như hứa hẹn hai năm cập nhật Android lớn v&agrave; ba năm cập nhật bảo mật. Để người d&ugrave;ng an t&acirc;m sử dụng l&acirc;u d&agrave;i m&agrave; kh&ocirc;ng lo c&aacute;c vấn đề về t&iacute;nh năng v&agrave; độ bảo mật.</p>\r\n\r\n<h3>Camera độ ph&acirc;n giải cao</h3>\r\n\r\n<p>Một trong những điểm nổi bật nhất của&nbsp;Nokia G11 Plus l&agrave; camera ch&iacute;nh l&ecirc;n đến 50 MP, hỗ trợ c&ocirc;ng nghệ lấy n&eacute;t theo pha PDAF. Mặt lưng thiết bị c&ograve;n c&oacute; một ống k&iacute;nh đo độ s&acirc;u 2 MP để hỗ trợ tối đa cho người d&ugrave;ng khi chụp ảnh x&oacute;a ph&ocirc;ng, mặt trước m&aacute;y c&oacute; một cảm biến 8 MP.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030408.jpg\" onclick=\"return false;\"><img alt=\"Camera độ phân giải cao, pin dùng ba ngày - Nokia G11 Plus 32GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/281827/nokia-g11-plus-240722-030408.jpg\" title=\"Camera độ phân giải cao, pin dùng ba ngày - Nokia G11 Plus 32GB\" /></a></p>\r\n\r\n<p>Nh&igrave;n chung,&nbsp;Nokia G11 Plus l&agrave; một mẫu điện thoại c&oacute; những th&ocirc;ng số cấu h&igrave;nh tốt so với c&aacute;c sản phẩm nằm trong c&ugrave;ng ph&acirc;n kh&uacute;c. Thiết bị c&oacute; m&agrave;n h&igrave;nh 90 Hz mượt m&agrave;, camera 50 MP chụp ảnh với độ sắc n&eacute;t cao, pi</p>', 'NOKIA', 'Hoa Kì', '6.51\" - Tần số quét 90 Hz', 'HD+ (720 x 1600 Pixels)', 'Nặng 192 g', '5000 mAh', 'Unisoc T606 8 nhân', '1.6 GHz', '32 GB', '3 GB', 'Chính 50 MP & Phụ 2 MP', '8 MP', '2 Nano SIM', 'Wi-Fi 802.11 a/b/g/n/acDual-band (2.4 GHz/5 GHz)', 'Có', 'GPS', 'v5.0', 'Không', 'Mali-G57', 'Không', 'Type-C', 'Không', '3.5 mm');
INSERT INTO `sanpham` (`id`, `id_phanloai`, `ten`, `img`, `giaban`, `tinhtrang`, `soluong`, `posts`, `thuonghieu`, `xuatxu`, `kichthuocman`, `dophangiai`, `trongluong`, `dungluongpin`, `cpu`, `tocdocpu`, `rom`, `ram`, `camerasau`, `cameratruoc`, `loaisim`, `wifi`, `hotro4g`, `gps`, `bluetooth`, `thenho`, `gpu`, `phukien`, `congsac`, `pin`, `jacktaynghe`) VALUES
(31, 37, 'Điện thoại OPPO Reno8 Pro 5G', './upload/img/oppo-reno8-pro-xanh-1.jpg', 18000000, 'Mới', 13, '<h3><a href=\"https://www.thegioididong.com/dtdd/oppo-reno8-pro\" target=\"_blank\" title=\"Tham khảo điện thoại OPPO Reno8 Pro 5G đang kinh doanh tại Thế Giới Di Động\">OPPO Reno8 Pro 5G</a>&nbsp;l&agrave; chiếc điện thoại cao cấp được nh&agrave; OPPO ra mắt v&agrave;o thời điểm 09/2022, m&aacute;y hướng đến sự ho&agrave;n thiện cao cấp ở phần thiết kế c&ugrave;ng khả năng quay chụp chuy&ecirc;n nghiệp nhờ trang bị vi xử l&yacute; h&igrave;nh ảnh MariSilicon X chuy&ecirc;n dụng.</h3>\r\n\r\n<h3>D&aacute;ng vẻ cao cấp sang trọng</h3>\r\n\r\n<p>Lần n&agrave;y nh&agrave; OPPO mang đến cho ch&uacute;ng ta một chiếc điện thoại c&oacute; thiết kế đặc biệt, m&aacute;y sở hữu một diện mạo kh&aacute;c hẳn với những chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo-reno\" target=\"_blank\" title=\"Tham khảo một số mẫu điện thoại đang kinh doanh tại Thế Giới Di Động \">điện thoại OPPO Reno</a>&nbsp;trước đ&acirc;y, c&aacute;ch thiết kế n&agrave;y đ&atilde; l&agrave;m m&igrave;nh li&ecirc;n tưởng đến chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-find-x5-pro\" target=\"_blank\" title=\"Tham khảo OPPO Find X5 Pro đang kinh doanh tại Thế Giới Di Động\">OPPO Find X5 Pro</a>&nbsp;được ra mắt trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093856.jpg\" onclick=\"return false;\"><img alt=\"Ngoại hình thời trang - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093856.jpg\" title=\"Ngoại hình thời trang - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>Mặt lưng của điện thoại l&agrave;m từ k&iacute;nh v&agrave; được ho&agrave;n thiện b&oacute;ng gi&uacute;p m&aacute;y trở n&ecirc;n nổi bật hơn, phần n&agrave;y b&oacute;ng bẩy đến mức m&igrave;nh c&oacute; thể soi gương một c&aacute;ch trực tiếp đối với phi&ecirc;n bản m&agrave;u đen.&nbsp;Tuy nhi&ecirc;n đ&acirc;y cũng c&oacute; thể coi như một điểm hạn chế bởi mặt lưng m&aacute;y kh&aacute; dễ b&aacute;m dấu v&acirc;n tay.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-094241.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng sáng bóng - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-094241.jpg\" title=\"Mặt lưng sáng bóng - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>Mặt lưng của Reno8 Pro ch&iacute;nh l&agrave; k&iacute;nh cường lực Gorilla Glass 5, loại vật liệu n&agrave;y c&oacute; khả năng hạn chế xước kh&aacute; tốt gi&uacute;p cho phần mặt lưng m&aacute;y được trở n&ecirc;n bền bỉ hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093906.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng kính cường lực - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093906.jpg\" title=\"Mặt lưng kính cường lực - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>Điểm m&igrave;nh ấn tượng nhất ở phần thiết kế l&agrave; tạo h&igrave;nh bo cong tại vị tr&iacute; tiếp gi&aacute;p giữa mặt lưng v&agrave; cụm camera. Điều n&agrave;y gi&uacute;p cho m&aacute;y c&oacute; được c&aacute;i nh&igrave;n liền mạch v&agrave; đồng nhất hơn, cảm gi&aacute;c như m&aacute;y được đ&uacute;c từ một khối, nh&igrave;n cực kỳ chắc chắn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093912.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera độc đáo - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093912.jpg\" title=\"Cụm camera độc đáo - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; bộ khung của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\" title=\"Tham khảo điện thoại điện thoại OPPO đang kinh doanh tại Thế Giới Di Động\">điện thoại OPPO</a>&nbsp;n&agrave;y&nbsp;c&ograve;n&nbsp;được ho&agrave;n thiện từ kim loại gi&uacute;p cho Reno8 Pro tăng th&ecirc;m phần bền bỉ, gi&uacute;p cố định phần th&acirc;n m&aacute;y được tốt hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093914.jpg\" onclick=\"return false;\"><img alt=\"Khung viền chắc chắn - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093914.jpg\" title=\"Khung viền chắc chắn - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>Đến phần mặt trước, OPPO trang bị một m&agrave;n h&igrave;nh c&oacute; thiết kế dạng đục lỗ v&agrave; được ho&agrave;n thiện phẳng, so với những d&ograve;ng Reno trước đ&acirc;y th&igrave; Reno8 Pro được xem như thiết bị c&oacute; viền mỏng nhất m&agrave; m&igrave;nh từng sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093915.jpg\" onclick=\"return false;\"><img alt=\"Cạnh viền cực mỏng - OPPO Reno8 Pro 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-291122-093915.jpg\" title=\"Cạnh viền cực mỏng - OPPO Reno8 Pro 5G\" /></a></p>\r\n\r\n<p>Viền m&agrave;n h&igrave;nh tr&ecirc;n Reno8 Pro c&oacute; k&iacute;ch thước gần như bằng nhau, điều n&agrave;y gi&uacute;p m&agrave;n h&igrave;nh trở n&ecirc;n c&acirc;n đối hơn, cảm gi&aacute;c khi m&igrave;nh nh&igrave;n v&agrave;o rất dễ chịu, xem phim hay chơi game cũng v&ocirc; c&ugrave;ng đ&atilde; mắt.</p>', 'OPPO', 'Trung Quốc', '6.7\" - Tần số quét 120 Hz', 'Full HD+ (1080 x 2412 Pixels)', 'Nặng 183 g', '4500 mAh', 'MediaTek Dimensity 8100 Max 8 nhân', '2.85 GHz', '256 GB', '12 GB', 'Chính 50 MP & Phụ 8 MP, 2 MP', '32 MP', '2 Nano SIM', 'Dual-band (2.4 GHz/5 GHz)Wi-Fi 802.11 a/b/g/n/ac/ax', '5G', 'GLONASS  GPS  GALILEO  QZSS  BEIDOU', 'v5.3', 'Không', 'Mali G610 MC6', 'Không', 'Type-C', 'Không', 'Type-C');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sodiachi`
--

CREATE TABLE `sodiachi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `address` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sodiachi`
--

INSERT INTO `sodiachi` (`id`, `id_user`, `name`, `phonenumber`, `address`) VALUES
(15, 37, 'Nguyen Duc Loc', '0342433432', 'Duong 3/2, Ki tuc xa A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdonhang`
--

CREATE TABLE `tinhtrangdonhang` (
  `id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `thanhtoan` int(11) NOT NULL,
  `hinhthucthanhtoan` int(11) NOT NULL,
  `diachigiaohang` varchar(2000) NOT NULL,
  `tinhtrangthanhtoan` int(11) NOT NULL,
  `sanphham` varchar(1000) NOT NULL,
  `ngaymua` varchar(20) NOT NULL,
  `duyet` int(11) NOT NULL,
  `ttgiaohang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `noidungTT` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdonhang`
--

INSERT INTO `tinhtrangdonhang` (`id`, `soluong`, `gia`, `thanhtoan`, `hinhthucthanhtoan`, `diachigiaohang`, `tinhtrangthanhtoan`, `sanphham`, `ngaymua`, `duyet`, `ttgiaohang`, `id_user`, `noidungTT`) VALUES
(44, 1, 4549000, 4549000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 0, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', '30/10/2022', 0, 1, 37, 'THANHTOAN MHD374549000'),
(45, 1, 6000000, 6000000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 0, 'Điện thoại Nokia G50', '30/10/2022', 0, 1, 37, 'THANHTOAN MHD376000000'),
(47, 1, 6545000, 6545000, 1, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 1, 'Điện thoại Xiaomi Poco X3 Pro Chính Hãng', '30/10/2022', 0, 1, 37, 'THANHTOAN MHD376545000'),
(48, 1, 4549000, 4549000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 0, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', '19/11/2022', 0, 1, 37, 'THANHTOAN MHD374549000'),
(49, 2, 5000000, 10000000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 0, 'Điện thoại Samsung Galaxy A5', '19/11/2022', 0, 0, 37, 'THANHTOAN MHD3710000000'),
(50, 2, 4549000, 9098000, 0, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 0, 'Điện thoại iPhone 13 Pro Max 1TB VN/A', '22/11/2022', 0, 0, 37, 'THANHTOAN MHD379098000'),
(51, 1, 5000000, 5000000, 2, 'Nguyen Duc Loc 0342433432, Duong 3/2, Ki tuc xa A', 1, 'Điện thoại Samsung Galaxy A5', '22/11/2022', 0, 1, 37, 'THANHTOAN MHD375000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(350) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phonenumber`, `address`) VALUES
(0, 'admin', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Nguyễn Đức Lộc', '03471942247', 'Quận Ninh Kiều, Thành phố Cần Thơ'),
(37, 'ndloc0109@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'Nguyen Duc Loc', '0342433432', 'Duong 3/2, Ki tuc xa A');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsumuahang`
--
ALTER TABLE `lichsumuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sodiachi`
--
ALTER TABLE `sodiachi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `name` (`id`,`email`,`password`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `lichsumuahang`
--
ALTER TABLE `lichsumuahang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `sodiachi`
--
ALTER TABLE `sodiachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdonhang`
--
ALTER TABLE `tinhtrangdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
