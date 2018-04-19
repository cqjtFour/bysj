<%--

  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/4/17
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>就业管理系统</title>
<!--// Stylesheets //-->
<link href="css/headfooter.css" rel="stylesheet" type="text/css" />
<link href="css/student-resume.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/gray.css" title="styles" media="screen" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/paging.css" type="text/css" />
<!--// Javascripts //-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/animatedcollapse.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="js/scrolltopcontrol.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
<script type="text/x-javascript" src="js/paging.js"></script>

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
								<li><a href="#">招聘信息</a>
									<ul class="backcolr">
										<li><a href="/specialrecruitment">专场招聘</a></li>
										<li><a href="/socialrecruitment">社会招聘</a></li>
										<li><a href="/doublemeeting">双选会</a></li>
									</ul>
								</li>
								<li><a href="/download">下载中心</a></li>
								<li><a href="#">就业指南</a>
									<ul class="backcolr">
										<li><a href="/employmentguidance">就业指导</a></li>
										<li><a href="/employmentpolicy">就业政策</a></li>
									</ul>
								</li>
								<li><a href="/studentresume">学生简历</a></li>
								<li class="current-menu-item"><a href="/graduating">毕业去向</a></li>
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
				<li><span class="glyphicon glyphicon-send " style="margin-right:5px ;"></span><a href="#">毕业去向</a></li>
			</ul>
            <div class="clear"></div>
        </div>
    </div>
    <!-- Banner End -->
    
     <!-- Content Section Start 内容-->
      <div id="contentsec">
      	<div class="inner">
      		<!-- Fullwidth Box Start -->
            <div class="fullwidth box left">
            	<h3 class="widget-head-border colr">毕业去向</h3>
            	<div class="boxshadow">
            		<div class="search" >
            			<form class="form-inline">
            				<div class="form-group">
            					<input type="text" class="form-control" id="exampleInputName2" placeholder="姓名">           					
            				</div>
            				<div class="form-group">
            					<input type="email" class="form-control" id="exampleInputEmail2" placeholder="学号">            					
            				</div>
            				<button type="submit" class="btn btn-default">
            					<span class="glyphicon glyphicon-search" style="height: 20px;"></span>
            				</button>
            				<span style="color:#999;margin-left:20px ;">姓名、学号都填写的情况下才能查询档案去向信息</span>
            			</form>
            		</div>
            		<!--search end-->
            		<div class="search-list">
            			<table class="s-list">
            				<thead>
            					<tr>
            						<th width="50">姓名</th>
            						<th width="60">学号</th>
            						<th width="50">性别</th>
            						<th width="100">毕业年份</th>
            						<th>专业名称</th>
            						<th width="60">学历</th>
            						<th width="50">状态</th>
            						<th width="300">档案邮寄地址</th>
            						<th width="100">档案转递号</th>
            						<th>报到证号</th>
            					</tr>
            				</thead>
            				<tbody>
            					<tr>
            						<td align="center" colspan="9" style="color:red">
            							没有找到任何记录
            						</td>
            					</tr>
            				</tbody>
            			</table>
            		</div>
            		<!--search-list end-->
            	</div>
            	<!--contact-us end-->
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
    					<img src="img/d6f21951-ae83-4847-9f1a-5f4189281cf6.png" width="106px" height="39px" />
    				</a>
    			</li>
    			<li>
    				<a href="http://gj.ncss.cn/" title="高校毕业生到国际组织实习任职信息" target="_blank">
    					<img src="img/0af63035-b7ce-4ba4-ac44-4d46a60acdca.jpg" width="106px" height="39px" />
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