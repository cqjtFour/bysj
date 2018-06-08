<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/facultyValidate.js"></script>
</head>
<body>
<%--添加菜单模态框--%>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">增加学院</h4>
            </div>
            <div class="modal-body">
                <form method="post" class="form-horizontal" id="addStudentForm" enctype="multipart/form-data">
                    <div class="form-group ">
                        <label for="file">选择excel文件</label>
                        <input type="file" id="file" name="file">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addStudentBtn">保存</button>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group">
                <button type="button" class="form-control btn btn-info" id="addFaculty" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>批量导入学生
                </button>
            </div>
        </form>
    </div>
    <div class="row">
        <table class="table table-striped table-condensed" id="facultyTable">
            <thead>
            <tr>
                <td>学生学号</td>
                <td>学生姓名</td>
                <td>专业名称</td>
                <td>学院名称</td>
                <td>登录账号</td>
                <td>登录密码</td>
                <td>账号状态</td>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col-md-6" id="page_info_area"></div>
        <div class="col-md-6" id="page_nav_area"></div>
    </div>
</div>
<script>
    var currentPage;
    var totalRecord;
    $(function() {
        //页面加载完成后，直接发送Ajax请求，要到分页数据
        to_page(1);
        $('[data-toggle="popover"]').popover();
    });
    function to_page(page) {
        $.ajax({
            url : "/stuAccountManageInfo",
            data : "page=" + page,
            type : "GET",
            success : function(result) {
                //1、解析并显示学院数据
                build_student_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_info(result)
            }
        });
    }
    function build_student_table(result) {
        //清空table
        $("#facultyTable tbody").empty();
        var faculty = result.list;
        $.each(faculty, function(index, item) {
            var stuId = $("<td></td>").append(item.xh);
            var stuName = $("<td></td>").append(item.xsxm);
            var zyName = $("<td></td>").append(item.discipline.zymc);
            var xyName = $("<td></td>").append(item.discipline.faculty.xymc);
            var dlzh = $("<td></td>").append(item.dlzh);
            var dlmm = $("<td></td>").append(item.user.dlmm);
            var zhzt = "";
            if (item.user.zhzt == 0){
                zhzt = $("<td></td>").append("可用");
            }else{
                zhzt = $("<td></td>").append("禁用");
            }
            $("<tr></tr>").append(stuId)
                .append(stuName).append(zyName).append(
                xyName).append(dlzh).append(dlmm).append(zhzt).appendTo("#facultyTable tbody");
        });
    }
    //3、解析并显示分页条数据
    function build_page_info(result) {
        currentPage = result.pageNum;
        $("#page_info_area").empty();
        $("#page_info_area").append(
            "当前" + result.pageNum + "页，总 "
            + result.pages + "页,总共"
            + result.total + "条记录");
        totalRecord = result.total+1;
    }
    //查询后分页
    function build_page_nav_search(result) {
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append(
            $("<a></a>").append("首页").attr("href", "#"));
        var prePageLi = $("<li></li>").append(
            $("<a></a>").append("&laquo;"));
        if (result.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击事件
            firstPageLi.click(function() {
                to_page_search(1);
            });
            prePageLi.click(function() {
                to_page_search(result.pageNum - 1);
            });
        }
        //构建元素
        var nextPageLi = $("<li></li>").append(
            $("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append(
            $("<a></a>").append("尾页").attr("href", "#"));
        if (result.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            //为元素添加点击事件
            nextPageLi.click(function() {
                to_page_search(result.pageNum + 1);
                ;
            });
            lastPageLi.click(function() {
                to_page_search(result.pages);
            });
        }
        //添加首页和上一页
        ul.append(firstPageLi).append(prePageLi);
        //遍历添加页码号
        $.each(result.navigatepageNums, function(index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function() {
                to_page_search(item);
            });
            ul.append(numLi);
        });
        //添加下一页和尾页
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入nav元素
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    };
    //2、解析并显示分页数据，点击分页要实现相应动作
    function build_page_nav(result) {
        $("#page_nav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //构建元素
        var firstPageLi = $("<li></li>").append(
            $("<a></a>").append("首页").attr("href", "#"));
        var prePageLi = $("<li></li>").append(
            $("<a></a>").append("&laquo;"));
        if (result.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        } else {
            //为元素添加点击事件
            firstPageLi.click(function() {
                to_page(1);
            });
            prePageLi.click(function() {
                to_page(result.pageNum - 1);
            });
        }
        //构建元素
        var nextPageLi = $("<li></li>").append(
            $("<a></a>").append("&raquo;"));
        var lastPageLi = $("<li></li>").append(
            $("<a></a>").append("尾页").attr("href", "#"));
        if (result.hasNextPage == false) {
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        } else {
            //为元素添加点击事件
            nextPageLi.click(function() {
                to_page(result.pageNum + 1);
                ;
            });
            lastPageLi.click(function() {
                to_page(result.pages);
            });
        }
        //添加首页和上一页
        ul.append(firstPageLi).append(prePageLi);
        //遍历添加页码号
        $.each(result.navigatepageNums, function(index, item) {
            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if (result.pageNum == item) {
                numLi.addClass("active");
            }
            numLi.click(function() {
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和尾页
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入nav元素
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    };
    
    
    $("#addStudentBtn").click(function () {
        if($('#file').val() == ""){
            alert('你没有选中文件!');
            return ;
        }
        var options = {

            type: "post",
            url : "/fileUrl",
            dataType: "text",
            success : function(result) {
                alert("上传成功");
            }
        };
        //jquery-form用插件异步提交
        $('#addStudentForm').ajaxSubmit(options);
    })
</script>
</body>
</html>