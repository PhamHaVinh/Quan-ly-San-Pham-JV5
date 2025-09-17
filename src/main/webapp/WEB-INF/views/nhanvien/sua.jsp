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
<h2>Thêm NV</h2>
<form action="/nhanvien/add" method="post">
    ID: <input type="text" name="id" value="${nhanVien.id}"> <br>
    Tên: <input  type="text" name="ten" value="${nhanVien.ten}"> <br>
    Mã NV: <input type="text" name="maNV" value="${nhanVien.maNV}"> <br>
    Tên DN: <input type="text" name="tenDN" value="${nhanVien.tenDN}"> <br>
    Mk: <input type="text" name="MK" value="${nhanVien.MK}"> <br>
    trangthai : <input type="radio" name="trangThai" value="true" ${nhanVien.trangThai ? "checked" :""}> Full-time
    <input type="radio" name="trangThai" value="false" ${!nhanVien.trangThai ? "checked" : ""}> Part-time <br>
    <button>Submit</button>
</form>
</body>
</html>