CREATE DATABASE MyStore;
GO

USE MyStore;
GO
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL
);
CREATE TABLE [User] (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    FullName NVARCHAR(100),
    CreatedAt DATETIME DEFAULT GETDATE()
);
CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    Price DECIMAL(18, 2) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);
CREATE TABLE Thumbnail (
    ThumbnailID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    ImageURL NVARCHAR(255) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
CREATE TABLE PaymentInvoice (
    InvoiceID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    TotalAmount DECIMAL(18, 2) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES [User](UserID)
);
CREATE TABLE PaymentInvoiceDetails (
    InvoiceDetailID INT PRIMARY KEY IDENTITY(1,1),
    InvoiceID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(18, 2) NOT NULL,
    FOREIGN KEY (InvoiceID) REFERENCES PaymentInvoice(InvoiceID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO Admin (Username, PasswordHash, Email) VALUES
('admin1', 'hash_password1', 'admin1@example.com'),
('admin2', 'hash_password2', 'admin2@example.com');
INSERT INTO [User] (Username, PasswordHash, Email, FullName) VALUES
('user1', 'hash_password1', 'user1@example.com', 'User One'),
('user2', 'hash_password2', 'user2@example.com', 'User Two');
INSERT INTO Product (ProductName, Description, Price) VALUES
('Product A', 'Description for Product A', 19.99),
('Product B', 'Description for Product B', 29.99);
	INSERT INTO Thumbnail (ProductID, ImageURL) VALUES
(1, 'http://example.com/images/product_a_thumb1.jpg'),
(1, 'http://example.com/images/product_a_thumb2.jpg'),
(2, 'http://example.com/images/product_b_thumb1.jpg');
INSERT INTO PaymentInvoice (UserID, TotalAmount) VALUES
(1, 49.98),
(2, 29.99);
INSERT INTO PaymentInvoiceDetails (InvoiceID, ProductID, Quantity, Price) VALUES
(1, 1, 2, 19.99),
(2, 2, 1, 29.99);
