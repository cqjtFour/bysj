<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div id="outer_wrapper"><!--整体-->

    <div id="header"><!--头部-->
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
								<li  class="current-menu-item"><a href="/studentresume">学生简历</a></li>
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
    </div> <!-- Header Start -->
    <!-- Header End -->
    
    <!-- Bread Crumb Start -->
    <div id="bread-crumb">
    	<div class="inner">
			<ul>
				<li><span class="glyphicon glyphicon-home" style="margin-right:5px ;"></span><a href="#">主页</a></li>
				<li><span class="glyphicon glyphicon-list-alt " style="margin-right:5px ;"></span><a href="#">学生简历</a></li>
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
            	<h3 class="widget-head-border colr">学生简历</h3>
            	<div class="boxshadow">
            		<div class="search">           		    	
            			<form class="form-inline">
            				<div class="form-group input-group">
            					<input id="inputData" type="text" class="form-control" placeholder="在结果中搜索">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button" style="height: 34px;" onclick="sortByDate()">
                                    	<span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </span>      					
            				</div>
							<input type="hidden" id="result"/>
							<script type="text/javascript">
								function sortByDate() {
								    var input = $('#inputData').val();
                                    window.location.href = "/studentresume?input="+input;
                                }
							</script>
            			</form>
            		</div>
            		<!--search end-->
            		<div class="search-list">
            			<table class="s-list">
            				<thead>
            					<tr>
									<th width="60">学号</th>
            						<th width="60">姓名</th>
            						<th width="60">性别</th>
            						<th width="60">学历</th>
            						<th>专业</th>
            						<th width="100">毕业年份</th>
            						<th width="100">意向行业</th>
            						<th width="150">意向工作地</th>
            						<th width="70">更新日期</th>
            					</tr>
            				</thead>
            				<tbody>
								<c:forEach items="${student_pageInfo.list}" var="student">
									<tr>
										<td>${student.xh}</td>
										<td>${student.xsxm}</td>
										<td>
											<c:if test="${student.xb==0}">
												男
											</c:if>
											<c:if test="${student.xb==1}">
												女
											</c:if>
										</td>
										<td>
											<c:if test="${student.xl==0}">
												本科
											</c:if>
											<c:if test="${student.xl==1}">
												硕士
											</c:if>
										</td>
										<td>
											<c:if test="${student.xl==0}">
												${student.bkzy}
											</c:if>
											<c:if test="${student.xl==1}">
												${student.sszy}
											</c:if>
										</td>
										<td>${student.bysjs}</td>
										<td>${student.qwhy}</td>
										<td>${student.qwgzdd}</td>
										<td>${student.gxsj}</td>
									</tr>
								</c:forEach>
            				</tbody>
            			</table>
            		</div>
            		<!--search-list end-->
            		<div class="page" id="page"></div>
            		<script>
						$("#result").val("${inputResult}");
                        $('#page').paging({
                            webPage:"/studentresume?input="+$("#result").val(),
                            parameter:"/studentresumeToPage?input="+$("#result").val(),
                            initPageNo: ${student_pageInfo.pageNum}, // 初始页码
                            totalPages: ${student_pageInfo.pages}, //总页数
                            pageNo:${student_pageInfo.pageNum},
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
                                        url:"/studentresumeToPage",
                                        type:"GET",
                                        dataType:"json",
                                        data:{"page":j,"input":$("#result").val()},
                                        success:function (result) {
                                            if (result.status == "success"){
                                                window.location.href="/studentresume?page="+j+"&input="+$("#result").val();
                                            }
                                        }
                                    })
                                }
                            }
                        }
            		</script>
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