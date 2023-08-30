<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
    <title>注册用户</title>
    <jsp:include page="common/common.jsp"/>
    <script type="text/javascript" src="js/common/register.js"></script>

</head>

<body>
<div>
    <%--			<div id="top">--%>
    <jsp:include page="head.jsp"/>
    <div align="center">
        <a id="img-link" href="index.jsp"> <img src="image/logo1.jpg" border="0"/> </a>
    </div>
    <div class="card bg-secondary text-light m-auto" style="width:18rem">
        <div class="card-body">
            <form action="register" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">用户名</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                           name="uname" value="${uname }" maxlength="50" minlength="3">
                </div>
                <div class="form-group">
                    <label for="passwd">密码</label>
                    <input type="password" class="form-control required"
                           name="passwd" id="passwd" maxlength="50" minlength="3">
                </div>
                <div class="form-group">
                    <label for="passwd1">确认密码</label>
                    <input type="password" class="form-control required"
                           name="passwd1" id="passwd1" maxlength="50" minlength="3">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail">电子邮箱</label>
                    <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
                           name="email" maxlength="50" minlength="7">
                </div>

                <div class="card-body text-right">
                    <button type="submit" class="btn btn-primary ">注册</button>
                </div>
            </form>
        </div>
    </div>
    <div id="foot">
        <jsp:include page="foot.jsp"/>
    </div>
</div>
</body>
</html>
