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
    <script language="javascript" type="text/javascript">
        window.onload=function(){
            //设置年份的选择
            var myDate= new Date();
            var startYear=myDate.getFullYear()-10;//起始年份
            var endYear=myDate.getFullYear()+10;//结束年份
            var obj=document.getElementById('myYear')
            for (var i=startYear;i<=endYear;i++)
            {
                obj.options.add(new Option(i,i));
            }
            obj.options[obj.options.length-11].selected=1;
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row" style="margin-top: 20px;">
        <form class="form-inline">
            <div class="form-group" style="margin-right: 30px">
                <label for="myYear">请选择年份:</label>
                <select style="width:118px;height: 30px;border-radius:5px;"
                        id="myYear">
                </select>
            </div>
            <div class="form-group" style="margin-right: 30px">
                <label for="collega">请选择学院:</label>
                <select style="width:200px;height: 30px;border-radius:5px;"
                        id="collega">
                </select>
            </div>
            <div class="form-group" style="margin-right: 30px">
                <label>是否签订三方:</label>
                <input name="sure"  type="radio" value="1"/><label>是</label>
                <input name="sure"  type="radio" value="0"/><label>否</label>
                <input name="sure" checked type="radio" value=""/><label>全部</label>
            </div>
            <div class="form-group">
                <button type="button" class="form-control btn btn-warning" id="toExcel" >
                    <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>导出excel
                </button>
            </div>
        </form>
    </div>
    <div class="row">
        <table class="table table-striped table-condensed" id="facultyTable">
            <thead>
            <tr>
                <td>序号</td>
                <td>学号</td>
                <td>姓名</td>
                <td>所属专业</td>
                <td>所属学院</td>
                <td>是否签订三方</td>
                <td>三方是否上交</td>
                <td>是否毁约</td>
                <td>新三方是否领取</td>
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
    $("#toExcel").click(function () {
        var year = $("#myYear").val();
        var collega = $("#collega").val();
        var sure  = $('input[name="sure"]:checked').val();
        window.location.href = "/kindStudentInfoToExcel?year="+year+"&collega="+collega+"&sure="+sure;
    })
    $("#myYear").change(function () {
        i=1;
        to_page_search(1);
    })
    $("#collega").change(function () {
        i=1;
        to_page_search(1);
    })
    $('input[name="sure"]').change(function () {
        i=1;
        to_page_search(1);
    })
    var currentPage;
    var totalRecord;
    $(function() {
        //页面加载完成后，直接发送Ajax请求，要到分页数据
        to_page(1);
        $('[data-toggle="popover"]').popover();
        $.ajax({
            url : "/selectFacultyAll",
            type : "GET",
            success : function(result) {
                $("#collega").append("<option value='0'>---请选择---</option>");
                $.each(result,function (index,item) {
                    $("#collega").append("<option value='"+item.xybh+"'>"+item.xymc+"</option>");
                })
            }
        })
    });
    function to_page(page) {
        var year = $("#myYear").val();
        $.ajax({
            url : "/kindStudentInfo",
            data :{"page":page,"year":year},
            type : "GET",
            success : function(result) {
                $("#facultyTable tbody").empty();
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
        var year = $("#myYear").val();
        var collega = $("#collega").val();
        var sure  = $('input[name="sure"]:checked').val();
        $.ajax({
            url : "/kindStudentInfoToPage",
            data : {"page":page,"year":year,"collega":collega,"sure":sure},
            type : "GET",
            success : function(result) {
                $("#facultyTable tbody").empty();
                //1、解析并显示员工数据
                build_faculty_table(result);
                //2、解析并显示分页数据
                build_page_nav(result);
                //3、解析并显示分页条数据
                build_page_nav_search(result);
            }
        })
    }
    //解析并显示菜单数据
    var i=1;
    function build_faculty_table(result) {
        //清空table
        $("#facultyTable tbody").empty();
        var student = result.list;
        $.each(student, function(index, item) {

            var no = $("<td></td>").append(i);
            var stuNo = $("<td></td>").append(item.xh);
            var stuName = $("<td></td>").append(item.xsxm);
            var stuZy = $("<td></td>").append(item.discipline.zymc);
            var stuXy = $("<td></td>").append(item.discipline.faculty.xymc);
            var isQianSF = $("<td></td>").append((item.sign.sfqdsf==0)?'否':'是');
            var sfsfsj = $("<td></td>").append((item.sign.sfsfsjjyc==0)?'否':'是');
            var sfhy = $("<td></td>").append((item.sign.sfyhy==0)?'否':'是');
            var xsfsflq = $("<td></td>").append((item.sign.xsfsflq==0)?'否':'是');
            $("<tr></tr>").append(no).append(stuNo).append(stuName)
                .append(stuZy).append(stuXy).append(
                stuXy).append(isQianSF).append(sfsfsj).append(sfhy).append(xsfsflq).appendTo("#facultyTable tbody");
            i++;
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
                i=1;
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
                i=1;
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
</script>
</body>
</html>