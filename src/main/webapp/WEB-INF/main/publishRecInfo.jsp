<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/12
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布招聘信息</title>
    <%-- javascripte --%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript"></script>
    <script src="./ckeditor/ckeditor.js" type="text/javascript"></script>
    <%-- style --%>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="./css/publishReclnfo.css" type="text/css" rel="stylesheet">
</head>
<body>
      <div class="contentsec">
          <div class="content">
              <form class="form-horizontal" role="form">
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">单位名称</label>
                      <div class="left">
                          <input type="text" class="form-control" style="width: 200px;" id="dwmc" name="dwmc" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">信息标题</label>
                      <div class="left">
                          <input type="text" class="form-control" style="width: 200px;" id="xxbt" name="xxbt" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">举办日期</label>
                      <div class="left">
                          <input type="date" class="form-control" style="width: 200px;" id="jbrq" name="jbrq" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">举办时间</label>
                      <div class="left">
                          <input type="time" class="form-control" style="width: 200px;" id="ksjbsj" name="ksjbsj" >
                      </div>
                      <label class="control-label left" style="margin-left:10px;margin-right:10px; width: 48px;">————</label>
                      <div class="left">
                          <input type="time" class="form-control" style="width: 200px;" id="jsjbsj" name="jsjbsj" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">负责人</label>
                      <div class="left">
                          <input type="text" class="form-control" style="width: 200px;" id="fzr" name="fzr" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">负责人电话</label>
                      <div class="left">
                          <input type="tel" class="form-control" style="width: 200px;" id="fzrdh" name="fzrdh" >
                      </div>
                      <label class="control-label left" style="margin-left:10px;margin-right:10px;width: 48px;text-align: center ">邮箱</label>
                      <div class="left">
                          <input type="email" class="form-control" style="width: 200px;" id="fzryx" name="fzryx" >
                      </div>
                  </div>
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">招聘简章</label>
                  </div>
                  <div class="form-group" style="width: 790px;margin:10px auto">
                      <textarea id="xq" name="xq" class="ckeditor"></textarea>
                  </div>
                  <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                          <button type="button" class="btn btn-default" id="tj">提交</button>
                      </div>
                  </div>
              </form>
              <%-- form end --%>
          </div>
          <%-- content end --%>
      </div>
      <%-- contentsec end --%>
</body>
</html>
