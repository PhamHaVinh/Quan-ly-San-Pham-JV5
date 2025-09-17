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
        <form action="/khachhang/search" method="get">
            ID Sản phẩm: <input type="text" name="id"> <br>
            <button>Tìm SP</button>
        </form>
    </p>
    <p>
    <form action="/khachhang/them" method="post">
        ten: <input type="text" name="ten"/> <br>
        sdt: <input type="text" name="SDT"/> <br>
        makh: <input  type="text" name="maKH"/> <br>
        trangthai : <input type="radio" name="trangThai" value="true"/> Male
        <input type="radio" name="trangThai" value="false"/> Female <br>
        <button>Submit</button>
    </form>
    </p>
    <div>
        <table border="1">
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>SĐT</th>
                <th>Mã KH</th>
                <th>Trạng thái</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${danhsach}" var="khachHang">
                <tr>
                    <th>${khachHang.id}</th>
                    <th>${khachHang.ten}</th>
                    <th>${khachHang.SDT}</th>
                    <th>${khachHang.maKH}</th>
                    <th>${khachHang.trangThai  ? "Nam" : "Nữ"}</th>
                    <th>
                        <a href="/khachhang/sua/${khachHang.id}">Them</a> |
                        <a href="/khachhang/xoa?id=${khachHang.id}">Xoa</a> |
                        <a href="/khachhang/search?id=${khachHang.id}">chi tiet</a>
                    </th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>