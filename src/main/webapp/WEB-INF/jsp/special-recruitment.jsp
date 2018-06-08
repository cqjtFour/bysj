<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--

  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/17
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就业管理系统</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="css/daterangepicker.min.css"/>
    <link rel="stylesheet" type="text/css" media="all" href="css/daterangepicker.css"/>
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <!--// Javascripts //-->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/daterangepicker.js"></script>
    <script type="text/javascript" src="js/animatedcollapse.js"></script>
    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="js/scrolltopcontrol.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.1.js"></script>
    <script type="text/javascript" src="js/lightbox.js"></script>
    <script type="text/javascript" src="js/functions.js"></script>
    <script type="text/x-javascript" src="js/paging.js"></script>
    <style type="text/css">
        body{
            font-size: 14px;
        }
    </style>
</head>

<body>
<!-- Wrapper Start -->
<div id="outer_wrapper">
    <!-- Header Start -->
    <div id="header">
        <div class="rays">
            <div class="inner">
                <!-- Logo Start -->
                <div class="logo">
                    <a href="/index"><img src="images/logo.png" alt=""/></a>
                </div>
                <!-- Logo End -->
                <div class="right">
                    <!-- Navigation Start -->
                    <div class="navigation">
                        <div id="smoothmenu1" class="ddsmoothmenu">
                            <ul>
                                <li><a href="/index">首页</a></li>
                                <li><a href="/advice">通知公告</a></li>
                                <li class="current-menu-item"><a href="/specialrecruitment">招聘信息</a>
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
    <!-- Bread Crumb Start -->
    <div id="bread-crumb">
        <div class="inner">
            <ul>
                <li><span class="glyphicon glyphicon-home" style="margin-right:5px ;"></span><a href="#">主页</a></li>
                <li><span class="glyphicon glyphicon-knight" style="margin-right: 5px;"></span><a href="#">招聘信息</a></li>
                <li><span class="glyphicon glyphicon-leaf"></span><a href="#">专场招聘</a></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <!-- Banner End -->
    <!-- Content Section Start -->
    <div id="contentsec">
        <div class="inner">
            <div class="fullwidth box left">
                <h3 class="widget-head-border colr"
                    style="font-family: 'Microsoft yahei', Arial, Helvetica, sans-serif;margin-top: 0px">专场招聘</h3>
                <div class="boxshadow">
                    <div class="boxshadow-left">

                        <div class="form-group has-feedback" >
                            <div style="float: left;margin-right: 10px;margin-left: 180px;margin-top: 5px">
                                <label>请选择日期范围:</label>
                            </div>
                            <div style="margin-bottom: 20px;float: left" class="col-md-4">
                                <input style="width: 227px" type="text" id="config-demo" class="form-control"/>
                                <i class="glyphicon glyphicon-calendar form-control-feedback"></i>
                            </div>
                            <div style="margin-bottom: 20px;float: left" class="col-md-2" class="col-offset-2">
                                <button type="button" class="btn btn-info" onclick="getDate()">查询</button>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $('#config-demo').daterangepicker({
                                "startDate": "04-08-2018",
                                "endDate": "04-14-2018"
                            });
                            function getDate() {
                                window.location.href = "/specialrecruitment?date="+$('#config-demo').val().toString();
                            }
                        </script>
                        <table class="table table-striped table-hover">
                            <tr>
                                <td>单位名称</td>
                                <td>招聘地点</td>
                                <td>招聘日期</td>
                                <td>单位性质</td>
                            </tr>
                            <c:forEach items="${recruitment.list}" var="reserveInfo">
                                <tr style="cursor: pointer" onclick="toShow(${reserveInfo.xnzpgsbbh})">
                                    <td>${reserveInfo.employers.dwmc}</td>
                                    <td>${reserveInfo.zpdd}</td>
                                    <td>${reserveInfo.zpsj}</td>
                                    <td>${reserveInfo.employers.dwxz}</td>
                                </tr>
                                <script>
                                    function toShow(i) {
                                        window.location.href = "/showReserveInfo?xnzpgsbbh="+i;
                                    }
                                </script>
                            </c:forEach>
                        </table>

                        <div class="page" id="page"></div>

                        <script>
                            $('#page').paging({
                                webPage:"/specialrecruitment",
                                parameter:"/queryReserveInfo",
                                initPageNo: ${recruitment.pageNum}, // 初始页码
                                totalPages: ${recruitment.pages}, //总页数
                                pageNo:${recruitment.pageNum},
                                /*totalCount: '合计' + setTotalCount + '条数据', // 条目总数*/
                                slideSpeed: 600, // 缓动速度。单位毫秒
                                jump: true, //是否支持跳转
                                callback: function(page) { // 回调函数
                                    console.log(page);
                                }
                            })
                            window.onload = function(){
                                var obj_lis = document.getElementById("pageSelect").getElementsByTagName("li");
                                for(var i=0;i < obj_lis.length;i++){
                                    obj_lis[i].onclick = function(){
                                        var j = parseInt(this.innerHTML);
                                        $.ajax({
                                            url:"/queryReserveInfo",
                                            type:"GET",
                                            dataType:"json",
                                            data:{"page":j},
                                            success:function (result) {
                                                if (result.status == "success"){
                                                    window.location.href="/specialrecruitment?page="+j;
                                                }
                                            }
                                        })
                                    }
                                }
                            }
                        </script>
                    </div>
                    <!--boxshadow-left end-->
                    <div class="boxshadow-right">
                        <div class="boxshadow-right-up">
                            <div class="boxshadow-right-title">
                                <span class="title left">热门招聘公司</span>
                            </div>
                            <!--boxshadow-right-title end-->
                            <div class="boxshadow-right-show">
                                <ul style="height: 238px; margin: 5px;">
                                    <c:forEach items="${fiveData}" var="five">
                                        <li><a href="/showReserveInfo?xnzpgsbbh=${five.xnzpgsbbh}">${five.employers.dwmc}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <!--boxshadow-right-show end-->
                        </div>
                        <!--boxshadow-right-up end-->
                        <!--boxshadow-right-down end-->
                    </div>
                    <!--boxshadow-right end-->
                </div>
                <!--boxshadow end-->
            </div>
            <!--fullwidth box left end-->
        </div>
        <!--inner end-->
    </div>
    <!-- Content Section End -->
    <!--Friendship-link start 友情链接-->
    <div class="friendship-link">
        <div class="links">
            <span style="float: left; padding-top: 10px;">友情链接:</span>
            <ul>
                <li>
                    <a href="http://www.scpta.gov.cn/" title="四川省人事考试网" target="_blank">
                        <img src="img/d6f21951-ae83-4847-9f1a-5f4189281cf6.png" width="106px" height="39px"/>
                    </a>
                </li>
                <li>
                    <a href="http://gj.ncss.cn/" title="高校毕业生到国际组织实习任职信息" target="_blank">
                        <img src="img/0af63035-b7ce-4ba4-ac44-4d46a60acdca.jpg" width="106px" height="39px"/>
                    </a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <!--container end-->
    </div>
    <!--Friendship-link end-->

    <!-- Footer Start 尾部-->
    <div id="footer">
        <div class="footer-rays">
            <div class="inner">
                <div class="foot-navi-coopyrights">
                    <p class="company-info">
                        <span>查号电话：(023)62651999 | 传真：(023)62650561 | 邮政编码：400074 | 邮箱：jyk@cqjtu.edu.cn</span>
                    <p style="color: #fff;">学校地址：重庆市南岸区学府大道66号|渝ICP备11007697号-1|Copyright &copy;2012 CQJTU 重庆交通大学</p>
                    </p>
                    <p class="web-info">
                        <span>Copyright&#169;2015&nbsp;CQJTU&nbsp;重庆交通大学&nbsp;</span>
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

</body>
</html>