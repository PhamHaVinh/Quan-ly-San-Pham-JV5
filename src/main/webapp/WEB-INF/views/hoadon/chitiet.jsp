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
<h2>Chi tiet hoa don</h2>
<div>
    <p>ID: ${hoaDon.id}</p>
    <p>ID NV: ${hoaDon.idNV}</p>
    <p>ID KH: ${hoaDon.idKH}</p>
    <p>Ngay mua hang: ${hoaDon.ngayMuaHang}</p>
    <p>Trang thai: ${hoaDon.trangThai ? "Đã thanh toán" : "Chưa thanh toán"}</p>
</div>
</body>
</html>