<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1>Quản lý cửa hàng thời trang nam AAA</h1>

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
<h2>Sửa kích thước</h2>
<div>
    <form action="/kichthuoc/add" method="post">

        ID: <input type="text" name="id" value="${kichThuoc.id}"> <br>
        masp: <input type="text" name="ma" value="${kichThuoc.ma}"> <br>
        ten: <input type="text" name="ten" value="${kichThuoc.ten}"> <br>
        trangthai : <input type="radio" name="trangThai" value="true" ${kichThuoc.trangThai ? "checked" :""}> To
        <input type="radio" name="trangThai" value="false" ${!kichThuoc.trangThai ? "checked" : ""}> Nhỏ <br>
        <button>Submit</button>
    </form>
</div>
</body>
</html>