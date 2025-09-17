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
<form action="/mausac/search" method="get">
    ID Sản phẩm: <input type="text" name="id"> <br>
    <button>Tìm SP</button>
</form>
</p>
<p>
<h2>Thêm màu sắc</h2>
<form action="/mausac/them" method="post">
    <p>ma mau: <input  type="text" name="ma"/> </p>
    <p>ten: <input type="text" name="ten"/> </p>
    <p>
        trangthai : <input type="radio" name="trangThai" value="true"/> Con hang
        <input type="radio" name="trangThai" value="false"/> Het hang
    </p>
    <button>Submit</button>
</form>
</p>
<div>
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${danhsach}" var="mauSac">
            <tr>
                <th>${mauSac.id}</th>
                <th>${mauSac.ma}</th>
                <th>${mauSac.ten}</th>
                <th>${mauSac.trangThai  ? "Còn hàng" : "Hết hàng"}</th>
                <th>
                    <a href="/mausac/sua/${mauSac.id}">Sua</a> |
                    <a href="/mausac/xoa?id=${mauSac.id}">Xoa</a> |
                    <a href="/mausac/chitiet/${mauSac.id}">chi tiet</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>