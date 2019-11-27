<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/main.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/colResizable-1.3.min.js"></script>
    <script type="text/javascript" src="../js/common.js"></script>
    <script language="javascript" type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>


    <script type="text/javascript">
        $(function () {
            $(".list_table").colResizable({
                liveDrag: true,
                gripInnerHtml: "<div class='grip'></div>",
                draggingClass: "dragging",
                minWidth: 30
            });

        });
    </script>
    <title>Document</title>
</head>
<body>


<div class="row clearfix">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>添加员工</small>
            </h1>
        </div>
    </div>
</div>
<form action="${pageContext.request.contextPath}/user/addUser.do"
      method="post">
    用户姓名：<input type="text" name="name"><br><br><br>
    用户角色：<input type="text" name="role"><br><br><br>
    用户性别：<input type="text" name="sex"><br><br><br>
    用户密码：<input type="text" name="password"><br><br><br>
    所属部门：<input type="text" name="dept"><br><br><br>
    联系方式：<input type="text" name="phone"><br><br><br>


    <input type="submit" value="添加">
</form>




</body>
</html>