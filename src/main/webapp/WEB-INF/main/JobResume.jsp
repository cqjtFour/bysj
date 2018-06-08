<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/19
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>简历筛选</title>
    <%-- javascript --%>
    <script src="./js/jquery-3.1.1.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript"></script>
    <script src="./js/jobResume.js" type="text/javascript"></script>
    <script src="./js/jquery.form.js" type="text/javascript"></script>
    <script type="text/javascript" src="./js/paging.js"></script>
    <%-- style --%>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="./css/jobResume.css" rel="stylesheet" type="text/css"/>
    <link href="./css/paging.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="container">
    <input type="hidden" id="yrdwxxbbh" value="${employers.yrdwxxbbh}">
    <div class="row">
        <div class="col-md-12">
            <h1>应聘简历筛选</h1>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-3" style="padding-right: 10px">
            <label>岗位:</label>
            <select style="width: 150px;height: 30px;" name="special" id="gw">
                <option value="0">请选择</option>
                <c:forEach items="${gws}" var="gw" >
                    <option value="${gw.zpgwbh}">${gw.mc}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-3" style="padding-right: 10px">
            <label>状态:</label>
            <select style="width: 150px;height: 30px;" name="special" id="zt">
                <option value="2">请选择</option>
                <option value="1">已查看</option>
                <option value="0">未查看</option>
            </select>
        </div>
        <div class="col-md-5 " style="padding-left: 0px">
            <label>投递时间:</label>
            <input type="date" name="startTime" id="startTime" style="width:150px;height: 30px;"/>
            -
            <input type="date" name="endTime" id="endTime" style="width: 150px;height: 30px;"/>

        </div>
        <div class="col-md-1" style="padding-left: 0px;margin-left: 0px">
            <button class="btn btn-primary" style=" height: 30px;" id="sx">筛选</button>
        </div>
    </div>
    <hr />
    <br>

    <div class="row">
        <table class="table table-striped table-hover">
            <thead bgcolor="antiquewhite">
            <tr>
                <td style="width: 70px;">
                    <label>审核状态</label>
                </td>
                <td>
                    <label>应聘岗位</label>
                </td>
                <td>
                    <label>姓名</label>
                </td>
                <td>
                    <label>专业</label>
                </td>
                <td>
                    <label>简历投递时间</label>
                </td>
                <td>
                    <label>查看状态</label>
                </td>
                <td>
                    <label>操作</label>
                </td>
            </tr>
            </thead>
            <tbody id="tbody">
               <c:forEach items="${applies}" var="apply">
                   <tr>
                       <td style="color:${apply.shzt==1?'orange':'green'}">
                           <c:if test="${apply.shzt!=0}">
                               ${apply.shzt==1?'淘汰':'通过'}
                           </c:if>
                       </td>
                       <td>${apply.job.mc}</td>
                       <td><a style="cursor: pointer" xh="${apply.student.xh}" zpgwbh="${apply.zpgwbh}" onclick="tj(this)">${apply.student.xsxm}</a></td>
                       <td>${apply.student.discipline.zymc}</td>
                       <td>${apply.ypsj}</td>
                       <td style="color: ${apply.ckzt==0?'red':'green'}">${apply.ckzt==0?'未查看':'已查看'}</td>
                       <td>
                           <button class="btn btn-success btn-sm" xh="${apply.student.xh}" zpgwbh="${apply.zpgwbh}" onclick="tg(this)">通过</button>
                           <button class="btn btn-warning btn-sm" xh="${apply.student.xh}" zpgwbh="${apply.zpgwbh}" onclick="tt(this)">淘汰</button>
                       </td>
                   </tr>
               </c:forEach>
            </tbody>
        </table>

    </div>
    <div class="row">
        <div class="col-md-6"  style="width: 100%" >
            <nav aria-label="Page navigation">
                <div class="page" id="page" ></div>
                <script type="text/javascript">
                    $('#page').paging({
                        initPageNo: 1, // 初始页码
                        totalPages:6, //总页数
                        /*totalCount: '合计' + setTotalCount + '条数据', // 条目总数*/
                        slideSpeed: 600, // 缓动速度。单位毫秒
                        jump: true, //是否支持跳转
                        callback: function(page) { // 回调函数
                            console.log("fah ");
                        }
                    })
                    window.onload = function(){
                        var obj_lis = document.getElementById("pageSelect").getElementsByTagName("li");
                        for(var i=0;i < obj_lis.length;i++){
                            obj_lis[i].onclick = function(){
                                var j = parseInt(this.innerHTML);
                                console.log("当前页面："+j);
                                /*$.ajax({
                                    url:"/getAllJobToPage",
                                    type:"GET",
                                    dataType:"json",
                                    data:{"page":i},
                                    success:function (result) {
                                        if (result.status == "success"){
                                            window.location.href="/jobSearch"+"?page="+j;
                                        }
                                    }
                                })*/
                            }
                        }
                    }
                </script>
            </nav>
        </div>
    </div>
</div>

</body>
</html>
