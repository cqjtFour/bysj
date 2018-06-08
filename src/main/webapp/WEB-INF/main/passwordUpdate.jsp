<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/2
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>密码更新</title>
    <%-- javascript --%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="./js/passwordUpdate.js"></script>
    <%-- style --%>
    <link href="./css/passwordUpdate.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
     <div class="contentsec">
         <div class="content">
             <form class="form-horizontal" role="form" id="form">
                 <input type="hidden" id="dlzh" value="${user.dlzh}">
                 <div class="form-group">
                     <label class="col-sm-2 control-label left">当前密码</label>
                     <div class="left">
                         <input type="password" class="form-control" style="width: 200px;" id="dqmm" name="dqmm" >
                     </div>
                     <label class="left control-label notshow " id="error1">
                         <span>密码错误!</span>
                     </label>
                 </div>
                 <div class="form-group">
                     <label class="col-sm-2 control-label left">新密码</label>
                     <div class="left">
                         <input type="password" class="form-control" style="width: 200px;" id="xmm" name="xmm" >
                     </div>
                     <label class="left control-label notshow"  id="error2">
                         <span>必须6位数以上!</span>
                     </label>
                 </div>
                 <div class="form-group">
                     <label class="col-sm-2 control-label left">确认密码</label>
                     <div class="left">
                         <input type="password" class="form-control" style="width: 200px;" id="qrmm" name="qrmm" >
                     </div>
                     <label class="left control-label notshow" id="error3">
                         <span >和新密码不匹配!</span>
                     </label>
                 </div>
                 <div class="form-group">
                     <label class="col-sm-2 control-label left">密保问题</label>
                     <div class="left">
                         <select class="form-control" id="mbwt" style="width: 200px;" >
                             <option value="你父亲的名字？">你父亲的名字？</option>
                             <option value="你母亲的名字？">你母亲的名字？</option>
                         </select>
                     </div>
                 </div>
                 <div class="form-group">
                     <label class="col-sm-2 control-label left">密保答案</label>
                     <div class="left">
                         <input type="text" class="form-control" style="width: 200px;" id="mbda" name="mbda" >
                     </div>
                     <label class="left control-label notshow" id="error4">
                         <span>密保答案不能为空!</span>
                     </label>
                 </div>
                 <div class="form-group">
                     <div class="col-sm-offset-2 col-sm-10">
                         <button type="button" class="btn btn-default" id="bc">修改</button>
                     </div>
                 </div>
             </form>
             <div id="success" class="notshow" style="width: 300px;margin: 100px auto;overflow: hidden">
                 <h1 class="left">Success</h1><a href="/login"  target="_parent" class="left" style="margin-left: 20px;margin-top:38px; ">重新登录</a>
             </div>
         </div>
         <%-- content end --%>
     </div>
     <%-- contentsec end --%>
</body>
</html>
