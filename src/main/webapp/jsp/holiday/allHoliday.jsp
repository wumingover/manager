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
                    <small>假期管理 —— 请假记录</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/jsp/holiday/holidayAdd.jsp">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>假条id</th>
                    <th>请假人</th>
                    <th>请假类型</th>
                    <th>请假理由</th>
                    <th>请假开始时间</th>
                    <th>请假结束时间</th>
                    <th>何时请假</th>
                    <th>休假时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${holiday}" var="h">
                    <tr>
                        <td>${h.id}</td>
                        <td>${h.user}</td>
                        <td>${h.type}</td>
                        <td>${h.reason}</td>
                        <td>${h.start_time}</td>
                        <td>${h.end_time}</td>
                        <td>${h.create_time}</td>
                        <td>${h.update_time}</td>

                        <td>
                            <a href="${pageContext.request.contextPath}/holiday/beforeUpdate.do?id=${h.id}">更改</a> |
                            <a href="${pageContext.request.contextPath}/holiday/delHoliday.do?id=${h.id}">删除</a>
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
