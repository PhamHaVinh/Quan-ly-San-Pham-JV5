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
<h1>Sua hoa don</h1>
<form action="/hoadon/sua" method="post">
    <p>ID: <input type="text" name="id" value="${hoaDon.id}"></p>
    <p>ID NV: <input type="text" name="idNV" value="${hoaDon.idNV}"></p>
    <p>ID KH: <input type="text" name="idKH" value="${hoaDon.idKH}"></p>
    <p>Ngay mua hang: <input  type="date" name="ngayMuaHang" value="${hoaDon.ngayMuaHang}"/></p>
    <p>
        Trangthai : <input type="radio" name="trangThai" value="true" ${hoaDon.trangThai ? "checked" :""}> Đã thanh toán
        <input type="radio" name="trangThai" value="false" ${!hoaDon.trangThai ? "checked" : ""}> Chưa thanh toán
    </p>
    <button>Submit</button>
</form>
</body>
</html>