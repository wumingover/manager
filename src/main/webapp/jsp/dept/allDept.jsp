<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>user列表</title>
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
                    <small>部门列表 —— 显示所有部门</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/jsp/dept/addDept.jsp">添加部门</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>id</th>
                    <th>部门名称</th>
                    <th>部门负责人</th>
                    <th>部门成立时间</th>

                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${de}" var="d">
                    <tr>
                        <td>${d.id}</td>
                        <td>${d.name}</td>
                        <td>${d.manager}</td>
                        <td>${d.create_time}</td>

                        <td>
                            <a href="${pageContext.request.contextPath}/dept/beforeupdateDept.do?id=${d.id}">更改</a> |
                            <a href="${pageContext.request.contextPath}/dept/deleteDept.do?id=${d.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>