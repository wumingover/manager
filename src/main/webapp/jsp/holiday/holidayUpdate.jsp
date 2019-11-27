<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改请假信息</title>
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
                    修改请假信息
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

    <form action="${pageContext.request.contextPath}/holiday/updateHoliday.do"
          method="post">
        <input type="hidden" name="id" value="${ho.id}"/>

        请假人：  <input type="text" name="user" value="${ho.user}"/><br><br><br>
        请假类型：<input type="text" name="role" value="${ho.type}"/><br><br><br>
        请假原因：<input type="text" name="sex" value="${ho.reason}"/><br><br><br>
        开始时间：<input type="text" name="password" value="${ho.start_time}"/><br><br><br>
        结束时间：<input type="text" name="dept" value="${ho.end_time}"/><br><br><br>
        <input type="submit" value="提交" />
    </form>
</div>
</body>
</html>
