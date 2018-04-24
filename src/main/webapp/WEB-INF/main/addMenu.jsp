<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="menuName" class="col-sm-2 control-label">菜单名称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="menuName" placeholder="请输入菜单名称">
                </div>
            </div>
            <div class="form-group">
                <label for="menuAddress" class="col-sm-2 control-label">菜单页面名称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="menuAddress" placeholder="请输入菜单地址">
                </div>
            </div>
            <div class="form-group">
                <label for="menuUrl" class="col-sm-2 control-label">菜单级别</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="menuUrl" placeholder="请输入菜单地址">
                </div>
            </div>
            <div class="form-group">
                <label for="menuUrl" class="col-sm-2 control-label">菜单级别</label>
                <div class="col-sm-10">
                    <select id="parentMenu"  name="parentMenu" class="form-control">
                        <option value='0' style="display: none">请选择</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Sign in</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>