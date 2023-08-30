<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
    <title>京西网！</title>
    <jsp:include page="common/common.jsp"/>
    <script type="text/javascript" src="js/common/login.js"></script>
</head>

<body>
<div>
    <%--    <div id="top">--%>
    <jsp:include page="head.jsp"></jsp:include>
    <%--    </div>--%>
    <div align="center">
        <a id="img-link" href="index.jsp"> <img src="image/logo1.jpg" border="0"/> </a>
    </div>

    <section class="p-5">
        <div class="card bg-secondary text-light m-auto" style="width:18rem">
            <div class="card-body">
                <form action="login" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">用户名</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                               name="uname" value="${uname}" maxlength="50" minlength="3">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">密码</label>
                        <input type="password" class="form-control" id="exampleInputPassword1"
                               name="passwd" maxlength="50" minlength="3">
                    </div>
                    <input type="hidden" name="action" value="login">
                    <div class="card-body text-right">
                        <button type="submit" class="btn btn-primary ">登录</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
<div id="foot">
    <jsp:include page="foot.jsp"></jsp:include>
</div>
</div>
</body>
</html>
