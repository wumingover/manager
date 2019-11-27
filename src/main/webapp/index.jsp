<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <title>后台登陆</title>
</head>
<body>
<div id="login_top">
    <div id="welcome">
        员工管理系统
    </div>
    <div id="back">
        <a href="#">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp;
        <a href="#">帮助</a>
    </div>
</div>
<div id="login_center">
    <div id="login_area">
        <div id="login_form">
            <form action="${pageContext.request.contextPath}/user/findByPhone.do" method="post">
                <div id="login_tip">
                    用户登录&nbsp&nbsp UserLogin<br><br>
                    <span><%=session.getAttribute("error") == null ? "" : session.getAttribute("error")%></span>
                </div>
                    <div>
                        用户账号：<input type="text" name="str"><br><br><br>
                    </div>
                     <div>
                        用户密码： <input type="text" name="password" class="password"><br><br>
                    </div>
                <div id="btn_area">
                    <input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;

                </div>
            </form>
        </div>
    </div>
</div>
<div id="login_bottom">
    版权所有
</div>
</body>
</html>