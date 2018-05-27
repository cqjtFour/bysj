<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
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
                <form class="form-horizontal" id="addFacultyForm">
                    <div class="form-group ">
                        <label for="facultyName" class="col-sm-2 control-label">学院名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="facultyName" class="form-control"
                                   id="facultyName" placeholder="学院名称" onblur="valColName()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="colPeople" class="col-sm-2 control-label">学院负责人</label>
                        <div class="col-sm-5">
                            <input type="text" name="colPeople" class="form-control"
                                   id="colPeople" placeholder="学院负责人" onblur="valColPeople()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="coltel" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-5">
                            <input type="text" name="coltel" class="form-control"
                                   id="coltel" placeholder="联系电话" onblur="valColTel()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group " >
                        <label for="colshow" class="col-sm-2 control-label">学院简介</label>
                        <div class="col-sm-5">
                            <input type="text" name="colshow" class="form-control"
                                   id="colshow" placeholder="学院简介" onblur="valColShow()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addFacultyBtn">保存</button>
            </div>
        </div>
    </div>
</div>
<%--修改菜单模态框--%>
<!-- Modal -->
<div class="modal fade" id="updateMyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel1"></h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateMenuForm">
                    <div class="form-group ">
                        <label for="facultyName_update" class="col-sm-2 control-label">学院名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="facultyName" class="form-control"
                                   id="facultyName_update" placeholder="学院名称" onblur="valColName_update()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="colPeople_update" class="col-sm-2 control-label">学院负责人</label>
                        <div class="col-sm-5">
                            <input type="text" name="colPeople" class="form-control"
                                   id="colPeople_update" placeholder="学院负责人" onblur="valColPeople_update()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="coltel_update" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-5">
                            <input type="text" name="coltel" class="form-control"
                                   id="coltel_update" placeholder="联系电话" onblur="valColTel_update()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group " >
                        <label for="colshow_update" class="col-sm-2 control-label">学院简介</label>
                        <div class="col-sm-5">
                            <input type="text" name="colshow" class="form-control"
                                   id="colshow_update" placeholder="学院简介" onblur="valColShow_update()">
                            <span class="" aria-hidden="true"></span>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="saveUpdate">保存</button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group">
                <button type="button" class="form-control btn btn-info" id="addFaculty" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>增加学院
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-warning" id="updateFaculty" data-toggle="popover" data-content="" data-target="#updateMyModal">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改学院
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-danger" id="deleteFaculty" data-toggle="popover" data-content="">
                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>删除学院
                </button>
            </div>
        </form>
    </div>
    <div class="row">
        <table class="table table-striped table-condensed" id="facultyTable">
            <thead>
            <tr>
                <td><input type="checkbox" id="check_all"/></td>
                <td>学院编号</td>
                <td>学院名称</td>
                <td>学院联系人</td>
                <td>联系电话</td>
                <td>学院简介</td>
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
            url : "/collegeManageInfo",
            data : "page=" + page,
            type : "GET",
            success : function(result) {
                //1、解析并显示学院数据
                build_faculty_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_info(result)
            }
        })
    }
    function to_page_search(page) {
        var inputData = $("#inputMenuName").val();
        $.ajax({
            url : "/searchMenuInfo",
            data : {"page":page,"inputData":inputData},
            type : "GET",
            success : function(result) {
                //1、解析并显示员工数据
                build_menu_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_nav_search(result);
            }
        })
    }
    //解析并显示菜单数据
    function build_faculty_table(result) {
        //清空table
        $("#facultyTable tbody").empty();
        var faculty = result.list;
        $.each(faculty, function(index, item) {
            var checkbox = $("<td></td>").append("<input type='checkbox' class='check_item'/>");
            var colId = $("<td></td>").append(item.xybh);
            var colName = $("<td></td>").append(item.xymc);
            var colPeople = $("<td></td>").append(item.xylxr);
            var coltel = $("<td></td>").append(item.lxdh);
            var colshow = $("<td></td>").append(item.xyjj);
            $("<tr></tr>").append(checkbox).append(colId)
                .append(colName).append(colPeople).append(
                coltel).append(colshow).appendTo("#facultyTable tbody");
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
    $("#addFacultyBtn").click(function () {
        var colName = $("#facultyName").val();
        var colPeople = $("#colPeople").val();
        var coltel = $("#coltel").val();
        var colshow = $("#colshow").val();
        if (validateForm()){
            $.ajax({
                url:"/addFaculty",
                type:"POST",
                data:{"colName":colName,"colPeople":colPeople,"coltel":coltel,"colshow":colshow},
                success:function(result){
                    //隐藏模态框
                    $("#myModal").modal('hide');
                    $("#facultyName").val("");
                    $("#colPeople").val("");
                    $("#coltel").val("");
                    $("#colshow").val("");
                    //显示最后一页
                    to_page(totalRecord);
                }
            });
        }

    });

    //删除学院
    $("#deleteFaculty").click(function () {
        var deleteNos = "";
        $.each($(".check_item:checked"),function () {
            deleteNos += $(this).parents("tr").find("td:eq(1)").text()+",";
        });
        if ($(".check_item:checked")==0){
            $("#deleteFaculty").attr("data-content","至少选择一条数据删除");
        }else{
            deleteNos = deleteNos.substring(0,deleteNos.length-1);
            if (confirm("确定删除编号为["+deleteNos+"]的菜单吗")){
                $.ajax({
                    url:"/deleteFaculty",
                    type:"POST",
                    data:{"deleteNos":deleteNos},
                    success:function(result){
                        if (result.status === "0"){
                            alert(result.msg);
                        } else if (result.status === "1"){
                            alert(result.msg);
                            to_page(currentPage);
                        }

                    }
                });
            }
        }
    });
    var updateNo = "";
    $("#updateFaculty").click(function () {
        var updateNos = "";
        $.each($(".check_item:checked"),function () {
            updateNos = $(this).parents("tr").find("td:eq(1)").text();
        });
        if ($(".check_item:checked").length==0||$(".check_item:checked").length>1){
            $("#updateFaculty").attr("data-content","只能选择一条数据修改");
        }else{
            $('#updateFaculty').popover('hide');
            $('#updateMyModal').modal('show');
            $.ajax({
                url:"/selectOneFaculty",
                type:"POST",
                data:{"updateNos":updateNos},
                success:function(result){
                    $("#facultyName_update").val(result.xymc);
                    $("#colPeople_update").val(result.xylxr);
                    $("#coltel_update").val(result.lxdh);
                    $("#colshow_update").val(result.xyjj);
                    updateNo = updateNos;
                }
            });
        }
    });
    $("#saveUpdate").click(function () {
        var facultyNo = updateNo;
        var colName = $("#facultyName_update").val();
        var colPeople = $("#colPeople_update").val();
        var coltel = $("#coltel_update").val();
        var colshow = $("#colshow_update").val();
        $.ajax({
            url:"/updateFaculty",
            type:"POST",
            data:{"facultyNo":facultyNo,"colName":colName,"colPeople":colPeople,"coltel":coltel,"colshow":colshow},
            success:function(result){
                //隐藏模态框
                $("#updateMyModal").modal('hide');
                //显示最后一页
                to_page(currentPage);
            }
        });
    });
</script>
</body>
</html>