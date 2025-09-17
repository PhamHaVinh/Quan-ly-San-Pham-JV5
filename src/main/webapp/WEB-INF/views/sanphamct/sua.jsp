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
<h2>Sửa sản phẩm chi tiết</h2>
<form action="/sanphamct/update" method="post">
    ID: <input type="text" name="id" value="${sanphamCT.id}"> <br>
    Mã SPCT: <input type="text" name="maSPCT" value="${sanphamCT.maSPCT}"> <br>
    ID kích thước: <input type="text" name="idKichThuoc" value="${sanphamCT.idKT}"> <br>
    ID màu sắc: <input type="text" name="idMauSac" value="${sanphamCT.idMS}"> <br>
    ID sản phẩm: <input type="text" name="idSP" value="${sanphamCT.idSP}"> <br>
    Số lượng: <input type="text" name="soLuong" value="${sanphamCT.soLuong}"> <br>
    Đơn giá: <input type="text" name="donGia" value="${sanphamCT.donGia}"> <br>
    Trạng thái : <input type="radio" name="trangThai" value="true" ${sanPham.trangThai ? "checked" :""}> Còn hàng
    <input type="radio" name="trangThai" value="false" ${!sanPham.trangThai ? "checked" : ""}> Hết hàng <br>
    <button>Submit</button>
</form>
</body>
</html>