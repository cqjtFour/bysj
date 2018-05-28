<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>预约管理</title>
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <!--script-->
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/x-javascript" src="js/paging_1.js"></script>
    <script type="text/javascript">
        function show(Obj) {
            $.ajax({
               url: '/resApplication/getResJobList',
                type:'get',
                dataType: 'json',
                data: {
                   "xyzpyybbh":$(Obj).attr("id")
               },
                success: function (data) {
                    $("#mytbody").empty();
                    var id=$(Obj).attr("id");
                    $("#myinput").val(id);
                    //if(data!=null&&data.length!=0)
                    for(var i=0;i<data.length;i++){
                        $("#mytbody").append("<tr><td>" + data[i].gwmc + "</td><td>"+data[i].xyzy+"</td>"+
                            "<td>"+data[i].rs+"</td>"+
                            "<td>"+data[i].dy+"</td>"+"</tr>");
                    }
                    $("#mytext").val($(Obj).attr("mycontext"));
                    $("#infomodal").modal('show');
                }
            });

        }
        function responseShow(Obj) {
            var id=$(Obj).attr("myid");
            $("#myresinput").val(id);
            $("#responsemodal").modal('show');

        }
        function response(Obj) {
            var dfnr=$("#response").val();
            $.ajax({
                url:'/resApplication/changeStatus',
                type:'post',
                dataType: 'json',
                data:{
                    "xyzpyybbh":$("#myresinput").val(),
                    "dfnr":dfnr
                },
                success:function (result) {
                    if (result.status == "success"){
                        location.reload(true);
                    }else {
                        alert(result.status);
                    }
                }
            })
        }
    </script>
    <style>
        td {
            text-align: center;
            width: auto;
            white-space: nowrap; /* 自适应宽度*/
            word-break:  keep-all; /* 避免长单词截断，保持全部 */

        }

        .table>tbody>tr>td,
        .table>tbody>tr>th,
        .table>tfoot>tr>td,
        .table>tfoot>tr>th,
        .table>thead>tr>td,
        .table>thead>tr>th{
            padding-bottom: 4px;
            padding-top: 4px;
        }
        select{
            border-radius:3px;
            -webkit-border-radius:3px;
            -moz-border-radius :3px;
        }
    </style>
</head>
<body>
<!--模态框开始-->
<div class="modal fade " id="infomodal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" id="h1">详情</div>
            <div class="modal-body">
                <input id="myinput">
                <table class="table table-striped table-hover">
                    <caption>招牌岗位</caption>
                    <thead>
                    <tr>
                        <td>岗位名称</td>
                        <td>专业需求</td>
                        <td>招聘人数</td>
                        <td>薪资待遇</td>
                    </tr>
                    </thead>
                    <tbody id="mytbody">
                    </tbody>
                </table>

            </div>
            <div class="modal-body">
                <label>预约内容</label><br>
                <textarea id="mytext"></textarea>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade " id="responsemodal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" >答复内容</div>
            <div class="modal-body">
                <input id="response">
                </input>
                <input id="myresinput" hidden>
            </div>
            <div class="modal-footer">
                <button id="apply" type="button" onclick="response(this)" class="btn btn-primary" >确定</button>
                <button class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!--模态框结束-->
<div class="container" style="width: 1000px;">
    <div class="row">
        <div class="col-md-12">
            <h1>校园招聘预约</h1>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12 col-md-offset-1">
            <input id="username" disabled value="${user.dlzh }" />
            <label class="col-md-offset-4">状态</label>
            <select id="ztselect" style="width: 150px;height: 30px;">
                <option value="-1">全部</option>
                <option value="1">已答复</option>
                <option value="0">未答复</option>
            </select>
            <button onclick="ztcx()" class="btn btn-primary" style=" height: 30px;">查询</button>
            <script type="text/javascript">
                //岗位查看时事件
                function ztcx() {
                    var zt=$("#ztselect").val();
                    window.location.href="/resApplication?yyzt="+zt;
                }
            </script>
        </div>
    </div>
    <br>
    <div class="row">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <td>
                    公司名称
                </td>
                <td>
                    负责人
                </td>
                <td>
                    负责人电话
                </td>
                <td>
                    负责人邮箱
                </td>
                <td>
                    预约日期
                </td>
                <td>
                    预约时间
                </td>
                <td>
                    提交时间
                </td>
                <td>
                    状态
                </td>
                <td>
                    答复人
                </td>
                <td>
                    答复时间
                </td>
                <td>
                    答复内容
                </td>
                <td>
                    招聘岗位
                </td>
                <td>
                    操作
                </td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list }" var="ra">
                <tr>
                    <td>${ra.employers.dwmc }</td>
                    <td>${ra.xyzpdwfzr }</td>
                    <td>${ra.fzrdh }</td>
                    <td>${ra.fzryx }</td>
                    <td>${ra.yrrq }</td>
                    <td>${ra.yysj }</td>
                    <td>${ra.yytjsj }</td>
                    <c:if test="${ra.yyzt==1}">
                        <td>已答复</td>
                        <td>${ra.employmentDepartment.rymc }</td>
                        <td>${ra.dfsj }</td>
                        <td>${ra.dfnr }</td>
                    </c:if>
                    <c:if test="${ra.yyzt==0 }">
                        <td>未答复</td>
                        <td>无</td>
                        <td>无</td>
                        <td>无</td>
                    </c:if>
                    <td>
                        <button id="${ra.xyzpyybbh }" onclick="show(this)" mycontext="${ra.yynr }" class="button btn-primary">查看</button>
                    </td>
                    <c:if test="${ra.yyzt==0}">
                    <td>
                        <button myid="${ra.xyzpyybbh }" onclick="responseShow(this)" class="button btn-success">答复</button>
                    </td>
                    </c:if>
                    <c:if test="${ra.yyzt==1}">
                        <td>
                            <button myid="${ra.xyzpyybbh }" disabled class="button btn-success">答复</button>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="page" id="page"></div>
    <script type="text/javascript">
        $("#ztselect").val(${yyzt })
        $('#page').paging({
            webPage:"/resApplication?yyzt="+$("#ztselect").val(),
            parameter:"/resApplicationToPage?yyzt="+$("#ztselect").val(),
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
                        url:"/resApplicationToPage",
                        type:"GET",
                        dataType:"json",
                        data:{
                            "yyzt":$("#ztselect").val(),
                            "page":i
                        },
                        success:function (result) {
                            if (result.status == "success"){
                                window.location.href="/resApplication"+"?page="+j+"&yyzt="+$("#ztselect").val();
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