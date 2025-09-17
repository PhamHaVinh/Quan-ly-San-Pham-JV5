<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Man's Fashion Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f9f9f9;
        }
        header {
            margin-bottom: 20px;
            background-color: #333;
            padding: 10px;
            text-align: center;
        }
        header a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }
        header a:hover {
            text-decoration: underline;
        }
        h1 {
            color: #c0392b;
        }
        h2 {
            color: #2980b9;
        }
        form {
            margin-bottom: 20px;
        }
        form p {
            margin: 10px 0;
        }
        input[type="text"] {
            padding: 5px;
            width: 200px;
        }
        button {
            background-color: #3498db;
            color: white;
            padding: 8px 12px;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #2980b9;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #34495e;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1c40f;
            color: #fff;
        }
        .action-links a {
            margin-right: 10px;
            color: #3498db;
            text-decoration: none;
        }
        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<h1>Cửa hàng thời trang nam</h1>

<header>
    <a href="/sanpham/hienthi">Trang chủ - Sản phẩm</a>
    <a href="/nhanvien/hienthi">Nhân viên</a>
    <a href="/khachhang/hienthi">Khách hàng</a>
    <a href="/kichthuoc/hienthi">Kích thước</a>
    <a href="/mausac/hienthi">Màu sắc</a>
    <a href="/sanphamct/hienthi">Sản phẩm chi tiết</a>
    <a href="/hoadon/hienthi">Hóa đơn</a>
    <a href="/hoadonct/hienthi">Hóa đơn chi tiết</a>
</header>

<!-- Search Form -->
<form action="/sanpham/search" method="get">
    <p>ID Sản phẩm: <input type="text" name="id"></p>
    <button type="submit">Tìm SP</button>
</form>

<!-- Add Product Form -->
<h2>Thêm Sản phẩm</h2>
<form action="/sanpham/them" method="post">
    <p>Mã sản phẩm: <input type="text" name="ma"></p>
    <p>Tên sản phẩm: <input type="text" name="ten"></p>
    <p>Trạng thái:
        <input type="radio" name="trangThai" value="true"> Còn hàng
        <input type="radio" name="trangThai" value="false"> Hết hàng
    </p>
    <button type="submit">Submit</button>
</form>

<!-- Product Table -->
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Mã</th>
        <th>Tên</th>
        <th>Trạng thái</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${danhsach}" var="sanPham">
        <tr>
            <td>${sanPham.id}</td>
            <td>${sanPham.ma}</td>
            <td>${sanPham.ten}</td>
            <td>${sanPham.trangThai ? "Còn hàng" : "Hết hàng"}</td>
            <td class="action-links">
                <a href="/sanpham/sua/${sanPham.id}">Sửa</a>
                <a href="/sanpham/xoa?id=${sanPham.id}">Xóa</a>
                <a href="/sanpham/chitiet/${sanPham.id}">Chi tiết</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
