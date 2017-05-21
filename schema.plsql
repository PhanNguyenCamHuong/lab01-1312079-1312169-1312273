create table NhanVien
(
  maNV char(10) primary key,
  hoTen nvarchar2(50),
  diaChi nvarchar2(100),
  dienThoai number,
  email varchar2(50),
  maPhong char(10),
  chiNhanh char(10),
  luong number
);

create table PhongBan
(
  maPhong char(10) primary key,
  tenPhong nvarchar2(50),
  truongPhong char(10),
  ngayNhanChuc date,
  soNhanVien number,
  chiNhanh char(10)
);

create table DuAn
(
  maDA char(10) primary key,
  tenDA nvarchar2(50),
  kinhPhi number,
  phongChuTri char(10),
  truongDA char(10)
);

create table ChiNhanh
(
  maCN char(10) primary key,
  tenCN nvarchar2(50),
  truongChiNhanh char(10)
);

create table ChiTieu
(
  maChiTieu char(10) primary key,
  tenChiTieu nvarchar2(50),
  soTien number,
  duAn char(10)
);

create table PhanCong
(
  maNV char(10),
  duAn char(10),
  vaiTro nvarchar2(50),
  phuCap number,
  primary key (maNV,duAn)
);
