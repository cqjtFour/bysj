<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/4/19
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就业管理系统</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link rel="stylesheet" href="css/show.css">
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
    <!-- Bread Crumb Start -->
    <!-- Banner End -->
    <!-- Content Section Start -->
    <div id="contentsec">
        <div class="inner">
            <div class="fullwidth box left">
                  <div class="boxshow" >
                        <div class="title">
                            <div class="title-center">
                                <div style="width: 400px;margin: 0px auto;"><p style="text-align: left;" class="blue">${current.jobInfo.xnzpnrbt}</p></div>
                                <div>
                                    <p style="overflow: auto; margin-top: 5px; padding-bottom: 20px;">
                                    <span class="center" style="margin-left: 80px;padding-top: 20px">发布日期:${current.jobInfo.zpxxfbsj}</span>
                                    <span class="center">&nbsp;&nbsp;|&nbsp;&nbsp;招聘公司:${current.employers.dwmc}</span>
                                    <%--<span class="left">&nbsp;&nbsp;|&nbsp;&nbsp;浏览次数: ${current.llcs} 次</span>--%>
                                    </p>
                                </div>
                            </div>
                        </div>
                      <%--title end--%>
                        <div class="content">
                                <div>
                                    <h3>&nbsp;&nbsp;公司介绍：</h3>
                                    <label style="margin-left: 100px;">${current.employers.dwjbqkjj}</label>
                                </div>
                                <div class="container">
                                    <h3>招聘需求:</h3>
                                        <div style="margin-left: 100px;">
                                            <table class="table table-condensed">
                                                <thead>
                                                    <tr>
                                                        <td><label> 招聘岗位：</label></td>
                                                        <td><label> 招聘专业：</label></td>
                                                        <td><label> 招聘人数：</label></td>
                                                        <td><label> 薪资待遇：</label></td>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${current.reserveInfoJob}" var="re">
                                                        <tr>
                                                            <td>${re.gwmc}</td>
                                                            <td>${re.xyzy}</td>
                                                            <td>${re.rs}</td>
                                                            <td>${re.dy}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    <h3>时间地点:</h3>
                                    <div>
                                        <label style="margin-left: 100px;display:inline">招聘时间：<p style="color: red;display:inline">${current.zpsj}</p></label><br>
                                        <label style="margin-left: 100px;display:inline">招聘地点：<p style="color: red;display:inline">${current.zpdd}</p></label>
                                    </div>
                                    <h3>联系方式:</h3>
                                    <div>
                                        <label style="margin-left: 100px;display:inline">招聘负责人：<p style="color: red;display:inline">${current.employers.dwlxr}</p></label><br>
                                        <label style="margin-left: 100px;display:inline">联系人电话：<p style="color: red;display:inline">${current.employers.lxrdh}</p></label><br>
                                        <label style="margin-left: 100px;display:inline">联系人邮箱：<p style="color: red;display:inline">${current.employers.dzyx}</p></label>
                                    </div>
                                </div>
                        </div>
                      <%--content end--%>
                      <div class="newsupdown">
                          <div class="newsup"><a href="/showReserveInfo?xnzpgsbbh=${pre.xnzpgsbbh}">上一篇：${pre.jobInfo.xnzpnrbt}</a></div>
                          <div class="newsdown"><a href="/showReserveInfo?xnzpgsbbh=${next.xnzpgsbbh}">下一篇：${next.jobInfo.xnzpnrbt}</a></div>
                      </div>
                  </div>
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
