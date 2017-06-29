<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
    <nav class="navbar navbar-default navbar-static-top" role="navigation">
            <h3>TRAINING COLLEGE</h3>
    </nav>

    <div class="login-body">

        <form method='POST' action='/hello/hello'>
            <input type='text' class="userid form-control" name='username' value="" placeholder="账号" required>
            <input type='password' class="password form-control" name='password' placeholder="密码" required>
            <input type='submit' class="submit-btn btn btn-lg btn-primary btn-block" name='Submit' value='登录'>
        </form>
    <br>
    </div>
    <c:if test="${param.error != null}">
        <script>alert("用户名或密码错误")</script>
    </c:if>
    <c:if test="${param.logout != null}">
        <script>alert("退出成功")</script>
    </c:if>
</body>
</html>