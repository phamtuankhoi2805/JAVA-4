CREATE DATABASE MyStore;
GO

USE MyStore;
GO

-- Tạo bảng Users
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    FullName NVARCHAR(100),
    UserType NVARCHAR(20) NOT NULL,  -- 'Admin' hoặc 'User'
    CreatedAt DATE DEFAULT GETDATE()
);

-- Tạo bảng Product
CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Descriptions NVARCHAR(255),
    Price MONEY NOT NULL,
	ProductType NVARCHAR(100) NOT NULL,
	Inventory INT NOT NULL,
	ImageURL NVARCHAR(100) NOT NULL,
    CreatedAt DATE DEFAULT GETDATE()
);

-- Tạo bảng PaymentInvoice
CREATE TABLE PaymentInvoice (
    InvoiceID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    TotalAmount MONEY NOT NULL,
    CreatedAt DATE DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Tạo bảng PaymentInvoiceDetails
CREATE TABLE PaymentInvoiceDetails (
    InvoiceID INT NOT NULL,
    ProductID INT NOT NULL,
	UserID INT NOT NULL,
    Quantity INT NOT NULL,
    Price MONEY NOT NULL,
	PRIMARY KEY (InvoiceID,ProductID,UserID),
    FOREIGN KEY (InvoiceID) REFERENCES PaymentInvoice(InvoiceID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
	FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Tạo bảng FavoriteProducts
CREATE TABLE FavoriteProducts (
    UserID INT NOT NULL,
    ProductID INT NOT NULL,
    CreatedAt DATE DEFAULT GETDATE(),
	PRIMARY KEY(UserID,ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Tạo bảng Comments
CREATE TABLE Comments (
    UserID INT NOT NULL,
    ProductID INT NOT NULL,
    CommentText NVARCHAR(1000) NOT NULL,
    CreatedAt DATE DEFAULT GETDATE(),
	PRIMARY KEY(UserID,ProductID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
-- Tạo bảng Slider
CREATE TABLE Slider (
    SliderID INT PRIMARY KEY IDENTITY(1,1),
    SliderImageURL NVARCHAR(255) NOT NULL,
    DisplayOrder INT NOT NULL,  -- Thứ tự hiển thị của banner
    CreatedAt DATE DEFAULT GETDATE()
);
-- Tạo bảng Banner
CREATE TABLE Banner (
    BannerID INT PRIMARY KEY IDENTITY(1,1),
    BannerImageURL NVARCHAR(255) NOT NULL,
    CreatedAt DATE DEFAULT GETDATE()
);
GO
-- Procedure Thống Kê Hoá Đơn Theo Tháng của năm chỉ định
CREATE PROCEDURE GetMonthlyInvoiceStatistics
    @Year INT
AS
BEGIN
    -- Thống kê số lượng đơn hàng theo tháng cho năm được chỉ định
    SELECT 
        FORMAT(pi.CreatedAt, 'yyyy-MM') AS YearMonth,
        COUNT(pi.InvoiceID) AS NumberOfOrders
    FROM 
        PaymentInvoice pi
    WHERE 
        YEAR(pi.CreatedAt) = @Year
    GROUP BY 
        FORMAT(pi.CreatedAt, 'yyyy-MM')
    ORDER BY 
        FORMAT(pi.CreatedAt, 'yyyy-MM');
END
GO

-- Lệnh thực thi
--EXEC GetMonthlyInvoiceStatistics @Year = 2024;

GO
-- Procedure Thống Kê Doanh Thu Theo Tháng của năm chỉ định
CREATE PROCEDURE GetMonthlyRevenueStatistics
    @Year INT
AS
BEGIN
    -- Thống kê doanh thu theo tháng cho năm được chỉ định
    SELECT 
        FORMAT(pi.CreatedAt, 'yyyy-MM') AS YearMonth,
        SUM(pid.Quantity * pid.Price) AS TotalRevenue
    FROM 
        PaymentInvoice pi
    INNER JOIN 
        PaymentInvoiceDetails pid ON pi.InvoiceID = pid.InvoiceID
    WHERE 
        YEAR(pi.CreatedAt) = @Year
    GROUP BY 
        FORMAT(pi.CreatedAt, 'yyyy-MM')
    ORDER BY 
        FORMAT(pi.CreatedAt, 'yyyy-MM');
END
GO

-- Lệnh thực thi
--EXEC GetMonthlyRevenueStatistics @Year = 2023;


GO

-- Chèn dữ liệu vào bảng Users
INSERT INTO Users (Username, PasswordHash, Email, FullName, UserType)
VALUES 
('admin1', 'hash1', 'user1@example.com', 'User One', 'Admin'),
('admin2', 'hash2', 'user2@example.com', 'User Two', 'Admin'),
('admin3', 'hash3', 'user3@example.com', 'User Three', 'Admin'),
('user4', 'hash4', 'user4@example.com', 'User Four', 'User'),
('user5', 'hash5', 'user5@example.com', 'User Five', 'User'),
('user6', 'hash6', 'user6@example.com', 'User Six', 'User'),
('user7', 'hash7', 'user7@example.com', 'User Seven', 'User'),
('user8', 'hash8', 'user8@example.com', 'User Eight', 'User'),
('user9', 'hash9', 'user9@example.com', 'User Nine', 'User'),
('user10', 'hash10', 'user10@example.com', 'User Ten', 'User');

-- Chèn dữ liệu vào bảng Product
INSERT INTO Product (ProductName, Descriptions, Price, ProductType, Inventory, ImageURL) VALUES
(N'Hoa Hồng Đỏ', N'Hoa hồng đỏ tươi, tượng trưng cho tình yêu và đam mê.', 150000, N'Hoa Tươi', 100, 'product-1.jpg'),
(N'Hoa Ly Trắng', N'Hoa ly trắng thanh tao, biểu tượng của sự tinh khiết và cao quý.', 200000, N'Hoa Tươi', 50, 'product-2.jpg'),
(N'Hoa Cúc Vàng', N'Hoa cúc vàng rực rỡ, mang lại sự vui vẻ và may mắn.', 100000, N'Hoa Tươi', 75, 'product-3.jpg'),
(N'Hoa Lan Hồ Điệp', N'Hoa lan hồ điệp sang trọng, phù hợp để tặng đối tác, khách hàng.', 500000, N'Hoa Tươi', 30, 'product-4.jpg'),
(N'Hoa Hướng Dương', N'Hoa hướng dương rạng rỡ, tượng trưng cho sức sống và năng lượng.', 250000, N'Hoa Tươi', 60, 'product-5.jpg'),
(N'Hoa Cẩm Tú Cầu', N'Hoa cẩm tú cầu đa sắc, thể hiện sự thay đổi và bí ẩn.', 300000, N'Hoa Tươi', 40, 'product-6.jpg'),
(N'Hoa Hồng Nhân Tạo', N'Hoa hồng nhân tạo chất liệu cao cấp, giữ mãi vẻ đẹp.', 180000, N'Hoa Nhân Tạo', 120, 'product-7.jpg'),
(N'Hoa Lan Nhân Tạo', N'Hoa lan nhân tạo đẹp tự nhiên, trang trí bền lâu.', 350000, N'Hoa Nhân Tạo', 90, 'product-8.jpg'),
(N'Hoa Cẩm Chướng Nhân Tạo', N'Hoa cẩm chướng nhân tạo mềm mại, phù hợp trang trí trong nhà.', 130000, N'Hoa Nhân Tạo', 110, 'product-9.jpg'),
(N'Hoa Cúc Nhân Tạo', N'Hoa cúc nhân tạo, mang lại cảm giác gần gũi và ấm cúng.', 110000, N'Hoa Nhân Tạo', 80, 'product-10.jpg'),
(N'Hoa Mẫu Đơn', N'Hoa mẫu đơn quyến rũ, biểu tượng của sự giàu sang và thịnh vượng.', 220000, N'Hoa Nhân Tạo', 70, 'product-11.jpg'),
(N'Hoa Sen', N'Hoa sen thanh khiết, biểu tượng của sự tinh khiết và giác ngộ.', 400000, N'Hoa Nhân Tạo', 50, 'product-12.jpg');
-- Chèn dữ liệu vào bảng PaymentInvoice cho năm 2023 và 2024
INSERT INTO PaymentInvoice (UserID, TotalAmount, CreatedAt) VALUES
-- Năm 2023
-- Tháng 1
(4, 450000, '2023-01-05'),
(5, 600000, '2023-01-12'),
(6, 150000, '2023-01-20'),
-- Tháng 2
(7, 300000, '2023-02-03'),
(8, 500000, '2023-02-15'),
(9, 250000, '2023-02-25'),
-- Tháng 3
(10, 700000, '2023-03-01'),
(4, 1200000, '2023-03-15'),
(5, 220000, '2023-03-28'),
-- Tháng 4
(6, 800000, '2023-04-10'),
(7, 600000, '2023-04-20'),
(8, 150000, '2023-04-30'),
-- Tháng 5
(9, 500000, '2023-05-05'),
(10, 300000, '2023-05-15'),
(4, 100000, '2023-05-25'),
-- Tháng 6
(5, 400000, '2023-06-10'),
(6, 350000, '2023-06-20'),
(7, 250000, '2023-06-30'),
-- Tháng 7
(8, 500000, '2023-07-10'),
(9, 600000, '2023-07-20'),
(10, 700000, '2023-07-30'),
-- Tháng 8
(4, 800000, '2023-08-10'),
(5, 200000, '2023-08-20'),
(6, 300000, '2023-08-30'),
-- Tháng 9
(7, 400000, '2023-09-10'),
(8, 100000, '2023-09-20'),
(9, 200000, '2023-09-30'),
-- Tháng 10
(10, 600000, '2023-10-10'),
(4, 250000, '2023-10-20'),
(5, 500000, '2023-10-30'),
-- Tháng 11
(6, 150000, '2023-11-10'),
(7, 700000, '2023-11-20'),
(8, 450000, '2023-11-30'),
-- Tháng 12
(9, 300000, '2023-12-10'),
(10, 400000, '2023-12-20'),
(4, 100000, '2023-12-30'),
-- Năm 2024
-- Tháng 1
(5, 800000, '2024-01-05'),
(6, 1200000, '2024-01-12'),
(7, 220000, '2024-01-20'),
-- Tháng 2
(8, 150000, '2024-02-01'),
(9, 500000, '2024-02-15'),
(10, 300000, '2024-02-28'),
-- Tháng 3
(4, 100000, '2024-03-10'),
(5, 400000, '2024-03-20'),
(6, 350000, '2024-03-30'),
-- Tháng 4
(7, 250000, '2024-04-05'),
(8, 500000, '2024-04-15'),
(9, 600000, '2024-04-25'),
-- Tháng 5
(10, 700000, '2024-05-10'),
(4, 800000, '2024-05-20'),
(5, 200000, '2024-05-30'),
-- Tháng 6
(6, 300000, '2024-06-10'),
(7, 400000, '2024-06-20'),
(8, 100000, '2024-06-30'),
-- Tháng 7
(9, 200000, '2024-07-05'),
(10, 600000, '2024-07-15'),
(4, 250000, '2024-07-25'),
-- Tháng 8
(5, 500000, '2024-08-05'),
(6, 150000, '2024-08-15'),
(7, 700000, '2024-08-25'),
-- Tháng 9
(8, 450000, '2024-09-05'),
(9, 300000, '2024-09-15'),
(10, 400000, '2024-09-25'),
-- Tháng 10
(4, 100000, '2024-10-05'),
(5, 800000, '2024-10-15'),
(6, 1200000, '2024-10-25'),
-- Tháng 11
(7, 220000, '2024-11-05'),
(8, 150000, '2024-11-15'),
(9, 500000, '2024-11-25'),
-- Tháng 12
(10, 300000, '2024-12-05'),
(4, 600000, '2024-12-15'),
(5, 700000, '2024-12-25');

-- Chèn dữ liệu vào bảng PaymentInvoiceDetails
INSERT INTO PaymentInvoiceDetails (InvoiceID, ProductID, UserID, Quantity, Price) VALUES
-- Chèn dữ liệu vào bảng PaymentInvoiceDetails cho năm 2023
-- Tháng 1
(1, 1, 4, 3, 150000),
(2, 2, 5, 4, 200000),
(3, 3, 6, 1, 100000),
-- Tháng 2
(4, 4, 7, 2, 500000),
(5, 5, 8, 1, 250000),
(6, 6, 9, 1, 150000),
-- Tháng 3
(7, 7, 10, 1, 700000),
(8, 8, 4, 2, 600000),
(9, 9, 5, 1, 220000),
-- Tháng 4
(10, 10, 6, 2, 400000),
(11, 1, 7, 1, 300000),
(12, 2, 8, 3, 150000),
-- Tháng 5
(13, 3, 9, 2, 500000),
(14, 4, 10, 2, 300000),
(15, 5, 4, 1, 100000),
-- Tháng 6
(16, 6, 5, 1, 400000),
(17, 7, 6, 3, 350000),
(18, 8, 7, 1, 250000),
-- Tháng 7
(19, 9, 8, 2, 500000),
(20, 10, 9, 1, 300000),
(21, 1, 10, 3, 700000),
-- Tháng 8
(22, 2, 4, 2, 800000),
(23, 3, 5, 1, 200000),
(24, 4, 6, 1, 300000),
-- Tháng 9
(25, 5, 7, 2, 400000),
(26, 6, 8, 2, 100000),
(27, 7, 9, 2, 200000),
-- Tháng 10
(28, 8, 10, 2, 600000),
(29, 9, 4, 2, 500000),
(30, 10, 5, 2, 100000),
-- Tháng 11
(31, 1, 6, 1, 450000),
(32, 2, 7, 2, 700000),
(33, 3, 8, 2, 150000),
-- Tháng 12
(34, 4, 9, 1, 300000),
(35, 5, 10, 2, 600000),
(36, 6, 4, 1, 100000),

-- Chèn dữ liệu vào bảng PaymentInvoiceDetails cho năm 2024
-- Tháng 1
(37, 7, 5, 1, 800000),
(38, 8, 6, 2, 1200000),
(39, 9, 7, 2, 220000),
-- Tháng 2
(40, 10, 8, 1, 150000),
(41, 1, 9, 2, 500000),
(42, 2, 10, 1, 300000),
-- Tháng 3
(43, 3, 4, 1, 100000),
(44, 4, 5, 2, 400000),
(45, 5, 6, 3, 350000),
-- Tháng 4
(46, 7, 7, 2, 250000),
(47, 8, 8, 3, 500000),
(48, 9, 9, 1, 600000),
-- Tháng 5
(49, 10, 10, 1, 700000),
(50, 1, 4, 3, 800000),
(51, 2, 5, 2, 200000),
-- Tháng 6
(52, 3, 6, 1, 300000),
(53, 4, 7, 1, 400000),
(54, 5, 8, 1, 100000),
-- Tháng 7
(55, 6, 9, 1, 200000),
(56, 7, 10, 2, 600000),
(57, 8, 4, 1, 250000),
-- Tháng 8
(58, 9, 5, 2, 500000),
(59, 10, 6, 1, 150000),
(60, 1, 7, 2, 700000),
-- Tháng 9
(61, 2, 8, 2, 450000),
(62, 3, 9, 1, 300000),
(63, 4, 10, 1, 400000),
-- Tháng 10
(64, 5, 4, 2, 100000),
(65, 6, 5, 2, 800000),
(66, 7, 6, 2, 1200000),
-- Tháng 11
(67, 8, 7, 1, 220000),
(68, 9, 8, 2, 150000),
(69, 10, 9, 2, 500000),
-- Tháng 12
(70, 1, 10, 2, 300000),
(71, 2, 4, 3, 600000),
(72, 3, 5, 2, 700000);





-- Chèn dữ liệu vào bảng FavoriteProducts
INSERT INTO FavoriteProducts (UserID, ProductID)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(2, 1),
(2, 4),
(2, 5);

-- Chèn dữ liệu vào bảng Comments
INSERT INTO Comments (UserID, ProductID, CommentText)
VALUES 
(1, 1, 'Great product!'),
(2, 2, 'Good value for money.'),
(3, 3, 'Highly recommend.'),
(4, 4, 'Not as expected.'),
(5, 5, 'Would buy again.'),
(6, 6, 'Average quality.'),
(7, 7, 'Excellent service.'),
(8, 8, 'Fast shipping.'),
(9, 9, 'Five stars.'),
(10, 10, 'Could be better.');
-- Chèn dữ liệu vào bảng Banner
INSERT INTO Slider (SliderImageURL, DisplayOrder)
VALUES 
('home3-slide1.jpg', 1),
('home3-slide2.jpg', 2);
INSERT INTO Banner (BannerImageURL)
VALUES 
('banner-1.jpg'),
('banner-2.jpg'),
('img1-top-floda1.jpg'),
('img1-top-floda2.jpg'),
('img1-top-floda3.jpg'),
('img-bottom-menu.jpg'),
('sidebar-banner.jpg');