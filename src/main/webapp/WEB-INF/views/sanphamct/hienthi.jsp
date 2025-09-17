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
<form action="/sanphamct/search" method="get">
    <p>ID Sản phẩm: <input type="text" name="id"></p>
    <button>Tìm SP</button>
</form>
</p>
<p>
<h2>Thêm SPCT</h2>
<form action="/sanphamct/them" method="post">
    <p>Mã SPCT: <input type="text" name="maSPCT"></p>
    <p>ID kích thước: <input type="text" name="idKT"></p>
    <p>ID màu sắc: <input type="text" name="idMS"> </p>
    <p>ID sản phẩm: <input type="text" name="idSP"> </p>
    <p>Số lượng: <input type="text" name="soLuong"> </p>
    <p>Đơn giá: <input type="text" name="donGia"> </p>
    <p>
        Trạng thái: <input type="radio" name="trangThai" value="true"/> Còn hàng
        <input type="radio" name="trangThai" value="false"/> Hết hàng
    </p>
    <button>Submit</button>
</form>
</p>
<div>
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã SPCT</th>
            <th>ID kích thước</th>
            <th>ID màu sắc</th>
            <th>ID sản phẩm</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${danhsach}" var="sanphamCT">
            <tr>
                <th>${sanphamCT.id}</th>
                <th>${sanphamCT.maSPCT}</th>
                <th>${sanphamCT.idKT}</th>
                <th>${sanphamCT.idMS}</th>
                <th>${sanphamCT.idSP}</th>
                <th>${sanphamCT.soLuong}</th>
                <th>${sanphamCT.donGia}</th>
                <th>${sanphamCT.trangThai ? "Còn hàng" : "Hết hàng"}</th>
                <th>
                    <a href="/sanphamct/sua/${sanphamCT.id}">Sua</a>
                    <a href="/sanphamct/xoa?id=${sanphamCT.id}">Xoa</a> |
                    <a href="/sanphamct/chitiet/${sanphamCT.id}">chi tiet</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>