<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <script type="text/javascript" src="./js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#jobSearch").click(function () {
                var xqzy=$("#xqzy").val();
                console.log(xqzy);
                var gwlx=$("#gwlx").val();
                console.log(gwlx);
                var gzdd=$("#gzdd").val();
                console.log(gzdd);
                var gwmc=$("#gwmc").val();
                console.log(gwmc);

                $.ajax({
                    url: '/job/search',
                    type: 'get',
                    dataType: 'json',
                    data: {
                        xqzy: xqzy,
                        gwlx: gwlx,
                        gzdd: gzdd,
                        gwmc: gwmc
                    },
                    success: function (data) {
                        $("#jobListResult").empty();
                        console.log(data[0])
                       for(var i=0;i<data.length;i++){
                           $("#jobListResult").append("<tr><td>" + data[i].gwmc + "</td><td>"+data[i].gwlx+"</td>"+
                               "<td>"+data[i].gzdd+"</td>"+
                               "<td>"+data[i].xqzy+"</td>"+"</tr>")
                       }
                    }

                })
            })
        })
    </script>
    <style >
        #gwss ul li{float:left;width: 125px;margin-left: 50px}
        #gwss ul li select{width: 125px;}
    </style>
</head>
<body>
<div class="fullwidth box" style="margin:0px auto;width: 1000px;">
    <div class="widget-head-border colr">
        <h1>岗位信息</h1>
    </div>
    <div id="gwss">
       <ul class="terminal-ul clearfix" >
        <li>
            <span>需求专业<br/></span>
            <input id="xqzy" style="width: 125px"/>
        </li>
        <li>
            <span>岗位类型<br/></span>
            <input id="gwlx" style="width: 125px"/>
        </li>
        <li>
            <span>工作地点<br/></span>
            <input id="gzdd" style="width: 125px"/>
        </li>
        <li>
           <span>关键词<br/></span>
            <input id="gwmc" style="width: 125px"/>
        </li>
           <li>
               <a href="/job/detail?zpgwbh=5">asas</a>
           </li>
        <li>
            <br/><button class="btn btn-info" id="jobSearch" ><span class="glyphicon glyphicon-search">搜索</span></button>
        </li>
       </ul>
    </div>
    <hr data-am-widget="divider" style="" class="am-divider am-divider-default" />
    <div style="display: none">
        <table class="table table-striped" >
            <thead>
            <tr>
                <th>职位名称</th>
                <th>类型</th>
                <th>专业</th>
                <th>工作地点</th>
            </tr>
            </thead>
            <tbody id="jobSearchResult">
            </tbody>
        </table>
        <!--分页 todo-->
        <ul class="pagination">
            <li><a href="#">&laquo;</a></li>
            <li class="active"><a href="#">1</a></li>
            <li ><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>

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
            </tbody>
        </table>
    </div>
</div>
</body>
</html>