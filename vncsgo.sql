-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 25, 2021 lúc 04:45 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc24h`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$5jv1Sp5UU2VnxX9/BuGMSO4/OpFdLOEHBnPz.xrF3VoqPL/dyX1GS', 'tintuc24h@gmail.com', 1, '2018-05-27 17:51:00', '2021-12-07 14:08:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'tin tức', 'tin tức trong và ngoài nước', '2021-12-05 06:09:57', NULL, 1),
(10, 'hot', 'new', '2021-12-05 06:10:07', NULL, 1),
(11, 'Thị trường', 'giá cả', '2021-12-05 06:10:29', NULL, 1),
(16, 'giải trí', 'những tin tức thư giãn', '2021-12-25 14:51:20', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `PageTitle` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'VNCSGO', '<h3>VN CSGO nơi có nhiều thông tin về CSGO cũng như lịch của các trạn đấu chính thức<font color=\"#202122\" face=\"Verdana\"><b></b></font></h3>', '2018-06-30 18:01:03', '2021-12-25 14:11:25'),
(2, 'contactus', 'VNCSO', '<p><b><font face=\"Verdana\" color=\"#0000ff\">Địa chỉ : NHÀ TRẮNG</font>&nbsp;</b><br></p><p><font face=\"Verdana\" color=\"#ffe79c\"><b><font face=\"Verdana\">Điện thoại :</font>&nbsp;<span style=\"font-size: 16px;\">113</span></b></font></p><p><font face=\"Verdana\"><b style=\"\"><font face=\"Verdana\">Email :&nbsp;</font></b><span style=\"font-size: 16px;\"><a href=\"http://lienhe@tintuc24h.com\">lienhe@VNCSGO.com</a></span></font></p>', '2018-06-30 18:01:36', '2021-12-24 16:30:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET utf8 DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PostImage` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(21, 'DE BLAZE', 11, 15, '<p>giá 85$</p>', '2021-12-05 14:00:53', '2021-12-25 15:25:23', 1, 'DE-BLAZE', 'b31bc3b02f34e612d26c60682d1150c4.png'),
(22, 'AK-47 Fire Serpent', 11, 15, 'giá 6000$', '2021-12-06 03:36:20', '2021-12-25 15:22:07', 1, 'AK-47-Fire-Serpent', 'eb1d8eabad5637663733cf739ec92fec.png'),
(23, 'Bomman youtuber VN CSGO', 10, 13, 'một youtuber nổi tiếng ở VN về CSGO, với những tiếng kêu đanh thét', '2021-12-06 03:37:35', '2021-12-25 15:19:05', 1, 'Bomman-youtuber-VN-CSGO', 'c93f56894ec781b131f7fe8742a7661d.jpg'),
(24, 'tuyển thủ SIMPLE', 10, 13, '<span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">Oleksandr \"</span><span style=\"font-weight: bolder; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">s1mple</span><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">\" Kostyliev (born October 2, 1997) is a&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/Category:Ukraine\" title=\"Category:Ukraine\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">Ukrainian</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;professional&nbsp;</span><i style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\"><a href=\"https://liquipedia.net/counterstrike/Counter-Strike:_Global_Offensive\" title=\"Counter-Strike: Global Offensive\" style=\"color: rgb(66, 108, 207); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Counter-Strike: Global Offensive</a></i><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;player who plays for&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/Natus_Vincere\" title=\"Natus Vincere\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">Natus Vincere</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;as the&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/Category:AWPers\" title=\"Category:AWPers\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">AWPer</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">. Widely considered as one of the greatest&nbsp;</span><i style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\"><a href=\"https://liquipedia.net/counterstrike/CS:GO\" class=\"mw-redirect\" title=\"CS:GO\" style=\"color: rgb(66, 108, 207); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">CS:GO</a></i><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;players of all time, he has won 19&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/HLTV/MVP_Awards\" title=\"HLTV/MVP Awards\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">HLTV MVP</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;medals, a&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/PGL_Major_Stockholm_2021\" class=\"mw-redirect\" title=\"PGL Major Stockholm 2021\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">Major</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;and an&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/Intel/Grand_Slam/3\" title=\"Intel/Grand Slam/3\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">Intel Grand Slam</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">&nbsp;trophy, among other numerous&nbsp;</span><a href=\"https://liquipedia.net/counterstrike/Category:S-Tier_Tournaments\" title=\"Category:S-Tier Tournaments\" style=\"color: rgb(66, 108, 207); background: none rgb(255, 255, 255); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">S-Tier trophies</a><span style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14.6667px;\">, and has been crowned as the best player of 2018 and a runner-up for the best player of 2019 and 2020</span>', '2021-12-06 03:41:18', '2021-12-25 15:15:49', 1, 'tuyển-thủ-SIMPLE', '1524312e50a5956f4e80b8bad2b00dbf.jpg'),
(25, 'Chuyện gì xảy ra nếu niko ko bắn trượt', 16, 22, '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/eEJwS0DG5IY\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p><p>một video được edit lại nếu niko không trượt khi bắn sau lưng Simple</p>', '2021-12-06 03:53:48', '2021-12-25 15:04:23', 1, 'Chuyện-gì-xảy-ra-nếu-niko-ko-bắn-trượt', '92addd563eae83f9e50b01d13fa22d83.jpg'),
(26, 'Niko miss the shot of his life', 16, 22, '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/vbbSnXwFZbs\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p><p>Trong giải đấu chuyên nghiệp major 2021, Niko đã có pha bắn trượt sau lưng Simple dẫn đến một pha lật kèo của navi</p>', '2021-12-06 03:59:17', '2021-12-25 14:51:59', 1, 'Niko-miss-the-shot-of-his-life', '29d136ebc1f62a74ae6d48a0b29b6554.jpg'),
(27, '★ StatTrak™ Butterfly Knife | Doppler (Factory New)', 11, 15, '<p></p><article class=\"fck_detail \" style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 670px; float: left; position: relative; font: 400 18px / 28.8px arial; color: rgb(34, 34, 34); letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(252, 250, 246); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></article><p></p><p class=\"description\" style=\"margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; font-weight: 400; color: rgb(34, 34, 34); font-family: arial; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(252, 250, 246); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">tuy đã có lâu đời nhưng loại Doppler vẫn giữ được tầm giá 499$</p>', '2021-12-06 04:06:18', '2021-12-25 14:34:07', 1, '★-StatTrak™-Butterfly-Knife-|-Doppler-(Factory-New)', '96ab4a6486db2b07ae1f23452288e124.png'),
(28, 'AWP FADE', 11, 15, '<p><font color=\"#222222\" face=\"arial\"><span style=\"font-size: 18px; background-color: rgb(252, 250, 246);\">khẩu AWP mới ra năm 2021,có giá khởi điểm là 985$</span></font></p>', '2021-12-06 04:14:56', '2021-12-25 14:31:02', 1, 'AWP-FADE', '34bff1a4282031ac677e7b1571dfbdeb.jpg'),
(29, 'navi vô địch major 2021', 9, 10, '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px; text-align: justify;\">Buổi sáng ngày 8/11 vừa qua, trận đấu chung kết của giải đấu PGL Stockholm Major 2021 đã diễn ra với sự góp mặt của hai đội tuyển Natus Vincere (Nga) và G2 Esports (EU). Sau khi đánh bại đối thủ với hai ván thắng hoàn hảo, Navi&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px; text-align: justify;\">đã chính thức lên ngôi vô địch và bổ sung chiếc cúp duy nhất còn thiếu trong bộ sưu tập thành tích của mình.</span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px; text-align: justify;\">Với chiến thắng này,NaVi&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px; text-align: justify;\">đã ghi tên mình vào lịch sử của giải đấu&nbsp;</span><span style=\"color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px; text-align: justify;\">lớn nhất hành tinh khi trở thành đội tuyển đầu tiên vô địch một kỳ Major mà không để thua bất kỳ một map đấu nào.</span></p><p style=\"margin-bottom: 15px; padding: 0px; list-style: none; outline-style: initial; outline-width: 0px; border: 0px; vertical-align: bottom; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.6; text-align: justify; color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif;\">Đây là một chiến thắng vô cùng quý giá và ý nghĩa đối với các thành viên của Navi khi đội tuyển này từng nhiều lần lỡ hẹn với ngôi vương một cách vô cùng đáng tiếc trong quá khứ.Theo thống kê, trước đó Navi đã góp mặt tại giải đấu lớn nhất của CSGO 15 lần, 3 lần vào tới chung kết nhưng chưa một lần ôm được chiếc cúp trên tay. Đây là một sự tiếc nuối vô cùng to lớn đối với các fan hâm mộ của Natus Vincere nói chung và siêu sao S1mple nói riêng.</p><p style=\"margin-bottom: 15px; padding: 0px; list-style: none; outline-style: initial; outline-width: 0px; border: 0px; vertical-align: bottom; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.6; text-align: justify; color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif;\">Tuy nhiên, tất cả những sự ức chế đó đã được giải tỏa hết trong trận chung kết ngày hôm nay. Chiến thắng càng khó có được thì càng mang ý nghĩa bội phần. Và với NaVi, đây có lẽ là chức vô địch đáng nhớ nhất, quý giá nhất, tuyệt vời nhất mà đội tuyển này đã mong ngóng từ rất lâu.Với chức vô địch Major 2021, Natus Vincere đã bỏ túi cho mình 1 triệu USD tiền thưởng. Bên cạnh đó, siêu sao đồng thời là AWPer chính của team là S1mple cũng đem về cho mình danh hiệu MVP của giải đấu. Đây là một thành tích hoàn toàn xứng đáng sau màn trình diễn thuyết phục của anh trong trận chung kết vừa rồi.</p><p style=\"margin-bottom: 15px; padding: 0px; list-style: none; outline-style: initial; outline-width: 0px; border: 0px; vertical-align: bottom; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 17px; line-height: 1.6; text-align: justify; color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif;\">NaVi là một trong những đội tuyển eSports sở hữu lượng fan đông đảo và hùng hậu nhất trong cộng đồng CSGO thế giới. Chính vì vậy khi đội tuyển này lọt vào vòng chung kết, lượng view của giải đấu đã tăng đến mức kỷ lục, vượt mốc 2.57 triệu lượt xem cùng lúc (chưa kể khu vực Trung&nbsp; Quốc) và trở thành trận đấu có lượt xem cao nhất trong lịch sử của CS:GO.<br></p><p><br></p><figure class=\"expNoEdit\" style=\"margin-bottom: 15px; padding: 0px; list-style: none; outline-style: initial; outline-width: 0px; border: 0px; vertical-align: bottom; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(17, 17, 17); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 17px;\"><a href=\"https://cdn-img.thethao247.vn/origin_865x0/storage/files/duyenhai/2021/11/08/csgo-navi-len-ngoi-vo-dich-pgl-stockholm-major-2021-86410.jpg\" rel=\"nofollow noopener\" data-caption=\"\" data-at-1366=\"https://cdn-img.thethao247.vn/origin_1366x0/storage/files/duyenhai/2021/11/08/csgo-navi-len-ngoi-vo-dich-pgl-stockholm-major-2021-86410.jpg\" data-at-1920=\"https://cdn-img.thethao247.vn/origin_1920x0/storage/files/duyenhai/2021/11/08/csgo-navi-len-ngoi-vo-dich-pgl-stockholm-major-2021-86410.jpg\" style=\"margin: 0px; padding: 0px; list-style: none; color: rgb(27, 149, 224); vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; transition: all 0.3s ease 0s; cursor: pointer; display: block;\"></a></figure><p><br></p>', '2021-12-06 04:18:17', '2021-12-25 14:16:39', 1, 'navi-vô-địch-major-2021', 'fbc9e1816e851becfc2e10677075e175.jpg'),
(30, 'AWP DRAGON LORD', 11, 15, '<p><font color=\"#222222\" face=\"arial\"><span style=\"font-size: 18px; background-color: rgb(252, 250, 246);\">Có giá 7000$ trên thị trường, được đánh giá là khẩu đắt nhất, hiếm nhất</span></font></p>', '2021-12-06 04:21:24', '2021-12-25 14:21:21', 1, 'AWP-DRAGON-LORD', 'a1674b4d8423dd48505395088276e345.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SubCatDescription` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 9, 'giải đấu', 'thông tin các trận đấu lớn nhỏ', '2021-12-05 06:15:17', NULL, 1),
(11, 9, 'Dân sinh', 'Dân sinh', '2021-12-05 06:15:27', NULL, 0),
(12, 10, 'Giá súng', 'tin tức nóng hổi', '2021-12-05 06:16:16', NULL, 0),
(13, 10, 'tin tức', 'Tin tức nóng hổi', '2021-12-05 06:16:23', NULL, 1),
(14, 11, 'Tuyển sinh', 'Tuyển sinh', '2021-12-05 06:17:09', NULL, 0),
(15, 11, 'giá cả', 'giá skin', '2021-12-05 06:23:04', NULL, 1),
(16, 12, 'Giới sao', 'Giới sao', '2021-12-05 06:25:52', NULL, 0),
(17, 12, 'Phim', 'Phim', '2021-12-05 06:27:55', NULL, 0),
(18, 13, 'Tư liệu', 'Tư liệu', '2021-12-05 06:28:21', NULL, 0),
(19, 14, 'Quốc tế', 'Quốc tế', '2021-12-05 06:29:05', NULL, 0),
(20, 14, 'Doanh nghiệp', 'Doanh nghiệp', '2021-12-05 06:29:15', NULL, 0),
(22, 16, 'video', 'video', '2021-12-25 14:51:40', NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
