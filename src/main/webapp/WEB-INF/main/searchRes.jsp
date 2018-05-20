<%@ page import="java.util.List" %>
<%@ page import="com.cqfour.bysj.bean.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%%>
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
    <script type="text/x-javascript" src="js/paging_1.js"></script>
    <style >
        #gwss ul li{float:left;width: 125px;margin-left: 50px}
        #gwss ul li select{width: 125px;}
        #gwss ul li input{border-radius:5px; }
    </style>
</head>
<body>
<div class="fullwidth box" style="margin:0px auto;width: 1000px;">
    <div class="widget-head-border colr">
        <h1>岗位信息</h1>
    </div>

    <div id="gwss">
        <form action="searchResult" id="condition" >
        <ul class="terminal-ul clearfix" >
            <li>
                <span>需求专业<br/></span>
                <input id="xqzy" style="width: 125px" value="${xqzy }" name="xqzy"/>
            </li>
            <li>
                <span>岗位类型<br/></span>
                <input id="gwlx" style="width: 125px" value="${gwlx }" name="gwlx"/>
            </li>
            <li>
                <span>工作地点<br/></span>
                <input id="gzdd" style="width: 125px" value="${gzdd }" name="gzdd"/>
            </li>
            <li>
                <span>关键词<br/></span>
                <input id="gwmc" style="width: 125px" value="${gwmc }" name="gwmc"/>
            </li>
            <li>
                <br/><button type="submit" class="btn btn-info" id="search" ><span class="glyphicon glyphicon-search"></span>&nbsp;搜索</button>
            </li>
        </ul>
        </form>
    </div>
    <script type="text/javascript">
    </script>
    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
    <div id="resDiv"  >
        <table class="table table-striped" >
            <caption><strong>搜索结果</strong></caption>
            <thead>
            <tr>
                <th>职位名称</th>
                <th>类型</th>
                <th>公司名称</th>
                <th>工作地点</th>
                <th>需求专业</th>
                <th>发布时间</th>
            </tr>
            </thead>
            <tbody id="jobSearchResult">
            <c:forEach items="${pageInfo1.list }" var="searchRes">
                <tr>
                    <td><a href='jobDetail?zpgwbh=${searchRes.zpgwbh }'>${searchRes.mc}</a></td>
                    <td>${searchRes.gwlx}</td>
                    <td>${searchRes.employers.dwmc}</td>
                    <td>${searchRes.dd}</td>
                    <td>${searchRes.zy}</td>
                    <td>${searchRes.fbsj}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <span></span>
    </div>
    <div class="page" id="page"></div>
    <script type="text/javascript">
        var xqzy=$("#xqzy").val();
        var gwlx=$("#gwlx").val();
        var gzdd=$("#gzdd").val();
        var gwmc=$("#gwmc").val();
        var value=$("#condition").serialize();
        $('#page').paging({
            webPage:"/searchResult?"+value,
            parameter:"/searchResultToPage?"+value,
            initPageNo: ${pageInfo1.pageNum}, // 初始页码
            totalPages: ${pageInfo1.pages}, //总页数
            pageNo:${pageInfo1.pageNum},
            /*totalCount: '合计' + setTotalCount + '条数据', // 条目总数*/
            slideSpeed: 600, // 缓动速度。单位毫秒
            jump: true, //是否支持跳转
            callback: function(page) { // 回调函数
                console.log(page);
            }
        })
        window.onload = function(){
            var obj_lis = document.getElementById("pageSelect").getElementsByTagName("li");
            var value=$("#condition").serialize();
            for(var i=0;i < obj_lis.length;i++){
                obj_lis[i].onclick = function(){
                    var j = parseInt(this.innerHTML);
                    $.ajax({
                        url:"/searchResultToPage",
                        type:"get",
                        dataType:"json",
                        data:{
                             "page":j,
                             "xqzy": $("#xqzy").val(),
                             "gwlx": $("#gwlx").val(),
                             "gzdd": $("#gzdd").val(),
                             "gwmc": $("#gwmc").val()
                             },
                        success:function (result) {
                            if (result.status == "success"){
                                window.location.href="/searchResult?page="+j+"&"+value;
                            }
                        }
                    })
                }
            }
        }
    </script>
</div>
</body>
</html>