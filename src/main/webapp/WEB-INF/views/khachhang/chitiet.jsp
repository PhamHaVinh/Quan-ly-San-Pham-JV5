<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<header>
    <a href="/sanpham/hienthi">Trang chủ - Sản phẩm</a> |
    <a href="/nhanvien/hienthi">Nhân viên</a> |
    <a href="/khachhang/hienthi">Khách hàng</a> |
    <a href="/kichthuoc/hienthi">Kích thước</a> |
    <a href="/mausac/hienthi">Màu sắc</a> |
    <a href="/sanphamct/hienthi">Sản phẩm chi tiết</a> |
    <a href="/hoadon/hienthi">Hóa đơn</a> |
    <a href="/hoadonct/hienthi">Hóa đơn chi tiết</a>
</header>
<p>
    <h2>Chi tiet khach hang</h2>
    id: ${khachHang.id} <br>
    tên: ${khachHang.ten} <br>
    sdt: ${khachHang.SDT} <br>
    mã kh: ${khachHang.maKH} <br>
    trạng thái: ${khachHang.trangThai?"Nam " : "Nữ"}
</p>
</body>
</html>