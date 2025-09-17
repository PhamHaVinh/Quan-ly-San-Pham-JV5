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
    <h2>Update SP</h2>
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
    <div class="container">
        <h2>Sửa sản phẩm</h2>
        <form action="/sanpham/sua" method="post">
            <p>ID: <input type="text" name="id" value="${sanPham.id}"></p>
            <p>Masp: <input type="text" name="ma" value="${sanPham.ma}"></p>
            <p>Ten: <input type="text" name="ten" value="${sanPham.ten}"></p>
            <p>
                Trangthai : <input type="radio" name="trangThai" value="true" ${sanPham.trangThai ? "checked" :""}> Còn hàng
                <input type="radio" name="trangThai" value="false" ${!sanPham.trangThai ? "checked" : ""}> Hết hàng
            </p>
            <button>Submit</button>
        </form>
    </div>
</body>
</html>