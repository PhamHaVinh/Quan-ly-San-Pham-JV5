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
    <h1 style="color: red;"> Cửa hàng thời trang nam (Man)</h1>

    <header style="color: red">
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
    <form action="/hoadon/search" method="get">
        ID Sản phẩm: <input type="text" name="id"> <br>
        <button>Tìm SP</button>
    </form>
    </p>
    <p>
    <h2>Thêm HD</h2>
    <form action="/hoadon/them" method="post">
        <p>ID NV: <input type="text" name="idNV"></p>
        <p>ID KH: <input type="text" name="idKH"></p>
        <p>Ngay mua hang: <input  type="date" name="ngayMuaHang"/></p>
        <p>trangthai : <input type="radio" name="trangThai" value="true"/> Đã thanh toán
            <input type="radio" name="trangThai" value="false"/> Chưa thanh toán</p>
        <button>Submit</button>
    </form>
    </p>
    <div>
        <table border="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>ID NV</th>
                <th>ID KH</th>
                <th>Ngày Mua Hàng</th>
                <th>Trạng thái</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${danhsach}" var="hoaDon">
                    <tr>
                        <th>${hoaDon.id}</th>
                        <th>${hoaDon.idNV}</th>
                        <th>${hoaDon.idKH}</th>
                        <th>${hoaDon.ngayMuaHang}</th>
                        <th>${hoaDon.trangThai ? "Đã thanh toán" : "Chưa thanh toán"}</th>
                        <th>
                            <a href="/hoadon/sua/${hoaDon.id}">Sua</a> |
                            <a href="/hoadon/xoa?id=${hoaDon.id}">xoa</a> |
                            <a href="/hoadon/chitiet/${hoaDon.id}">hien thi</a>
                        </th>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>