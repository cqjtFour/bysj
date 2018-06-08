<%@ page import="com.cqfour.bysj.bean.Job" %>
<%@ page import="com.cqfour.bysj.bean.Employers" %>
<%@ page import="com.cqfour.bysj.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
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
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.1.js"></script>
    <script type="text/javascript" >
        $(document).ready(function () {
            $("#apply").bind("click",function () {
                var xsxh=$("#xsxh").val();
                var gwbh=$("#gwbh").val();
                var btn = $(this).button('loading');
                $.ajax({
                    url: '/applyJob',
                    type: 'post',
                    dataType: 'json',
                    data:{
                        "xsxh": xsxh,
                        "gwbh": gwbh
                    },
                    success: function (result) {
                        if(result.status=="success"){

                            window.location.href="/jobSearch";
                        }
                    }
                })
                setTimeout(function () { btn.button('reset'); },1000);
            }) ;
        });
    </script>
    <style >
        #gwxq ul li{float:left;width: 300px;padding-bottom: 50px;}
        .notshow{
            display: none;
        }
    </style>
</head>
<body>
<div id="bread-crumb">
    <div class="inner">
        <ul>
            <li><span class="glyphicon glyphicon-th-list" style="margin-right:5px ;"></span><a href="#"  onclick="javascript:history.back(-1)">职位列表</a></li>
            <li><span  style="margin-right:5px ;"></span>岗位详情</li>
        </ul>
        <div class="clear"></div>
    </div>
</div>
<!-- Content Section Start -->
<div id="contentsec">
    <div class="inner">
        <div class="fullwidth box left">
            <h3 class="widget-head-border colr"
                style="font-family: 'Microsoft yahei', Arial, Helvetica, sans-serif;margin-top: 0px">岗位详情</h3>
            <div class="boxshadow">
                <div class="boxshadow-left">
                    <h3>${job.getMc() }</h3>
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
                                    ${job.getZy() }
                                </strong>
                            </li>
                            <li >
                    <span>
                      月薪：
                    </span>
                                <strong>
                                    ${job.getYx() }
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
                                    ${job.getDd() }
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
                                <button type="button"  class="btn btn-info " data-toggle="modal" data-target=".bs-example-modal-sm"><span class="glyphicon glyphicon-ok">投递简历</span></button>
                            </li>
                        </ul>
                    </div>
                    <!-- Small modal -->
                    <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                        <div class="modal-dialog modal-sm" role="document">
                            <div class="modal-content">
                                <div class="modal-header" id="h1">是否确定投递?</div>
                                <div class="modal-footer">
                                    <button id="apply" type="button" class="btn btn-primary" >确定</button>
                                    <button class="btn btn-default" data-dismiss="modal">取消</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#xq" data-toggle="tab">
                                岗位详情
                            </a>
                        </li>
                        <li ><a href="#gsjj" data-toggle="tab">公司简介</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="xq">
                            <p>
                                ${job.getGwjj() }
                            </p>
                        </div>
                        <div class="tab-pane fade" id="gsjj" >
                            <p>${job.getEmployers().getDwjbqkjj() }</p>
                        </div>
                    </div>
                </div>
                <!--boxshadow-left end-->
                <div class="boxshadow-right">
                    <div class="boxshadow-right-up">
                        <div class="boxshadow-right-title">
                            <span class="title left"><p><strong>单位名称：</strong>${employers.getDwmc() }</p></span>
                        </div>
                        <!--boxshadow-right-title end-->
                        <div class="boxshadow-right-show">
                            <p><strong>单位性质：</strong>${employers.getDwxz() }</p>
                            <p><strong>所属行业：</strong>${employers.getSshy() }</p>
                            <p><strong>单位规模：</strong>${employers.getDwgm() }</p>
                            <p><strong>单位联系电话：</strong>${employers.getDwlxdh() }</p>
                            <p><strong>单位邮箱：</strong>${employers.getDzyx() }</p>
                        </div>
                        <!--boxshadow-right-show end-->
                    </div>
                    <!--boxshadow-right-up end-->
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
<div style="visibility: hidden">
    <input id="gwbh" value="${job.getZpgwbh() }" disabled/>
    <input id="xsxh" value="${student.getXh() }" disabled/>
</div>
</body>
</html>