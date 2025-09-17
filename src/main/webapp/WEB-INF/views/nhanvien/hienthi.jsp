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
<h1 style="color: red;">Cửa hàng thời trang nam(Man)</h1>

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
<form action="/nhanvien/search" method="get">
    ID Sản phẩm: <input type="text" name="id"> <br>
    <button>Tìm SP</button>
</form>
</p>
<p>
<h2>Thêm NV</h2>
<form action="/nhanvien/them" method="post">
    <p>Ten: <input type="text" name="ten"></p>
    <p>Ma NV: <input  type="text" name="maNV"/></p>
    <p>Ten DN: <input  type="text" name="tenDN"/></p>
    <p>MK: <input  type="text" name="MK"/></p>
    <p>trangthai : <input type="radio" name="trangThai" value="true"/> Male
        <input type="radio" name="trangThai" value="false"/> Female</p>
    <button>Submit</button>
</form>
</p>
<div>
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Mã NV</th>
            <th>Tên DN</th>
            <th>MK</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${danhsach}" var="nhanVien">
            <tr>
                <th>${nhanVien.id}</th>
                <th>${nhanVien.ten}</th>
                <th>${nhanVien.maNV}</th>
                <th>${nhanVien.tenDN}</th>
                <th>${nhanVien.MK}</th>
                <th>${nhanVien.trangThai  ? "Nam" : "Nu"}</th>
                <th>
                    <a href="/nhanvien/sua/${nhanVien.id}">Sua</a> |
                    <a href="/nhanvien/xoa?id=${nhanVien.id}">Xoa</a> |
                    <a href="/nhanvien/chitiet/${nhanVien.id}">Chi tiet</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>