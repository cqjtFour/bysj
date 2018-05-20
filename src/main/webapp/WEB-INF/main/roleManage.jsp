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
<div class="container">
    <div class="row">
        <table class="table table-striped table-condensed" id="menuTable">
            <thead>
            <tr>
                <td><input type="checkbox" id="check_all"/></td>
                <td>菜单编号</td>
                <td>菜单名称</td>
                <td>菜单地址</td>
                <td>父级菜单</td>
                <td>
                    学生权限
                </td>
                <td>
                    用人单位权限
                </td>
                <td>
                    就业处权限
                </td>
            </tr>
            </thead>
            <tbody>
                <td>菜单编号</td>
                <td>菜单名称</td>
                <td>菜单地址</td>
                <td>父级菜单</td>
                <td>
                    <input type="radio" value="是" name="stu"/>
                    <input type="radio" value="否" name="stu"/>
                </td>
                <td>
                    <input type="radio" value="是" name="emp"/>
                    <input type="radio" value="否" name="emp"/>
                </td>
                <td>
                    <input type="radio" value="是" name="sch"/>
                    <input type="radio" value="否" name="sch"/>
                </td>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col-md-6" id="page_info_area"></div>
        <div class="col-md-6" id="page_nav_area"></div>
    </div>
</div>
<script>

</script>
</body>
</html>