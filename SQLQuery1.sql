-- Bài tập sql cơ bản làm thêm
	create database Fresher30DN_BSQL_EXAM_HoangNQ6
	-- LOAIAN
		create table LOAIAN
		(
		MaLoaiAn NVARCHAR(10) NOT NULL
		CONSTRAINT pk_loaian
		PRIMARY KEY(MaLoaiAn),
		TenLoaiAn NVARCHAR(40) NOT NULL
		) 
	-- DOITUONG
	create table DOITUONG
		(
		MaDoiTuong NVARCHAR(10) NOT NULL
		CONSTRAINT pk_doituong
		PRIMARY KEY(MaDoiTuong),
		HoTen NVARCHAR(40) NOT NULL,
		NgaySinh date not null,
		GioiTinh int null,
		NoiSinh  NVARCHAR(60) NULL,
		DanToc  NVARCHAR(40) NULL,
		SoCMNN  NVARCHAR(10) NULL,
		DienThoai  NVARCHAR(12) NULL,
		DiaChiThuongTru  NVARCHAR(100) NULL,
		NgheNghiep  NVARCHAR(40) NULL,
		TrinhDoHocVan  NVARCHAR(40) NULL,
		LaDangVien int null
		)
	-- CHITIETTHULY
	create table CHITIETTHULY
		(
		MaCanBo NVARCHAR(10) NOT NULL
		CONSTRAINT fk_chitietthuly_canbothuly
		FOREIGN KEY (MaCanBo)
		REFERENCES CANBOTHULY(MaCanBo),
		MaHoSo NVARCHAR(10) NOT NULL
		CONSTRAINT fk_chitietthuly_hosovipham
		FOREIGN KEY (MaHoSo)
		REFERENCES HOSOVIPHAM(MaHoSo),
		NgayTiepNhan date not null,
		NgayPhaAn date not null,
		NgayKetThuc date not null
		)
	-- CANBOTHULY
	create table CANBOTHULY
		(
		MaCanBo NVARCHAR(10) NOT NULL
		CONSTRAINT pk_canbothuly
		PRIMARY KEY(MaCanBo),
		HoTen NVARCHAR(40) NOT NULL,
		GioiTinh int null,
		NgaySinh date null,
		DiaChi  NVARCHAR(100) NULL,
		ChucVu  NVARCHAR(40) NULL
		)
	--HOSOVIPHAM
	create table HOSOVIPHAM
		(
		MaHoSo NVARCHAR(10) NOT NULL
		CONSTRAINT pk_hosovipham
		PRIMARY KEY(MaHoSo),
		MaDoiTuong NVARCHAR(10) NOT NULL
		CONSTRAINT fk_hosovipham_doituong
		FOREIGN KEY (MaDoiTuong)
		REFERENCES DOITUONG(MaDoiTuong),
		NoiDungViPham NVARCHAR(60) NULL,
		MaLoaiAn NVARCHAR(10) NOT NULL
		CONSTRAINT fk_hosovipham_loaian
		FOREIGN KEY (MaLoaiAn)
		REFERENCES LOAIAN(MaLoaiAn),
		DiaBanXuLy NVARCHAR(100) NULL,
		KetAn NVARCHAR(100) NULL,
		TGBatDauThiHanhAN date not null,
		TGketThucThiHanhAN date not null,
		LaAnKhoiTo NVARCHAR(40) NULL
		)
		--data-
		--LOAIAN--
		INSERT INTO LOAIAN (MaLoaiAn, TenLoaiAn) VALUES ('LA01',N'HINH SU')
		INSERT INTO LOAIAN (MaLoaiAn, TenLoaiAn) VALUES ('LA02',N'DAN SU')
		INSERT INTO LOAIAN (MaLoaiAn, TenLoaiAn) VALUES ('LA03',N'HINH SU VA DAN SU')
		--DOITUONG--
		INSERT INTO DOITUONG (MaDoiTuong , HoTen , NgaySinh , GioiTinh ,NoiSinh, DanToc  ,SoCMNN
		  ,DienThoai  ,DiaChiThuongTru  ,NgheNghiep  ,TrinhDoHocVan  ,LaDangVien )
		 VALUES ('DT001',N'Tran NAM', '1982/12/22',1,N'QUANG BINH',N'KINH',N'201000001',N'0905123456',
		 N'HOA HAI',N'LAI XE',N'TRUNG CAP',1)

		 INSERT INTO DOITUONG (MaDoiTuong , HoTen , NgaySinh , GioiTinh ,NoiSinh, DanToc  ,SoCMNN
		  ,DienThoai  ,DiaChiThuongTru  ,NgheNghiep  ,TrinhDoHocVan  ,LaDangVien )
		 VALUES ('DT0061',N'B123456789012343', '1982/12/22',1,N'QUANG BINH',N'KINH',N'201000001',N'0905123456',
		 N'SON TRA',N'LAI XE',N'TRUNG CAP',1)

		 INSERT INTO DOITUONG (MaDoiTuong , HoTen , NgaySinh , GioiTinh ,NoiSinh, DanToc  ,SoCMNN
		  ,DienThoai  ,DiaChiThuongTru  ,NgheNghiep  ,TrinhDoHocVan  ,LaDangVien )
		 VALUES ('DT002',N'Tran ROI', '1992/1/2',1,N'DA NANG',N'KINH',N'201000001',N'0905123456',
		 N'HOA HAI',N'LAI XE',N'DAI HOC',1)
		 INSERT INTO DOITUONG (MaDoiTuong , HoTen , NgaySinh , GioiTinh ,NoiSinh, DanToc  ,SoCMNN
		  ,DienThoai  ,DiaChiThuongTru  ,NgheNghiep  ,TrinhDoHocVan  ,LaDangVien )
		 VALUES ('DT003',N'PHAN NAM', '1972/2/12',0,N'QUANG TRI',N'KINH',N'201000001',N'0905123456',
		 N'HOA HAI',N'LAI XE',N'TRUNG CAP',0)
		 INSERT INTO DOITUONG (MaDoiTuong , HoTen , NgaySinh , GioiTinh ,NoiSinh, DanToc  ,SoCMNN
		  ,DienThoai  ,DiaChiThuongTru  ,NgheNghiep  ,TrinhDoHocVan  ,LaDangVien )
		 VALUES ('DT004',N'LE TUM', '2002/12/22',1,N'DALACK',N'KINH',N'201000001',N'0905123456',
		 N'HOA HAI',N'LAI XE',N'TRUNG CAP',0)
		 --CANBOTHULY
		  INSERT INTO CANBOTHULY (MaCanBo  , HoTen  , GioiTinh  , NgaySinh  ,DiaChi  , ChucVu)
		 VALUES ('CB001',N'LE TUM',1, '2002/12/22',N'HOA XUAN',N'CHUYEN VIEN')
		   INSERT INTO CANBOTHULY (MaCanBo  , HoTen  , GioiTinh  , NgaySinh  ,DiaChi  , ChucVu)
		 VALUES ('CB002',N'LE TUM2',0, '2002/2/22',N'HOA CHAU',N'CHUYEN VIEN')
		   INSERT INTO CANBOTHULY (MaCanBo  , HoTen  , GioiTinh  , NgaySinh  ,DiaChi  , ChucVu)
		 VALUES ('CB003',N'LE TUM3',1, '2002/1/22',N'HOA HAI',N'CHUYEN VIEN')
		   INSERT INTO CANBOTHULY (MaCanBo  , HoTen  , GioiTinh  , NgaySinh  ,DiaChi  , ChucVu)
		 VALUES ('CB007',N'LE TUM4',0, '2002/10/22',N'SON TRA',N'CHUYEN VIEN')
		 --HOSOVIPHAM

		 INSERT INTO HOSOVIPHAM (MaHoSo  , MaDoiTuong  , NoiDungViPham  , MaLoaiAn  ,DiaBanXuLy , KetAn   ,TGBatDauThiHanhAN 
		  ,TGketThucThiHanhAN   ,LaAnKhoiTo  )
		 VALUES ('HS0001',N'DT001', 'GIET NGUOI','LA01',N'DA NANG',N'TU HINH','2002/1/22','2002/1/22','KHOI TO')
		  INSERT INTO HOSOVIPHAM (MaHoSo  , MaDoiTuong  , NoiDungViPham  , MaLoaiAn  ,DiaBanXuLy , KetAn   ,TGBatDauThiHanhAN 
		  ,TGketThucThiHanhAN   ,LaAnKhoiTo  )
		 VALUES ('HS0002',N'DT002', 'GIET NGUOI','LA02',N'DA NANG',N'TU HINH','2002/1/22','2002/1/22','KHOI TO')
		  INSERT INTO HOSOVIPHAM (MaHoSo  , MaDoiTuong  , NoiDungViPham  , MaLoaiAn  ,DiaBanXuLy , KetAn   ,TGBatDauThiHanhAN 
		  ,TGketThucThiHanhAN   ,LaAnKhoiTo  )
		 VALUES ('HS0003',N'DT003', 'GIET NGUOI','LA03',N'DA NANG',N'TU HINH','2002/1/22','2002/1/22','KHOI TO')

		  INSERT INTO HOSOVIPHAM (MaHoSo  , MaDoiTuong  , NoiDungViPham  , MaLoaiAn  ,DiaBanXuLy , KetAn   ,TGBatDauThiHanhAN 
		  ,TGketThucThiHanhAN   ,LaAnKhoiTo  )
		 VALUES ('HS0004',N'DT004', 'GIET NGUOI','LA04',N'DA NANG',N'TU HINH','2002/1/22','2002/1/22','KHOI TO')
		 -- CHI TIET
		 INSERT INTO CHITIETTHULY (MaCanBo   , MaHoSo   , NgayTiepNhan   , NgayPhaAn   ,NgayKetThuc )
		 VALUES ('CB001',N'HS0001', '2002/1/22','2003/1/22','2004/1/22')
		  INSERT INTO CHITIETTHULY (MaCanBo   , MaHoSo   , NgayTiepNhan   , NgayPhaAn   ,NgayKetThuc )
		  VALUES ('CB001',N'HS0002', '2002/1/22','2003/1/22','2007/1/22')
		   INSERT INTO CHITIETTHULY (MaCanBo   , MaHoSo   , NgayTiepNhan   , NgayPhaAn   ,NgayKetThuc )
		   VALUES ('CB002',N'HS0003', '2002/1/22','2005/1/22','2008/1/22')
		    INSERT INTO CHITIETTHULY (MaCanBo   , MaHoSo   , NgayTiepNhan   , NgayPhaAn   ,NgayKetThuc )
		    VALUES ('CB003',N'HS0004', '2002/1/22','2006/1/22','2009/1/22')
			SELECT * FROM DOITUONG
			SELECT * FROM HOSOVIPHAM
			SELECT * FROM LOAIAN
			SELECT * FROM CHITIETTHULY
			SELECT * FROM CANBOTHULY
			
			--CAU 3
			SELECT DOITUONG.HoTen FROM DOITUONG WHERE HoTen LIKE 'B___________%' OR HoTen LIKE 'T___________%' 
			OR HOTEN LIKE 'N___________%'
			--CAU 4
			SELECT DT.MaDoiTuong, DT.HoTen, DT.GioiTinh, DT.NgaySinh,DT.DiaChiThuongTru,
			CB.MaCanBo, CB.HoTen, CB.GioiTinh, CB.NgaySinh, CB.DiaChi FROM DOITUONG DT, CANBOTHULY CB 
			WHERE CB.DiaChi='SON TRA' AND DT.DiaChiThuongTru='SON TRA'
			-- CAU 5
				SELECT HS.MaDoiTuong,dt.HoTen, COUNT(HS.MaDoiTuong) AS SOLANVIPHAM
				FROM DOITUONG DT INNER JOIN HOSOVIPHAM HS ON HS.MaDoiTuong=DT.MaDoiTuong
				 GROUP BY HS.MaDoiTuong
				 ORDER BY HS.MaDoiTuong DESC,SOLANVIPHAM
			--CAU 6
			SELECT DISTINCT NoiSinh FROM DOITUONG


			SELECT NoiSinh FROM DOITUONG
			--CAU 7*
			SELECT * FROM CANBOTHULY CBTL WHERE CBTL.GioiTinh=0 AND
			CBTL.MaCanBo IN(SELECT  CT.MaCanBo FROM CHITIETTHULY CT INNER JOIN HOSOVIPHAM HS
			ON HS.MaHoSo=CT.MaHoSo)
			AND CBTL.MaCanBo NOT IN(SELECT CT.MaCanBo FROM CHITIETTHULY CT INNER JOIN HOSOVIPHAM HS ON HS.MaHoSo=CT.MaHoSo
			INNER JOIN DOITUONG DT ON DT.MaDoiTuong=HS.MaDoiTuong WHERE DT.GioiTinh=1)
			--CAU 8
			SELECT DT.MaDoiTuong, DT.HoTen, L.TenLoaiAn, HS.NoiDungViPham,HS.DiaBanXuLy,CT.NgayPhaAn,CT.NgayKetThuc
			FROM DOITUONG DT INNER JOIN HOSOVIPHAM HS ON HS.MaDoiTuong=DT.MaDoiTuong
			INNER JOIN LOAIAN L ON L.MaLoaiAn=HS.MaLoaiAn
			INNER JOIN CHITIETTHULY CT ON CT.MaHoSo=HS.MaHoSo
			WHERE CT.NgayKetThuc<= GETDATE()
			--CAU 9
			SELECT * FROM CHITIETTHULY CT WHERE COUNT(CT.MaHoSo)>1
