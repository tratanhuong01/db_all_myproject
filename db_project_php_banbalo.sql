-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 31, 2021 lúc 06:53 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banbalo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddanhmuc` varchar(10) NOT NULL,
  `tendanhmuc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddanhmuc`, `tendanhmuc`) VALUES
('BALODC', 'Balo Đeo Chéo'),
('BALODL', 'Balo Du Lịch'),
('BALOHS', 'Balo Học Sinh'),
('BALOLT', 'Balo Laptop'),
('BALOMA', 'Balo Máy Ảnh'),
('BALOTT', 'Balo thể thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` varchar(10) NOT NULL,
  `iddanhmuc` varchar(10) DEFAULT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `pic` varchar(20) DEFAULT NULL,
  `motasp1` varchar(1000) DEFAULT NULL,
  `motasp2` varchar(1000) DEFAULT NULL,
  `kieu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddanhmuc`, `tensp`, `gia`, `pic`, `motasp1`, `motasp2`, `kieu`) VALUES
('SPBALO100', 'BALOHS', 'Balo Jansport Black Label Backpack M T60G01H', 950000, 'SPBALO100', 'Những mẫu balo thuộc thương hiệu Jansport luôn mang phong cách thể thao khỏe khoắn, năng động. Với balo Jansport Black Label Backpack M T60G01H không ngoại lệ, sản phẩm mang sắc xanh tươi trẻ phù hợp với đối tượng học sinh, sinh viên, nhân viên.', 'Balo được làm từ vật liệu Polyester chống thấm nước tối đa, chống bám bụi bẩn, chống độ ẩm. Thiết kế nhiều ngăn cho sự tiện dụng tối đa, một ngăn chính rộng rãi chứa đầy đủ sách vở. Ngăn phụ kiện ở mặt trước phù hợp để chứa những thiết bị công nghệ.\r\n\r\nQuai đeo được trang bị miếng đệm giúp giảm sốc, độ dài điều chỉnh phù hợp với chiều cao từng người. Trọng lượng siêu nhẹ chỉ 0.3 kg nhưng sức chứa tối đa lên đến 25L.', 0),
('SPBALO101', 'BALOHS', 'Balo Jansport Foxhole Bag M JS0A2T32008', 1499000, 'SPBALO101', 'Dòng sản phẩm thời trang của thương hiệu Jansport mang đến sự lựa chọn hoàn hảo cho chuyến đi. Với thiết kế chắc chắn, Balo Jansport Foxhole Bag M JS0A2T32008 thích hợp để bạn đi học, đi làm hoặc dã ngoại. Balo hỗ trợ đựng máy tính xách tay lên đến 15 inch, máy tính bảng 10 inch an toàn.', 'Đặc điểm nổi bật của sản phẩm:\r\n\r\n– Chất liệu đặc biệt: Polyester 600D cao cấp, xử lý chống thấm tối đa rất tốt ở bề mặt bên trong. Đặc biệt chất liệu này còn có điểm ưu dễ làm sạch.\r\n\r\n– Thiết kế gọn nhẹ, trọng lượng chỉ 300g nhưng có thể đựng được nhiều đồ hơn với cùng thể tích 25L.\r\n\r\n– Quai đeo được thiết kế với nấc khóa đặc biệt giúp bạn linh hoạt điều chỉnh độ dài của quai cho phù hợp với cơ thể.\r\n\r\n– Phần lưng của balo được trang bị 1 lớp đệm êm giúp tăng sự thoải mái cho người mang.\r\n\r\n– Ngăn chính chứa sách vở, quần áo rộng rãi; ngăn phụ kiện thiết kế tiện ích.', 0),
('SPBALO102', 'BALOHS', 'Balo Jansport Right Pack Digital Edition M JS00T58T0BK', 1899000, 'SPBALO102', NULL, NULL, 3),
('SPBALO103', 'BALOHS', 'Balo Jansport Superbreak Backpack M JS00T50101F', 950000, 'SPBALO103', NULL, NULL, 2),
('SPBALO104', 'BALOHS', 'Balo Mikkor Ducer Backpack DBP16 M Bronze Grey', 550000, 'SPBALO104', 'Balo Mikkor Ducer Backpack DBP16 M Bronze Grey nổi bật bởi thiết kế trẻ trung, năng động, chất liệu cao cấp độ bền cao kháng nước tốt cũng như kết hợp nhiều trung màu trung tính giúp khẳng định sự mạnh mẽ cho các bạn nam. Ngoài ra, được trang bị nhiều tiện nghi như thiết kế nhiều ngăn, gọn nhẹ, balo là người bạn đồng hành tuyệt vời kể cả khi đi chơi, đi học hay đi du lịch.', 'Chất liệu bền đẹp, cao cấp<br>\r\n\r\n– Sản phẩm được làm từ chất liệu bằng vải dù chắc chắn và bền đẹp theo thời gian, khó phai màu. Đáy balo phối da tổng hợp mềm mại, dễ lau chùi<br>\r\n\r\n– Bên trong, balo được lót lớp vải 210D Nylon tráng PU tăng khả năng chống thấm gấp đôi.<br>\r\n\r\nThiết kế tiện dụng<br>\r\n\r\n– Balo Mikkor Ducer Backpack được thiết kế với với 1 ngăn chính đựng laptop và 1 ngăn phụ trợ. Ngăn chính có diện tích rộng rãi có thế đủ chỗ cho quấn áo, sách vở và có thể hỗ trợ mang theo laptop… đáp ứng nhu cầu đựng được nhiều đồ dùng của bạn mỗi khi đi lại hay trong những chuyến đi du lịch tới những vùng đất mới.<br>\r\n\r\n– Ngăn bên trong chống sốc giúp bạn bảo vệ laptop cũng như lưu trữ adapter, pin dự trữ,máy tính bảng, văn phòng phẩm, danh thiếp và điện thoại di động một cách an toàn và hợp lý.<br>', 0),
('SPBALO105', 'BALODC', 'Balo đeo chéo Under Armour Compel Sling 2.0', 380000, 'SPBALO105', 'Balo đeo chéo Under Armour Compel Sling 2.0 là mẫu balo 1 quai với thiết kế trẻ trung có thể sử dụng cho laptop 14inch. Balo đưuọc trang bị nhiều ngăn đựng đồ, cùng chất liệu vải chống nước cực tốt, khóa kéo trơn trượt và an toàn, rất phù hợp khi bạn sử dụng để đi học, đi chơi hoặc đi du lịch. Với màu đen đặc trưng cùng logo và dòng chữ màu trắng nổi bật, mẫu túi đeo chéo Under Armour có thể phù hợp với cả nam và nữ.', 'Under Armour Compel Sling 2.0 sử dụng chất liệu vải 100% Polyester có khả năng chống nước và chống bám bụi cực tốt. Dễ dàng vệ sinh sạch sẽ khi cần thiết. Chất liệu vải siêu bền, không bay màu theo thời gian.\r\nBalo 1 quai Under Armour 2.0 được chia làm 3 ngăn đựng đồ khác nhau trong đó có ngăn chính có thể sử dụng để đựng laptop 14inch hoặc các dòng macbook và ultrabook 15inch cùng nhiều đồ dùng khác. Mặt trước của balo là 2 ngăn nhỏ có khóa kéo sử dụng để đựng phụ kiện như điện thoại, sổ tay, chìa khóa, thẻ xe và các loại giấy tờ. Bên hông của túi đeo chéo được trang bị túi lưới đựng bình nước rất tiện lợi. Ngoài ra, quai đeo còn được trang bị 1 ngăn nhỏ có thể đựng chìa khóa hoặc thẻ xe, rất an toàn và tiện lợi cho người sử dụng.\r\nQuai đeo của túi đeo chéo Under Armour Compel Sling sử dụng công nghệ HeatGear® rất êm ái cùng khả năng thoát mồ hôi tốt, giúp bạn luôn luôn cảm thấy thoải mái nhất khi đeo.', 3),
('SPBALO106', 'BALODC', 'Balo Đeo chéo Kavu Rope Bag Black BACKPACK Mã BK83', 290000, 'SPBALO106', 'Chắc rằng những bạn trẻ sành điệu là người quan tâm tới những xu hướng thời trang mới. Vậy bạn hãy điểm lại xem tủ đồ của mình đã có những chiếc balo đeo chéo mới nhất mùa này chưa? Đặc biệt những mẫu balo đeo chéo KAVU có quai đeo sẽ tiện lợi hơn. Bạn có thể đeo trong từng điều kiện nhất là khi di chuyển đi gặp gỡ mọi người. Hơn nữa, màu sắc của balo phù hợp sẽ tăng thêm sự thu hút cho trang phục và diện mạo của bạn. Với các bạn trẻ chiếc balo không chỉ nhấn mạnh vào hiệu năng chứa đồ phục vụ cho cả công việc và dạo phố thì nên chọn những loại có kích thước đủ để chứa những vật dụng cần thiết hay chiếc ipad cá nhân của mình.', 'Trong ngày hôm nay, balotuithethao.com sẽ giới thiệu đến các bạn một thiết kế phụ kiện mới thời trang đến từ thương hiệu KAVU– Balo Đeo chéo Kavu Rope Bag Black BACKPACK Mã BK119 cùng xem sản phẩm này có gì nổi bật nhé!', 0),
('SPBALO107', 'BALODC', 'Túi đeo chéo kết hợp Ba Lô thời trang Haras HR225 Xám', 570000, 'SPBALO107', 'Nếu không trang bị cho mình một sản phẩm Túi và Balo chất lượng, có cấu trúc tốt, độ bền bỉ cao thì làm sao bạn có thể tự tin để mang theo trong sốt hành trình? Ngược lại, sự thoải mái và tin tưởng tuyệt đối vào chất lượng sản phẩm sẽ mang đến cho bạn một hình ảnh đẹp, một tinh thần phơi phới khi tham gia bất kì hoạt động nào. Đó không phải là một trong những yêu tố khiến bạn trở nên nổi bật hơn nhờ sự trợ lực âm thầm của người bạn balo bên cạnh mình sao? Đừng ngần ngại gì, hãy đến với HARAS, HARAS sẽ giúp bạn tạo nên phong cách ấy !', 'Đặc điểm nổi bật<br>\r\nKích thước gọn gàng<br>\r\nKích thước không quá lớn nhưng kích thước đủ để bạn chứa tất cả những vật dụng cần thiết tiện lợi khi đi du lịch, chơi thể thao, đi học, đi làm… Những ngăn nhỏ giúp bạn thỏa mái để những vật nhỏ như chìa khóa, cart, thẻ ATM.\r\nThiết kế hiện đại, tiện dụng<br>\r\nThiết kế mang hơi hướng hiện đại, vừa đơn giản, vừa sang trọng. Sản phẩm chắc chắn sẽ khiến bạn trở nên tươm tất, phong cách và đẳng cấp khi đi du lịch, đi chơi thể thao hay đi học.<br>\r\nChất liệu chuyên dụng cao cấp<br>\r\nTúi đeo HARAS được gia công bằng chất liệu Da PU đảm bảo độ bền chắc theo thời gian. Loại chất liệu này góp phần hạn chế tối đa tình trạng sờn cũ, phai màu sau một thời gian dài sử dụng.<br>', 1),
('SPBALO108', 'BALODC', 'Balo Seliux F8 Crusader Backpack M Black', 589000, 'SPBALO108', 'Balo là một phụ kiện cần thiết với tất cả mọi người bởi nó không chỉ giúp chứa đựng sách vở, vật dụng cá nhân mà còn thể hiện phong cách thời trang, style riêng của mỗi người. Sở hữu một chiếc balo đi học nhỏ gọn nhẹ luôn là sự lựa chọn hoàn hảo thay cho chiếc balo cồng kềnh và vướng bận. Và balo Seliux F6 Skyray Backpack M Black/Red là một item balo không thể bỏ qua nếu đang tìm kiếm một “người bạn đồng hành” sở hữu tất cả các tiện ích như trên.', 'Balo được thiết kế nhiều ngăn, ngăn chính lớn giúp bạn thoải mái sắp xếp đồ vật một cách khoa học nhất. Tích hợp đó là một ngăn phụ đựng laptop 15 inch có lót đệm chống sốc cao cấp giúp bảo vệ laptop tránh khỏi những va đập gây hư hỏng.', 2),
('SPBALO109', 'BALODC', 'Balo Seliux M4 Sherman S Multicam', 289000, 'SPBALO109', 'Kết hợp tông màu lính cùng kiểu dáng hiện đại, thời trang, điểm nhấn là logo màu đỏ nổi bật tạo nên nét cuốn hút riêng cho Balo Seliux M4 Sherman S Multicam. Balo có thiết kế nhiều ngăn tiện dụng giúp người dùng có thể dễ dàng sắp xếp vật dụng cần thiết một cách khoa học nhất, thiết kế ngăn phụ có lót đệm chống sốc cao cấp giúp bảo vệ máy tính xách tay tránh những va đập gây hư hỏng. Chất liệu balo có khả năng trượt nước tuyệt đối, giúp bảo vệ đồ dùng bên trong bất chấp mọi điều kiện thời tiết.', 'Seliux là thương hiệu quen thuộc trên thị trường ba lô, túi xách. Có xuất xứ từ Việt Nam nhưng phương châm “chất lượng sản phẩm được đặt lên trên hết”, sản phẩm của Seliux ngày càng khẳng định vị trí của mình trong lòng người sử dụng. Cùng với những thiết kế đa dạng lấy cảm hứng từ một thị trấn của Mỹ, mọi sản phẩm của Seliux đều được trau chuốt đến từng đường may để phù hợp với mục đích sử dụng của người tiêu dùng. Từ những mẫu ba lô bền chắc dành riêng cho bạn trẻ “mê phượt”, cho đến những chiếc ba lô đơn giản thuận tiện cho sinh hoạt thường ngày, Seliux luôn mang lại sự hài lòng cho ngay cả khách hàng khó tính nhất.', 0),
('SPBALO110', 'BALODC', 'Balo Seliux M4 Sherman S Red/Grey', 299000, 'SPBALO110', 'Bảo hành : 30 năm<br>\r\nĐổi trả 365 ngày nếu chưa sử dụng.<br>\r\nĐổi mới sau bảo hành nếu khách hàng không hài lòng.<br>\r\nĐổi mới nếu sản phẩm không thể sửa chữa.<br>\r\nMiễn phí vận chuyển sản phẩm bảo hành.<br>', 'Vải mặt chính: 600D Polyester, PU 80mg chống thấm<br>\r\nVải lót bên trong: 420D Nylon Fluorescent, chống thấm<br>\r\nVải chống thấm nước tuyệt đối, Bảo hành 5 năm<br>\r\nKích thước:  40cmx22cmx14cm<br>\r\nNgăn ngoài thao tác nhanh<br>\r\nNgăn trong tiện dụng với ngăn riêng cho máy tính bảng và đồ cá nhân<br>', 1),
('SPBALO111', 'BALOLT', 'Balo Seliux F2 Banshee Backpack M Black/Grey', 579000, 'SPBALO111', 'Balo là phụ kiện quan trọng với nhiều bạn trẻ, không chỉ giúp chứa đựng những vật dụng cần thiết mà còn thể hiện phong cách thời trang, style riêng biệt của mỗi cá nhân. Một trong các mẫu balo sành điệu đang được ưa chuộng nhất hiện này là Balo Seliux F2 Banshee Backpack M Black/Grey. Sản phẩm dung hòa giữa các yếu tố: thương hiệu uy tín, chất liệu bền đẹp, thiết kế nổi bật, hướng đến phong cách năng động và trẻ trung.', 'Kế thừa truyền thống sản xuất của thương hiệu balo Seliux, Model F2 Banshee Backpack M Black/Grey vẫn mang kiểu dáng thiết kế tinh tế, trau chuốt trong từng đường may. Sản phẩm hướng đến đối tượng học sinh, sinh viên, nhân viên văn phòng, giới trẻ thích đi du lịch hoặc đam mê phượt. Từ khi xuất xưởng cho đến nay, chiếc balo đã làm hài lòng rất nhiều bạn trẻ.', 2),
('SPBALO112', 'BALOLT', 'Balo Seliux F2 Banshee Backpack M Black/Red', 579000, 'SPBALO112', 'Nếu bạn là người có lối sống hiện đại, yêu thích sự trẻ trung, năng động, phá cách và muốn khẳng định phong cách thời trang riêng thì chắc chắn không thể bỏ qua mẫu Balo Seliux F2 Banshee Backpack M Black/Red. Balo nổi bật bởi những đường nét thiết kế cơ bản, khỏe khoắn đơn giản nhưng vô cùng thanh lịch và tinh tế. Cùng với đó là sự kết hợp hài hòa màu sắc giúp tạo nên sự cuốn hút riêng cho sản phẩm này.\r\n\r\nThiết kế gồm nhiều ngăn gồm ngăn chính có dung tích chứa lớn giúp người dùng có thể thoải mái sắp xếp vật dụng cá nhân, phụ kiện một cách khoa học nhất, một ngăn phụ có thiết kế đệm chống sốc cao cấp giúp bảo vệ laptop tránh những va đập gây hư hỏng và túi bên hông dùng để đựng những vật dụng nhỏ bé, tạo sự dễ dàng và thuận tiện khi lấy ra.\r\n\r\n', 'Nguồn gốc uy tín, bền bỉ<br>\r\n– Sản phẩm được sản xuất từ thương hiệu nổi tiếng Seliux, chế độ bảo hành 30 năm đối với khóa và sụt chỉ, đảm bảo sự tin cậy cũng như chất lượng khi sử dụng.<br>\r\n– Ngoài ra, chất liệu nylon chống thấm nước cũng giúp balo “ghi điểm” trong mắt người dùng hơn, giúp bạn hoàn toàn an tâm khi sử dụng.<br>\r\nChất liệu cao cấp, bền đẹp<br>\r\n– Balo Seliux F2 Banshee Backpack được làm từ chất liệu vải cao cấp: vải mặt chính 1000D Canvas hỗ trợ chống thấm, vải lót bên trong 420D Nylon Fluorescent dày chắc, cứng cáp, chống bám bụi, chống ẩm mốc, đem lại độ bền cao.<br>\r\n– Chất liệu vải tốt kết hợp công nghệ may tiên tiến tạo ra những lớp mút đàn hồi ở ngăn chứa bên trong, giúp chống sốc, đây thực sự là chiếc balo Laptop 15” hoàn hảo.<br>', 3),
('SPBALO113', 'BALOLT', 'Balo Seliux F6 Skyray Backpack M Black', 579000, 'SPBALO113', 'Balo Seliux F6 Skyray Backpack M Black với thiết kế một ngăn chính lớn, một ngăn phụ đựng máy tính xách tay lên đến 15” cùng ba ngăn đựng phụ kiện phía trước, cho phép bạn thoải mái mang theo vật dụng cần thiết khi ra ngoài. Sản phẩm có màu đen cá tính, thích hợp là chiếc balo dành cho nữ và nam đều được.', 'Thông số kỹ thuật<br>\r\nKích thước sản phẩm : 48 x 34 x 17 Cm<br>\r\nThể Tích : 27L<br>\r\nTrọng lượng túi : 650 gram<br>\r\nThời gian bảo hành : 30 năm<br>\r\nVải mặt chính: 1000D Canvas hỗ trợ chống thấm<br>\r\nVải lót bên trong: 420D Nylon Fluorescent, hỗ trợ chống thấm<br>', 2),
('SPBALO114', 'BALODL', 'Balo Mikkor Pretty Boy Backpack PBBP M Blue', 499000, 'SPBALO114', 'Là một trong những item balo được giới trẻ ưa chuộng của dòng Mikkor, balo Mikkor Pretty Boy Backpack PBBP M Blue nổi bật với những đường nét thiết kế đơn giản nhưng vẫn toát lên sự trẻ trung, năng động và đậm chất thời trang. Nếu bạn là một người có lối sống hiện đại, yêu thích sự thay đổi phá cách thì chắc chắn không thể bỏ qua mẫu balo cực chất này.\r\n\r\nKhông chỉ được yêu thích bởi kiểu dáng, balo Mikkor còn được ưa chuộng bởi thiết kết nhiều ngăn giúp người dùng có thể thoải mái sắp xếp đồ vật một cách khoa học nhất. Ngoài ra, balo còn tích hợp ngăn đựng laptop với hệ thống chống sốc cao cấp bảo vệ laptop khi rơi, va chạm.', 'Với nhiều ưu điểm về kiểu dáng và tiện nghi, balo không chỉ phù hợp là một chiếc balo đi học mà còn được sử dụng như một chiếc balo du lịch, leo núi đều được. Balo Mikkor đều phù hợp với cả bạn nam và nữ, kiểu dáng thiết kế năng động, trẻ trung, phù hợp với nhiều nhu cầu sử dụng.', 2),
('SPBALO115', 'BALODL', 'Balo Mikkor Pretty Boy Backpack PBBP M Green', 499000, 'SPBALO115', 'Balo Mikkor Pretty Boy Backpack PBBP M Green là một trong những item balo được đông đảo giới trẻ ưa chuộng bới thiết kế nhỏ gọn, bắt mắt nhưng vẫn đảm bảo sự tiện lợi và vô cùng thoải mái. Không theo đuổi form đứng, balo Mikkor Nomad tăng diện tích sử dụng tối đa bằng kết cấu phần dưới có kích thước mở rộng hơn so với phần trên. Bên cạnh đó, với tông màu xanh lá cây nổi bật, được nhấn mạnh bằng dây kéo màu xanh pastel có bản dày càng giúp balo thêm phần cuốn hút.', 'Ngoài ra, với sự chăm chút tỉ mỉ đến từng đường kim mũi chỉ, nổi bật trên nền đen, balo mang đến sự trẻ trung và vô cùng sành điệu. Ngoài ra, chất liệu vải có độ bền cao, chống thấm nước tuyệt đối giúp người sử dụng bảo vệ vật dụng bên trong khi gặp những cơn mưa bất thường.\r\n\r\nBalo Mikkor còn được tích hợp thêm tính năng là một chiếc balo laptop cũng như cực phù hợp cho các bạn học sinh, sinh viên tận dụng làm balo học sinh hay balo du lịch – leo núi đều được. Balo Mikkor đều phù hợp với cả bạn nam và nữ, kiểu dáng thiết kế năng động, trẻ trung, phù hợp với nhiều nhu cầu sử dụng.', 1),
('SPBALO116', 'BALODL', '\r\nBalo Mikkor Pretty Boy Backpack PBBP M Royal Blue', 599000, 'SPBALO116', 'Mikkor Pretty Boy Backpack PBBP M Royal blue là một trong những item balo được giới trẻ yêu thích bởi những đường nét thiết kế trẻ trung nhưng vẫn toát lên sự năng động và đậm chất thời trang.  Không chỉ vậy, với kích thước 45 x 30 x 10 cm, thiết kế nhiều ngăn, đặc biệt tích hợp ngăn đựng laptop có hệ thống chống sốc cao, balo thích hợp cho nhiều mục đích sử dụng khác nhau như đi chơi, đi học hay đi du lịch.', 'Đặc điểm nổi bật của sản phẩm<br>\r\nChất liệu bền đẹp<br>\r\n– Được làm từ chất liệu bằng vải chính là 600D Kodura tráng PU chống thấm, balo vô cùng chắc chắn và bền đẹp theo thời gian, khó phai màu. Bên trong, balo được lót lớp vải 210D Nylon tráng PU tăng khả năng chống thấm gấp đôi.<br>\r\nThiết kế tiện dụng<br>\r\n– Balo Mikkor Pretty Boy Backpack được thiết kế với với 1 ngăn chính và 1 ngăn phụ trợ. Ngăn chính có diện tích rộng rãi có thế đủ chỗ cho quấn áo, sách vở và có thể hỗ trợ mang theo laptop… đáp ứng nhu cầu đựng được nhiều đồ dùng của bạn mỗi khi đi lại hay trong những chuyến đi du lịch tới những vùng đất mới.<br>', 3),
('SPBALO117', 'BALODL', 'Balo Mikkor Pretty Boy Backpack PBBP M Sand', 550000, 'SPBALO117', 'Mikkor Pretty Boy Backpack PBBP M Sand là một trong những mẫu balo thuộc thương hiệu Mikkor đang được giới trẻ ưa chuộng bởi những đường nét thiết kế đơn giản nhưng vô cùng trẻ trung, cá tính và năng động. Bên cạnh đó, kiểu dáng thời trang cùng sự kết hợp hài hòa về màu sắc cũng là một trong những ưu điểm của mẫu balo này. Balo có kích thước lớn 45 x 30 x 10 cm giúp bạn có thể thoải mái đựng những vật dụng cần thiết. Không chỉ vậy, với mẫu balo này bạn không chỉ có thể sử dụng đi chơi,  đi học mà còn cả đi du lịch.', NULL, 2),
('SPBALO118', 'BALOMA', 'Balo Benro Cool Walker Cw 300N (M) Black', 3051000, 'SPBALO118', 'Với balo Benro Cool Walker Cw 300N (M) Black, bạn có thể đi đến bất cứ nơi đâu để “săn” ảnh. Được thiết kế tối ưu mang đến nhiều không gian chứa đồ đạc hơn, sản phẩm được rất nhiều nhiếp ảnh gia chuyên nghiệp lựa chọn. Balo có nhiều ngăn cho phép bạn đựng vừa 1 máy DSLR, 3 ống kính, 1 đèn flash và các phụ kiện khác.\r\n\r\nBenro là thương hiệu nổi tiếng trên toàn thế giới với dòng sản phẩm balo dành riêng cho máy ảnh. Hãng có trụ sở chính tại Quảng Đông (Trung Quốc) và hiện có mặt tại hơn 40 chi nhánh khác trên toàn thế giới. Do đó với những sản phẩm balo Benro bạn hoàn toàn yên tâm về chất lượng. Mỗi một sản phẩm trên thị trường đều đã trải qua quá trình kiểm định chất lượng gắt gao, mang mẫu thiết kế tiện dụng cho các nhiếp ảnh gia tác nghiệp.', 'TÍNH NĂNG NỔI BẬT<br>\r\nTất cả trong một: Ba lô máy ảnh được thiết kế để mang lại sự tiện nghi nhất cho người sử dụng. Sản phẩm gồm ngăn đựng phụ kiện chính, ngăn đựng phụ kiện bên hông, ngăn đựng máy tính bảng, ngăn chứa ống kính và máy ảnh đựng 1 máy DSLR, 3 ống kính, 1 đèn flash vô cùng tiện lợi.<br>\r\n>br?\r\nThiết kế thông minh: Thiết kế quai đeo chắc chắn, có đệm êm bên cạnh mặt lưng thiết kế thoáng khí tạo cảm giác thoải mái khi đeo trên lưng. Bên cạnh đó, ngăn chứa máy ảnh có thiết kế vách ngăn linh hoạt có đệm dày, chống va đập hiệu quả. Người dùng có thể lấy nhanh máy ảnh ngay khi đang đeo trên người bằng nắp mở bên hông trái hoặc truy xuất toàn bộ khoang chứa máy ảnh bằng nắp mở ở mặt lưng.<br>\r\n<br>\r\nChắc chắn và an toàn: Bên cạnh các thiết kế mang lại sự tiện lợi tối đa cho người sử dụng, túi đeo máy ảnh còn được Benro đặc biệt quan tâm đến các chi tiết phụ nhằm gia tăng sự chắc chắn và an toàn cho người dùng. Sử dụng chất liệu cao cấp cho độ bền cao, dây kéo có khoen kim loại', 0),
('SPBALO119', 'BALOMA', 'Balo Benro Hiker Drone 350N M Black', 1780000, 'SPBALO119', 'Balo Benro Hiker Drone 350N M Black mang kiểu dáng cá tính, mạnh mẽ được xem là sự lựa chọn lý tưởng dành cho các nhiếp ảnh gia chuyên nghiệp. Hiện sản phẩm đang rất bán chạy tại các cửa hàng chuyên cung cấp balo chính hãng.', 'Thiết kế 2 ngăn chính và nhiều ngăn phụ. Bên hông trái có thiết kế nắp mở giúp lấy nhanh máy ảnh khi cần. Mặt trước túi có với lớp cách dày giúp bảo vệ máy ảnh và laptop của bạn không bị va chạm, chấn động khi vận động.', 2),
('SPBALO120', 'BALOMA', 'Balo Benro Ranger 100N S Black', 1791000, 'SPBALO120', 'Benro Ranger 100N S Black được thiết kế để bảo vệ an toàn cho những bộ máy ảnh đắt giá. Sản phẩm Benro sở hữu những tính năng chuyên biệt với thiết kế tối ưu và chất lượng tuyệt hảo. Sản phẩm đáp ứng những tiêu chuẩn khắt khe về chất lượng trước khi xuất xưởng.', 'Tất cả chi tiết từ vách ngăn đến quai đeo đều được tập trung chất liệu. Với chất liệu cao cấp chống thấm nước tối đa, hạn chế thiết bị tiếp xúc với độ ẩm, chống va chạm cao với môi trường xung quanh nhờ vào các vách ngăn cách ly dày và chắc chắn. Mọi dây kéo trên balo Benro Ranger 100N S Black đều được nhập từ hãng YKK nổi tiếng của Nhật.', 1),
('SPBALO121', 'BALOMA', 'Balo Benro Ranger 200N M Black', 2061000, 'SPBALO121', 'Balo Benro Ranger 200N M Black có nhiều ngăn riêng biệt, rộng rãi cho người dùng thỏa sức đựng máy ảnh và nhiều phụ kiện kèm theo. Nếu đang sở hữu bộ máy ảnh đắt giá đừng bỏ qua sản phẩm mang nhiều điểm ưu việt mang thương hiệu Benro.', 'Với chiếc balo này, bạn có thể đựng theo 1 ipad, 1 Tripost, 2 Body, 1 ống kính tele, 4 ống kính zoom và 1 đèn flast, đựng sim và thẻ nhớ chống thất lạc, 2 ngăn túi kính cho phép bạn đựng đồ bên trong, kèm theo đó là áo mưa chống thấm nước không ngại khi đi mưa.', 3),
('SPBALO122', 'BALOMA', 'Balo Benro Ranger 400N (XL) Black', 2601000, 'SPBALO122', 'Một số đặc điểm nổi bật của sản phẩm:<br>\r\n– Chất liệu trượt nước cao cấp, vải lót bên trong dày chắc, hỗ trợ chống thấm nước tối đa.<br>\r\n– Những lớp mút đàn hồi chống sốc hiệu quả, tránh sự va chạm với các thiết bị.<br>\r\n– Quai xách được may phía trên quai đeo, tích hợp đệm mút mềm, giảm thiểu cảm giác đau nhức.<br>\r\n– Dây đai bụng kèm theo hỗ trợ sự chắc chắn khi đeo và linh hoạt điều chỉnh phù hợp với mỗi người.<br>\r\n– Sức chứa với 2 ngăn chính và nhiều ngăn phụ rộng rãi, tiện dụng. Mặt trước túi có với lớp cách dày giúp bảo vệ máy ảnh và laptop của bạn không bị va chạm, chấn động khi vận động.<br>', 'THÔNG SỐ KỸ THUẬT<br>\r\n– Trọng lượng: 1.8Kg<br>\r\n– Chất liệu: cao cấp không thấm nước<br>\r\n– Kích thước 35 x 32 x 50cm<br>\r\n– Sức chứa: 1 máy ảnh, 5-6 ống kính, 1 đèn flash, 1 laptop 14inch.<br>', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddanhmuc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddanhmuc` (`iddanhmuc`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddanhmuc`) REFERENCES `danhmuc` (`iddanhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
