<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>签约管理</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <!--script-->
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/x-javascript" src="js/paging_1.js"></script>
</head>
<body>
<!--模态框-->
<div class="modal fade " id="addSignModal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" >添加信息</div>
            <div class="modal-body">
                <ul>
                    <li><label>学生学号</label><input id="xsxh" onblur="getValiStudent()"></li>
                    <li><label>专   &nbsp;业</label><input id="xszy" disabled><label>学生姓名</label><input disabled id="xsxm"></li>
                    <li><label>单位名称</label><input id="qydwmc" onblur="getValiEmployer()"><span id="tip" style="color:red;"></span></li>
                    <li><input id="validateEmployer" style="visibility:hidden;"></li>
                </ul>
            </div>
            <div class="modal-footer">
                <button id="apply" type="button" onclick="subInfo()" class="btn btn-primary" >确定</button>
                <button class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    //显示模态框
    function show() {
        $("#addSignModal").modal('show');
    }
    //模态框数据ajax
    function getValiStudent() {
        $.ajax({
            url:"/contractManage/validateModalStudent",
            type:"get",
            dataType:"json",
            data:{
                "xsxh":$("#xsxh").val()
            },
            success:function (data) {
                if(data.xsxm!=null){
                    $("#xsxm").val(data.xsxm);
                    $("#xszy").val(data.discipline.zymc );
                }else {
                    $("#xsxm").val('');
                    $("#xszy").val('');
                }
            }
        })
    };
    function getValiEmployer() {
        $("#tip").html("");
        $.ajax({
            url:"/contractManage/validateModalEmployer",
            type:"get",
            dataType:"json",
            data:{
                "dwmc":$("#qydwmc").val()
            },
            success:function (data) {
                if(data.status=="success"){
                    $("#tip").html("ok");
                    $("#tip").css("color","green");
                }else {
                    $("#tip").html("不存在");

                }
            }
        })
    };
    function subInfo() {
        var xm=$("#xsxm").val();
        var tip=$("#tip").text();
        if(xm!=''&&tip=='ok'){
            $.ajax({
                url:"/contractManage/saveSignInfo",
                type:"post",
                dataType:"json",
                data:{
                    "dwmc":$("#qydwmc").val(),
                    "xsxh":$("#xsxh").val()
                },
                success:function (data) {
                    if(data.status=="success"){
                        location.reload(true);
                    }
                }
            })
        }
    }
</script>
<!--模态框结束-->
<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group">
                <button type="button" onclick="show()" class="form-control btn btn-info" >
                    <span class="glyphicon glyphicon-plus"  aria-hidden="true"></span>添加签约信息
                </button>
            </div>
            <div class="form-group input-group col-md-offset-3">
                <input id="xhinput" type="text" class="form-control" placeholder="输入学生学号进行查询" >
                <span class="input-group-btn">
                    <button  class="btn btn-default"  onclick="xhcx()" type="button" style="height: 34px;">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </form>
    </div>
    <script type="text/javascript">
        function xhcx() {
            var xh=$("#xhinput").val();
            window.location.href="/contractManage?xh="+xh;
        }
    </script>
    <div class="row">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <td>学生学号</td>
                <td>学生姓名</td>
                <td>学生邮箱</td>
                <td>单位名称</td>
                <td>单位邮箱</td>
                <td>是否签订三方</td>
                <td>三方签订时间</td>
                <td>三方是否上交就业处</td>
                <td>上交时间</td>
                <td>是否已毁约</td>
                <td>毁约时间</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list }" var="sign">
                <tr>
                    <td>${sign.xh }</td>
                    <td>${sign.student.xsxm }</td>
                    <td>${sign.student.email }</td>
                    <td>${sign.employers.dwmc }</td>
                    <td>${sign.employers.dzyx }</td>
                    <c:if test="${sign.sfqdsf==1}">
                        <td>是</td>
                        <td>${sign.qdsj }</td>
                    </c:if>
                    <c:if test="${sign.sfqdsf==0}">
                        <td>否</td>
                        <td>无</td>
                    </c:if>
                    <c:if test="${sign.sfsfsjjyc==1}">
                        <td>是</td>
                        <td>${sign.sjsj }</td>
                    </c:if>
                    <c:if test="${sign.sfsfsjjyc==0}">
                        <td>否</td>
                        <td>无</td>
                    </c:if>
                    <c:if test="${sign.sfyhy==1}">
                        <td>是</td>
                        <td>${sign.hysj }</td>
                    </c:if>
                    <c:if test="${sign.sfyhy==0}">
                        <td>否</td>
                        <td>无</td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="page" id="page"></div>
    <script type="text/javascript">
        $("#xhinput").val(${xh })
        $('#page').paging({
            webPage:"/contractManage?xh="+$("#xhinput").val(),
            parameter:"/contractManageToPage?xh="+$("#xhinput").val(),
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
                        url:"/contractManageToPage",
                        type:"GET",
                        dataType:"json",
                        data:{
                            "xh":$("#xhinput").val(),
                            "page":i
                        },
                        success:function (result) {
                            if (result.status == "success"){
                                window.location.href="/contractManage"+"?page="+j+"&xh="+$("#xhinput").val();
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