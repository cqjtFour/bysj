<%--

  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/17
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Identity</title>
    <!--// Stylesheets //-->
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="alternate stylesheet" type="text/css" href="../css/gray.css" title="styles3" media="screen"/>
    <link rel="stylesheet" type="text/css" href="../css/calendar.css">
    <link rel="stylesheet" href="../bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/myselfwrite.css"/>
    <!--// Javascripts //-->

</head>

<body>
<!-- Wrapper Start -->
<div id="outer_wrapper" style="width: 100%;">
    <!-- Header Start -->
    <div id="header">
        <div class="rays">
            <div class="inner">
                <!-- Logo Start -->
                <div class="logo">
                    <a href="index.jsp"><img src="../images/lalala.jpg" style="width: 90px;height: 20px" alt=""/></a>
                </div>
                <!-- Logo End -->
                <div class="right">
                    <!-- Navigation Start -->
                    <div class="navigation">
                        <div id="smoothmenu1" class="ddsmoothmenu">
                            <ul>
                                <li class="current-menu-item"><a href="#">首页</a></li>
                                <li><a href="/advice">通知公告</a></li>
                                <li><a href="/specialrecruitment">招聘信息</a>
                                </li>
                                <li><a href="#">就业指南</a>
                                    <ul class="backcolr">
                                        <li><a href="/employmentguidance">就业指导</a></li>
                                        <li><a href="/employmentpolicy">就业政策</a></li>
                                    </ul>
                                </li>
                                <li><a href="/studentresume">学生简历</a></li>
                                <li><a href="/graduating">毕业去向</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <!-- Navigation End -->
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
    <!-- Banner Start -->
    <div id="banner">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <a href="#"><img src="../images/banner1.jpg" title="#banner1" alt=""/></a>
                <a href="#"><img src="../images/banner2.jpg" title="#banner2" alt=""/></a>
                <a href="#"><img src="../images/banner3.jpg" title="#banner3" alt=""/></a>
            </div>
        </div>
    </div>
    <!-- Banner End -->
    <!-- Content Section Start -->
    <div id="contentsec">
        <div class="inner" id="innerbox">
            <!-- Two Third Box Start -->
            <div class="twothird box padbox left" id="twoboxleft">
                <!-- Half Box Start -->
                <div class="halfbox left" id="halfup">
                    <div class="divwidth">
                        <div class="row">
                            <div class="col-md-8">招聘信息</div>
                            <div class="col-md-4"><a href="/specialrecruitment" class="readmore">查看更多</a></div>
                        </div>
                        <hr/>
                        <div id="div1" style="height: 155px">
                            <ul style="list-style-type: disc">
                                <c:forEach items="${specialEmployee}" var="special">
                                    <li>
                                        <a href="/showReserveInfo?xnzpgsbbh=${special.xnzpgsbbh}" class="col-md-8">${special.jobInfo.xnzpnrbt}</a>
                                        <span class="col-md-4">${special.jobInfo.zpxxfbsj}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <hr/>
                    <hr/>
                    <div class="divwidth" style="padding-top: 15px;">
                        <div class="row">
                            <div class="col-md-8">就业政策</div>
                            <div class="col-md-4"><a href="/employmentpolicy" class="readmore">查看更多</a></div>
                        </div>
                        <hr/>
                        <div id="div5">
                            <ul style="list-style-type: disc">
                                <c:forEach items="${employmentPolicy}" var="special">
                                    <li>
                                        <a href="/showPolicy?fbbh=${special.fbbbh}" class="col-md-8">${special.xxbt}</a>
                                        <span class="col-md-4">${special.xxfbsj}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- Home Page Post End -->
                </div>
                <!-- Half Box End -->
                <!-- Half Box Start -->
                <div class="halfbox right" id="halfdown">
                    <div class="divwidth">
                        <div class="row">
                            <div class="col-md-8">通知公告</div>
                            <div class="col-md-4"><a href="/advice" class="readmore">查看更多</a></div>
                        </div>
                        <hr/>
                        <div id="div3">
                            <ul style="list-style-type: disc">
                                <c:forEach items="${advice}" var="special">
                                    <li>
                                        <a href="/showAdvice?fbbh=${special.fbbbh}" class="col-md-8">${special.xxbt}</a>
                                        <span class="col-md-4">${special.xxfbsj}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <hr/>
                    <hr/>
                    <div class="divwidth" style="padding-top: 15px;">
                        <div class="row">
                            <div class="col-md-8">就业指导</div>
                            <div class="col-md-4"><a href="/employmentguidance" class="readmore">查看更多</a></div>
                        </div>
                        <hr/>
                        <div id="div6">
                            <ul style="list-style-type: disc">
                                <c:forEach items="${employmentGuidance}" var="special">
                                    <li>
                                        <a href="/showGuidance?fbbh=${special.fbbbh}" class="col-md-8">${special.xxbt}</a>
                                        <span class="col-md-4">${special.xxfbsj}</span>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- Half Box End -->
            </div>
            <!-- Two Third Box End -->
            <!-- One Third Box Start -->
            <div class="onethird right" id="onethirdRight">
                <!-- One Third Box Start -->
                <div class="onethird box left" id="onethirdleft">
                    <!-- Upcoming Widget Start -->
                    <div class="widget upcoming-events">
                        <form class="form-horizontal"  id="form">
                            <fieldset>
                                <legend id="legend" style="background-color: gainsboro">用户登录</legend>
                                <div class="form-group">
                                    <label class="col-sm-5 control-label" for="username">
                                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>账&nbsp;&nbsp;&nbsp;号：
                                    </label>
                                    <div class="controls">
                                        <input type="text" class="form-control" style="width: 165px;height: 30px"
                                               name="username"
                                               id="username">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-5 control-label" for="password">
                                        <span class="glyphicon glyphicon-bell" aria-hidden="true"></span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
                                    </label>
                                    <div class="controls">
                                        <input type="password" class="form-control" style="width: 165px;height: 30px"
                                               id="password" name="password"></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-5 control-label" for="password">
                                        <span class="glyphicon glyphicon-check" aria-hidden="true"></span>验&nbsp;证&nbsp;码:
                                    </label>
                                    <div class="controls" style="display: inline">
                                        <nobr><input type="text"  class="form-control" style="width: 65px;height:30px"
                                                     id="validate">
                                            <canvas id="canvas" width="97px" height="35px" onclick="drawPic()"></canvas>
                                        </nobr>
                                    </div>
                                    <div class="controls">
                                    </div>
                                    <label id="label1" style="position: absolute;top: 710px;right: 110px;color: red">${error} </label>
                                </div>
                                <div class="form-group col-md-offset-10" style="margin-top: 40px">
                                    <a style="position: absolute;right: 230px;top: 740px;float: left" href="/forgetPassword"
                                       class="btn" role="button"><b>忘记密码</b></a>
                                    <a style="position: absolute;top: 740px;float: left" href="/signIn"
                                       class="btn col-md-offset-1" role="button"><b>单位注册</b></a>
                                    <button class="col-sm-3 col-md-offset-7 btn"
                                            style="background-color: darkgray;width: 70px;float: left" type="button"
                                            onclick="beforeLogin()"> 登录
                                    </button>
                                </div>
                            </fieldset>
                        </form>
                        <script type="text/javascript">
                            function beforeLogin(){
                                var userValue = document.getElementById("username").value;
                                var passwordValue = document.getElementById("password").value;
                                var yzm = document.getElementById("validate").value;
                                if (userValue.length==0||passwordValue.length==0){
                                    document.getElementById("label1").innerHTML="用户名或密码不能为空";
                                    return false;
                                }
                                if(yzm != string){
                                    document.getElementById("label1").innerHTML="验证码不正确";
                                    return false;
                                }
                                login();
                            }
                            function login() {
                                $.ajax({
                                    url:"/loginUser",
                                    type:"POST",
                                    dataType:"json",
                                    data:$("#form").serialize(),
                                    success:function (result) {
                                        if(result.status == "error"){
                                            document.getElementById("label1").innerHTML= result.msg;
                                        }else{
                                            window.location.href="/mainView";
                                        }
                                    }
                                })
                            }
                        </script>
                    </div>
                    <!-- Upcoming Widget End -->
                </div>
                <div class="onethird box left">
                    <!-- Facebook Widget Start -->
                    <div id="calendar" class="calendar"></div>
                    <!-- Facebook Widget Start -->
                </div>
                <!-- One Third Box End -->
            </div>
            <!-- One Third Box End -->
        </div>
    </div>
</div>
<div class="friendship-link" style="position: absolute;top: 1200px;left: 50px">
    <div class="links">
        <span style="float: left; padding-top: 10px;">友情链接:</span>
        <a href="http://www.scpta.gov.cn/" title="四川省人事考试网" target="_blank">
            <img src="../img/d6f21951-ae83-4847-9f1a-5f4189281cf6.png" width="106px" height="39px"/>
        </a>
        <a href="http://gj.ncss.cn/" title="高校毕业生到国际组织实习任职信息" target="_blank">
            <img src="../img/0af63035-b7ce-4ba4-ac44-4d46a60acdca.jpg" width="106px" height="39px"/>
        </a>
        <div class="clear"></div>
    </div>
    <!--container end-->
</div>
<!-- Footer Start -->
<div id="footer">
    <div class="footer-rays">
        <div class="inner">
            <div class="foot-navi-coopyrights">
                <p class="company-info">
                    <span style="color: white;">查号电话：(023)62651999 | 传真：(023)62650561 | 邮政编码：400074 | 邮箱：jyk@cqjtu.edu.cn</span>
                <p style="color: #fff;">学校地址：重庆市南岸区学府大道66号|渝ICP备11007697号-1|Copyright &copy;2012 CQJTU 重庆交通大学</p>
                </p>
                <p class="web-info">
                    <span style="color: white;">Copyright&#169;2015&nbsp;CQJTU&nbsp;重庆交通大学&nbsp;</span>
                    <span>
            				<a href="http://www.miibeian.gov.cn/" target="_blank">渝ICP备11007697号</a>
            			</span>
                </p>
            </div>
            <!--foot-navi-coopyrights end-->
            <!-- Follow Us - Go to Top Start -->
            <div class="followus">
                <!-- Go to Top Start -->
                <div class="gotop">
                    <a href="#top">&nbsp;</a>
                    <span>Back to Top</span>
                </div>
                <!-- Go to Top End -->
            </div>
            <!-- Follow Us - Go to Top End -->
            <div class="clear"></div>
        </div>
    </div>
</div>
<!-- Footer End -->
</div>
<!-- Wrapper End -->
<!-- 生成验证码 -->

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/styleswitch.js"></script>
<script type="text/javascript" src="../js/animatedcollapse.js"></script>
<script type="text/javascript" src="../js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="../js/jquery.nivo.slider.js"></script>
<script type="text/javascript" src="../js/jquery.infinite-carousel.js"></script>
<script type="text/javascript" src="../js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="../js/functions.js"></script>
<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/cavnas.js"></script>
</body>
</html>