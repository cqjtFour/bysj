<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%--添加菜单模态框--%>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">增加菜单</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addMenuForm">
                    <div class="form-group ">
                        <label for="menuName" class="col-sm-2 control-label">菜单名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuName" class="form-control"
                                   id="menuName" placeholder="菜单名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="menuUrl" class="col-sm-2 control-label">菜单地址</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuUrl" class="form-control"
                                   id="menuUrl" placeholder="菜单地址">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="menuType" class="col-sm-2 control-label">菜单级别</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="menuType">
                                <option value="1">一级菜单</option>
                                <option value="2">二级菜单</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group " style="display: none;"  id="hiddenDiv">
                        <label for="parentMenu" class="col-sm-2 control-label">选择父级菜单</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="parentMenu">
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
                <h4 class="modal-title" id="myModalLabel1">修改菜单</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="updateMenuForm">
                    <div class="form-group ">
                        <label for="updateMenuName" class="col-sm-2 control-label">菜单名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuName" class="form-control"
                                   id="updateMenuName" placeholder="菜单名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="updateMenuUrl" class="col-sm-2 control-label">菜单地址</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuUrl" class="form-control"
                                   id="updateMenuUrl" placeholder="菜单地址">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="updateMenuType" class="col-sm-2 control-label">菜单级别</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="updateMenuType">
                                <option value="1">一级菜单</option>
                                <option value="2">二级菜单</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group " style="display: none;"  id="updateHiddenDiv">
                        <label for="updateParentMenu" class="col-sm-2 control-label">选择父级菜单</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="updateParentMenu">
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
                <h4 class="modal-title" id="assign">权限分配</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="assignMenuForm">
                    <div class="form-group ">
                        <label for="assignMenuName" class="col-sm-2 control-label">菜单名称</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuName" class="form-control"
                                   id="assignMenuName" placeholder="菜单名称" disabled>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="assignMenuUrl" class="col-sm-2 control-label">菜单地址</label>
                        <div class="col-sm-5">
                            <input type="text" name="menuUrl" class="form-control"
                                   id="assignMenuUrl" placeholder="菜单地址" disabled>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="assignMenuType" class="col-sm-2 control-label">菜单级别</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="assignMenuType" disabled>
                                <option value="1">一级菜单</option>
                                <option value="2">二级菜单</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group " style="display: none;"  id="assignHiddenDiv">
                        <label for="assignParentMenu" class="col-sm-2 control-label">选择父级菜单</label>
                        <div class="col-sm-5">
                            <select style="width: 150px;height: 35px ;border-radius:5px;" id="assignParentMenu" disabled>
                            </select>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="studentAssign" class="col-sm-2 control-label">学生权限情况</label>
                        <div class="col-sm-5" id="studentAssign">
                            <input type="radio" name="rad" id="stuyes" value="是" class="cd_radio"/>
                            <label for="stuyes">是</label>
                            <input type="radio" name="rad" id="nostu" value="否" class="cd_radio"/>
                            <label for="nostu">否</label>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="empAssign" class="col-sm-2 control-label">用人单位权限情况</label>
                        <div class="col-sm-5" id="empAssign">
                            <input type="radio" name="rad_emp" id="empyes" value="是" class="cd_radio_emp"/>
                            <label for="empyes">是</label>
                            <input type="radio" name="rad_emp" id="empno" value="否" class="cd_radio_emp"/>
                            <label for="empno">否</label>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="schAssign" class="col-sm-2 control-label">就业处权限情况</label>
                        <div class="col-sm-5" id="schAssign">
                            <input type="radio" name="rad_sch" id="schyes" value="是" class="cd_radio_sch"/>
                            <label for="schyes">是</label>
                            <input type="radio" name="rad_sch" id="schno" value="否" class="cd_radio_sch"/>
                            <label for="schno">否</label>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label for="adminAssign" class="col-sm-2 control-label">管理员权限情况</label>
                        <div class="col-sm-5" id="adminAssign">
                            <input type="radio" name="rad_admin" id="adminyes" value="是" class="cd_radio_admin"/>
                            <label for="adminyes">是</label>
                            <input type="radio" name="rad_admin" id="adminno" value="否" class="cd_radio_admin"/>
                            <label for="adminno">否</label>
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
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>增加菜单
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-warning" id="updateMenu" data-toggle="popover" data-content="" data-target="#updateMyModal">
                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改菜单
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-danger" id="deleteMenu" data-toggle="popover" data-content="">
                    <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>删除菜单
                </button>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-success" id="assignMenu" data-toggle="popover" data-content="" data-target="#assignMyModal">
                    <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>权限分配
                </button>
            </div>
            <div class="form-group input-group col-md-offset-3">
                <input id="inputMenuName" type="text" class="form-control" placeholder="模糊搜索菜单" >
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
                <td>菜单编号</td>
                <td>菜单名称</td>
                <td>菜单地址</td>
                <td>父级菜单</td>
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
            url : "/menuManageInfo",
            data : "page=" + page,
            type : "GET",
            success : function(result) {
                //1、解析并显示菜单数据
                build_menu_table(result);
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
    function build_menu_table(result) {
        //清空table
        $("#menuTable tbody").empty();
        var menu = result.list;
        $.each(menu, function(index, item) {
            var checkbox = $("<td></td>").append("<input type='checkbox' class='check_item'/>");
            var menuId = $("<td></td>").append(item.cdbh);
            var menuName = $("<td></td>").append(item.cdmc);
            var menuUrl = $("<td></td>").append(item.cdurl);
            var parent = $("<td></td>").append(item.fjcdbh);
            $("<tr></tr>").append(checkbox).append(menuId)
                .append(menuName).append(menuUrl).append(
                parent).appendTo("#menuTable tbody");
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
        //将2级菜单显示在模态框上
        $.ajax({
            url:"/getFristMenu",
            type:"POST",
            success:function(result){
                //显示2级菜单信息
                $.each(result,function(){
                    var optionEle = $("<option></option>").append(this.cdmc).attr("value",this.cdbh);
                    optionEle.appendTo("#parentMenu");
                });
            }
        });
    });
    //控制显示二级菜单
    $("#menuType").change(function(){
        if ($(this).val()==1){
            document.getElementById("hiddenDiv").style.display="none";//隐藏
        }
        if ($(this).val()==2){
            document.getElementById("hiddenDiv").style.display="";//显示
        }
    });
    $("#updateMenuType").change(function(){
        if ($(this).val()==1){
            document.getElementById("updateHiddenDiv").style.display="none";//隐藏
        }
        if ($(this).val()==2){
            $.ajax({
                url:"/getFristMenu",
                type:"POST",
                success:function(result){
                    //显示2级菜单信息
                    $.each(result,function(){
                        var optionEle = $("<option></option>").append(this.cdmc).attr("value",this.cdbh);
                        optionEle.appendTo("#updateParentMenu");
                    });
                }
            });
            document.getElementById("updateHiddenDiv").style.display="";//显示
        }
    });
    //添加菜单
    $("#addMenuBtn").click(function () {
        var menuName = $("#menuName").val();
        var menuUrl = $("#menuUrl").val();
        var menuType = $("#menuType").val();
        var parent ;
        if (menuType==1){
            parent = "0";
        }else {
            parent = $("#parentMenu").val();
        }
        $.ajax({
            url:"/addMenu",
            type:"POST",
            data:{"menuName":menuName,"menuUrl":menuUrl,"menuType":menuType,"parentMenu":parent},
            success:function(result){
                //隐藏模态框
                $("#myModal").modal('hide');
                alert("添加成功");
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

    //删除菜单
    $("#deleteMenu").click(function () {
        var deleteNos = "";
        $.each($(".check_item:checked"),function () {
            deleteNos += $(this).parents("tr").find("td:eq(1)").text()+",";
        });
        if (deleteNos === ""){
            $("#deleteMenu").attr("data-content","至少选择一条数据删除");
        }else{
            deleteNos = deleteNos.substring(0,deleteNos.length-1);
            if (confirm("确定删除编号为["+deleteNos+"]的菜单吗")){
                $.ajax({
                    url:"/deleteMenu",
                    type:"POST",
                    data:{"deleteNos":deleteNos},
                    success:function(result){
                        if (result.status=="1"){
                            alert(result.msg);
                            //显示最后一页
                            to_page(currentPage);
                        }else{
                            alert(result.msg);
                        }
                    }
                });
            }
        }
    })
    var updateNo = "";
    $("#updateMenu").click(function () {
        //修改菜单
        var updateNos = "";
        $.each($(".check_item:checked"),function () {
            updateNos = $(this).parents("tr").find("td:eq(1)").text();
        });
        if ($(".check_item:checked").length==0||$(".check_item:checked").length>1){
            $("#updateMenu").attr("data-content","只能选择一条数据修改");
        }else{
            $('#updateMenu').popover('hide');
            $('#updateMyModal').modal('show');
            $.ajax({
                url:"/selectOneMenu",
                type:"POST",
                data:{"updateNos":updateNos},
                success:function(result){
                    //updateMenuName updateMenuUrl updateMenuType updateParentMenu
                    $("#updateMenuName").val(result.cdmc);
                    $("#updateMenuUrl").val(result.cdurl);
                    $("#updateMenuType").val(result.cddj);
                    if (result.cddj==2){
                        $.ajax({
                            url:"/getFristMenu",
                            type:"POST",
                            success:function(result){
                                //显示2级菜单信息
                                $.each(result,function(){
                                    var optionEle = $("<option></option>").append(this.cdmc).attr("value",this.cdbh);
                                    optionEle.appendTo("#updateParentMenu");
                                });
                            }
                        });
                        document.getElementById("updateHiddenDiv").style.display="";//显示
                    }
                    if (result.cddj == 1){
                        document.getElementById("updateHiddenDiv").style.display="none";//显示
                    }
                    $("#updateParentMenu").val(result.fjcdbh);
                    updateNo = updateNos;
                }
            });
        }
    });
    //修改菜单
    $("#save").click(function () {
        var menuNo = updateNo;
        var menuName = $("#updateMenuName").val();
        var menuUrl = $("#updateMenuUrl").val();
        var menuType = $("#updateMenuType").val();
        var parent = $("#updateParentMenu").val();
        $.ajax({
            url:"/updateMenu",
            type:"POST",
            data:{"menuNo":menuNo,"menuName":menuName,"menuUrl":menuUrl,"menuType":menuType,"parentMenu":parent},
            success:function(result){
                alert("修改成功");
                //隐藏模态框
                $("#updateMyModal").modal('hide');
                //显示最后一页
                to_page(currentPage);
            }
        });
    });
    //权限分配
    var assignNo = "";
    $("#assignMenu").click(function () {
        var updateNos = "";

        $.each($(".check_item:checked"),function () {
            updateNos += $(this).parents("tr").find("td:eq(1)").text();
        });
        if (updateNos === ""||$(".check_item:checked").length>1){
            $("#assignMenu").attr("data-content","只能选择一条数据");
        }else{
            $('#assignMenu').popover('hide');
            $('#assignMyModal').modal('show');
            $('#assignMenu').popover('hide');
            $.ajax({
                url:"/selectOneMenu",
                type:"POST",
                data:{"updateNos":updateNos},
                success:function(result){
                    //updateMenuName updateMenuUrl updateMenuType updateParentMenu
                    $("#assignMenuName").val(result.cdmc);
                    $("#assignMenuUrl").val(result.cdurl);
                    $("#assignMenuType").val(result.cddj);
                    $("#assignParentMenu").val(result.fjcdbh);
                    if (result.cddj==2){
                        $.ajax({
                            url:"/getFristMenu",
                            type:"POST",
                            success:function(result){
                                //显示2级菜单信息
                                $.each(result,function(){
                                    var optionEle = $("<option></option>").append(this.cdmc).attr("value",this.cdbh);
                                    optionEle.appendTo("#assignParentMenu");
                                });
                            }
                        });
                        document.getElementById("assignHiddenDiv").style.display="";//显示
                    }
                    if (result.cddj == 1){
                        document.getElementById("assignHiddenDiv").style.display="none";//显示
                    }
                    $("#assignParentMenu").val(result.fjcdbh);
                    assignNo = updateNos;
                    var flag = "";
                    $.each(result.roleMenus,function (index,item) {
                        flag +=item.jsbh;
                    });
                    if (flag.indexOf("3")>=0){
                        $("#stuyes").attr("checked",false);
                        $(".cd_radio").eq(0).prop("checked", true);
                    }else{
                        $("#nostu").attr("checked",false);
                        $(".cd_radio").eq(1).prop("checked", true);
                    }
                    if (flag.indexOf("4")>=0){
                        $("#empno").attr("checked",false);
                        $(".cd_radio_emp").eq(0).prop("checked", true);
                    }else{
                        $("#empyes").attr("checked",false);
                        $(".cd_radio_emp").eq(1).prop("checked", true);
                    }
                    if (flag.indexOf("2")>=0){
                        $("#schno").attr("checked",false);
                        $(".cd_radio_sch").eq(0).prop("checked", true);
                    }else{
                        $("#schyes").attr("checked",false);
                        $(".cd_radio_sch").eq(1).prop("checked", true);
                    }
                    if (flag.indexOf("1")>=0){
                        $("#adminno").attr("checked",false);
                        $(".cd_radio_admin").eq(0).prop("checked", true);
                    }else{
                        $("#adminyes").attr("checked",false);
                        $(".cd_radio_admin").eq(1).prop("checked", true);
                    }
                }
            });
        }
    });
    $("#assignSave").click(function () {
        var menuNo = assignNo;
        var stuStutas = $(".cd_radio:checked").val();
        var empStutas = $(".cd_radio_emp:checked").val();
        var schStutas = $(".cd_radio_sch:checked").val();
        var adminStutas = $(".cd_radio_admin:checked").val();
        $.ajax({
            url:"/updateMenuAssign",
            type:"POST",
            data:{"menuNo":menuNo,"stuStutas":stuStutas,"empStutas":empStutas,"schStutas":schStutas,"adminStutas":adminStutas},
            success:function(result){
                //隐藏模态框
                $("#assignMyModal").modal('hide');
                alert("分配成功");
                //显示最后一页
                to_page(currentPage);
            }
        });
    })
</script>
</body>
</html>