<%@ page import="java.util.List" %>
<%@ page import="com.cqfour.bysj.bean.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%

%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就业管理系统</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <!--// Javascripts //-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jobsearch.js"></script>
    <script type="text/x-javascript" src="js/paging.js"></script>
    <style >
        #gwss ul li{float:left;width: 125px;margin-left: 50px;}
        #gwss ul li select{width: 125px;border-radius:5px;}
        #gwss ul li input{border-radius:5px; }
    </style>
</head>
<body>
<div class="fullwidth box" style="margin:0px auto;width: 1000px;">
    <div class="widget-head-border colr">
        <h1>岗位信息</h1>
    </div>

    <div id="gwss">
        <form action="searchResult" id="condition" method="post">
            <ul class="terminal-ul clearfix" >
                <li>
                    <span>需求专业<br/></span>
                    <input id="xqzy" style="width: 125px" name="xqzy"/>
                </li>

                <li>
                    <span>岗位类型<br/></span>
                    <input id="gwlx" style="width: 125px" name="gwlx" />
                </li>

                <li>
                    <span>工作地点<br/></span>
                    <input id="gzdd" style="width: 125px"  name="gzdd"/>
                </li>


                <li>
                    <span>关键词<br/></span>
                    <input id="gwmc" style="width: 125px" name="gwmc"/>
                </li>

                <li>
                    <br/><button type="submit" class="btn btn-info" id="search" ><span class="glyphicon glyphicon-search"></span>&nbsp;搜索</button>
                </li>
            </ul>
        </form>
    </div>

    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
    <div>
        <table class="table table-striped" id="jobList">
            <caption><strong>最新招聘信息</strong></caption>
            <thead>
            <tr>
                <th>职位名称</th>
                <th>类型</th>
                <th>公司名称</th>
                <th>工作地点</th>
                <th>需求专业</th>
                <th>发布时间</th>
            </tr>
            </thead >
            <tbody id="jobListResult">
            <c:forEach items="${pageInfo.list }" var="jobs">
                <tr>
                    <td><a href='jobDetail?zpgwbh=${jobs.zpgwbh }'>${jobs.mc }</a></td>
                    <td>${jobs.gwlx }</td>
                    <td>${jobs.employers.dwmc }</td>
                    <td>${jobs.dd }</td>
                    <td>${jobs.zy }</td>
                    <td>${jobs.fbsj }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="page" id="page"></div>
        <script type="text/javascript">
            $('#page').paging({
                webPage:"/jobSearch",
                parameter:"/getAllJobToPage",
                initPageNo: ${pageInfo.pageNum}, // 初始页码
                totalPages: ${pageInfo.pages}, //总页数
                pageNo:${pageInfo.pageNum},
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
                            url:"/getAllJobToPage",
                            type:"GET",
                            dataType:"json",
                            data:{"page":i},
                            success:function (result) {
                                if (result.status == "success"){
                                    window.location.href="/jobSearch"+"?page="+j;
                                }
                            }
                        })
                    }
                }
            }
        </script>

    </div>
</div>
</body>
</html>