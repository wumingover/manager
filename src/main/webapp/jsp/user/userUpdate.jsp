<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改员工信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    修改员工信息
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>部门信息修改</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/user/updateUser.do"
          method="post">
        <input type="hidden" name="id" value="${us.id}"/>

        员工名称：<input type="text" name="name" value="${us.name}"/><br><br><br>
        员工角色：<input type="text" name="role" value="${us.role}"/><br><br><br>
        员工性别：<input type="text" name="sex" value="${us.sex}"/><br><br><br>
        员工密码：<input type="text" name="password" value="${us.password}"/><br><br><br>
        所属部门：<input type="text" name="dept" value="${us.dept}"/><br><br><br>
        联系方式：<input type="text" name="phone" value="${us.phone}"/><br><br><br>
        <input type="submit" value="提交" />
    </form>
</div>
</body>
</html>
