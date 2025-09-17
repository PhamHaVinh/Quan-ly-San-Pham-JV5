<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
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
    <div>
        <h2 style="color: blue;">Đăng nhập</h2> <br>
        <c:form action="/taikhoan/login" method="post">
                Ten dang nhap:<p>
                    <input type="text" name="tendangnhap"/>
                </p>
                Mat khau:<p>
                    <input type="text" name="matkhau"/>
                </p>
                <button type="submit">Dang nhap</button>
                ${error}

        </c:form>
    </div>
</body>
</html>