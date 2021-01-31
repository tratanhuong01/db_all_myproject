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
-- Cơ sở dữ liệu: `shopbanhoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomsp`
--

CREATE TABLE `nhomsp` (
  `manhom` varchar(20) NOT NULL,
  `tennhomsp` varchar(100) DEFAULT NULL,
  `LoaiNhom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhomsp`
--

INSERT INTO `nhomsp` (`manhom`, `tennhomsp`, `LoaiNhom`) VALUES
('SPHOABO', 'Hoa Bó', 8),
('SPHOACAOCAP', 'Hoa Cao Cấp', 0),
('SPHOACUOI', 'Hoa Cưới', 6),
('SPHOAKHAITRUONG', 'Hoa Khai Trương', 2),
('SPHOAKINIEM', 'Hoa Kỉ Niệm', 1),
('SPHOASINHNHAT', 'Hoa Sinh Nhật', 4),
('SPHOASUKIEN', 'Hoa Sự Kiện', 7),
('SPHOATANGLE', 'Hoa Tang Lễ', 3),
('SPHOATINHYEU', 'Hoa Tình Yêu', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(20) NOT NULL,
  `manhom` varchar(20) DEFAULT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `hinhsp` varchar(100) DEFAULT NULL,
  `hoachinh` varchar(200) DEFAULT NULL,
  `hoaphu` varchar(200) DEFAULT NULL,
  `chieucao` int(11) DEFAULT NULL,
  `chieurong` int(11) DEFAULT NULL,
  `Loai` int(11) NOT NULL,
  `mota` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `manhom`, `tensp`, `gia`, `hinhsp`, `hoachinh`, `hoaphu`, `chieucao`, `chieurong`, `Loai`, `mota`) VALUES
('SP1', 'SPHOACAOCAP', 'Hoa Hướng Dương In Your Eye', 1380000, 'SP1.png', '15 Hoa Hướng Dương', '20 Bông Hồng', 90, 60, 2, 'Hướng dương là loài hoa luôn vươn lên cao để đón ánh nắng ấm áp, thể hiện khát khao, hy vọng về một tương lai tươi sáng. Bình hoa với màu vàng chủ đạo như ánh bình minh rực rỡ soi sáng và dẫn bước cho con đường thành công của chúng ta. Bình hoa dành tặng cho người thân yêu với ước mong họ sẽ gặt hái được nhiều điều tốt đẹp.<br>\r\n<br>\r\nLuôn là niềm tin, hy vọng vươn tới ánh sáng, khát khao vươn tới những điều tốt đẹp nhất. Vì vậy hoa hướng dương được sử dụng làm quà tặng thầy cô giáo để thể hiện sự biết ơn, kính trọng với những người đã và đang nâng đỡ, dạy dỗ thế hệ mới vươn tới tầm xa mới.<br>\r\n<br>\r\nQuan niệm của người Trung Quốc thì cây hoa hướng dương có ý nghĩa của sự trường thọ. Vì loài hoa này nở vào mùa hè và đông, hai mùa khắc nghiệt của năm. Chính vì thế, ý chí, sức sống mãnh liệt đã khiến loài hoa này được dùng nhiều khi tặng người lớn.'),
('SP10', 'SPHOAKHAITRUONG', 'Hoa Khai Trương Kinh Doanh Hồng Phát', 850000, 'SP10.png', 'Hoa Hồng-Hoa Lan Hồ Điệp-Hoa Hồng Môn', 'Hoa Cẩm Chướng-Hoa Thạch Thảo', 100, 60, 2, 'Với sự kết hợp các loại hoa mang ý nghĩa thịnh vượng như hoa hồng, hồng môn và lan hồ điệp, đã tạo nên một lẵng hoa rực rỡ tươi mới. Gia chủ nhận được lẵng hoa, là nhận được những lời chúc tốt đẹp nhất từ người gửi. Đó là kinh doanh may mắn, tiền vào như nước, luôn suôn sẻ và ngày càng phát triển.'),
('SP11', 'SPHOAKHAITRUONG', 'Hoa Khai Trương Chúc Mừng Thành Công', 1200000, 'SP11.png', 'Hoa Đồng Tiền Hồng-Lily Hồng', 'Hoa Hồng Môn Đỏ', 160, 55, 0, 'Kệ hoa với màu hồng chủ đạo từ hoa đồng tiền, lily như muốn gửi gắm lời chúc mừng thành công. Tiền vô như nước, luôn rực cháy khát vọng, niềm tin và nhiệt huyết. Nhận được kệ hoa là gia chủ nhận được nhiều điều tốt đẹp nhất cho hành trình mới của mình.'),
('SP112', 'SPHOAKHAITRUONG', 'Hoa Khai Trương Ánh Nắng Tươi', 2500000, 'SP12.png', 'Hoa Hồng Vàng-Cành Mokara', 'Hoa Hướng Dương', 170, 60, 0, 'Đúng với tên gọi của kệ hoa này, sự kết hợp màu vàng rực rỡ của hoa hồng, cành mokara và hướng dương đã tạo nên một bức tranh \"Ánh nắng tươi mới\" đầy sức sống, khát khao và niềm tin. Nhận được kệ hoa là gia chủ nhận được nhiều điều may mắn, như ánh nắng luôn chiếu soi dẫn đường, và bầu trời rộng mở phía trước. Sự giàu có, tình yêu và thành công luôn chờ đón ta trong công việc lẫn trong cuộc sống.'),
('SP13', 'SPHOASINHNHAT', 'Hoa Sinh Nhật Hè Thu', 600000, 'SP13.png', 'Hoa Hồng Cánh Sen-Hoa Lan Hồ Điệp', 'Hoa Cúc Mini', 55, 45, 0, 'Có những mùa hè trôi qua với bao ký ức đẹp mà chúng ta cất giữ cho riêng mình. Thời gian dần trôi qua nhưng kỷ niệm ấy vẫn còn thoảng như mới hôm nào. Một chút hương hoa lay động trong gió và được vỗ về bởi những tán lá xanh cũng đủ làm ta rung động. Bó hoa hè thu như muốn dành riêng cho những giấc mơ học trò ngây thơ, cho những mối tình sang thu đầy lãng mạn và cho những người yêu hè thu!'),
('SP14', 'SPHOASINHNHAT', 'Yêu Thương Hạnh Phúc', 670000, 'SP14.png', 'Hoa Hồng-Hoa Lan Vũ Nữ-Hoa Wicky Mồm Sói', 'Hoa Thạch Thảo', 60, 55, 2, 'Một câu chuyện tình yêu vô cùng lãng mạn và ngọt ngào. Những cánh hồng đan xen giữa wicky và lan vũ nữ, khẩy lên nốt nhạc du dương thêm dấu thăng của mõm sói và thạch thảo. Ngân nga điệu nhạc cùng cặp đôi khiêu vũ bản tình ca yêu thương hạnh phúc. Đây là món quà sinh nhật bất ngờ cho những cặp đôi yêu nhau.'),
('SP15', 'SPHOASINHNHAT', 'Giỏ Hoa Sinh Nhật Tươi Trẻ Sức Sống', 650000, 'SP15.png', 'Hoa Hông Đỏ-Hoa Hướng Dương', 'Hoa Thạch Thảo', 65, 55, 0, 'Một giỏ hoa tràn trề nhựa sống, với sự kết hợp của những bông hoa đang hot trên thị trường hiện nay. Một màu đỏ quyến rũ của hoa hồng cùng khoe sắc với vàng hướng dương tươi trẻ. Hoa thạch thảo mỏng manh nhưng luôn mãnh mẽ vươn lên vì những khát khao. Sự kết hợp tươi mát tắm gội cho muôn loài. Và màu trắng trinh nguyên của phụ kiện đã tạo nên khung cảnh của tuổi trẻ, năng động và cá tính. Bó hoa thích hợp cho những dịp sinh nhật bạn bè, các ngày lễ kỉ niệm...'),
('SP16', 'SPHOASINHNHAT', 'Hoa Sinh Nhật Nụ Hồng Cam', 790000, 'SP16.png', 'Hoa Hồng-Hoa Lan Hồ Điệp-Hoa Lan Vũ Nữ-Hoa Mõm Sói', 'Hoa Thiên Điểu-Hoa Thạch Thảo', 90, 90, 0, 'Một hộp hoa thật đẹp sẽ được gửi đến người thân yêu của chúng ta nhân các ngày lễ, sinh nhật, kỷ niệm... với mong muốn nhiều điều tốt đẹp sẽ đến với họ. Hoa như những chú ong chăm chỉ, mang mật ngọt đến trao cho người nhận. Hoa là cánh bướm gửi lời chúc yêu thương tới người nhận. Tất cả cũng vì nụ cười và hạnh phúc của chúng ta.'),
('SP17', 'SPHOATINHYEU', 'Adore You', 500000, 'SP17.png', 'Hoa Hồng Da Đà Lạt', 'Hoa Baby Trắng Hà Lan', 45, 40, 2, 'Tình yêu biến những điều vô nghĩa của cuộc đời thành những gì có ý nghĩa, làm cho những bất hạnh trở thành hạnh phúc. Vì thế, chúng ta cần phải vun đắp cho tình yêu của mình luôn tươi đẹp, để mỗi ngày là một niềm vui, và ta cùng xây đắp một tương lai sáng rạng.'),
('SP18', 'SPHOATINHYEU', 'My Love', 500000, 'SP18.png', 'Hoa Hồng Đỏ Rednaomi', 'Hoa Baby Hà Lan', 65, 50, 0, 'Tình yêu là sự đồng điệu lạ kì của hai trái tim, như hòa chung một nhịp. Là chia sẻ, là gắn kết, là xem ai đó như cả thế giới, là muốn bên ai đó một đời. Bởi lẽ đó là cảm xúc của một con người, và những ao ước để đời này họ tìm đúng đích của cuộc sống.'),
('SP19', 'SPHOATINHYEU', 'Ngọt Ngào Đến Lạ', 500000, 'SP19.png', 'Hoa Hồng Đỏ', 'Hoa Cúc Pong Ping Tím-Hoa Cúc Nhí Xanh', 50, 40, 0, 'Tình yêu là sự rung cảm của một tâm hồn khi gặp một tâm hồn đồng điệu, là sự hòa nhịp của hai trái tim, làm người ta nhìn thấy mọi vật tươi đẹp hơn. Đó là sự diệu kỳ của tình yêu mà tạo hóa đã ban cho chúng ta. Vì thế, giữ gìn và nhân hóa tình yêu của mình lên một bậc văn mình, thì chúng ta sẽ làm cho hạnh phúc của mình luôn được bền lâu.'),
('SP2', 'SPHOACAOCAP', 'Đồng Dao Mùa Hè', 600000, 'SP2.png', 'Hoa Hướng Dương-Hoa Hồng Vàng-Hoa Sao Vàng', 'Hoa Lá Phụ-Hoa Lan Vàng', 60, 55, 0, 'Đúng với tên gọi của mẫu hoa \"Đồng dao mùa hè\", một khung cảnh quê hương thân thuộc hiện ra trước mắt chúng ta. Với màu vàng rực rỡ tựa như ánh nắng ngày hè từ hoa hướng dương, hoa hồng vàng và hoa sao vàng, một thoáng hương quê của tuổi ấu thơ đầy tràn nhiệt huyết và sức sống. Đây là một món quà chúc mừng, động viên những người thân yêu thật ý nghĩa. Nhận được bình hoa này là nhận được một vé xin về tuổi thơ nhiều niềm vui.'),
('SP20', 'SPHOATINHYEU', 'Tình Yêu Dịu Dàng', 650000, 'SP20.png', '3 Hoa Hồng Pink Ohara Hà Lan- Hoa Hồng Sen Đà Lạt', 'Hoa Phi Yến Trắng-Hoa Baby Milions Stars', 50, 40, 0, 'Với tông màu chủ đạo mà hoa hồng phấn đã tạo ra, muốn nhắn nhủ đến những cặp đôi về một tình yêu dịu dàng mà sâu lắng. Nếu cô gái của bạn là mẫu người yêu sự mộng mơ, thơ ngây, thì hãy dành cho cô ấy những bó hoa ngọt ngào như thế này nhé!'),
('SP21', 'SPHOABO', 'Tình Nồng', 700000, 'SP21.png', '30 Hoa Hồng', 'Hoa Chuỗi Ngọc', 50, 40, 2, 'Với thiết kế chủ đạo màu đỏ của những cánh hoa hồng quyến rũ, như thể hiện một tình yêu mạnh liệt nồng cháy, và đặc biệt rất mực chân thành. Muốn chứng minh tình cảm thật sự, các chàng trai hãy tạo bất ngờ cho cô gái của mình với bó hoa này như muốn nhắn gửi: Anh yêu em bằng cả trái tim.'),
('SP22', 'SPHOABO', 'Nắng Ấm', 1000000, 'SP22.png', '20 Hoa Hướng Dương', 'Hoa Cát Tường-Green Whisky', 50, 40, 0, 'Muốn thấy cầu vòng, hãy chờ hết cơn mưa, và nắng sẽ lên. Tia nắng ấm luôn chiếu rọi và sửa ấm biết bao tâm hồn đang ướt lạnh. Là ánh sáng thức tỉnh trái tim yếu đuối, vực dậy những khổ đau để mang đến bến bờ hạnh phúc.<br>\r\nChúng ta hãy cùng mang sự tươi đẹp của thiên nhiên đến với người mà ta yêu thương, với ước mong nụ cười luôn bên cạnh bạn.<br>'),
('SP23', 'SPHOABO', 'Yêu Thương Hạnh Phúc', 390000, 'SP23.png', 'Hoa Hồng', 'Sao Tím-Calimero', 50, 40, 0, 'Một câu chuyện tình yêu vô cùng lãng mạn và ngọt ngào. Hồng tím đan xen giữa hồng da, khẩy lên nốt nhạc du dương thêm dấu thăng của cúc Calimero. Ngân nga điệu nhạc cùng cặp đôi khiêu vũ bản tình ca yêu thương hạnh phúc.'),
('SP24', 'SPHOABO', 'Believe Me', 700000, 'SP24.png', '20 Hoa Hồng Son Môi', 'Hoa Mõm Sói-Green Whisky', 50, 40, 0, 'Một thứ có thể gắn kết các mối quan hệ trong cuộc sống này, đó chính là Niềm Tin. Vợ chồng sống với nhau suốt cuộc đời dựa trên sự tin tưởng. Công việc muốn được hợp tác lâu dài dựa trên niềm tin vào nhau. Bạn bè thân thiết có được từ niềm tin lẫn nhau...<br> \r\nĐể giữ cho các mối quan hệ của chúng ta luôn tốt đẹp, hãy biết trân quý nó và luôn bồi đắp niềm tin vững vàng để tạo sợi dây liên kết bền chặt không có gì có thể cắt đứt.<br>'),
('SP25', 'SPHOACAOCAP', 'Full Love Tình Yêu Vĩnh Cửu', 1500000, 'SP25.png', '100 Hoa Hồng Đỏ', 'Hoa Lá Phụ Khác', 100, 80, 1, 'Bó hoa tươi Tình Yêu Vĩnh Cửu 2 gồm các loại hoa:\r\n100 hoa hồng đỏ\r\nHoa lá phụ khác'),
('SP26', 'SPHOACAOCAP', 'Tình Yếu Lung Linh', 1100000, 'SP26.png', 'Hoa Hồng', 'Hoa Cát Tường', 50, 40, 1, 'Với sắc hồng và tím của hoa hồng cộng với trắng xanh từ hoa cát tường, đã tạo nên khung cảnh về một tình yêu lung linh nhiều màu sắc. Sự uốn lượn của những chiếc lá xung quanh cánh hoa tạo nên nét uyển chuyển linh hoạt cho giỏ hoa. Đấy cũng là thông điệp muốn gửi đến các cặp đôi, hãy yêu nhau một cách nồng nàn, và cũng biến tấu cho phù hợp với từng thời gian và không gian. Để tình yêu ấy trở nên thú vị và luôn cháy sáng.'),
('SP27', 'SPHOAKINIEM', 'Khúc Hát Tình Yếu', 2550000, 'SP27.png', 'Hoa Hồng Rednaomi-Hoa Hồng Vàng Và Da', 'Hoa Hạnh Phúc', 100, 60, 1, 'Khu vườn với muôn hoa khoe sắc, đã khiến lòng ta trở nên rộn ràng và vui tươi. Màu đỏ nồng nàn của hoa hồng Rednaomi cộng với màu da dịu dàng kết hợp vàng rực rỡ. Tựa như một khúc khải hoàn ca, cho những ai chiến thắng và vinh quang sáng rọi. Mẫu hoa như lời chúc tuyệt vời tới người thân yêu, mong họ luôn thành công trong công việc lẫn cuộc sống. Thích hợp cho các dịp lễ kỉ niệm, tân gia...'),
('SP28', 'SPHOAKINIEM', 'Kỉ Niệm Chung Nha', 600000, 'SP28.png', 'Hoa Ly-Hoa Hồng', 'Hoa Cúc Trắng-Hoa Cẩm Chướng', 50, 40, 1, 'Trải qua biết bao sóng gió, thì tình yêu của chúng ta đã đến hồi kết tốt đẹp. Chúng ta cùng tay trong tay về chung một nhà, cùng có những tháng ngày bên nhau đến hết cuộc đời này. Hãy luôn giữ mãi ngọn lửa yêu thương trong căn nhà của bạn, để luôn có tiếng cười và niềm vui. Hâm nóng tình cảm và quan tâm tới những ngày kỉ niệm đặc biệt của vợ chồng, đó là món quà tuyệt vời dành tặng nhau.'),
('SP29', 'SPHOAKHAITRUONG', 'Lẵng Hoa Trường Tồn Mãi Mãi', 1750000, 'SP29.png', 'Hoa Trứng Gà-Hoa Hồng Vàng-Hoa Hướng Dương-Địa Lan Vàng', 'Hoa Cẩm Chướng-Hoa Lá Phụ Khác', 160, 55, 1, 'Tặng hoa nhân dịp khai trương chính là bí quyết giúp chúng ta gửi lời thành công đến người thân, bạn bè, đối tác. Từng cành hoa xinh tươi khoe sắc như muốn hòa chung vào niềm vui của gia chủ. Những cánh hoa hồng và hoa hướng dương cùng cẩm chướng là lời chúc cho việc kinh doanh trường tồn mãi như ánh mặt trời luôn tỏa nắng rực rỡ.'),
('SP3', 'SPHOACAOCAP', 'Think You Of - Hoa Hồng', 1300000, 'SP3.png', '50 Hoa Hồng Đỏ', 'Hoa Lan Bò Cạp Đỏ-Hoa Cẩm Chướng-Hoa Cúc Đỏ', 60, 90, 0, 'Bình hoa với một màu đỏ rực rỡ của hoa hồng, hoa lan bò cạp và hoa cẩm chướng tạo nên nét đẹp khó quên về một tình yêu cháy bổng và mãnh liệt. Rất thích hợp để dành tặng người yêu thương nhân dịp sinh nhật, kỷ niệm, sự kiện... Vì vẻ đẹp rạng rỡ của bình hoa, có thể đặt ở vị trí nào cũng đẹp và thu hút trong mắt người nhìn.'),
('SP30', 'SPHOAKHAITRUONG', 'Hoa Khai Trường Kinh Doanh Hồng Phát', 850000, 'SP30.png', 'Hoa Hồng-Hoa Hồ Lan Điệp-Hoa Hồng Môn', 'Hoa Cẩm Chướng-Hoa Thạch Thảo', 100, 60, 1, 'Với sự kết hợp các loại hoa mang ý nghĩa thịnh vượng như hoa hồng, hồng môn và lan hồ điệp, đã tạo nên một lẵng hoa rực rỡ tươi mới. Gia chủ nhận được lẵng hoa, là nhận được những lời chúc tốt đẹp nhất từ người gửi. Đó là kinh doanh may mắn, tiền vào như nước, luôn suôn sẻ và ngày càng phát triển.'),
('SP31', 'SPHOASINHNHAT', 'Happy BirthDay Flower - Always Happy', 690000, 'SP31.png', 'Hoa Hồng Đỏ Đà Lạt', 'Hoa Thạch Thảo', 60, 55, 1, 'Giỏ hoa như món quà gửi đến người thân yêu nhân dịp sinh nhật, kỷ niệm, cám ơn... với lời chúc mừng và mong muốn họ luôn mỉm cười, vui vẻ và hạnh phúc. Sống lạc quan, nhẹ nhàng thì nụ cười sẽ luôn chào đón họ mỗi ngày và suốt cuộc đời.'),
('SP32', 'SPHOASINHNHAT', 'Love At First Sight', 750000, 'SP32.png', 'Hoa Hồng Da-Hoa Hồng Vàng-Hoa Cẩm Chướng', 'Hoa Thạch Thảo-Hoa Hướng Dương', 65, 55, 1, 'Có ai đó đã yêu bó hoa này ngay từ cái nhìn đầu tiên? Như một tình yêu sét đánh vậy, mặt chạm mắt là đã thấy rung động, xuyến xao. Cách thiết kế kỹ lưỡng trong từng cánh hoa, nét trang trí. Sắc hoa như tô lên vẻ đẹp diệu kỳ cho các mối tình, chỉ cần ánh nhìn đã đem trọn trái tim em vào lòng anh.'),
('SP33', 'SPHOATINHYEU', 'My Life', 1750000, 'SP33.png', '25 Hoa Hồng Đỏ Hà Lan', 'Hoa Baby Hà Lan', 60, 50, 1, 'Nữ hoàng của tình yêu - hoa hồng đỏ. Luôn cháy trong tim các tín đồ đang yêu. Cuộc sống của tôi, chính là em đó. <br>\r\nĐể gửi gắm yêu thương, và muốn đối phương hiểu được tấm lòng này, thì không còn gì tuyệt vời bằng bạn sở hữu bó hoa này trong tay. Đó là vũ khí sắt bén để tỏ tình với cô ấy.<br>'),
('SP34', 'SPHOATINHYEU', 'Thanh Xuân', 1850000, 'SP34.png', '15 Hoa Hồng Pink Ohara Hà Lan', 'Hoa Baby Và Lá Bạc Hà Lan', 60, 50, 1, 'Thanh xuân của chúng ta như một cơn mưa rào. Dễ bị cảm lạnh bởi tình yêu chớm qua. Thanh xuân cũng giống như một trời mùa hạ, dễ bị say nắng bởi tình yêu sét đánh.<br>\r\nDù sao thì ai cũng mong ước có một thanh xuân đẹp đẽ, dù cảm lạnh nhưng vẫn thích tắm mưa. Dù cảm nắng nhưng vẫn thích tới mùa hè tươi mát.<br>'),
('SP4', 'SPHOACAOCAP', 'A littel Sweet', 1400000, 'SP4.png', '50 Hoa Hồng Sen', 'Hoa Cúc Calimero-Hoa Lá Phụ Khác', 60, 90, 0, 'Một tình yêu ngọt ngào mà những cánh hoa hồng muốn gửi đến người thân yêu của mình thông qua bình hoa này. Cách thiết tròn đều cùng với những bông hoa cúc xung quanh, tạo nên vẻ đẹp sang trọng cho bình hoa. Phù hợp để dành tặng bình hoa trong các dịp sinh nhật, kỷ niệm, cám ơn, họp mặt...'),
('SP5', 'SPHOAKINIEM', 'Kỉ Niệm Xưa', 800000, 'SP5.png', 'Hoa Hồng Vàng', 'Hoa Lan Vũ Nữ-Hoa Ly', 60, 50, 0, '\"Thời gian trôi qua mau, chỉ còn lại những kỷ niệm\" Hộp hoa với tông màu vàng, màu của thời gian, giúp ta nhớ đến những kỷ niệm đẹp, vui tươi. Đôi khi cuộc sống cuốn chúng ta vào những vòng xoáy lo toan, mà quên đi những phút giây bên nhau hạnh phúc. Hãy luôn hâm nóng tình cảm và cùng sống dành cho nhau nhiều hơn, thì thời gian chỉ là thước đo tình yêu của chúng ta mà thôi. Mẫu hoa phù hợp cho những dịp lễ kỉ niệm, cám ơn...'),
('SP6', 'SPHOAKINIEM', 'Romance', 590000, 'SP6.png', '30 hoa hồng phấn-hoa mõm sói', ' Hoa baby hồng', 60, 50, 0, 'Bó hoa đúng chất nói lên từ Romance. Một màu hồng ngọt ngào và lãng mạn, hy vọng một hạnh phúc tròn đầy. Hạnh phúc là tự chính chúng ta tạo ra, hãy biết quan tâm, chia sẻ, tôn trọng và lắng nghe nhau. Và gửi gắm yêu thương bằng những bó hoa đằm thắm như thế, để mỗi ngày ta đều cảm thấy hạnh phúc.'),
('SP7', 'SPHOAKINIEM', 'Tình Bạn Hữu', 750000, 'SP7.png', 'Hoa hồng mix màu', 'Hoa baby trắng', 80, 60, 0, 'Chúng ta luôn có những mối quan hệ tốt đẹp, và tạo nên những bạn hữu tri kỷ quý giá. Tình bạn hữu, theo chúng ta, đó là như thế nào? Đơn giản có thể được hiểu là sự chia sẻ, gắn bó, đồng cảm và giúp đỡ lẫn nhau. Họ đến với nhau bởi cùng quan điểm, lý tưởng và khát vọng sống.'),
('SP8', 'SPHOAKINIEM', 'Năm Tháng Gắn Bó', 2550000, 'SP8.png', 'Hoa hồng tím-Hồng vàng-Hồng phấn', 'Hoa mõm sói-Cúc ping pong', 130, 70, 0, 'Trên nền sang trọng của bình sứ cao cấp, đó là một vườn hoa ngào ngạt hương thơm, đua nhau khoe sắc. Vũ khúc tình yêu nhảy mua làm bao trái tim say mê chìm đắm. Một mẫu hoa với bao tâm huyết của florist chắc chắn làm hài lòng người nhận. Thích hợp dành cho những ngày kỷ niệm, chúc mừng...'),
('SP9', 'SPHOAKHAITRUONG', 'Năm Tháng Gắn Bó', 1750000, 'SP9.png', 'Hoa Hồng Trứng Gà-Hoa Hồng Vàng-Hoa Hướng Dương-Địa Lan Vàng-Cẩm Chướng Xanh', 'Cẩm Chướng Hòng', 160, 55, 0, 'Tặng hoa nhân dịp khai trương chính là bí quyết giúp chúng ta gửi lời thành công đến người thân, bạn bè, đối tác. Từng cành hoa xinh tươi khoe sắc như muốn hòa chung vào niềm vui của gia chủ. Những cánh hoa hồng và hoa hướng dương cùng cẩm chướng là lời chúc cho việc kinh doanh trường tồn mãi như ánh mặt trời luôn tỏa nắng rực rỡ.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nhomsp`
--
ALTER TABLE `nhomsp`
  ADD PRIMARY KEY (`manhom`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `manhom` (`manhom`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`manhom`) REFERENCES `nhomsp` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
