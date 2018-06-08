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
    <title>招聘预约</title>
    <%-- javascripte --%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript"></script>
    <script src="./ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="./js/publishReclnfo.js" type="text/javascript"></script>
    <%-- style --%>
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="./css/publishReclnfo.css" type="text/css" rel="stylesheet">
</head>
<body>
      <div class="contentsec">
          <div class="content">
              <form class="form-horizontal" role="form">
                  <input type="hidden" id="yrdwxxbbh" value="${employers.yrdwxxbbh}">
                  <div class="form-group">
                      <label class="col-sm-2 control-label left">单位名称</label>
                      <div class="left">
                          <input type="text" class="form-control" style="width: 200px;" id="dwmc" name="dwmc"  value="${employers.dwmc}" disabled>
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
                          <%--<input type="time" class="form-control" style="width: 200px;" id="ksjbsj" name="ksjbsj" >--%>
                          <select class="form-control" style="width: 200px;"  id="jbsj" name="jbsj">
                              <option value="9:00-11:00">9:00-11:00</option>
                              <option value="14:00-16:00">14:00-16:00</option>
                              <option value="16:00-18:00">16:00-18:00</option>
                              <option value="19:00-21:00">19:00-21:00</option>
                          </select>
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
                      <label class="col-sm-2 control-label left">招聘岗位</label>
                  </div>
                  <div class="form-group" style="width: 700px;margin-left: 60px">
                      <table class="table table-striped table-hover">
                          <thead bgcolor="antiquewhite">
                          <tr>
                              <td>
                                  <label>岗位名称</label>
                              </td>
                              <td>
                                  <label>招聘人数</label>
                              </td>
                              <td>
                                  <label>薪资待遇</label>
                              </td>
                              <td>
                                  <label>需求专业</label>
                              </td>
                              <td>
                                  <label>操作</label>
                              </td>
                          </tr>
                          </thead>
                          <tbody id="tbody">
                          <tr id="tjyh">
                              <td colspan="5" align="right">
                                  <span  class="glyphicon glyphicon-plus" style="cursor: pointer" id="xtjyh"></span>
                              </td>
                          </tr>
                          </tbody>
                      </table>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label left">招聘内容</label>
                  </div>
                  <div class="form-group" style="width: 700px;margin-left: 60px">
                      <textarea id="zpnr" name="content"  class="ckeditor"></textarea>
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
