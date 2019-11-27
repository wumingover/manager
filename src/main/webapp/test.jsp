<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
    <script type="text/javascript">
        $(function(){
            $(".sideMenu").slide({
                titCell:"h3",
                targetCell:"ul",
                defaultIndex:0,
                effect:'slideDown',
                delayTime:'500' ,
                trigger:'click',
                triggerTime:'150',
                defaultPlay:true,
                returnDefault:false,
                easing:'easeInQuint',
                endFun:function(){
                    scrollWW();
                }
            });
            $(window).resize(function() {
                scrollWW();
            });
        });
        function scrollWW(){
            if($(".side").height()<$(".sideMenu").height()){
                $(".scroll").show();
                var pos = $(".sideMenu ul:visible").position().top-38;
                $('.sideMenu').animate({top:-pos});
            }else{
                $(".scroll").hide();
                $('.sideMenu').animate({top:0});
                n=1;
            }
        }

        var n=1;
        function menuScroll(num){
            var Scroll = $('.sideMenu');
            var ScrollP = $('.sideMenu').position();
            /*alert(n);
            alert(ScrollP.top);*/
            if(num==1){
                Scroll.animate({top:ScrollP.top-38});
                n = n+1;
            }else{
                if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
                if (ScrollP.top<0) {
                    Scroll.animate({top:38+ScrollP.top});
                }else{
                    n=1;
                }
                if(n>1){
                    n = n-1;
                }
            }
        }

        function exit(){
            var result = window.confirm("确认要删除吗?");
            if(true == result){
                alert("删除成功");
            }
        }

    </script>
    <title>后台首页</title>
</head>
<body>
<div class="top">
    <div id="top_t">
        <div id="logo" class="fl"></div>
        <div id="photo_info" class="fr">
            <div id="photo" class="fl">
                <a href="#"><img src="images/a.png" alt="" width="60" height="60"></a>
            </div>
            <div id="base_info" class="fr">
                <div class="help_info">
                    <a href="1" id="hp">&nbsp;</a>
                    <a href="2" id="gy">&nbsp;</a>
                    <a href="3" id="out">&nbsp;</a>
                </div>
                <div class="info_center">
                    admin
                    <span id="nt">通知</span><span><a href="#" id="notice">3</a></span>
                </div>
            </div>
        </div>
    </div>
    <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
    </div>
</div>
<div class="side">
    <div class="sideMenu" style="margin:0 auto">
        <h3>人事管理</h3>
        <ul>
            <li><a href = "dept.jsp" target="right">部门管理</a></li>
            <li><a href = "emp.jsp" target="right">员工管理</a></li>
            <li><a href = "holiday.jsp" target="right">请假管理</a></li>
        </ul>
        <h3> 财务管理</h3>
        <ul>
            <li><a href = "afford.jsp" target="right">报销管理</a></li>
        </ul>
        <h3> 系统管理</h3>
        <ul>
            <li><a href = "user.jsp" target="right">账户管理</a></li>
            <li><a href = "role.jsp" target="right">角色管理</a></li>
            <li><a href = "permission.jsp" target="right">权限管理</a></li>
            <li><a href = "pwd.jsp" target="right">密码重置</a></li>
            <a href="javascript:;" class="per" title="退出系统" onclick="exit;"></a>
        </ul>
    </div>
</div>
<div class="main">
    <iframe name="right" id="rightMain" src="js/mainbc.jsp" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
</div>
<div class="bottom">
    <div id="bottom_bg">版权</div>
</div>
<div class="scroll">
    <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
    <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
</div>
</body>

</html>