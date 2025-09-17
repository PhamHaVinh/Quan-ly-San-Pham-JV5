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
<form action="/kichthuoc/search" method="get">
    ID Sản phẩm: <input type="text" name="id"> <br>
    <button>Tìm SP</button>
</form>
</p>
<p>
<form action="/kichthuoc/them" method="post">
    <p>ma mau: <input  type="text" name="ma"/> </p>
    <p>ten: <input type="text" name="ten"/> </p>
    <p>
        trangthai : <input type="radio" name="trangThai" value="true"/> To
        <input type="radio" name="trangThai" value="false"/> Nhỏ
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
        <c:forEach items="${danhsach}" var="kichThuoc">
            <tr>
                <th>${kichThuoc.id}</th>
                <th>${kichThuoc.ma}</th>
                <th>${kichThuoc.ten}</th>
                <th>${kichThuoc.trangThai  ? "To" : "Nhỏ"}</th>
                <th>
                    <a href="/kichthuoc/sua/${kichThuoc.id}">Sua</a> |
                    <a href="/kichthuoc/xoa?id=${kichThuoc.id}">Xoa</a> |
                    <a href="/kichthuoc/chitiet/${kichThuoc.id}">chi tiet</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>