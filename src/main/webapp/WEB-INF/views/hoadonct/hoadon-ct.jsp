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
    <p>
    <form action="" method="get">
        ID Sản phẩm: <input type="text" name="id"> <br>
        <button>Tìm SP</button>
    </form>
    </p>
    <div>
        <table border="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>ID HD</th>
                <th>ID SPCT</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${danhsach}" var="hoadonCT">
                <tr>
                    <th>${hoadonCT.id}</th>
                    <th>${hoadonCT.idHD}</th>
                    <th>${hoadonCT.idSPCT}</th>
                    <th>${hoadonCT.soLuong}</th>
                    <th>${hoadonCT.donGia}</th>
                    <th>
                        <a href="/hoadonct/add">Add</a> |
                        <a href="/hoadonct/update/${hoadonCT.id}">Update</a> |
                        <a href="/hoadonct/delete?id=${hoadonCT.id}">delete</a> |
                        <a href="/hoadonct/search?id=${hoadonCT.id}">detail</a>
                    </th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>