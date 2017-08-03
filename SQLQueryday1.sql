create database Fresher30DN_BSQL_Day2_HoangNQ6
create table SANPHAM
(
MaSP NVARCHAR(10) NOT NULL
CONSTRAINT pk_sanpham
PRIMARY KEY(MaSP),
TenSP NVARCHAR(40) NOT NULL,
MaLoaiSP NVARCHAR(10) NOT NULL
CONSTRAINT fk_sanpham_loaisanpham
FOREIGN KEY (MaLoaiSP)
REFERENCES LOAISP(MaLoaiSP),
GiaBan money NULL
)

create table LOAISP
(
MaLoaiSP NVARCHAR(10) NOT NULL
CONSTRAINT pk_loaisanpham
PRIMARY KEY(MaLoaiSP),
TenLoaiSP NVARCHAR(40) NOT NULL
)
create table NHANVIEN
(
MaNV NVARCHAR(10) NOT NULL
CONSTRAINT pk_nhanvien
PRIMARY KEY(MaNV),
HoTenNV NVARCHAR(40) NOT NULL,
GioiTinh int NULL,
QueQuan NVARCHAR(60) Null,
Tuoi int NULL
)
create table BANHANG
(
MaNV NVARCHAR(10) NOT NULL
CONSTRAINT fk_banhang_nhanvien
FOREIGN KEY (MaNV)
REFERENCES NHANVIEN(MaNV),
MaSP NVARCHAR(10) NOT NULL
CONSTRAINT fk_banhang_sanpham
FOREIGN KEY (MaSP)
REFERENCES SANPHAM(MaSP),
SoLuongDaBan int null
)

--data NHANVIEN--
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (1,N'Nguyễn Quang Hoàng', 1,N'Quảng Nam',24)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (2,N'Nguyễn Quang Tèo', 1,N'Quảng Nam',23)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (3,N'Nguyễn  Hoà', 0,N'Quảng Nam',22)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (4,N'Nguyễn Văn A', 1,N'Đà Nẵng',24)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (5,N'Nguyễn thị Nở', 0,N'Đà Nẵng',20)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (6,N'Nguyễn Thị Tủm', 1,N'Huế',19)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (17,N'Nguyễn Thị Tủm3', 0,N'Kon Tum',19)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (18,N'Nguyễn Thị Tủm2', 0,N'Kon Tom',23)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (13,N'123456654321', 0,N'Kon Tom',18)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (20,N'Nguyễn chí Phèo', 0,N'Quảng Trị',18)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (200,N'Nguyễn chí Phèo', 0,N'',18)
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,Tuoi) VALUES (2010,N'Nguyễn chí Phèo', 0,18)
--data LoaiSANPHAM--
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (1,N'Sản Phẩm Loại 1')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (2,N'Sản Phẩm Loại 2')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (3,N'Sản Phẩm Loại 3')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (4,N'Sản Phẩm Loại 4')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (5,N'Sản Phẩm Loại 5')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (6,N'Sản Phẩm Loại 6')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES (7,N'Sản Phẩm Loại 7')
INSERT INTO LOAISP (MaLoaiSP, TenLoaiSP) VALUES ('Type001',N' Mã Loại Type001')
--data SANPHAM--
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (1,N'Sản Phẩm1',1,1000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (2,N'Sản Phẩm2',1,13000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (3,N'Sản Phẩm3',2,13000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (4,N'Sản Phẩm4',3,14000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (5,N'Sản Phẩm5',4,14000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (6,N'Sản Phẩm6',4,15000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (17,N'Sản Phẩm7',9,16000000)
INSERT INTO SANPHAM (MaSP, TenSP,MaLoaiSP,GiaBan) VALUES (22,N'Sản Phẩm8','Type001',67000000)
--data banhang
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (1,2,120)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (1,3,10)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (3,1,130)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (4,6,10)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (5,5,120)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (5,2,120)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (1,1,102)
INSERT INTO BANHANG (MaNV, MaSP, SoLuongDaBan) VALUES (6,6,104)
--select--
select * from SANPHAM
select * from NHANVIEN
select * from BANHANG
select * from LOAISP

--Câu 1 1.	Thêm 1 nhân viên có MãNV là 'NV01', Tên là Nguyễn Chí Phèo, Nam, Quê ở Quảng Trị, 18 tuổi--
INSERT INTO NHANVIEN (MaNV, HoTenNV, GioiTinh,QueQuan,Tuoi) VALUES (10,N'Nguyễn chí Phèo', 1,N'Quảng Trị',18)

--2. Xóa những nhân viên nữ quê ở Kon Tum
	delete from NHANVIEN where QueQuan = 'Kon Tum' and GioiTinh = 0

-- 3 Tăng giá bán lên gấp đôi cho những sản phẩm có mã loại sản phẩm là 'Type001'

update SANPHAM set GiaBan=GiaBan*2 where MaLoaiSP = 'Type001'
-- 4 Hãy liệt kê thông tin toàn bộ nhân viên trong công ty
	select * from NHANVIEN
-- 5 Hãy liệt kê toàn bộ thông tin của nhân viên từ 23 tuổi trở lên và có quê quán ở Bình Định
	select * from NHANVIEN where Tuoi>=23 and QueQuan='Bình Định'
-- 6 Hãy liệt kê Mã sản phẩm của những sản phẩm đã từng được bán
	select distinct MaSP as 'mã sản phẩm đã từng bán' from SANPHAM where MaSP in(select MaSP from BANHANG)
-- 7 Hãy liệt kê những nhân viên có họ là Nguyễn
	select * from NHANVIEN where HoTenNV like 'Nguyễn%'
-- 8 Hãy liệt kê những nhân viên có tên là Hoa
	select * from NHANVIEN where HoTenNV like '%Hoa'
-- 9 Hãy liệt kê những sản phẩm có tên bao gồm 12 ký tự
	select * from NHANVIEN where HoTenNV like '____________'
-- 10 Hãy liệt kê những sản phẩm thuộc loại 'Mỹ phẩm'
	select sp.TenSP from SANPHAM as sp inner join LOAISP as l on sp.MaLoaiSP=l.MaLoaiSP where l.TenLoaiSP='Mỹ phẩm'
-- 11 Hãy liệt kê những sản phẩm có giá bán dưới 20.000 hoặc chưa từng được bán lần nào
	select distinct TenSP from SANPHAM where GiaBan<=20000 or MaSP not in(select MaSP from BANHANG)
-- 12(*) Hãy liệt kê những nhưng viên chưa từng bán được sản phẩm nào và những nhân viên chỉ mới bán được sản phẩm Bột giặt OMO
	select nv.HoTenNV from NHANVIEN nv where nv.MaNV not in(select MaNV from BANHANG)
-- 13 Hãy liệt kê mã nhân viên của những nhân viên có quê ở Gia Lai và chưa từng bán được sản phẩm nào
	select nv.HoTenNV from NHANVIEN nv where nv.MaNV not in(select MaNV from BANHANG) and nv.QueQuan='Gia Lai'
-- 14 Hãy liệt kê MaSP, TênSP, Mã Loại SP, Giá Bán, Tên Loại SP của tất cả những sản phẩm đã có niêm yết giá bán
	select sp.MaSP, sp.TenSP, l.MaLoaiSP, l.TenLoaiSP, sp.GiaBan from SANPHAM sp inner join LOAISP l on 
	sp.MaLoaiSP=l.MaLoaiSP where sp.GiaBan>0 and sp.MaSP in(select MaSP from BANHANG)
-- 15 Hãy liệt kê MãNV, Họ tên NV, Giới Tính, Quê Quán của nhân viên và mã sản phẩm, tên sản phẩm, 
	-- loại sản phẩm, tên loại sản phẩm, số lượng đã bán của tất cả các những nhân viên đã từng bán được hàng.

	select nv.MaNV, nv.HoTenNV, nv.GioiTinh, nv.QueQuan, sp.MaSP, sp.TenSP,l.MaLoaiSP, l.TenLoaiSP,bh.SoLuongDaBan 
	 from NHANVIEN nv inner join BANHANG bh on nv.MaNV=bh.MaNV inner join SANPHAM sp on sp.MaSP= bh.MaSP
	inner join LOAISP l on l.MaLoaiSP=sp.MaLoaiSP
	where nv.MaNV in(select MaNV from BANHANG)
	
	-- 16 Hãy liệt kê Mã Loại SP, Tên loại SP của những loại sản phẩm đã từng được bán

	select distinct l.MaLoaiSP, l.TenLoaiSP from SANPHAM sp inner join LOAISP l on l.MaLoaiSP=sp.MaLoaiSP
	 where sp.MaSP in(select MaSP from BANHANG) 
-- 17(*) Hãy liệt kê tên (họ + tên) của những nhân viên trong công ty (nếu có tên trùng nhau thì chỉ hiển thị tên đó 1 lần)


-- 18 Hãy liệt kê MaNV, TênNV, Quê Quán của tất cả nhân viên, nếu bạn nào chưa có quê quán thì mục quê quán 
-- sẽ hiển thị là 'Cõi trên xuống'
	select MaNV, HoTenNV, case nv.QueQuan when '' then N'Cõi trên xuống' else nv.QueQuan end as
	 quequan from NHANVIEN as nv
-- 19 Hãy liệt kê 5 nhân viên có tuổi đời cao nhất trong công ty
	select top 5 MaNV, HoTenNV from NHANVIEN order by Tuoi desc
-- 20
