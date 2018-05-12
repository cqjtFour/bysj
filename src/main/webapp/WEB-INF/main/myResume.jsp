<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/4/28
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%--javascript--%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./js/myResume.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <%--style--%>
    <link href="./css/myResume.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
   <div class="contentsec">
       <div class="content">
           <input type="hidden" id="xh" name="xh" value="${user.xh}">
           <div class="head">
               <div class="head-display" id="head-display">
                   <div class="head-display-left">
                       <div class="head-display-left-left">
                           <img src="./images/headPortrait/test1.jpg" class="img-thumbnail">
                       </div>
                       <div class="head-display-left-right">
                           <p style="font-size:28px; " id="xsxmxs">${user.xsxm}</p>
                           <p style="font-size: 14px">java软件工程师</p>
                           <p style="font-size: 13px;color:#999999; ">现居于重庆-南岸区&nbsp;|&nbsp;计算机软件&nbsp;|&nbsp;软件工程师&nbsp;|&nbsp;2018应届毕业生</p>
                       </div>
                   </div>
                   <div class="head-display-right">
                       <label>
                           <a data-toggle="collapse" href="#head-hide" aria-expanded="false" aria-controls="head-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="headxg"></i></a>
                       </label>
                   </div>
               </div>
               <div class="head-hide collapse" id="head-hide">
                   <form class="form-horizontal" role="form" id="form1">
                           <div class="head-form-left">
                               <div>
                                   <img src="./images/headPortrait/test1.jpg" class="img-thumbnail">
                               </div>
                               <div>
                                   <a href="" style="margin-left: 20px;">修改</a>
                                   <a href="">&nbsp;&nbsp;&nbsp;&nbsp;删除</a>
                               </div>
                           </div>
                           <div class="head-form-right">
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">姓名</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" id="xsxm" name="xsxm" value="${user.xsxm}">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">职位意向</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" name="zwmc" value="java软件工程师">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">行业意向</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" name="gshy" value="计算机软件">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">现居城市</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" name="xjcs" value="重庆">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <div class="col-sm-offset-2 col-sm-10">
                                       <button type="button" class="btn btn-default" id="form1bc"  data-toggle="collapse" href="#head-hide" aria-expanded="false" aria-controls="head-hide">保存</button>
                                   </div>
                               </div>
                           </div>
                   </form>
               </div>
           </div>
           <%--head end--%>
           <div class="jbxx">
               <div class="jbxx-head">
                   <div class="jbxx-head-left">
                       <i class="glyphicon glyphicon-user"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">基本信息</span>
                   </div>
                   <div class="jbxx-head-right">
                       <a data-toggle="collapse" href="#jbxx-hide" aria-expanded="false" aria-controls="jbxx-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="jbxxxg"></i></a>
                   </div>
               </div>
               <%--jbxx-head end--%>
               <div class="jbxx-display" id="jbxx-display">
                   <div class="jbxx-display-left">
                       <p style="font-size: 13px">出生日期：<span style="font-size: 13px;">1995.09.03</span></p>
                       <p style="font-size: 13px">手机号码：<span style="font-size: 13px;">13068307895</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;生源地：<span style="font-size: 13px;">广西</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身高：<span style="font-size: 13px;">180</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;视力：<span style="font-size: 13px;">5.0   5.0</span></p>
                   </div>
                   <div class="jbxx-display-right">
                       <p  style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;民族：<span style="font-size: 13px;">汉</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：<span style="font-size: 13px;">cqjtdxhyh@outbook.com</span></p>
                       <p style="font-size: 13px">政治面貌：<span style="font-size: 13px;">团员</span></p>
                       <p style="font-size: 13px">身体状况：<span style="font-size: 13px;">健康</span></p>
                   </div>
               </div>
               <%--jbxx-display end--%>
               <div class="collapse jbxx-hide" id="jbxx-hide">
                   <form class="form-horizontal" role="form" id="form2">
                       <div class="jbxx-form-left">
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">出生日期</label>
                               <div class="left">
                                   <input type="date" class="form-control" style="width: 200px;" id="csrq" name="csrq" value="1995-09-03">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">手机号码</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="sjhm" name="sjhm" value="13068307895">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">生源地</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="syd" name="syd" value="广西">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">身高</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="sg" name="sg" value="180">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">视力</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="sl" name="sl" value="5.0 5.0">
                               </div>
                           </div>
                           <div class="form-group">
                               <div class="col-sm-offset-2 col-sm-10">
                                   <button type="button" class="btn btn-default" id="form2bc" data-toggle="collapse" href="#jbxx-hide" aria-expanded="false" aria-controls="jbxx-hide">保存</button>
                               </div>
                           </div>
                       </div>
                       <%--jbxx-form-left end--%>
                       <div class="jbxx-form-right">
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">民族</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="mz" name="mz" value="汉">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">邮箱</label>
                               <div class="left">
                                   <input type="email" class="form-control" style="width: 200px;" id="yx" name="yx" value="cqjtdxhyh@outlook.com">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px;">政治面貌</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="zzmm" name="zzmm" value="团员">
                               </div>
                           </div>
                           <div class="form-group ">
                               <label class="col-sm-2 control-label left" style="width: 80px;">身体状况</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="stzk" name="stzk" value="健康">
                               </div>
                           </div>
                       </div>
                       <%--jbxx-form-right end--%>
                   </form>
               </div>
               <%--jbxx-hide end--%>
           </div>
           <%--jbxx end--%>
           <div class="zyyx">
               <div class="zyyx-head">
                   <div class="zyyx-head-left">
                       <i class="glyphicon glyphicon-briefcase"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">职业意向</span>
                   </div>
                   <div class="zyyx-head-right">
                       <a data-toggle="collapse" href="#zyyx-hide" aria-expanded="false" aria-controls="zyyx-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="zyyxxg"></i></a>
                   </div>
               </div>
               <%--gzjl-head end--%>
               <div class="zyyx-display" id="zyyx-display">
                   <p style="font-size: 13px">期望行业：<span style="font-size: 13px;">计算机软件</span></p>
                   <p style="font-size: 13px">期望职能：<span style="font-size: 13px;">Java软件工程师</span></p>
                   <p style="font-size: 13px">期望地点：<span style="font-size: 13px;">重庆、广州、深圳、南宁</span></p>
                   <p style="font-size: 13px">期望年薪：<span style="font-size: 13px;">12万</span></p>
               </div>
               <div class="zyyx-hide collapse" id="zyyx-hide">
                   <form class="form-horizontal" role="form" id="form3">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望行业</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwhy" name="qwhy" value="计算机软件">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望职能</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwzn" name="qwzn" value="java软件工程师">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望地点</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwdd" name="qwdd" value="重庆、广州、深圳、南宁">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望年薪</label>
                           <div class="left">
                               <input type="text" class="form-control" id="qwyx" name="qwyx" value="10000" onmouseout="jsnx()" style="width: 100px;">
                           </div>
                           <label class="  control-label left" style="margin-left: 10px;margin-right:10px " >元/月&nbsp;&nbsp;×</label>
                           <div  class="left">
                               <input type="number" min="1" max="12" value="12" class="form-control" id="ys" onmouseout="jsnx()"  name="ys" style="width: 100px">
                           </div>
                           <label class="control-label left" >个月</label>
                           <label class="control-label left" style="margin-left: 10px;">= <span id="nx">12</span>万/年</label>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form3bc" data-toggle="collapse" href="#zyyx-hide" aria-expanded="false" aria-controls="zyyx-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
           </div>
           <%--zyyx end--%>
           <div class="gzjl">
               <div class="gzjl-head">
                   <div class="gzjl-head-left">
                       <i class="glyphicon glyphicon-list-alt"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">工作经历</span>
                   </div>
                   <div class="gzjl-head-right">
                       <a data-toggle="collapse" href="#gzjl-hide" aria-expanded="false" aria-controls="gzjl-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="gzjlxg"></i></a>
                   </div>
               </div>
               <%--gzjl-head end--%>
               <div class="gzjl-display" id="gzjl-display">
                   <p><span style="font-size: 13px;">java软件工程师</span><span style="font-size: 13px;">&nbsp;&nbsp;|&nbsp;&nbsp;华为技术有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 13px;">(2017.12&nbsp;&nbsp;-&nbsp;&nbsp;2018.05)</span></span></p>
                   <p  style="font-size: 13px">工作地点：<span style="font-size: 13px;">深圳</span></p>
                   <p  style="font-size: 13px">公司行业：<span style="font-size: 13px;">计算机软件</span></p>
                   <p  style="font-size: 13px">工作描述：<span style="font-size: 13px;">本人在公司里面担任CEO一职</span></p>
               </div>
               <div class="gzjl-hide collapse" id="gzjl-hide">
                   <form class="form-horizontal" role="form" id="form4">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">公司名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxgsmc" name="sxgsmc" value="华为技术有限公司">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">公司行业</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="gshy" name="gshy" value="计算机软件">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">职位名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxzw" name="sxzw" value="java软件工程师">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">工作地点</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxdd" name="sxdd" value="深圳">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">任职时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="sxkssj" name="sxkssj" value="2017-01-01">
                           </div>
                           <label class=" control-label left" style="margin-left: 10px;margin-right: 10px;" >————</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="sxjssj" name="sxjssj" value="2018-04-30">
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form4bc" data-toggle="collapse" href="#gzjl-hide" aria-expanded="false" aria-controls="gzjl-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
               <%--gzjl-hide end--%>
           </div>
           <%--gzjl end--%>
           <div class="jyjl">
               <div class="jyjl-head">
                   <div class="jyjl-head-left">
                       <i class="glyphicon glyphicon-book"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">教育经历</span>
                   </div>
                   <div class="jyjl-head-right">
                       <a data-toggle="collapse" href="#jyjl-hide" aria-expanded="false" aria-controls="jyjl-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="jyjlxg"></i></a>
                   </div>
               </div>
               <%--jyjl-head end--%>
               <div class="jyjl-display" id="jyjl-display">
                   <p><span style="font-size: 13px;">重庆交通大学</span><span style="margin-left: 20px;font-size: 13px">(2014/09-2018/07)</span></p>
                   <p >
                       <span style="font-size: 13px;">专业名称：<span style="font-size: 13px;">计算机科学与技术</span></span>
                       <span style="margin-left: 150px;font-size: 13px">学历：<span style="font-size: 13px;">本科</span></span>
                       <span style="margin-left: 150px;font-size: 13px">是否统招：<span style="font-size: 13px;">是</span></span>
                   </p>
               </div>
               <%--jyjl-display end--%>
               <div class="jyjl-hide collapse" id="jyjl-hide">
                   <form class="form-horizontal" role="form" id="form5">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">学校名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="xxmc" name="xxmc" value="重庆交通大学">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">专业名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="zymc" name="zymc" value="计算机科学与技术">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">就读时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="bkkssj" name="bkkssj" value="2014-09-12">
                           </div>
                           <label class="control-label left" style="margin-left: 10px;margin-right: 10px;" >————</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="bkjssj" name="bkjssj" value="2018-07-01">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">学历</label>
                           <div class="left">
                               <select type="" class="form-control" style="width: 200px;" id="xl" name="xl">
                                   <option value="0">本科</option>
                                   <option value="0">硕士</option>
                               </select>
                           </div>
                           <label class="control-label left" style="margin-left: 20px;">
                               <input type="checkbox" checked>是否统招
                           </label>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form5bc" data-toggle="collapse" href="#jyjl-hide" aria-expanded="false" aria-controls="jyjl-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
               <%-- jyjl-hide end--%>
           </div>
           <%--jyjl end--%>
           <div class="xmjy">
               <div class="xmjy-head">
                   <div class="xmjy-head-left">
                       <i class="glyphicon glyphicon-credit-card"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">项目经验</span>
                   </div>
                   <div class="xmjy-head-right">
                       <a data-toggle="collapse" href="#xmjy-hide" aria-expanded="false" aria-controls="xmjy-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="xmjyxg"></i></a>
                   </div>
               </div>
               <div class="xmjy-display" id="xmjy-display">
                   <p style="font-size: 13px;"><strong><span style="font-size: 13px;">毕业生管理系统<span style="font-size: 13px;margin-left: 20px;">(2017.05-2017.08)</span></span></strong></p>
                   <p style="font-size: 13px;">项目职务：<span style="font-size: 13px;">java软件工程师</span></p>
                   <div style="width: 100%;overflow: hidden">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">项目描述：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;">
                               该毕业生就业管理系统采用时下流行的SSM框架进行技术架构设计，在技术层面上把管理系统 打造成可用性强、
                               安全性高、效率性好的毕业生就业管理系统。该系统设计以MYSQL进行数据库的开发、采用B/S体系架构，使用jsp、 jquery、ajax
                               、bootstrap技术，运用基于MVC基础的Spring、SpringMVC、MyBatis框架，以Java为编程语言等相关技术组成系统的技 术架构。
                            </span>
                       </div>
                   </div>
                   <div style="width: 100%;overflow: hidden;margin-top: 15px;margin-bottom: 15px;">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">项目职责：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;">
                               本人主要负责前台页面以及学生这一角色的后台页面的设计编写，负责编写控制层控制数据流的传输。
                            </span>
                       </div>
                   </div>
                   <div style="width: 100%;overflow: hidden" >
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">项目业绩：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;">
                               本项目按时按质量的完成，达到客户需求，获得用户的一直好评。
                            </span>
                       </div>
                   </div>
               </div>
               <%--xmjy-display end--%>
               <div class="xmjy-hide collapse" id="xmjy-hide">
                   <form class="form-horizontal" role="form" id="form6">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="xmmc" name="xmmc" value="毕业生就业管理系统">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">公司名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="gsmc" name="gsmc" value="华为技术有限公司">
                           </div>
                           <label class="control-label left" style="margin-left: 10px;margin-right: 10px;">项目职务</label>
                           <div class="left">
                               <input type="text" class="form-control" id="xmzw" name="xmzw" style="width: 200px;" value="java软件工程师">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="=xmkssj" name="xmkssj" value="2017-04-01">
                           </div>
                           <label class="control-label left" style="margin-left: 10px;margin-right: 10px;">————</label>
                           <div class="left">
                               <input type="text" class="form-control" id="xmjssj" name="xmjssj" style="width: 200px;" value="2017-06-01">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目描述</label>
                           <div class="left">
                               <textarea class="form-control" id="xmms" name="xmms" rows="7" style="width: 660px;">该毕业生就业管理系统采用时下流行的SSM框架进行技术架构设计，在技术层面上把管理系统 打造成可用性强、安全性高、效率性好的毕业生就业管理系统。该系统设计以MYSQL进行数据库的开发、采用B/S体系架构，使用jsp、 jquery、ajax、bootstrap技术，运用基于MVC基础的Spring、SpringMVC、MyBatis框架，以Java为编程语言等相关技术组成系统的技 术架构。</textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px;">项目职责</label>
                           <div class="left">
                               <textarea class="form-control" id="xmzz" name="zmzz" rows="7" style="width: 660px;">本人主要负责前台页面以及学生这一角色的后台页面的设计编写，负责编写控制层控制数据流的传输。</textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目业绩</label>
                           <div class="left">
                               <textarea class="form-control" id="xmyj" name="xmyj" rows="7" style="width: 660px;">本项目按时按质量的完成，达到客户需求，获得用户的一直好评。</textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form6bc" data-toggle="collapse" href="#xmjy-hide" aria-expanded="false" aria-controls="xmjy-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
               <%--xmjy-hide end--%>
           </div>
           <%--xmjy end--%>
           <div class="zwpj">
               <div class="zwpj-head">
                   <div class="zwpj-head-left">
                       <i class="glyphicon glyphicon-star-empty"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">自我评价</span>
                   </div>
                   <div class="zwpj-head-right">
                       <a data-toggle="collapse" href="#zwpj-hide" aria-expanded="false" aria-controls="zwpj-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="zwpjxg"></i></a>
                   </div>
               </div>
               <%--zwpj-head end--%>
               <div class="zwpj-display" id="zwpj-display" style="width: 760px;">
                   <p ><span style="font-size: 13px;">本人性格开朗、稳重、有活力，待人热情、真诚；工作认真负责，积极主动，能吃苦耐劳，用于承受压力，勇于创新；有很强的组织能力和团队协作精神，具有较强的适应能力；纪律性强，工作积极配合；意志坚强，具有较强的无私奉献精神。</span></p>
               </div>
               <%--zwpj-display end--%>
               <div class="zwpj-hide collapse" id="zwpj-hide">
                   <form class="form-horizontal" role="form" id="form7">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">自我评价</label>
                           <div class="left">
                               <textarea class="form-control" id="zwpj" name="zwpj" rows="7" style="width: 660px;">本人性格开朗、稳重、有活力，待人热情、真诚；工作认真负责，积极主动，能吃苦耐劳，用于承受压力，勇于创新；有很强的组织能力和团队协作精神，具有较强的适应能力；纪律性强，工作积极配合；意志坚强，具有较强的无私奉献精神。</textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form7bc" data-toggle="collapse" href="#zwpj-hide" aria-expanded="false" aria-controls="zwpj-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
           </div>
           <%--zwpj end--%>
           <div class="fjxx">
               <div class="fjxx-head">
                   <div class="fjxx-head-left">
                       <i class="glyphicon glyphicon-star-empty"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">附加信息</span>
                   </div>
                   <div class="fjxx-head-right">
                       <a data-toggle="collapse" href="#fjxx-hide" aria-expanded="false" aria-controls="fjxx-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="fjxxxg"></i></a>
                   </div>
               </div>
               <%--fjxx-head end --%>
               <div class="fjxx-display" id="fjxx-display">
                   <p><span style="font-size: 13px;">CET4：</span><span style="font-size: 13px">450</span></p>
                   <p><span style="font-size: 13px;">CET6：</span><span style="font-size: 13px">560</span></p>
                   <div style="width: 100%;overflow: hidden">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">获奖专利：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;">
                               中级软件工程师、北京中软国际教育科技有限公司证书
                            </span>
                       </div>
                   </div>
               </div>
               <%--fjxx-display end--%>
               <div class="fjxx-hide collapse" id="fjxx-hide">
                   <form class="form-horizontal" role="form" id="form8">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px;">英语等级</label>
                           <label class="control-label left">
                               <input type="checkbox"  id="yysj" name="yysj" checked>CET4
                           </label>
                           <div class="left" style="margin-left: 10px;">
                               <input type="text" class="form-control" style="width: 100px;" value="450">
                           </div>
                           <label class=" control-label left" style="margin-left: 20px;">
                               <input type="checkbox" id="yylj" name="yylj" checked>CET6
                           </label>
                           <div class="left" style="margin-left: 10px;">
                               <input type="text" class="form-control" style="width: 100px;" value="560">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">获奖专利</label>
                           <div class="left">
                               <textarea class="form-control" id="hjzl" name="hjzl" rows="7" style="width: 660px;">中级软件工程师、北京中软国际教育科技有限公司证书</textarea>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="col-sm-offset-2 col-sm-10">
                               <button type="button" class="btn btn-default" id="form8bc" data-toggle="collapse" href="#fjxx-hide" aria-expanded="false" aria-controls="fjxx-hide">保存</button>
                           </div>
                       </div>
                   </form>
               </div>
               <%--fjxx-hide end--%>
           </div>
       </div>
       <%--content end--%>
   </div>
   <%--contentsec end--%>
</body>
</html>
