<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>已投递简历</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <!--// Javascripts //-->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/animatedcollapse.js"></script>
    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="js/scrolltopcontrol.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>
    <script type="text/javascript" src="js/jquery.fancybox-1.3.1.js"></script>
    <script type="text/javascript" src="js/lightbox.js"></script>
    <script type="text/javascript" src="js/functions.js"></script>
    <script type="text/x-javascript" src="js/paging.js"></script>
</head>
<body>

<div class="container">
    <div style="margin-top: 20px">
        <div class="row">
            <div class="form-group" >
                <select style="width: 150px;height: 30px ;margin-left: 20px;border-radius:5px;" id="status">
                    <option value="0">请选择简历状态</option>
                    <option value="1">通过</option>
                    <option value="2">未通过</option>
                    <option value="3">未查看</option>
                </select>
                <input type="button" class="btn btn-info" style="height: 30px;margin-bottom: 4px" value="搜索" onclick="sta()"/>
            </div>
        </div>
        <script type="text/javascript">
            function sta() {
                window.location.href = "/deliveredResume?status="+$("#status").val();
            }
        </script>
        <div class="row">
            <table class="table table-striped table-hover">
                <tr>
                    <td>单位名称</td>
                    <td>应聘岗位</td>
                    <td>转正薪资</td>
                    <td>工作地点</td>
                    <td>投递时间</td>
                    <td>查看状态</td>
                </tr>
                <c:forEach items="${jobInfo.list}" var="jobResume">
                    <tr>
                        <td>${jobResume.job.employers.dwmc}</td>
                        <td>${jobResume.job.gwlx}</td>
                        <td>${jobResume.job.yx}</td>
                        <td>${jobResume.job.dd}</td>
                        <td>${jobResume.ypsj}</td>
                        <td>${jobResume.ckzt}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        <div class="row page" id="page"></div>

        <script>
            $("#status").val("${status}");
            $('#page').paging({
                webPage:"/deliveredResume?status="+$("#status").val(),
                parameter:"/deliveredResumeToPage?status="+$("#status").val(),
                initPageNo: ${jobInfo.pageNum}, // 初始页码
                totalPages: ${jobInfo.pages}, //总页数
                pageNo:${jobInfo.pageNum},
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
                            url:"/deliveredResumeToPage",
                            type:"GET",
                            dataType:"json",
                            data:{"page":j,"input":$("#status").val()},
                            success:function (result) {
                                if (result.status == "success"){
                                    window.location.href="/deliveredResume?page="+j+"&status="+$("#status").val();
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