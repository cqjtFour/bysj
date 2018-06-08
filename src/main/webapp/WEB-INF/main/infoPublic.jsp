<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/infoPublic.js"></script>
    <style>
        tr td {
            text-overflow: ellipsis; /* for IE */
            -moz-text-overflow: ellipsis; /* for Firefox,mozilla */
            overflow: hidden;
            white-space: nowrap;
        }
    </style>

</head>
<body>
<%--添加菜单模态框--%>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">发布信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addFacultyForm">
                    <div class="form-group ">
                        <label for="xxbt" class="col-sm-2 control-label">信息标题</label>
                        <div class="col-sm-5">
                            <input type="text" name="xxbt" class="form-control"
                                   id="xxbt" placeholder="信息标题" onblur="valXxbt()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>

                    <div class="form-group " >
                        <label for="xxlx" class="col-sm-2 control-label">信息类型</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="xxlx">
                                <option value="通知公告">通知公告</option>
                                <option value="就业指导">就业指导</option>
                                <option value="就业政策">就业政策</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="xxzw" class="col-sm-2 control-label">信息正文</label>
                        <div class="col-sm-5">
                            <textarea type="text" style="width: 400px;height: 300px" name="xxzw" class="form-control"
                                      id="xxzw" placeholder="信息正文" onblur="valXxzw()"></textarea>
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addSchoolNewsBtn">发布</button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group">
                <button type="button" class="form-control btn btn-info" id="addSchoolNews" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加信息
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-danger" id="deleteSchoolNews" data-toggle="popover" data-content="">
                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>删除信息
                </button>
            </div>
            <div class="form-group">
                <select style="width: 150px;height: 35px ;border-radius:5px;" id="selectXXLX">
                    <option value="全部类型">全部类型</option>
                    <option value="通知公告">通知公告</option>
                    <option value="就业指导">就业指导</option>
                    <option value="就业政策">就业政策</option>
                </select>
            </div>
        </form>
    </div>
    <div class="row">
        <table class="table table-striped table-condensed" style="" id="schoolNewsTable">
            <thead>
            <tr>
                <td><input type="checkbox" id="check_all"/></td>
                <td>发布编号</td>
                <td>信息类型</td>
                <td>发布者</td>
                <td>信息标题</td>
                <td>信息正文</td>
                <td>发布时间</td>
                <td>浏览次数</td>
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
            url : "/getInfoPublic",
            data : "page=" + page,
            type : "GET",
            success : function(result) {
                //1、解析并显示学院数据
                build_schoolNews_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_info(result)
            }
        })
    }

    //解析并显示菜单数据
    function build_schoolNews_table(result) {
        //清空table
        $("#schoolNewsTable tbody").empty();
        var faculty = result.list;
        $.each(faculty, function(index, item) {
            var checkbox = $("<td></td>").append("<input type='checkbox' class='check_item'/>");
            var fbbh = $("<td></td>").append(item.fbbbh);
            var xxlx = $("<td></td>").append(item.xxlx);
            var fbz = $("<td></td>").append(item.employmentDepartment.rymc);
            var xxbt = $("<td></td>").append(item.xxbt);
            var xxzw = $("<td></td>").append(item.xxzw);
            var xxfbsj = $("<td></td>").append(item.xxfbsj);
            var llcs = $("<td></td>").append(item.llcs);
            $("<tr></tr>").append(checkbox).append(fbbh)
                .append(xxlx).append(fbz).append(
                xxbt).append(xxzw).append(xxfbsj).append(llcs).appendTo("#schoolNewsTable tbody");
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

    //全选全不选
    $("#check_all").click(function () {
        $(".check_item").prop("checked",$(this).prop("checked"));
    });
    $(document).on("click",".check_item",function () {
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    /**
     * 添加学院
     */
    $("#addSchoolNewsBtn").click(function () {
        var xxbt = $("#xxbt").val();
        var xxlx = $("#xxlx").val();
        var xxzw = $("#xxzw").val();
        if (validateForm()){
            $.ajax({
                url:"/addSchoolNews",
                type:"POST",
                data:{"xxbt":xxbt,"xxlx":xxlx,"xxzw":xxzw},
                success:function(result){
                    //隐藏模态框
                    $("#myModal").modal('hide');
                    //显示最后一页
                    to_page(totalRecord);
                }
            });
        }
    });

    //删除学院
    $("#deleteSchoolNews").click(function () {
        var kind = $("#selectXXLX").val();
        var deleteNos = "";
        $.each($(".check_item:checked"),function () {
            deleteNos += $(this).parents("tr").find("td:eq(1)").text()+",";
        });
        if ($(".check_item:checked")==0){
            $("#deleteSchoolNews").attr("data-content","至少选择一条数据删除");
        }else{
            deleteNos = deleteNos.substring(0,deleteNos.length-1);
            if (confirm("确定删除编号为["+deleteNos+"]的菜单吗")){
                $.ajax({
                    url:"/deleteSchoolNews",
                    type:"POST",
                    data:{"deleteNos":deleteNos},
                    success:function(result){
                        if (result.status === "0"){
                            alert(result.msg);
                        } else if (result.status === "1"){
                            alert(result.msg);
                            to_page_search(currentPage);
                        }

                    }
                });
            }
        }
    });
    $("#selectXXLX").change(function () {
        to_page_search(currentPage);
    })
    function to_page_search(page) {
        var kind = $("#selectXXLX").val();
        $.ajax({
            url : "/selectKindSchoolNews",
            data : {"page":page,"kind":kind},
            type : "GET",
            success : function(result) {
                //1、解析并显示员工数据
                build_schoolNews_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_nav_sch(result);
            }
        })
    }
    function build_page_nav_sch(result) {
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
</script>
</body>
</html>