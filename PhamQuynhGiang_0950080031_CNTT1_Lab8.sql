﻿-------------------Phần II------------------
--CAU 3:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE DVT='CAY' OR DVT='QUYEN'
--CAU 4:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE MASP LIKE 'B%01'
--CAU 5:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC' AND GIA BETWEEN 30000 AND 40000
-------------------Phần III----------------
--CAU 1:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC'
--CAU 2:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE DVT='CAY' OR DVT='QUYEN'
--CAU 3:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE MASP LIKE 'B%01'
--CAU 4:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE NUOCSX='TRUNG QUOC' AND GIA BETWEEN 30000 AND 40000
--CAU 5:
SELECT MASP,TENSP
FROM  SANPHAM
WHERE (NUOCSX='TRUNG QUOC' OR NUOCSX='THAI LAN') AND GIA BETWEEN 30000 AND 40000
--CAU 6:
SELECT SOHD,TRIGIA
FROM  HOADON
WHERE NGHD='1/1/2007' OR NGHD='2/1/2007'
--CAU 7:
SELECT SOHD,TRIGIA
FROM  HOADON
WHERE MONTH(NGHD)=1 AND YEAR(NGHD)=2007
ORDER BY  NGHD ASC,TRIGIA DESC
--CAU 8:
SELECT A.MAKH,HOTEN
FROM  HOADON A, KHACHHANG B
WHERE A.MAKH=B.MAKH AND NGHD='1/1/2007'
--CAU 9:
SELECT SOHD,TRIGIA
FROM  HOADON A, NHANVIEN B
WHERE A.MANV=B.MANV AND NGHD='28/10/2006' AND HOTEN='NGUYEN VAN B' 
--CAU 10:
SELECT C.MASP, TENSP
FROM  HOADON A, KHACHHANG B, CTHD C, SANPHAM D
WHERE A.MAKH=B.MAKH AND A.SOHD=C.SOHD AND C.MASP=D.MASP AND
  MONTH(NGHD)=10 AND YEAR(NGHD)=2006 AND HOTEN='NGUYEN VAN A' 
