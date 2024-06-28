use DoAnChuyenNganh
-- Chèn dữ liệu vào bảng ChuongTrinhDaoTao
INSERT INTO ChuongTrinhDaoTao (MaCTDT, TenCTDT) VALUES
    ('CTDT11', N'Chương trình đào tạo khóa 11'),
	('CTDT12', N'Chương trình đào tạo khóa 12'),
	('CTDT13', N'Chương trình đào tạo khóa 13');

-- Chèn dữ liệu vào bảng ChuyenNganh
INSERT INTO ChuyenNganh (MaCN, TenCN) VALUES
    ('CNPM', N'Chuyên ngành Công Nghệ Phần Mềm'),
    ('HTTT', N'Chuyên ngành Hệ Thống Thông Tin'),
    ('KHPTDL', N'Chuyên ngành Khoa Học Phân Tích Dữ Liệu'),
	('MMT', N'Chuyên ngành Mạng Máy Tính');
--Chèn dữ liệu bảng GiangVien
INSERT INTO GiangVien (taikhoan, HoTenGV, Password) VALUES
    ('gv1', N'Trần Như Ý','123');
-- khóa 11
INSERT INTO SinhVien (MaSV, MaCTDT, MaCN, Lop, HoTenSV, Password) VALUES
    ('2001203063', 'CTDT11','CNPM','11DHTH7', N'DƯƠNG MINH ĐỨC', '123'),
    ('2001200354', 'CTDT11','HTTT','11DHTH5', N'LƯƠNG TUYẾT MI', '123'),
    ('2001457232', 'CTDT11','CNPM','11DHTH7', N'PHAN NHẬT ANH', '123'),
    ('2005234424', 'CTDT11','KHPTDL','11DHTH1', N'PHAN THANH BÌNH', '123'),
	('2005124344', 'CTDT11','CNPM','11DHTH1', N'LÝ MỸ CẤM', '123'),
    ('2001143424', 'CTDT11','MMT', '11DHTH6', N'NGUYỄN GIA CHÍ', '123'),
    ('2001134325', 'CTDT11','KHPTDL','11DHTH1', N'NGUYỄN TIẾN TÍN', '123'),
	('2001765565', 'CTDT11','CNPM', '11DHTH2', N'NGUYỄN HÙNG CƯỜNG', '123'),
	('2001156765', 'CTDT11','CNPM','10DHTH8', N'TRẦN HỮU DI', '123'),
	('2001734575', 'CTDT11','HTTT','10DHTH2', N'TRẦN HỮU DANH', '123');

-- khóa 12
INSERT INTO SinhVien (MaSV, MaCTDT, Lop, HoTenSV, Password) VALUES
	('2001638423', 'CTDT12', '12DHTH7', N'NGUYỄN HOÀNG ANH', '123'),
	('2001733643', 'CTDT12', '12DHTH5', N'TRẦN KHÁNH TIẾN', '123'),
	('2001425954', 'CTDT12', '12DHTH5', N'NGUYỄN HOÀNG ANH', '123'),
	('2001367345', 'CTDT12', '12DHTH8', N'PHAN HÙYNG CẨM LY', '123'),
	('2001678322', 'CTDT12', '12DHTH5', N'TRƯƠNG VIỆT ANH', '123'),
	('2001855353', 'CTDT12', '12DHTH2', N'LÊ THÁI BẢO', '123'),
	('2001754524', 'CTDT12', '12DHTH3', N'NGUYỄN THÀNH BÌNH', '123'),
	('2001678345', 'CTDT12', '12DHTH5', N'LÊ MÌNH CHIẾN', '123'),
	('2001175644', 'CTDT12', '12DHTH6', N'NGUYỄN HUY DANH', '123'),
	('2001666843', 'CTDT12', '12DHTH8', N'NGUYỄN MINH DANH', '123');

-- khóa 13
INSERT INTO SinhVien (MaSV, MaCTDT, Lop, HoTenSV, Password) VALUES
	('2001202038', 'CTDT13', '13DHTH7', N'LƯƠNG QUANG TÝ', '123'),
	('2003384734', 'CTDT13', '13DHTH5', N'TRẦN THIÊN KIỀU', '123'),
	('2000038456', 'CTDT13', '13DHTH5', N'NGUYỄN THÚY ANH', '123'),
	('2001330054', 'CTDT13', '13DHTH8', N'PHAN HÙYNG DUY HƯNG', '123'),
	('2001110322', 'CTDT13', '13DHTH5', N'TRƯƠNG LÂM ANH', '123'),
	('2003842455', 'CTDT13', '13DHTH2', N'LÊ THÁI ANH', '123'),
	('2001324452', 'CTDT13', '13DHTH3', N'NGUYỄN LAM BÌNH', '123'),
	('2002456661', 'CTDT13', '13DHTH5', N'LÊ THIỆU CHIẾN', '123'),
	('2001334520', 'CTDT13', '13DHTH6', N'NGUYỄN HUY HOÀNG', '123'),
	('2001633311', 'CTDT13', '13DHTH8', N'NGUYỄN PHÚC HẢO', '123');

-- Chèn dữ liệu vào bảng MonHoc
-- Môn học cho khóa 11
INSERT INTO MonHoc (MaMon, MaCTDT, TenMon) VALUES 
('M01K11', 'CTDT11', N'Nhập môn lập trình'),
('M02K11', 'CTDT11', N'Cấu trúc dữ liệu và giải thuật'),
('M03K11', 'CTDT11', N'Lập trình hướng đối tượng'),
('M04K11', 'CTDT11', N'Công nghệ NET'),
('M05K11', 'CTDT11', N'Cơ sở dữ liệu'),
('M06K11', 'CTDT11', N'Hệ quản trị cơ sở dữ liệu'),
('M07K11', 'CTDT11', N'Trí tuệ nhân tạo'),
('M08K11', 'CTDT11', N'Mạng máy tính'),
('M09K11', 'CTDT11', N'Hệ điều hành'),
('M10K11', 'CTDT11', N'Kiến trúc máy tính');

---------------------------------------------------------------------
-- Môn học cho khóa 12
INSERT INTO MonHoc (MaMon, MaCTDT, TenMon) VALUES 
('M01K12', 'CTDT12', N'Nhập môn lập trình'),
('M02K12', 'CTDT12', N'Cấu trúc dữ liệu và giải thuật'),
('M03K12', 'CTDT12', N'Lập trình hướng đối tượng'),
('M04K12', 'CTDT12', N'Công nghệ NET'),
('M05K12', 'CTDT12', N'Cơ sở dữ liệu'),
('M06K12', 'CTDT12', N'Hệ quản trị cơ sở dữ liệu'),
('M07K12', 'CTDT12', N'Trí tuệ nhân tạo'),
('M08K12', 'CTDT12', N'Mạng máy tính'),
('M09K12', 'CTDT12', N'Hệ điều hành'),
('M10K12', 'CTDT12', N'Kiến trúc máy tính');
---------------------------------------------------------------------
-- Môn học cho khóa 13
INSERT INTO MonHoc (MaMon, MaCTDT, TenMon) VALUES 
('M01K13', 'CTDT13', N'Nhập môn lập trình'),
('M02K13', 'CTDT13', N'Cấu trúc dữ liệu và giải thuật'),
('M03K13', 'CTDT13', N'Dữ liệu NoSQL'),
('M04K13', 'CTDT13', N'Công nghệ NET'),
('M05K13', 'CTDT13', N'Cơ sở dữ liệu'),
('M06K13', 'CTDT13', N'Hệ quản trị cơ sở dữ liệu'),
('M07K13', 'CTDT13', N'Trí tuệ nhân tạo'),
('M08K13', 'CTDT13', N'Mạng máy tính'),
('M09K13', 'CTDT13', N'Hệ điều hành'),
('M10K13', 'CTDT13', N'Kiến trúc máy tính');

-------------------------------------------------- Chèn dữ liệu vào bảng Diem của khoa11-----------------------------------------------------
-- sinh viên  ('2001203063', 'CTDT11', '11DHTH7', N'DƯƠNG MINH ĐỨC', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001203063', 'M01K11', 9.3),--Nhập môn lập trình ngành
       ('2001203063', 'M02K11', 7.6),--Cấu trúc dữ liệu và giải thuật ngành 
       ('2001203063', 'M03K11', 8.6),--Lập trình hướng đối tượng ngành 
	   ('2001203063', 'M04K11', 7.8),--Công nghệ NET
	   ('2001203063', 'M05K11', 7.6),--Cơ sở dữ liệu
	   ('2001203063', 'M06K11', 6.4),--Hệ quản trị cơ sở dữ liệu
	   ('2001203063', 'M07K11', 7.7),--Trí tuệ nhân tạo
	   ('2001203063', 'M08K11', 5.8),-- Mạng máy tính
	   ('2001203063', 'M09K11', 5.0),--Hệ điều hành
	   ('2001203063', 'M10K11', 5.5);--Kiến trúc máy tính

-- sinh viên ('2001200354', 'CTDT11', '11DHTH5', N'LƯƠNG TUYẾT MI', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001200354', 'M01K11', 3.5),--Nhập môn lập trình ngành 
       ('2001200354', 'M02K11', 7.0),--Cấu trúc dữ liệu và giải thuật ngành
       ('2001200354', 'M03K11', 5.8),--Lập trình hướng đối tượng ngành
	   ('2001200354', 'M04K11', 5.5),--Công nghệ NET
	   ('2001200354', 'M05K11', 4.5),--Cơ sở dữ liệu
	   ('2001200354', 'M06K11', 5.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001200354', 'M07K11', 7.0),--Trí tuệ nhân tạo
	   ('2001200354', 'M08K11', 6.5),-- Mạng máy tính
	   ('2001200354', 'M09K11', 4.0),--Hệ điều hành
	   ('2001200354', 'M10K11', 5.3);--Kiến trúc máy tính

--sinh viên ('2001457232', 'CTDT11','CNPM','11DHTH7', N'PHAN NHẬT ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001457232', 'M01K11', 8.1),--Nhập môn lập trình ngành CNPM
       ('2001457232', 'M02K11', 5.3),--Cấu trúc dữ liệu và giải thuật ngành CNPM
       ('2001457232', 'M03K11', 8.3),--Lập trình hướng đối tượng ngành CNPM
	   ('2001457232', 'M04K11', 6.9),--Công nghệ NET
	   ('2001457232', 'M05K11', 6.3),--Cơ sở dữ liệu
	   ('2001457232', 'M06K11', 8.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001457232', 'M07K11', 7.0),--Trí tuệ nhân tạo
	   ('2001457232', 'M08K11', 7.2),-- Mạng máy tính
	   ('2001457232', 'M09K11', 5.9),--Hệ điều hành
	   ('2001457232', 'M10K11', 3.5);--Kiến trúc máy tính

--sinh viên ('2005234424', 'CTDT11','KHPTDL','11DHTH1', N'PHAN THANH BÌNH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2005234424', 'M01K11', 5.9),--Nhập môn lập trình
       ('2005234424', 'M02K11', 6.6),--Cấu trúc dữ liệu và giải thuật 
       ('2005234424', 'M03K11', 7.5),--Lập trình hướng đối tượng
	   ('2005234424', 'M04K11', 6.0),--Công nghệ NET
	   ('2005234424', 'M05K11', 5.5),--Cơ sở dữ liệu
	   ('2005234424', 'M06K11', 6.7),--Hệ quản trị cơ sở dữ liệu
	   ('2005234424', 'M07K11', 8.0),--Trí tuệ nhân tạo
	   ('2005234424', 'M08K11', 5.5),-- Mạng máy tính
	   ('2005234424', 'M09K11', 6.0),--Hệ điều hành
	   ('2005234424', 'M10K11', 7.7);--Kiến trúc máy tính

--sinh viên ('2005124344', 'CTDT11','CNPM','11DHTH1', N'LÝ MỸ CẤM', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2005124344', 'M01K11', 7.5),--Nhập môn lập trình
       ('2005124344', 'M02K11', 7.5),--Cấu trúc dữ liệu và giải thuật 
       ('2005124344', 'M03K11', 7.5),--Lập trình hướng đối tượng 
	   ('2005124344', 'M04K11', 8.2),--Công nghệ NET
	   ('2005124344', 'M05K11', 8.0),--Cơ sở dữ liệu
	   ('2005124344', 'M06K11', 5.9),--Hệ quản trị cơ sở dữ liệu
	   ('2005124344', 'M07K11', 3.9),--Trí tuệ nhân tạo
	   ('2005124344', 'M08K11', 5.0),-- Mạng máy tính
	   ('2005124344', 'M09K11', 6.5),--Hệ điều hành
	   ('2005124344', 'M10K11', 7.0);--Kiến trúc máy tính

--sinh viên ('2001143424', 'CTDT11','MMT', '11DHTH6', N'NGUYỄN GIA CHÍ', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001143424', 'M01K11', 6.5),--Nhập môn lập trình
       ('2001143424', 'M02K11', 5.5),--Cấu trúc dữ liệu và giải thuật
       ('2001143424', 'M03K11', 6.0),--Lập trình hướng đối tượng ngành
	   ('2001143424', 'M04K11', 7.0),--Công nghệ NET
	   ('2001143424', 'M05K11', 5.9),--Cơ sở dữ liệu
	   ('2001143424', 'M06K11', 6.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001143424', 'M07K11', 4.0),--Trí tuệ nhân tạo
	   ('2001143424', 'M08K11', 5.5),-- Mạng máy tính
	   ('2001143424', 'M09K11', 6.0),--Hệ điều hành
	   ('2001143424', 'M10K11', 5.9);--Kiến trúc máy tính

--sinh viên ('2001134325', 'CTDT11','KHPTDL','11DHTH1', N'NGUYỄN TIẾN TÍN', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001134325', 'M01K11', 8.0),--Nhập môn lập trình
       ('2001134325', 'M02K11', 6.5),--Cấu trúc dữ liệu và giải thuật
       ('2001134325', 'M03K11', 7.0),--Lập trình hướng đối tượng
	   ('2001134325', 'M04K11', 7.3),--Công nghệ NET
	   ('2001134325', 'M05K11', 4.0),--Cơ sở dữ liệu
	   ('2001134325', 'M06K11', 3.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001134325', 'M07K11', 7.5),--Trí tuệ nhân tạo
	   ('2001134325', 'M08K11', 6.0),-- Mạng máy tính
	   ('2001134325', 'M09K11', 6.0),--Hệ điều hành
	   ('2001134325', 'M10K11', 7.9);--Kiến trúc máy tính

--sinh viên ('2001765565', 'CTDT11','CNPM', '11DHTH2', N'NGUYỄN HÙNG CƯỜNG', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001765565', 'M01K11', 7.5),--Nhập môn lập trình
       ('2001765565', 'M02K11', 5.9),--Cấu trúc dữ liệu và giải thuật
       ('2001765565', 'M03K11', 4.0),--Lập trình hướng đối tượng
	   ('2001765565', 'M04K11', 7.0),--Công nghệ NET
	   ('2001765565', 'M05K11', 1.5),--Cơ sở dữ liệu
	   ('2001765565', 'M06K11', 6.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001765565', 'M07K11', 8.0),--Trí tuệ nhân tạo
	   ('2001765565', 'M08K11', 3.0),-- Mạng máy tính
	   ('2001765565', 'M09K11', 4.5),--Hệ điều hành
	   ('2001765565', 'M10K11', 6.9);--Kiến trúc máy tính

--sinh viên ('2001156765', 'CTDT11','CNPM','10DHTH8', N'TRẦN HỮU DI', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001156765', 'M01K11', 3.9),--Nhập môn lập trình
       ('2001156765', 'M02K11', 6.0),--Cấu trúc dữ liệu và giải thuật
       ('2001156765', 'M03K11', 5.5),--Lập trình hướng đối tượng
	   ('2001156765', 'M04K11', 6.0),--Công nghệ NET
	   ('2001156765', 'M05K11', 4.5),--Cơ sở dữ liệu
	   ('2001156765', 'M06K11', 4.1),--Hệ quản trị cơ sở dữ liệu
	   ('2001156765', 'M07K11', 6.2),--Trí tuệ nhân tạo
	   ('2001156765', 'M08K11', 8.0),-- Mạng máy tính
	   ('2001156765', 'M09K11', 4.4),--Hệ điều hành
	   ('2001156765', 'M10K11', 7.3);--Kiến trúc máy tính

--sinh viên ('2001734575', 'CTDT11','HTTT','10DHTH2', N'TRẦN HỮU DANH', '123');
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001734575', 'M01K11', 5.5),--Nhập môn lập trình
       ('2001734575', 'M02K11', 5.9),--Cấu trúc dữ liệu và giải thuật
       ('2001734575', 'M03K11', 7.7),--Lập trình hướng đối tượng
	   ('2001734575', 'M04K11', 6.0),--Công nghệ NET
	   ('2001734575', 'M05K11', 5.5),--Cơ sở dữ liệu
	   ('2001734575', 'M06K11', 3.3),--Hệ quản trị cơ sở dữ liệu
	   ('2001734575', 'M07K11', 6.6),--Trí tuệ nhân tạo
	   ('2001734575', 'M08K11', 8.9),-- Mạng máy tính
	   ('2001734575', 'M09K11', 9.0),--Hệ điều hành
	   ('2001734575', 'M10K11', 2.9);--Kiến trúc máy tính

-------------------------------------------------- Chèn dữ liệu vào bảng Diem của Khoa12-----------------------------------------------------
--sinh viên('2001638423', 'CTDT12', '12DHTH7', N'NGUYỄN HOÀNG ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001638423', 'M01K12', 5.0),--Nhập môn lập trình ngành CNPM
       ('2001638423', 'M02K12', 7.0),--Cấu trúc dữ liệu và giải thuật ngành CNPM
       ('2001638423', 'M03K12', 6.5),--Lập trình hướng đối tượng ngành CNPM
	   ('2001638423', 'M04K12', 4.5),--Công nghệ NET
	   ('2001638423', 'M05K12', 7.0),--Cơ sở dữ liệu
	   ('2001638423', 'M06K12', 5.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001638423', 'M07K12', 6.0),--Trí tuệ nhân tạo
	   ('2001638423', 'M08K12', 8.0),-- Mạng máy tính
	   ('2001638423', 'M09K12', 3.5),--Hệ điều hành
	   ('2001638423', 'M10K12', 7.5);--Kiến trúc máy tính

--sinh viên('2001733643', 'CTDT12', '12DHTH5', N'TRẦN KHÁNH TIẾN', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001733643', 'M01K12', 7.0),--Nhập môn lập trình
       ('2001733643', 'M02K12', 4.5),--Cấu trúc dữ liệu và giải thuật
       ('2001733643', 'M03K12', 6.0),--Lập trình hướng đối tượng
	   ('2001733643', 'M04K12', 7.9),--Công nghệ NET
	   ('2001733643', 'M05K12', 5.1),--Cơ sở dữ liệu
	   ('2001733643', 'M06K12', 8.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001733643', 'M07K12', 5.5),--Trí tuệ nhân tạo
	   ('2001733643', 'M08K12', 6.1),-- Mạng máy tính
	   ('2001733643', 'M09K12', 8.0),--Hệ điều hành
	   ('2001733643', 'M10K12', 8.5);--Kiến trúc máy tính

--sinh viên('2001425954', 'CTDT12', '12DHTH5', N'NGUYỄN HOÀNG ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001425954', 'M01K12', 6.3),--Nhập môn lập trình
       ('2001425954', 'M02K12', 7.5),--Cấu trúc dữ liệu và giải thuật
       ('2001425954', 'M03K12', 4.0),--Lập trình hướng đối tượng
	   ('2001425954', 'M04K12', 8.0),--Công nghệ NET
	   ('2001425954', 'M05K12', 5.9),--Cơ sở dữ liệu
	   ('2001425954', 'M06K12', 7.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001425954', 'M07K12', 8.5),--Trí tuệ nhân tạo
	   ('2001425954', 'M08K12', 8.1),-- Mạng máy tính
	   ('2001425954', 'M09K12', 4.5),--Hệ điều hành
	   ('2001425954', 'M10K12', 7.5);--Kiến trúc máy tính

--sinh viên('2001367345', 'CTDT12', '12DHTH8', N'PHAN HÙYNG CẨM LY', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001367345', 'M01K12', 5.5),--Nhập môn lập trình
       ('2001367345', 'M02K12', 6.0),--Cấu trúc dữ liệu và giải thuật 
       ('2001367345', 'M03K12', 8.0),--Lập trình hướng đối tượng
	   ('2001367345', 'M04K12', 5.5),--Công nghệ NET
	   ('2001367345', 'M05K12', 7.5),--Cơ sở dữ liệu
	   ('2001367345', 'M06K12', 8.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001367345', 'M07K12', 6.5),--Trí tuệ nhân tạo
	   ('2001367345', 'M08K12', 6.0),-- Mạng máy tính
	   ('2001367345', 'M09K12', 5.5),--Hệ điều hành
	   ('2001367345', 'M10K12', 7.5);--Kiến trúc máy tính

--sinh viên('2001678322', 'CTDT12', '12DHTH5', N'TRƯƠNG VIỆT ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001678322', 'M01K12', 7.0),--Nhập môn lập trình
       ('2001678322', 'M02K12', 8.0),--Cấu trúc dữ liệu và giải thuật
       ('2001678322', 'M03K12', 7.0),--Lập trình hướng đối tượng
	   ('2001678322', 'M04K12', 7.5),--Công nghệ NET
	   ('2001678322', 'M05K12', 4.5),--Cơ sở dữ liệu
	   ('2001678322', 'M06K12', 8.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001678322', 'M07K12', 4.3),--Trí tuệ nhân tạo
	   ('2001678322', 'M08K12', 6.2),-- Mạng máy tính
	   ('2001678322', 'M09K12', 7.1),--Hệ điều hành
	   ('2001678322', 'M10K12', 7.3);--Kiến trúc máy tính

--sinh viên('2001855353', 'CTDT12', '12DHTH2', N'LÊ THÁI BẢO', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001855353', 'M01K12', 5.3),--Nhập môn lập trình
       ('2001855353', 'M02K12', 6.5),--Cấu trúc dữ liệu và giải thuật
       ('2001855353', 'M03K12', 5.1),--Lập trình hướng đối tượng
	   ('2001855353', 'M04K12', 8.0),--Công nghệ NET
	   ('2001855353', 'M05K12', 6.0),--Cơ sở dữ liệu
	   ('2001855353', 'M06K12', 5.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001855353', 'M07K12', 4.0),--Trí tuệ nhân tạo
	   ('2001855353', 'M08K12', 7.5),-- Mạng máy tính
	   ('2001855353', 'M09K12', 7.0),--Hệ điều hành
	   ('2001855353', 'M10K12', 8.3);--Kiến trúc máy tính

--sinh viên('2001754524', 'CTDT12', '12DHTH3', N'NGUYỄN THÀNH BÌNH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001754524', 'M01K12', 7.0),--Nhập môn lập trình
       ('2001754524', 'M02K12', 7.5),--Cấu trúc dữ liệu và giải thuật
       ('2001754524', 'M03K12', 5.5),--Lập trình hướng đối tượng
	   ('2001754524', 'M04K12', 7.0),--Công nghệ NET
	   ('2001754524', 'M05K12', 7.0),--Cơ sở dữ liệu
	   ('2001754524', 'M06K12', 5.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001754524', 'M07K12', 4.0),--Trí tuệ nhân tạo
	   ('2001754524', 'M08K12', 5.5),-- Mạng máy tính
	   ('2001754524', 'M09K12', 7.0),--Hệ điều hành
	   ('2001754524', 'M10K12', 8.5);--Kiến trúc máy tính
--sinh viên('2001678345', 'CTDT12', '12DHTH5', N'LÊ MÌNH CHIẾN', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001678345', 'M01K12', 7.0),--Nhập môn lập trình
       ('2001678345', 'M02K12', 7.5),--Cấu trúc dữ liệu và giải thuật
       ('2001678345', 'M03K12', 5.5),--Lập trình hướng đối tượng
	   ('2001678345', 'M04K12', 7.0),--Công nghệ NET
	   ('2001678345', 'M05K12', 7.0),--Cơ sở dữ liệu
	   ('2001678345', 'M06K12', 5.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001678345', 'M07K12', 4.0),--Trí tuệ nhân tạo
	   ('2001678345', 'M08K12', 5.5),-- Mạng máy tính
	   ('2001678345', 'M09K12', 7.0),--Hệ điều hành
	   ('2001678345', 'M10K12', 8.5);--Kiến trúc máy tính

--sinh viên('2001175644', 'CTDT12', '12DHTH6', N'NGUYỄN HUY DANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001175644', 'M01K12', 6.5),--Nhập môn lập trình
       ('2001175644', 'M02K12', 7.0),--Cấu trúc dữ liệu và giải thuật
       ('2001175644', 'M03K12', 6.0),--Lập trình hướng đối tượng
	   ('2001175644', 'M04K12', 5.5),--Công nghệ NET
	   ('2001175644', 'M05K12', 8.5),--Cơ sở dữ liệu
	   ('2001175644', 'M06K12', 7.0),--Hệ quản trị cơ sở dữ liệu
	   ('2001175644', 'M07K12', 5.5),--Trí tuệ nhân tạo
	   ('2001175644', 'M08K12', 6.5),-- Mạng máy tính
	   ('2001175644', 'M09K12', 7.5),--Hệ điều hành
	   ('2001175644', 'M10K12', 7.5);--Kiến trúc máy tính

--sinh viên('2001666843', 'CTDT12', '12DHTH8', N'NGUYỄN MINH DANH', '123');
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001666843', 'M01K12', 5.5),--Nhập môn lập trình
       ('2001666843', 'M02K12', 6.4),--Cấu trúc dữ liệu và giải thuật
       ('2001666843', 'M03K12', 7.3),--Lập trình hướng đối tượng
	   ('2001666843', 'M04K12', 5.5),--Công nghệ NET
	   ('2001666843', 'M05K12', 6.3),--Cơ sở dữ liệu
	   ('2001666843', 'M06K12', 7.3),--Hệ quản trị cơ sở dữ liệu
	   ('2001666843', 'M07K12', 6.3),--Trí tuệ nhân tạo
	   ('2001666843', 'M08K12', 6.1),-- Mạng máy tính
	   ('2001666843', 'M09K12', 8.5),--Hệ điều hành
	   ('2001666843', 'M10K12', 6.5);--Kiến trúc máy tính

-------------------------------------------------- Chèn dữ liệu vào bảng Diem của Khoa13-----------------------------------------------------
--sinh viên	('2001202038', 'CTDT13', '13DHTH7', N'LƯƠNG QUANG TÝ', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001666843', 'M01K13', 5.9),--Nhập môn lập trình ngành CNPM
       ('2001666843', 'M02K13', 6.5),--Cấu trúc dữ liệu và giải thuật ngành CNPM
	   ('2001666843', 'M03K13', 7.9),--Dữ liệu NoSQL
	   ('2001666843', 'M04K13', 5.5),--Công nghệ NET
	   ('2001666843', 'M05K13', 6.3),--Cơ sở dữ liệu
	   ('2001666843', 'M06K13', 7.3),--Hệ quản trị cơ sở dữ liệu
	   ('2001666843', 'M07K13', 6.3),--Trí tuệ nhân tạo
	   ('2001666843', 'M08K13', 6.1),-- Mạng máy tính
	   ('2001666843', 'M09K13', 8.5),--Hệ điều hành
	   ('2001666843', 'M10K13', 6.5);--Kiến trúc máy tính

--sinh viên	('2003384734', 'CTDT13', '13DHTH5', N'TRẦN THIÊN KIỀU', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2003384734', 'M01K13', 6.0),--Nhập môn lập trình ngành CNPM
       ('2003384734', 'M02K13', 5.5),--Cấu trúc dữ liệu và giải thuật ngành CNPM
	   ('2003384734', 'M03K13', 7.0),--Dữ liệu NoSQL
	   ('2003384734', 'M04K13', 8.0),--Công nghệ NET
	   ('2003384734', 'M05K13', 6.5),--Cơ sở dữ liệu
	   ('2003384734', 'M06K13', 7.0),--Hệ quản trị cơ sở dữ liệu
	   ('2003384734', 'M07K13', 6.5),--Trí tuệ nhân tạo
	   ('2003384734', 'M08K13', 6.6),-- Mạng máy tính
	   ('2003384734', 'M09K13', 8.0),--Hệ điều hành
	   ('2003384734', 'M10K13', 6.3);--Kiến trúc máy tính

--sinh viên	('2000038456', 'CTDT13', '13DHTH5', N'NGUYỄN THÚY ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2000038456', 'M01K13', 6.5),--Nhập môn lập trình ngành CNPM
       ('2000038456', 'M02K13', 7.5),--Cấu trúc dữ liệu và giải thuật ngành CNPM
	   ('2000038456', 'M03K13', 3.5),--Dữ liệu NoSQL
	   ('2000038456', 'M04K13', 8.5),--Công nghệ NET
	   ('2000038456', 'M05K13', 7.1),--Cơ sở dữ liệu
	   ('2000038456', 'M06K13', 8.0),--Hệ quản trị cơ sở dữ liệu
	   ('2000038456', 'M07K13', 7.0),--Trí tuệ nhân tạo
	   ('2000038456', 'M08K13', 6.6),-- Mạng máy tính
	   ('2000038456', 'M09K13', 6.5),--Hệ điều hành
	   ('2000038456', 'M10K13', 6.3);--Kiến trúc máy tính

--sinh viên	('2001330054', 'CTDT13', '13DHTH8', N'PHAN HÙYNG DUY HƯNG', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001330054', 'M01K13', 6.6),--Nhập môn lập trình
       ('2001330054', 'M02K13', 7.0),--Cấu trúc dữ liệu và giải thuật
	   ('2001330054', 'M03K13', 5.5),--Dữ liệu NoSQL
	   ('2001330054', 'M04K13', 8.0),--Công nghệ NET
	   ('2001330054', 'M05K13', 5.5),--Cơ sở dữ liệu
	   ('2001330054', 'M06K13', 7.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001330054', 'M07K13', 6.5),--Trí tuệ nhân tạo
	   ('2001330054', 'M08K13', 6.6),-- Mạng máy tính
	   ('2001330054', 'M09K13', 8.8),--Hệ điều hành
	   ('2001330054', 'M10K13', 6.5);--Kiến trúc máy tính

--sinh viên	('2001110322', 'CTDT13', '13DHTH5', N'TRƯƠNG LÂM ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001110322', 'M01K13', 5.5),--Nhập môn lập trình
       ('2001110322', 'M02K13', 6.0),--Cấu trúc dữ liệu và giải thuật
	   ('2001110322', 'M03K13', 7.5),--Dữ liệu NoSQL
	   ('2001110322', 'M04K13', 7.6),--Công nghệ NET
	   ('2001110322', 'M05K13', 4.6),--Cơ sở dữ liệu
	   ('2001110322', 'M06K13', 8.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001110322', 'M07K13', 3.3),--Trí tuệ nhân tạo
	   ('2001110322', 'M08K13', 5.5),-- Mạng máy tính
	   ('2001110322', 'M09K13', 7.3),--Hệ điều hành
	   ('2001110322', 'M10K13', 4.5);--Kiến trúc máy tính

--sinh viên	('2003842455', 'CTDT13', '13DHTH2', N'LÊ THÁI ANH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2003842455', 'M01K13', 7.3),--Nhập môn lập trình
       ('2003842455', 'M02K13', 6.3),--Cấu trúc dữ liệu và giải thuật
	   ('2003842455', 'M03K13', 5.1),--Dữ liệu NoSQL
	   ('2003842455', 'M04K13', 7.3),--Công nghệ NET
	   ('2003842455', 'M05K13', 5.5),--Cơ sở dữ liệu
	   ('2003842455', 'M06K13', 7.0),--Hệ quản trị cơ sở dữ liệu
	   ('2003842455', 'M07K13', 5.5),--Trí tuệ nhân tạo
	   ('2003842455', 'M08K13', 5.1),-- Mạng máy tính
	   ('2003842455', 'M09K13', 7.5),--Hệ điều hành
	   ('2003842455', 'M10K13', 5.5);--Kiến trúc máy tính

--sinh viên	('2001324452', 'CTDT13', '13DHTH3', N'NGUYỄN LAM BÌNH', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001324452', 'M01K13', 5.9),--Nhập môn lập trình
       ('2001324452', 'M02K13', 6.0),--Cấu trúc dữ liệu và giải thuật
	   ('2001324452', 'M03K13', 5.5),--Dữ liệu NoSQL
	   ('2001324452', 'M04K13', 7.0),--Công nghệ NET
	   ('2001324452', 'M05K13', 6.0),--Cơ sở dữ liệu
	   ('2001324452', 'M06K13', 6.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001324452', 'M07K13', 7.5),--Trí tuệ nhân tạo
	   ('2001324452', 'M08K13', 5.5),-- Mạng máy tính
	   ('2001324452', 'M09K13', 7.0),--Hệ điều hành
	   ('2001324452', 'M10K13', 5.0);--Kiến trúc máy tính

--sinh viên	('2002456661', 'CTDT13', '13DHTH5', N'LÊ THIỆU CHIẾN', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2002456661', 'M01K13', 7.0),--Nhập môn lập trình
       ('2002456661', 'M02K13', 6.5),--Cấu trúc dữ liệu và giải thuật
	   ('2002456661', 'M03K13', 7.5),--Dữ liệu NoSQL
	   ('2002456661', 'M04K13', 7.5),--Công nghệ NET
	   ('2002456661', 'M05K13', 4.0),--Cơ sở dữ liệu
	   ('2002456661', 'M06K13', 5.5),--Hệ quản trị cơ sở dữ liệu
	   ('2002456661', 'M07K13', 8.5),--Trí tuệ nhân tạo
	   ('2002456661', 'M08K13', 7.5),-- Mạng máy tính
	   ('2002456661', 'M09K13', 7.5),--Hệ điều hành
	   ('2002456661', 'M10K13', 3.0);--Kiến trúc máy tính
--sinh viên	('2001334520', 'CTDT13', '13DHTH6', N'NGUYỄN HUY HOÀNG', '123'),
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001334520', 'M01K13', 4.5),--Nhập môn lập trình
       ('2001334520', 'M02K13', 6.0),--Cấu trúc dữ liệu và giải thuật
	   ('2001334520', 'M03K13', 7.3),--Dữ liệu NoSQL
	   ('2001334520', 'M04K13', 7.0),--Công nghệ NET
	   ('2001334520', 'M05K13', 5.5),--Cơ sở dữ liệu
	   ('2001334520', 'M06K13', 6.5),--Hệ quản trị cơ sở dữ liệu
	   ('2001334520', 'M07K13', 7.5),--Trí tuệ nhân tạo
	   ('2001334520', 'M08K13', 5.9),-- Mạng máy tính
	   ('2001334520', 'M09K13', 6.6),--Hệ điều hành
	   ('2001334520', 'M10K13', 4.5);--Kiến trúc máy tính

--sinh viên	('2001633311', 'CTDT13', '13DHTH8', N'NGUYỄN PHÚC HẢO', '123');
INSERT INTO Diem (MaSV, MaMon, Diem)
VALUES ('2001633311', 'M01K13', 6.6),--Nhập môn lập trình
       ('2001633311', 'M02K13', 7.0),--Cấu trúc dữ liệu và giải thuật
	   ('2001633311', 'M03K13', 7.5),--Dữ liệu NoSQL
	   ('2001633311', 'M04K13', 5.0),--Công nghệ NET
	   ('2001633311', 'M05K13', 5.5),--Cơ sở dữ liệu
	   ('2001633311', 'M06K13', 6.6),--Hệ quản trị cơ sở dữ liệu
	   ('2001633311', 'M07K13', 7.9),--Trí tuệ nhân tạo
	   ('2001633311', 'M08K13', 6.5),-- Mạng máy tính
	   ('2001633311', 'M09K13', 6.9),--Hệ điều hành
	   ('2001633311', 'M10K13', 5.5);--Kiến trúc máy tính