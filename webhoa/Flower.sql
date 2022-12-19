CREATE DATABASE FLOWER;
USE FLOWER;
GO

CREATE TABLE [User] (
					userName NVARCHAR(50) PRIMARY KEY,
				  	password NVARCHAR(30),
					repassword NVARCHAR(30),
				  	email NVARCHAR(50),
					phoneNumber NVARCHAR(10),
				  	name NVARCHAR(50),
					address NVARCHAR(500),
				  	isAdmin int);

CREATE TABLE Category (cateId CHAR(5) PRIMARY KEY,
					   cateName NVARCHAR(50));

CREATE TABLE Product (pId CHAR(5) PRIMARY KEY,
					  pName NVARCHAR(50),
					  priceNew INT,
					  priceOld INT,
					  pDescription NVARCHAR(1000),
					  cateId CHAR(5) REFERENCES Category(cateId),
					  photo NVARCHAR(50));

INSERT INTO Category (cateId, cateName)
VALUES ('CA001', N'Hoa sinh nhật'),
	   ('CA002', N'Hoa chúc mừng'),
	   ('CA003', N'Hoa tình yêu'),
	   ('CA004', N'Hoa cưới'),
	   ('CA005', N'Hoa khai trương'),
	   ('CA006', N'Hoa chia buồn');

INSERT INTO [User] (userName, password, repassword, email, phoneNumber, name, address, isAdmin)
VALUES ('MyHanh', '12345', '12345', '20130250@st.hcmuaf.edu.vn', '0356789123', N'Mỹ Hạnh', N'Trường Đại học Nông Lâm TP.HCM', 0),
	   ('NguyenNga', '123abc', '123abc', 'nguyenngoctonga2002@gmail.com', '0351123789', N'Tố Nga', N'Dĩ An, Bình Dương', 0),
	   ('admin', 'admin', 'admin', 'admin@gmail.com', '0396589842', N'admin', N'Linh Trung, Thủ Đức, TP.HCM', 1);

INSERT INTO Product (pId, pName, priceNew, priceOld, pDescription, cateId,  photo)
/* hoa sinh nhật*/
VALUES ('P001', N'Giỏ hoa sắc màu', 750000, 800000, N'Giỏ hoa được kết hợp từ nhiều loài hoa với những màu sắc dịu dàng nhưng không kém phần nổi bật, 
đây sẽ là món quà ý nghĩa dành tặng cho những người bạn yêu thương trong dịp sinh nhật.', 'CA001', 'http://localhost:8080/webhoa/img/sn1.jpg'),
	   ('P002', N'Thạch thảo trắng', 460000, 500000, N'Hoa thạch thảo trắng như một người phụ nữ, hay e dè, dịu dàng và đằm thắm, tuy nhiên cũng rất mạnh mẽ và trưởng thành, 
thích hợp để làm quà tặng nhân dịp sinh nhật.', 'CA001', 'http://localhost:8080/webhoa/img/sn2.jpg'),
	   ('P003', N'Hoa hướng dương', 470000, 500000, N'Trong tình yêu, hoa hướng dương tượng trưng cho tình yêu thầm lặng, sự chung thủy, chân thành, sự ấm áp, niềm tin, 
hy vọng luôn hướng về tương lai tốt đẹp; trong cuộc sống, hoa hướng dương mang ý nghĩa may mắn và hạnh phúc, sức khỏe và trường thọ, sự tôn kính và sự lạc quan, 
mạnh mẽ.', 'CA001', 'http://localhost:8080/webhoa/img/sn3.jpg'),
	   ('P004', N'Hoa hộp', 320000, 400000, N'Hộp hoa này được kết hợp từ nhiều loài hoa khác nhau, không chỉ mang lại cảm giác khác biệt mà còn toát lên sự nhẹ nhàng, êm dịu.', 
'CA001', 'http://localhost:8080/webhoa/img/sn4.jpg'),
	   ('P005', N'Hoa hồng pastel', 660000, 750000, N'Trong tình yêu, hoa hồng pastel tượng trưng cho một tình yêu không màng vật chất, một tình yêu chung thủy; trong tình bạn, 
hoa hồng pastel đại diện cho tình bạn trong sáng, chân thành.', 'CA001', 'http://localhost:8080/webhoa/img/sn5.jpg'),
	   ('P006', N'Hoa thanh liễu', 190000, 270000, N'Hoa thanh liễu mang một sức sống mạnh mẽ đồng thời là biểu tượng của sự thanh cao, mảnh mai và không kém phần sang trọng; 
đồng thời, hoa thanh liễu cũng mang lại nhiều lợi ích cho con người như xua đuổi côn trùng, chiết xuất tinh dầu hay làm đẹp cho ngôi nhà của bạn.', 
'CA001', 'http://localhost:8080/webhoa/img/sn6.jpg'),

/* hoa chúc mừng*/
	   ('P007', N'Hoa hướng dương', 175000, 230000, N'Trong tình yêu, hoa hướng dương tượng trưng cho tình yêu thầm lặng, sự chung thủy, chân thành, sự ấm áp, niềm tin, 
hy vọng luôn hướng về tương lai tốt đẹp; trong cuộc sống, hoa hướng dương mang ý nghĩa may mắn và hạnh phúc, sức khỏe và trường thọ, sự tôn kính và sự lạc quan, 
mạnh mẽ.', 'CA002', 'http://localhost:8080/webhoa/img/cm1.jpg'),
	   ('P008', N'Hộp hoa hồng', 640000, 650000, N'Hộp hoa hồng màu hồng này tượng trưng cho lời chúc, niềm vui và hạnh phúc. Điều này làm cho chúng trở thành món quà 
hoàn hảo để đánh dấu một dịp hay ngày lễ quan trọng như ngày của Mẹ, ngày kỷ niệm hay ngày nhà giáo Việt Nam.', 'CA002', 'http://localhost:8080/webhoa/img/cm2.jpg'),
	   ('P009', N'Hoa hồng màu pastel', 420000, 450000, N'Trong tình yêu, hoa hồng pastel tượng trưng cho một tình yêu không màng vật chất, một tình yêu chung thủy; 
trong tình bạn, hoa hồng pastel đại diện cho tình bạn trong sáng, chân thành.', 'CA002', 'http://localhost:8080/webhoa/img/cm3.jpg'),
	   ('P010', N'Hoa hồng cam', 610000, 680000, N'Hoa hồng cam là biểu tượng của tuổi trẻ, sự sống động và cuộc sống, hoa hồng cam cũng được dùng trong đám cưới tuyệt vời. 
Hoa hồng cam mang lại một năng lượng tiếp thêm sinh lực cho mọi người chúng ta.', 'CA002', 'http://localhost:8080/webhoa/img/cm4.jpg'),
	   ('P011', N'Hoa hồng xanh', 1200000, 1250000, N'Hoa hồng xanh tượng trưng cho một tình yêu bất diệt vĩnh cửu, chung thủy và trường tồn. 
Tuy nhiên ẩn chứa bên trong nó lại có một chút gì đó bí ẩn, mê hoặc.', 'CA002', 'http://localhost:8080/webhoa/img/cm5.jpg'),
	   ('P012', N'Hoa baby hồng', 820000, 900000, N'Hoa baby hồng thể hiện sự dịu dàng và đầy ngọt ngào, màu hoa này đại diện cho các cô nàng có tính cách nhẹ nhàng, bay bổng, 
mang chút mơ mộng nhưng vẫn đầy tinh tế.', 'CA002', 'http://localhost:8080/webhoa/img/cm6.jpg'),

/* hoa tình yêu*/
	   ('P013', N'Giỏ hoa hồng trái tim', 730000, 750000, N'Những bông hoa hồng màu đỏ gắn kết thành hình trái tim độc đáo thể hiện lên nhiều ý nghĩa trong tình yêu sâu sắc, 
tượng trưng cho tình yêu mãnh liệt và sự tôn trọng.', 'CA003', 'http://localhost:8080/webhoa/img/ty1.jpg'),
	   ('P014', N'Hoa hồng đỏ', 690000, 700000, N'Không chỉ tượng trưng cho một tình yêu lãng mạn, nồng nàn, cháy bỏng và ngọt ngào của lứa đôi, hình ảnh hoa hồng đỏ còn dùng 
để miêu tả sự hoàn mỹ của vẻ đẹp người con gái, sự quyến rũ và cuốn hút của người con gái ấy.', 'CA003', 'http://localhost:8080/webhoa/img/ty2.jpg'),
	   ('P015', N'Giỏ hoa hồng đỏ', 475000, 500000, N'Hoa hồng đỏ là biểu tượng của sự lãng mạn trong tình yêu, niềm đam mê mãnh liệt. Màu sắc này thể hiện cho tình cảm sâu đậm 
mà bạn dành cho người ấy. Để bày tỏ và thổ lộ tình cảm với đối phương thì đây quả là món quà valentine ý nghĩa.', 'CA003', 'http://localhost:8080/webhoa/img/ty3.jpg'),
	   ('P016', N'Hoa hồng phấn', 800000, 820000, N'Hoa hồng phấn tượng trưng cho tình yêu đầu tiên, cảm động, tình yêu vĩnh cửu và tình yêu ngọt ngào. Màu phấn luôn là 
màu đại diện của con gái và phù hợp với mối tình đầu của con gái.', 'CA003', 'http://localhost:8080/webhoa/img/ty4.jpg'),
	   ('P017', N'Hoa hồng', 550000, 575000, N'Hoa hồng thường được xem là biểu tượng của sự lãng mạn trong tình yêu, ngoài ra hoa hồng cũng có nhiều ý nghĩa hay như
đại diện cho sắc đẹp, tâm hồn của người phụ nữ vừa thanh cao, vừa tươi trẻ, vừa quyến rũ; mang ý nghĩa tượng trưng cho mối quan hệ chân thành, khăng khít bền chặt giữa 
các thành viên trong gia đình hay là sự may mắn.', 'CA003', 'http://localhost:8080/webhoa/img/ty5.jpg'),
	   ('P018', N'Hoa hồng xanh', 339000, 360000, N'Hoa hồng xanh tượng trưng cho một tình yêu bất diệt vĩnh cửu, chung thủy và trường tồn. 
Tuy nhiên ẩn chứa bên trong nó lại có một chút gì đó bí ẩn, mê hoặc.', 'CA003', 'http://localhost:8080/webhoa/img/ty6.jpg'),

/* hoa cưới*/
	   ('P019', N'Hoa rum trắng', 720000, 780000, N'Hoa cưới rum trắng là bó hoa được bó trang trọng thanh lịch cho ngày cưới. Bó hoa được tạo nên từ những bông hoa rum trắng 
tinh khôi rạng rỡ cực xinh xắn.', 'CA004', 'http://localhost:8080/webhoa/img/hc1.jpg'),
	   ('P020', N'Hoa hồng phấn', 950000, 970000, N'Những bông hoa hồng phấn sẽ thay bạn trao gửi thông điệp yêu thương và làm hài lòng các giác quan của người được tặng về 
sắc đẹp, mùi hương cùng chiều sâu ý nghĩa nhẹ nhàng của nó. Sự khởi đầu nhẹ nhàng nhưng cũng không kém phần lãng mạn với những bông hồng phấn sẽ là một khởi đầu 
hoàn hảo để tình cảm thức tỉnh và bắt đầu một mối quan hệ tuyệt vời.', 'CA004', 'http://localhost:8080/webhoa/img/hc2.jpg'),
	   ('P021', N'Hoa hướng dương', 490000, 540000, N'Là một loài hoa luôn hướng về phía mặt trời, luôn hướng đến những gì tươi sáng nhất, hoa hướng dương, trong tình yêu là 
biểu trưng cho lòng chung thủy, sắc son, luôn luôn hy vọng và tràn đầy niềm tin về tương lai tươi sáng. Trong đám cưới, hòa cùng sắc trắng của váy cô dâu, sắc vàng 
rực rỡ của bó hoa cưới hướng dương như luôn tỏa nắng, làm bừng sáng cả bữa tiệc, mang lại bầu không khí tươi mới và sự ấm áp cho tất cả mọi người.', 
'CA004', 'http://localhost:8080/webhoa/img/hc3.jpg'),
	   ('P022', N'Hoa hồng sang trọng', 1100000, 1190000, N'Màu sắc của hoa hồng màu hồng này có thể truyền tải những cảm xúc tinh tế như sự ngưỡng mộ, niềm vui và lòng biết ơn.  
Hoa hồng màu hồng tượng trưng cho sự sang trọng, lòng biết ơn và niềm vui.', 'CA004', 'http://localhost:8080/webhoa/img/hc4.jpg'),
	   ('P023', N'Hoa hồng đỏ', 980000, 990000, N'Hoa hồng được xem là biểu tượng của tình yêu, thể hiện một tình yêu nồng cháy, mãnh liệt và đầy khát vọng. Đó là lý do mà bó 
hoa cưới hoa hồng đỏ được nhiều người lựa chọn, đem đến một không gian lãng mạn, sang trọng.', 'CA004', 'http://localhost:8080/webhoa/img/hc5.jpg'),
	   ('P024', N'Hoa linh lan', 2000000, 2500000, N'Mỗi một loài hoa đẹp đều mang những ý nghĩa riêng. Và với hoa linh lan cũng vậy. Sắc trắng tinh khôi luôn mang đến cho 
con người ta sự trong trẻo, thuần thiết trong tâm hồn. Chẳng rực rỡ rơi lệ nhưng vẫn mang vẻ đẹp rạng ngời, kiêu sa.', 'CA004', 
'http://localhost:8080/webhoa/img/hc6.jpg'),

/* hoa khai trương*/
	   ('P025', N'Lẵng hoa hồng', 1350000, 1400000, N'Lẵng hoa rực rỡ sẽ thu hút mọi ánh nhìn khi mang tặng cho bạn bè, người thân vào khai trương cửa hàng. 
Hoa màu hồng trong phong thuỷ có ý nghĩa tượng trưng cho may mắn, lộc lá, tiền tài nên rất được ưa chuộng trong những sự kiện có liên quan đến kinh doanh. 
Kết hợp với màu kem mang ý nghĩa về sự trọn vẹn, tinh và vui vẻ  sẽ là lựa chọn tuyệt vời cho hoa khai trương. Bên cạnh đó, lẵng hoa sử dụng hoa hồng đại diện cho 
tình yêu, hạnh phúc và ngọt ngào. Vì vậy, ngoài những lời chúc, chúng còn đại diện cho sự động viên, hy vọng về những bước đường trong tương lai.','CA005', 
'http://localhost:8080/webhoa/img/kt1.jpg'),
	   ('P026', N'Giỏ hoa sắc màu', 1400000, 1500000, N'Giỏ hoa được kết hợp từ nhiều loài hoa với những màu sắc dịu dàng nhưng không kém phần nổi bật, 
đây sẽ là món quà ý nghĩa dành tặng cho những người bạn yêu thương không chỉ trong những dịp lễ mà còn có thể chúc mừng cho sự khai trương của một cửa hàng mới. 
Giỏ hoa đem lại sự tươi mới và sự phát triển cho tương lai phía trước.',
'CA005', 'http://localhost:8080/webhoa/img/kt2.jpg'),
	   ('P027', N'Hộp hoa hồng', 730000, 750000, N'Chắc hẳn ai trong số chúng ta khi nhắc đến hoa hồng điều khiến chúng ta liên tưởng đến là tình yêu. 
Nhưng không chỉ là món quà tặng cho tình yêu mà nó còn góp mặt trong tất cả các sự kiện quan trọng kể cả khai trương. Hoa hồng thì có rất nhiều màu sắc khác nhau. 
Trừ hoa hồng trắng, bạn có thể lựa chọn tất cả các màu của hoa hồng để tặng vào dịp khai trương.','CA005', 'http://localhost:8080/webhoa/img/kt3.jpg'),
	   ('P028', N'Hộp hoa đồng tiền', 270000, 320000, N'Hoa đồng tiền  là loại hoa được sử dụng rất nhiều trong các lẵng hoa khai trương, có lẽ trước hết 
là vì tên gọi của nó đã thể hiện cho sự giàu có, phát tài. Hoa đồng tiền mang ý nghĩa về vẻ đẹp, sự kỳ diệu, đem đến hạnh phúc, sự tươi sáng và vui vẻ trong cuộc sống.
Vì vậy mà một lẵng hoa đồng tiền sẽ mang lại không khí vui tươi, rực rỡ cho ngày đầu khai trương thể hiện cho lời chúc gia chủ phát tài, phát lộc, sung túc, làm ăn may mắn.'
,'CA005', 'http://localhost:8080/webhoa/img/kt4.jpg'),
	   ('P029', N'Lẵng hoa hồng vàng', 720000, 730000, N'Hoa hồng vàng ánh kim vô cùng rực rỡ, bông rất to bự, cây cứng cáp, khỏe khoắn. Hoa hồng vàng tượng trưng 
cho quý tộc giàu có, sang trọng, quý phái như vàng ngọc. Đó là lí do hoa hồng vàng thường được chọn tặng khai trương hay sinh nhật. Đặc biệt người lớn tuổi, 
người có địa vị, quan chức, sếp…sẽ rất yêu thích màu vàng ngọc này. Bạn cũng có thể chọn mẫu giỏ hoa hồng vàng tặng mừng thọ, tân gia nhà mới, chúc mừng thăng chức.',
'CA005', 'http://localhost:8080/webhoa/img/kt5.jpg'),
	   ('P030', N'Lẵng hoa hướng dương', 1450000, 1500000, N'Hoa hướng dương nở rộ vào tháng 7 và hầu như có quanh năm. Hoa thường có mầu vàng, nhị đen (đôi khi có màu cam 
hoặc đỏ cam). Ý nghĩa hoa hướng dương: giầu sang, hạnh phúc, tiền tài, danh vọng. Nên sẽ rất thích hợp khi tặng chúc mừng mọi đối tượng như: người thân, thầy cô, 
chúc mừng lên chức, phụ nữ sinh em bé, chúc mừng khai trương, ..','CA005', 'http://localhost:8080/webhoa/img/kt6.jpg'),
/* hoa chia buồn*/
	   ('P031', N'Lẵng hoa chi đồng tiền trắng', 890000, 900000, N'Hoa đồng tiền trắng tượng trưng cho sự tôn kính bày tỏ lòng thương tiếc và mang ý nghĩa sự ngây thơ,
khiêm tốn màu trắng là một sự lựa chọn tuyệt đẹp trong sắp xếp tang lễ. Xuất phát từ lý do này mà những bông hoa đồng tiền trắng được kết trong vòng hoa chia buồn hay 
lẵng hoa chia buồn mang ý nghĩa để người ở lại tưởng nhớ và tình yêu dành cho người ra đi là còn mãi. Không chỉ thế, hoa đồng tiền trắng được sử dụng trong đám tang 
còn là biểu tượng của danh dự và sự tôn kính, chúng thường dùng để kính viếng cũng như tưởng nhớ những người đã khuất bằng một tấm lòng chân thành nhất.','CA006', 
'http://localhost:8080/webhoa/img/cb1.jpg'),
	   ('P032', N'Lẵng hoa lan tím', 510000, 545000, N'Hoa lan tím là loài hoa thường xuất hiện trong đám tang. Sắc tím của hoa lan phù hợp với không khí đưa tiễn. Bạn sẽ
nhớ mãi những kỷ niệm với người đã mất và gửi đến họ lời chúc tốt đẹp cho cuộc sống thế giới bên kia. Sự cầu mong cho cuộc sống an yên và bớt mất mát của bạn tới gia đình
có tang đã được bộc lộ qua lẵng hoa lan tím.','CA006', 'http://localhost:8080/webhoa/img/cb2.jpg'),
	   ('P033', N'Lẵng hoa cúc', 715000, 720000, N'Cuộc sống là một chặn đường giữa sự sống và cái chết. Khi bạn được sinh ra trên cõi đời này cũng là lúc bạn đang đối
diện với cái chết, quan trọng là nó ở gần hay xa mà thôi. Khi ai đó vừa mất đi người thân hoặc một người bạn rất yêu quý thì nỗi đau đó sẽ rất khó phai. Một vòng hoa 
trắng để chia sẻ nỗi buồn góp phần làm xoa dịu nỗi đau của người đó','CA006', 'http://localhost:8080/webhoa/img/cb3.jpg'),
	   ('P034', N'Vòng hoa chia buồn', 640000, 650000, N'Hoa chia buồn (hoa đám ma) là văn hóa đã có từ lâu, mang ý nghĩa an ủi, động viên, chia sẻ những nỗi đau, 
mất mát với gia quyến. Hơn thế, hoa chia buồn cũng là món quà sau cùng gửi tới những người quá cố, thể hiện tình cảm tiếc thương và cầu chúc linh hồn người quá cố 
sớm siêu thoát để có cuộc sống mới.','CA006', 'http://localhost:8080/webhoa/img/cb4.jpg'),
	   ('P035', N'Lẵng hoa lan trắng', 1350000, 1400000, N'Hoa lan trắng tượng trưng cho tình yêu và tình cảm đối với những người thân yêu và là lời chia buồn tinh tế,
trang trọng khi được kết thành lẵng hoa viếng trong đám tang. Hoa lan trắng trong đám tang mang một ý nghĩa sâu sắc đối với những người đang đau buồn vì mất người thân
. Lẵng hoa lan trắng viếng đám tang thể hiện cho tình yêu vĩnh cửu của bạn dành cho người đã khuất.','CA006', 'http://localhost:8080/webhoa/img/cb5.jpg'),
	   ('P036', N'Lẵng hoa lan tím', 765000, 770000, N'Hoa lan tím là loài hoa thường xuất hiện trong đám tang. Sắc tím của hoa lan phù hợp với không khí đưa tiễn. Bạn sẽ
nhớ mãi những kỷ niệm với người đã mất và gửi đến họ lời chúc tốt đẹp cho cuộc sống thế giới bên kia. Sự cầu mong cho cuộc sống an yên và bớt mất mát của bạn tới gia đình
có tang đã được bộc lộ qua lẵng hoa lan tím.','CA006', 'http://localhost:8080/webhoa/img/cb6.jpg');

SELECT * FROM Product;
SELECT * FROM Category;
SELECT * FROM [User];