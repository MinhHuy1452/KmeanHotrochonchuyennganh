create database DoAnChuyenNganh
use DoAnChuyenNganh
CREATE TABLE ChuongTrinhDaoTao  (
    MaCTDT NVARCHAR(10) PRIMARY KEY NOT NULL,
    TenCTDT NVARCHAR(50) NOT NULL,
);
CREATE TABLE ChuyenNganh  (
    MaCN NVARCHAR(10) PRIMARY KEY NOT NULL,
    TenCN NVARCHAR(50) NOT NULL,
);
CREATE TABLE SinhVien (
    MaSV NVARCHAR(10) PRIMARY KEY NOT NULL,
	MaCTDT NVARCHAR(10) NOT NULL,
	MaCN NVARCHAR(10),
    Lop NVARCHAR(20) NOT NULL,
    HoTenSV NVARCHAR(50) NOT NULL,
	Password NVARCHAR(50) NOT NULL,
	FOREIGN KEY (MaCTDT) REFERENCES ChuongTrinhDaoTao(MaCTDT),
	FOREIGN KEY (MaCN) REFERENCES ChuyenNganh(MaCN),
);
CREATE TABLE MonHoc (
    MaMon NVARCHAR(10) PRIMARY KEY NOT NULL,
	MaCTDT NVARCHAR(10)NOT NULL,
    TenMon NVARCHAR(50)NOT NULL,
	FOREIGN KEY (MaCTDT) REFERENCES ChuongTrinhDaoTao(MaCTDT)
);
CREATE TABLE Diem (
    MaSV NVARCHAR(10) NOT NULL,
    MaMon NVARCHAR(10) NOT NULL,
	Diem FLOAT,
	PRIMARY KEY (MaSV, MaMon),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon)
);
CREATE TABLE GiangVien (
    taikhoan NVARCHAR(10) NOT NULL,
    HoTenGV NVARCHAR(10) NOT NULL,
	Password NVARCHAR(50),
	PRIMARY KEY (taikhoan),
);
USE [DoAnChuyenNganh]
GO
/****** Object:  StoredProcedure [dbo].[GetSinhVienData]    Script Date: 12/7/2023 12:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetSinhVienData]
AS
BEGIN
---------------------------------------------------------------------Dữ liệu sau khi xữ lý tiền dữ liệu----------------------------------------------------------------------------
SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9CNPM]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) >= 4 

UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9HTTT]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) >= 4 
-- Thêm các truy vấn UNION ALL khác tương tự cho các bảng còn lại ở đây...
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9KHPTDL]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) >= 4 
	
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9MMT]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) >= 4

UNION ALL
SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10CNPM]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) >= 4 

UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10HTTT]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) >= 4 
-- Thêm các truy vấn UNION ALL khác tương tự cho các bảng còn lại ở đây...
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10KHPTDL]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) >= 4 
	
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10MMT]
WHERE 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) >= 4 AND
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) >= 4

    -- Continue the pattern for other Khóa

END;



----------------------------------------------------------------------------------Dữ liệu khi chưa xữ lí tiền dữ liệu---------------------------------------------------------------------------------------
SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9CNPM]
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9HTTT]
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9KHPTDL]
	
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa9MMT]
UNION ALL
SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10CNPM]
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10HTTT]
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10KHPTDL]
	
UNION ALL

SELECT 
    [Mã sinh viên], [Họ đệm], [Tên], [Lớp học], 
    TRY_CONVERT(DECIMAL(5, 2), [Nhập môn lập trình]) AS [Nhập môn lập trình],
    TRY_CONVERT(DECIMAL(5, 2), [Cấu trúc dữ liệu và giải thuật]) AS [Cấu trúc dữ liệu và giải thuật],
    TRY_CONVERT(DECIMAL(5, 2), [Lập trình hướng đối tượng]) AS [Lập trình hướng đối tượng],
    TRY_CONVERT(DECIMAL(5, 2), [Công nghệ #NET]) AS [Công nghệ NET],
    TRY_CONVERT(DECIMAL(5, 2), [Cơ sở dữ liệu]) AS [Cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ quản trị cơ sở dữ liệu]) AS [Hệ quản trị cơ sở dữ liệu],
    TRY_CONVERT(DECIMAL(5, 2), [Trí tuệ nhân tạo]) AS [Trí tuệ nhân tạo],
    TRY_CONVERT(DECIMAL(5, 2), [Mạng máy tính]) AS [Mạng máy tính],
    TRY_CONVERT(DECIMAL(5, 2), [Hệ điều hành]) AS [Hệ điều hành],
    TRY_CONVERT(DECIMAL(5, 2), [Kiến trúc máy tính]) AS [Kiến trúc máy tính]
FROM [dbo].[SinhVienKhoa10MMT]
