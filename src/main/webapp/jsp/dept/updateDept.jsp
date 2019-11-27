<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改部门信息</title>
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
                    修改部门信息
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

    <form action="${pageContext.request.contextPath}/dept/updateDept.do"
          method="post">
        <input type="hidden" name="id" value="${d.id}"/>

        部门名称：<input type="text" name="name" value="${d.name}"/>
        部门领导：<input type="text" name="manager" value="${d.manager}"/>
        <input type="submit" value="提交" />
    </form>
</div>
</body>
</html>
