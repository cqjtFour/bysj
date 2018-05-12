<%@ page import="com.cqfour.bysj.bean.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    Job job=(Job)request.getAttribute("job");
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就业管理系统</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <!--// Javascripts //-->
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style >
       #gwxq ul li{float:left;width: 300px;padding-bottom: 50px;}
    </style>
</head>
<body>
    <div class="fullwidth box" style="margin:0px auto;width: 1000px;">
            <div class="widget-head-border colr">
                <h2>详情页面</h2>
            </div>
            <h3>${job.getGwmc() }</h3>
            <div id="gwxq">
                <ul class="terminal-ul clearfix" >
                <li >
                    <span>
                         岗位类型:
                    </span>
                    <strong>
                        ${job.getGwlx() }
                    </strong>
                </li>
                <li >
                    <span>
                      需求专业：
                    </span>
                    <strong>
                        ${job.getXqzy() }
                    </strong>
                </li>
                <li >
                    <span>
                      月薪：
                    </span>
                    <strong>
                        ${job.getGwyx() }
                    </strong>
                </li >
                <li >
                    <span>
                      工作经验：
                    </span>
                    <strong>
                        ${job.getGzjy() }
                    </strong>
                </li >
                <li >
                    <span>
                      工作地点：
                    </span>
                    <strong>
                        ${job.getGzdd() }
                    </strong>
                </li>
                <li>
                    <span>
                        招聘数量：
                    </span>
                    <strong>
                        ${job.getZpsl() }
                    </strong>
                </li>
                <li>
                    <button class="btn btn-info "><span class="glyphicon glyphicon-ok">投递简历</span></button>
                </li>
            </ul>
            </div>

            <ul id="myTab" class="nav nav-tabs">
            <li class="active">
                <a href="#xq" data-toggle="tab">
                    岗位详情
                </a>
            </li>
            <li><a href="#gsjj" data-toggle="tab">公司简介</a></li>
        </ul>
            <div id="myTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="xq">
                <p>
                    ${job.getGwjj() }
                </p>
            </div>
            <div class="tab-pane fade" id="gsjj" >
                <p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple
                    TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
            </div>
        </div>
    </div>


</body>
</html>