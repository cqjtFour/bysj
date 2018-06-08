<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/jquery-ui-1.10.4.custom.css"/>
    <script type="text/javascript" src="js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.10.4.custom.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body>
<div id="dialog-confirm" title="提示">
    <label id="labeln">
    </label>
</div>
<%--添加菜单模态框--%>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">增加专业</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addMenuForm">
                    <div class="form-group ">
                        <label for="proName" class="col-sm-2 control-label">专业名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="proName" class="form-control"
                                   id="proName" placeholder="专业名称" onblur="valZyName()">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group "  id="hiddenDiv">
                        <label for="ssxy" class="col-sm-2 control-label">所属学院</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="ssxy">
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="addMenuBtn">保存</button>
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
                <h4 class="modal-title" id="myModalLabel1">修改专业</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateMenuForm">
                    <div class="form-group ">
                        <label for="updateProName" class="col-sm-2 control-label">专业名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="proName" class="form-control"
                                   id="updateProName" placeholder="菜单名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group "  id="updateHiddenDiv">
                        <label for="updateParentProfession" class="col-sm-2 control-label">选择所属学院</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="updateParentProfession">
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="save">保存</button>
            </div>
        </div>
    </div>
</div>
<%--权限分配模态框--%>
<!-- Modal -->
<div class="modal fade" id="assignMyModal" tabindex="-1" role="dialog" aria-labelledby="assignModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="assign">专业分配</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="assignMenuForm">
                    <div class="form-group ">
                        <label for="assignProName" class="col-sm-2 control-label">专业名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="proName" class="form-control"
                                   id="assignProName" placeholder="菜单名称" disabled>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group " id="assignHiddenDiv">
                        <label for="assignFaculty" class="col-sm-2 control-label">选择学院</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="assignFaculty" disabled>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="assignSave">保存</button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group">
                <button type="button" class="form-control btn btn-info" id="addMune" data-toggle="modal" data-target="#myModal">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>增加专业
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-warning" id="updateProfession" data-toggle="popover" data-content="" data-target="#updateMyModal">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改专业
                </button>
            </div>
            <div class="form-group input-group col-md-offset-3">
                <input id="inputMenuName" type="text" class="form-control" placeholder="模糊搜索专业" >
                <span class="input-group-btn">
                    <button onclick="to_page_search()" class="btn btn-default" id="searchMenu" type="button" style="height: 34px;">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
            </div>
        </form>
    </div>
    <div class="row">
        <table class="table table-striped table-condensed" id="menuTable">
            <thead>
            <tr>
                <td><input type="checkbox" id="check_all"/></td>
                <td>专业编号</td>
                <td>专业名称</td>
                <td>专业人数</td>
                <td>所属学院</td>
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
            url : "/professionManageInfo",
            data : "page=" + page,
            type : "GET",
            success : function(result) {
                //1、解析并显示菜单数据
                build_profession_table(result);
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
            url : "/selectSomeProfession",
            data : {"page":page,"inputData":inputData},
            type : "GET",
            success : function(result) {
                //1、解析并显示员工数据
                build_profession_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_nav_search(result);
            }
        })
    }
    //解析并显示菜单数据
    function build_profession_table(result) {
        //清空table
        $("#menuTable tbody").empty();
        var menu = result.list;
        $.each(menu, function(index, item) {
            var checkbox = $("<td></td>").append("<input type='checkbox' class='check_item'/>");
            var proNo = $("<td></td>").append(item.zybh);
            var proName = $("<td></td>").append(item.zymc);
            var zyrs = $("<td></td>").append(item.yjbysrs);
            var ssxy = $("<td></td>").append(item.faculty.xymc);
            $("<tr></tr>").append(checkbox).append(proNo)
                .append(proName).append(zyrs).append(
                ssxy).appendTo("#menuTable tbody");
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

    $("#addMune").click(function () {
        $.ajax({
            url:"/getAllFaculty",
            type:"POST",
            success:function(result){
                $.each(result,function(){
                    var optionEle = $("<option></option>").append(this.xymc).attr("value",this.xybh);
                    optionEle.appendTo("#ssxy");
                });
            }
        });
    });
    //添加菜单
    $("#addMenuBtn").click(function () {
        var proName = $("#proName").val();
        var xybh = $("#ssxy").val();
        $.ajax({
            url:"/addProfession",
            type:"POST",
            data:{"proName":proName,"xybh":xybh},
            success:function(result){
                //隐藏模态框
                $("#myModal").modal('hide');
                if (result.msg=="添加成功！"){
                    document.getElementById("labeln").innerHTML = "添加成功";
                    $( "#dialog-confirm" ).dialog({
                        resizable: false,
                        height:140,
                        modal: true,
                        buttons: {
                            "确定": function() {
                                $( this ).dialog( "close" );
                            },
                        }
                    });
                }else if ((result.msg=="添加失败！")){
                    document.getElementById("labeln").innerHTML = "添加失败";
                    $( "#dialog-confirm-fail" ).dialog({
                        resizable: false,
                        height:140,
                        modal: true,
                        buttons: {
                            "确定": function() {
                                $( this ).dialog( "close" );
                            },
                        }
                    });
                }


                //显示最后一页
                to_page(totalRecord);
            }

        });
    });
    //全选全不选
    $("#check_all").click(function () {
        $(".check_item").prop("checked",$(this).prop("checked"));
    });
    $(document).on("click",".check_item",function () {
        var flag = $(".check_item:checked").length == $(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    var updateNo = "";
    $("#updateProfession").click(function () {
        //修改菜单
        var updateNos = "";
        $.each($(".check_item:checked"),function () {
            updateNos = $(this).parents("tr").find("td:eq(1)").text();
        });
        if ($(".check_item:checked").length==0||$(".check_item:checked").length>1){
            $("#updateMenu").attr("data-content","只能选择一条数据修改");
        }else{
            $('#updateProfession').popover('hide');
            $('#updateMyModal').modal('show');
            $.ajax({
                url:"/selectOneProfession",
                type:"POST",
                data:{"updateNos":updateNos},
                success:function(result){
                    $("#updateProName").val(result.zymc);
                    $.ajax({
                        url:"/getAllFaculty",
                        type:"POST",
                        success:function(result){
                            //显示2级菜单信息
                            $.each(result,function(){
                                var optionEle = $("<option></option>").append(this.xymc).attr("value",this.xybh);
                                optionEle.appendTo("#updateParentProfession");
                            });
                        }
                    });
                    $("#updateParentProfession").val(result.xybh);
                    updateNo = updateNos;
                }
            });
        }
    });
    //修改菜单
    $("#save").click(function () {
        var proNo = updateNo;
        var xybh = $("#updateParentProfession").val();
        var proName = $("#updateProName").val();
        $.ajax({
            url:"/updateProfession",
            type:"POST",
            data:{"proNo":proNo,"proName":proName,"xybh":xybh},
            success:function(result){
                if (result.status=="1"){
                    alert(result.msg);
                    //隐藏模态框
                    $("#updateMyModal").modal('hide');
                    //显示最后一页
                    to_page(currentPage);
                }else{
                    alert(result.msg);
                }

            }
        });
    });
</script>
</body>
</html>