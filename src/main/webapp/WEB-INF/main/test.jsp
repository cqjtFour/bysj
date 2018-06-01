<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/13
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="./js/jquery.form.js" type="text/javascript"></script>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
         function loading() {
             var options={
                 url:"/images",
                 type:"post",
                 dataType:"json",
                 success:function (result) {
                     $("#zp").attr("src",result.msg);
                     console.log("图片路径:"+result.msg);
                 }
             };
             $("#form1").ajaxSubmit(options);
         }
    </script>
</head>
<body>
    <div style="margin: 200px 200px;">
        <form class="form-horizontal" id="form1">
            <div class="form-group">
                <img src="" id="zp" name="zp" style="width: 200px;height: 200px;">
            </div>
            <div class="form-group">
                <input type="file" value="上传照片" id="sc" name="file" class="btn btn-success" onchange="loading()">
            </div>
        </form>
    </div>
</body>
</html>
