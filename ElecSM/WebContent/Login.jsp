<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Form Đăng nhập</title>
    </head>
    <body style="background-color: grey">
        <div id="logreg-forms" style="background-color: black">
            <form class="form-signin" action="${pageContext.request.contextPath}/login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center;color:yellow"><b>ELecSM</b></h1>
                <p class="text-danger">${mess}</p>
                <input name="user"  type="text" id="inputEmail" class="form-control" placeholder="Tên tài khoản" required="" autofocus="" >
                <br>
                <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required="" >

                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1"><i style="color: yellow">Nhớ mật khẩu</i></label>
                </div>

                <button class="btn btn-danger btn-block" type="submit"><i class="fas fa-sign-in-alt"></i><b style="color: yellow">Đăng nhập</b></button>
                <hr>
                <button class="btn btn-success btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i><b>Đăng ký tài khoản mới</b></button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"><b>Đăng ký</b></h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i><b>Đăng ký</b></button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i>Trở về</a>
            </form>
            <br>

        </div>
    </body>
</html>