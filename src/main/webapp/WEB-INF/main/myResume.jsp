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
    <script src="./js/jquery.form.js" type="text/javascript"></script>
    <%--style--%>
    <link href="./css/myResume.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
   <div class="contentsec">
       <div class="tiaozhuan"><a href="/resume">
           <span class="glyphicon glyphicon-menu-left" style="font-size: 25px;margin-right: 5px;"></span>
       </a></div>
       <div class="content">
           <input type="hidden" id="xh" name="xh" value="${student.xh}">
           <div class="head">
               <div class="head-display" id="head-display">
                   <div class="head-display-left">
                       <div class="head-display-left-left">
                           <img src="${student.xszp}" class="img-thumbnail" id="xszpxs">
                       </div>
                       <div class="head-display-left-right">
                           <p style="font-size:28px; " id="xsxmxs">${student.xsxm}</p>
                           <p style="font-size: 14px" id="qwzwxs">${student.qwzw}</p>
                           <p style="font-size: 13px;color:#999999; ">现居于重庆-南岸区&nbsp;|&nbsp;<span id="qwhyxs">${student.qwhy}</span>&nbsp;|&nbsp;软件工程师&nbsp;|&nbsp;2018应届毕业生</p>
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
                                   <img src="${student.xszp}" class="img-thumbnail" id="xszp">
                               </div>
                               <div style="margin-top: 5px;margin-left: 10px;">
                                   <label for="xztp" class="btn btn-default">选择图片</label>
                                   <input id="xztp" type="file" name="file" style="display: none" onchange="uploadImg()">
                               </div>
                           </div>
                           <div class="head-form-right">
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">姓名</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" id="xsxm" name="xsxm" value="${student.xsxm}">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">职位意向</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" id="zwmc" name="zwmc" value="${student.qwzw}">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">行业意向</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" id="gshy" name="gshy" value="${student.qwhy}">
                                   </div>
                               </div>
                               <div class="form-group">
                                   <label class="col-sm-2 control-label">现居城市</label>
                                   <div class="col-sm-10">
                                       <input type="text" class="form-control" style="width: 200px;" id="xjcs" name="xjcs" value="重庆">
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
                       <p style="font-size: 13px">出生日期：<span style="font-size: 13px;" id="csrqxs">${student.csrq}</span></p>
                       <p style="font-size: 13px">手机号码：<span style="font-size: 13px;" id="sjhmxs">${student.sjhm}</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;生源地：<span style="font-size: 13px;" id="sydxs">${student.syd}</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身高：<span style="font-size: 13px;" id="sgxs">${student.sg}</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;视力：<span style="font-size: 13px;">5.0   5.0</span></p>
                   </div>
                   <div class="jbxx-display-right">
                       <p  style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;民族：<span style="font-size: 13px;" id="mzxs">${student.mz}</span></p>
                       <p style="font-size: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：<span style="font-size: 13px;" id="emailxs">${student.email}</span></p>
                       <p style="font-size: 13px">政治面貌：<span style="font-size: 13px;" id="zzmmxs">${student.zzmm}</span></p>
                       <p style="font-size: 13px">身体状况：<span style="font-size: 13px;" id="stzkxs">${student.stzk}</span></p>
                   </div>
               </div>
               <%--jbxx-display end--%>
               <div class="collapse jbxx-hide" id="jbxx-hide">
                   <form class="form-horizontal" role="form" id="form2">
                       <div class="jbxx-form-left">
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">出生日期</label>
                               <div class="left">
                                   <input type="date" class="form-control" style="width: 200px;" id="csrq" name="csrq" value="${student.csrq}">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">手机号码</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="sjhm" name="sjhm" value="${student.sjhm}">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">生源地</label>
                               <div class="left">
                                   <select  class="form-control" style="width: 200px;" id="syd" name="syd">
                                       <option value="北京市" ${student.syd == '北京市'?'selected':''}>北京市</option>
                                        <option value="浙江省" ${student.syd == '浙江省'?'selected':''}>浙江省</option>
                                        <option value="天津市" ${student.syd == '天津市'?'selected':''}>天津市</option>
                                        <option value="安徽省" ${student.syd == '安徽省'?'selected':''}>安徽省</option>
                                        <option value="上海市" ${student.syd == '上海市'?'selected':''}>上海市</option>
                                        <option value="福建省" ${student.syd == '福建省'?'selected':''}>福建省</option>
                                        <option value="重庆市" ${student.syd == '重庆市'?'selected':''}>重庆市</option>
                                        <option value="江西省" ${student.syd == '江西省'?'selected':''}>江西省</option>
                                        <option value="山东省" ${student.syd == '山东省'?'selected':''}>山东省</option>
                                        <option value="河南省" ${student.syd == '河南省'?'selected':''}>河南省</option>
                                        <option value="湖北省" ${student.syd == '湖北省'?'selected':''}>湖北省</option>
                                        <option value="湖南省" ${student.syd == '湖南省'?'selected':''}>湖南省</option>
                                        <option value="广东省" ${student.syd == '广东省'?'selected':''}>广东省</option>
                                        <option value="海南省" ${student.syd == '海南省'?'selected':''}>海南省</option>
                                        <option value="山西省" ${student.syd == '山西省'?'selected':''}>山西省</option>
                                        <option value="青海省" ${student.syd == '青海省'?'selected':''}>青海省</option>
                                        <option value="江苏省" ${student.syd == '江苏省'?'selected':''}>江苏省</option>
                                        <option value="辽宁省" ${student.syd == '辽宁省'?'selected':''}>辽宁省</option>
                                        <option value="吉林省" ${student.syd == '吉林省'?'selected':''}>吉林省</option>
                                        <option value="台湾省" ${student.syd == '台湾省'?'selected':''}>台湾省</option>
                                        <option value="河北省" ${student.syd == '河北省'?'selected':''}>河北省</option>
                                        <option value="贵州省" ${student.syd == '贵州省'?'selected':''}>贵州省</option>
                                        <option value="四川省" ${student.syd == '四川省'?'selected':''}>四川省</option>
                                        <option value="云南省" ${student.syd == '云南省'?'selected':''}>云南省</option>
                                        <option value="陕西省" ${student.syd == '陕西省'?'selected':''}>陕西省</option>
                                        <option value="甘肃省" ${student.syd == '甘肃省'?'selected':''}>甘肃省</option>
                                        <option value="黑龙江省" ${student.syd == '黑龙江省'?'selected':''}>黑龙江省</option>
                                        <option value="香港特别行政区" ${student.syd == '香港特别行政区'?'selected':''}>香港特别行政</option>
                                        <option value="澳门特别行政区" ${student.syd == '澳门特别行政区'?'selected':''}>澳门特别行政</option>
                                        <option value="广西壮族自治区" ${student.syd == '广西壮族自治区'?'selected':''}>广西壮族自治</option>
                                        <option value="宁夏回族自治区" ${student.syd == '宁夏回族自治区'?'selected':''}>宁夏回族自治</option>
                                        <option value="新疆维吾尔自治区" ${student.syd == '新疆维吾尔自治区'?'selected':''}>新疆维吾尔治区</option>
                                       <option value="内蒙古自治区" ${student.syd == '内蒙古自治区'?'selected':''}>内蒙古自治区</option>
                                       <option value="西藏自治区" ${student.syd == '西藏自治区'?'selected':''}>西藏自治区</option>
                                   </select>
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">身高</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="sg" name="sg" value="${student.sg}">
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
                                   <select  class="form-control" style="width: 200px;" id="mz" name="mz">
                                          <option value="汉族" ${student.mz == '汉族'?'selected':''}>汉族</option>  
                                         <option value="蒙古族" ${student.mz == '蒙古族'?'selected':''}>蒙古族</option>  
                                         <option value="回族" ${student.mz == '回族'?'selected':''}>回族</option>  
                                         <option value="藏族" ${student.mz == '藏族'?'selected':''}>藏族</option>  
                                         <option value="维吾尔族" ${student.mz == '维吾尔族'?'selected':''}>维吾尔族</option>  
                                         <option value="苗族" ${student.mz == '苗族'?'selected':''}>苗族</option>  
                                         <option value="彝族" ${student.mz == '彝族'?'selected':''}>彝族</option>  
                                         <option value="壮族" ${student.mz == '壮族'?'selected':''}>壮族</option>  
                                         <option value="布依族" ${student.mz == '布依族'?'selected':''}>布依族</option>  
                                         <option value="朝鲜族" ${student.mz == '朝鲜族'?'selected':''}>朝鲜族</option>  
                                         <option value="满族" ${student.mz == '满族'?'selected':''}>满族</option>  
                                         <option value="侗族" ${student.mz == '侗族'?'selected':''}>侗族</option>  
                                         <option value="瑶族" ${student.mz == '瑶族'?'selected':''}>瑶族</option>  
                                         <option value="白族" ${student.mz == '白族'?'selected':''}>白族</option>  
                                         <option value="土家族" ${student.mz == '土家族'?'selected':''}>土家族</option>  
                                         <option value="哈尼族" ${student.mz == '哈尼族'?'selected':''}>哈尼族</option>  
                                         <option value="哈萨克族" ${student.mz == '哈萨克族'?'selected':''}>哈萨克族</option>  
                                         <option value="傣族" ${student.mz == '傣族'?'selected':''}>傣族</option>  
                                         <option value="黎族" ${student.mz == '黎族'?'selected':''}>黎族</option>  
                                         <option value="傈僳族" ${student.mz == '傈僳族'?'selected':''}>傈僳族</option>  
                                         <option value="佤族" ${student.mz == '佤族'?'selected':''}>佤族</option>  
                                         <option value="畲族" ${student.mz == '畲族'?'selected':''}>畲族</option>  
                                          <option value="高山族" ${student.mz == '高山族'?'selected':''}>高山族</option>  
                                         <option value="拉祜族" ${student.mz == '拉祜族'?'selected':''}>拉祜族</option>  
                                         <option value="水族" ${student.mz == '水族'?'selected':''}>水族</option>  
                                         <option value="东乡族" ${student.mz == '东乡族'?'selected':''}>东乡族</option>  
                                         <option value="纳西族" ${student.mz == '纳西族'?'selected':''}>纳西族</option>  
                                         <option value="景颇族" ${student.mz == '景颇族'?'selected':''}>景颇族</option>  
                                         <option value="柯尔克孜族" ${student.mz == '柯尔克孜族'?'selected':''}>柯尔克孜族</option>  
                                         <option value="土族" ${student.mz == '土族'?'selected':''}>土族</option>  
                                         <option value="达斡尔族" ${student.mz == '达斡尔族'?'selected':''}>达斡尔族</option>  
                                         <option value="仫佬族" ${student.mz == '仫佬族'?'selected':''}>仫佬族</option>  
                                         <option value="羌族" ${student.mz == '羌族'?'selected':''}>羌族</option>  
                                         <option value="布朗族" ${student.mz == '布朗族'?'selected':''}>布朗族</option>  
                                         <option value="撒拉族" ${student.mz == '撒拉族'?'selected':''}>撒拉族</option>  
                                         <option value="毛南族" ${student.mz == '毛南族'?'selected':''}>毛南族</option>  
                                         <option value="仡佬族" ${student.mz == '仡佬族'?'selected':''}>仡佬族</option>  
                                         <option value="锡伯族" ${student.mz == '锡伯族'?'selected':''}>锡伯族</option>  
                                         <option value="阿昌族" ${student.mz == '阿昌族'?'selected':''}>阿昌族</option>  
                                         <option value="普米族" ${student.mz == '普米族'?'selected':''}>普米族</option>  
                                         <option value="塔吉克族" ${student.mz == '塔吉克族'?'selected':''}>塔吉克族</option>  
                                         <option value="怒族" ${student.mz == '怒族'?'selected':''}>怒族</option>  
                                         <option value="乌孜别克族" ${student.mz == '乌孜别克族'?'selected':''}>乌孜别克族</option>  
                                         <option value="俄罗斯族" ${student.mz == '俄罗斯族'?'selected':''}>俄罗斯族</option>  
                                         <option value="鄂温克族" ${student.mz == '鄂温克族'?'selected':''}>鄂温克族</option>  
                                         <option value="德昂族" ${student.mz == '德昂族'?'selected':''}>德昂族</option>  
                                         <option value="保安族" ${student.mz == '保安族'?'selected':''}>保安族</option>  
                                         <option value="裕固族" ${student.mz == '裕固族'?'selected':''}>裕固族</option>  
                                         <option value="京族" ${student.mz == '京族'?'selected':''}>京族</option>  
                                         <option value="塔塔尔族" ${student.mz == '塔塔尔族'?'selected':''}>塔塔尔族</option>  
                                         <option value="独龙族" ${student.mz == '独龙族'?'selected':''}>独龙族</option>  
                                         <option value="鄂伦春族" ${student.mz == '鄂伦春族'?'selected':''}>鄂伦春族</option>  
                                         <option value="赫哲族" ${student.mz == '赫哲族'?'selected':''}>赫哲族</option>  
                                         <option value="门巴族" ${student.mz == '门巴族'?'selected':''}>门巴族</option>  
                                         <option value="珞巴族" ${student.mz == '珞巴族'?'selected':''}>珞巴族</option>  
                                         <option value="基诺族" ${student.mz == '基诺族'?'selected':''}>基诺族</option>
                                   </select>
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px">邮箱</label>
                               <div class="left">
                                   <input type="email" class="form-control" style="width: 200px;" id="yx" name="yx" value="${student.email}">
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="col-sm-2 control-label left" style="width: 80px;">政治面貌</label>
                               <div class="left">
                                   <select  class="form-control" style="width: 200px;" id="zzmm" name="zzmm">
                                       <option value="中共党员（含预备党员）" ${student.zzmm == '中共党员（含预备党员）'?'selected':''}>中共党员（含预备党员）</option>
                                       <option value="团员" ${student.zzmm == '团员'?'selected':''}>团员</option>
                                       <option value="群众" ${student.zzmm == '群众'?'selected':''}>群众</option>
                                       <option value="民主党派" ${student.zzmm == '民主党派'?'selected':''}>民主党派</option>
                                       <option value="无党派人士" ${student.zzmm == '无党派人士'?'selected':''}>无党派人士</option>
                                   </select>
                               </div>
                           </div>
                           <div class="form-group ">
                               <label class="col-sm-2 control-label left" style="width: 80px;">身体状况</label>
                               <div class="left">
                                   <input type="text" class="form-control" style="width: 200px;" id="stzk" name="stzk" value="${student.stzk}">
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
                   <p style="font-size: 13px">期望行业：<span style="font-size: 13px;" id="qwhyxs2">${student.qwhy}</span></p>
                   <p style="font-size: 13px">期望职能：<span style="font-size: 13px;" id="qwzwxs2">${student.qwzw}</span></p>
                   <p style="font-size: 13px">期望地点：<span style="font-size: 13px;" id="qwgzddxs">${student.qwgzdd}</span></p>
                   <p style="font-size: 13px">期望月薪：<span style="font-size: 13px;" id="qwyxxs">${student.qwyx}</span></p>
               </div>
               <div class="zyyx-hide collapse" id="zyyx-hide">
                   <form class="form-horizontal" role="form" id="form3">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望行业</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwhy" name="qwhy" value="${student.qwhy}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望职能</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwzn" name="qwzn" value="${student.qwzw}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望地点</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="qwdd" name="qwdd" value="${student.qwgzdd}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">期望月薪</label>
                           <div class="left">
                               <input type="text" class="form-control" id="qwyx" name="qwyx" value="${student.qwyx}" onmouseout="jsnx()" style="width: 100px;">
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
                   <p><span style="font-size: 13px;" id="sxzwxs">${student.sxzw}</span><span style="font-size: 13px;">&nbsp;&nbsp;|&nbsp;&nbsp;<span id="sxgsmcxs">${student.sxgsmc}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 13px;"><span id="sxkssjxs">(${student.sxkssj}</span>&nbsp;&nbsp;——&nbsp;&nbsp;<span id="sxjssjxs">${student.sxjssj})</span></span></span></p>
                   <p  style="font-size: 13px">工作地点：<span style="font-size: 13px;" id="sxddxs">${student.sxdd}</span></p>
                   <p  style="font-size: 13px">公司行业：<span style="font-size: 13px;" id="gshyxs">${student.gshy}</span></p>
                   <div style="width: 100%;overflow: hidden">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">工作描述：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;" id="zysxnrxs">
                               ${student.zysxnr}
                            </span>
                       </div>
                   </div>
               </div>
               <div class="gzjl-hide collapse" id="gzjl-hide">
                   <form class="form-horizontal" role="form" id="form4">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">公司名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxgsmc" name="sxgsmc" value="${student.sxgsmc}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">公司行业</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="hy" name="hy" value="${student.gshy}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">职位名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxzw" name="sxzw" value="${student.sxzw}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">工作地点</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="sxdd" name="sxdd" value="${student.sxdd}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">任职时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="sxkssj" name="sxkssj" value="${student.sxkssj}">
                           </div>
                           <label class=" control-label left" style="margin-left: 10px;margin-right: 10px;" >————</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="sxjssj" name="sxjssj" value="${student.sxjssj}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">工作描述</label>
                           <div class="left">
                               <textarea class="form-control" id="gzms" name="gzms" rows="7" style="width: 660px;">${student.zysxnr}</textarea>
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
                   <p><span style="font-size: 13px;" id="bkjdxxxs">${student.bkjdxx}</span><span style="margin-left: 20px;font-size: 13px">(<span id="bkkssjxs">${student.bkkssj}</span>&nbsp;&nbsp;——&nbsp;&nbsp;<span id="bkbysjxs">${student.bkbysj}</span>)</span></p>
                   <p >
                       <span style="font-size: 13px;">专业名称：<span style="font-size: 13px;" id="bkzyxs">${student.bkzy}</span></span>
                       <span style="margin-left: 150px;font-size: 13px">学历：<span style="font-size: 13px;" id="xlxs">${student.xl=='0' ? '本科':'硕士'}</span></span>
                       <span style="margin-left: 150px;font-size: 13px">是否统招：<span style="font-size: 13px;">是</span></span>
                   </p>
               </div>
               <%--jyjl-display end--%>
               <div class="jyjl-hide collapse" id="jyjl-hide">
                   <form class="form-horizontal" role="form" id="form5">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">学校名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="xxmc" name="xxmc" value="${student.bkjdxx}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">专业名称</label>
                           <div class="left">
                               <input type="text" class="form-control" style="width: 200px;" id="zymc" name="zymc" value="${student.bkzy}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">就读时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="bkkssj" name="bkkssj" value="${student.bkkssj}">
                           </div>
                           <label class="control-label left" style="margin-left: 10px;margin-right: 10px;" >————</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="bkjssj" name="bkjssj" value="${student.bkbysj}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">学历</label>
                           <div class="left">
                               <select type="" class="form-control" style="width: 200px;" id="xl" name="xl">
                                   <option value="0" ${student.xl == '0'? 'selected':''}>本科</option>
                                   <option value="1" ${student.xl == '1'? 'selected':''}>硕士</option>
                               </select>
                           </div>
                           <label class="control-label left" style="margin-left: 20px;">
                               <input type="checkbox" checked id="sftz">是否统招
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
                   <p style="font-size: 13px;"><strong><span style="font-size: 13px;" id="xmmcxs">${student.xmmc}</span><span style="font-size: 13px;margin-left: 20px;">(<span id="xmkssjxs">${student.xmkssj}</span>&nbsp;&nbsp;——&nbsp;&nbsp;<span id="xmjssjxs">${student.xmjssj}</span>)</span></strong></p>
                   <div style="width: 100%;overflow: hidden">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">项目描述：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;" id="xmnrmsxs">
                               ${student.xmnrms}
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
                               <input type="text" class="form-control" style="width: 200px;" id="xmmc" name="xmmc" value="${student.xmmc}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目时间</label>
                           <div class="left">
                               <input type="date" class="form-control" style="width: 200px;" id="=xmkssj" name="xmkssj" value="${student.xmkssj}">
                           </div>
                           <label class="control-label left" style="margin-left: 10px;margin-right: 10px;">————</label>
                           <div class="left">
                               <input type="text" class="form-control" id="xmjssj" name="xmjssj" style="width: 200px;" value="${student.xmjssj}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">项目描述</label>
                           <div class="left">
                               <textarea class="form-control" id="xmms" name="xmms" rows="7" style="width: 660px;">${student.xmnrms}</textarea>
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
                   <p ><span style="font-size: 13px;" id="zwpjxs">${student.zwpj}</span></p>
               </div>
               <%--zwpj-display end--%>
               <div class="zwpj-hide collapse" id="zwpj-hide">
                   <form class="form-horizontal" role="form" id="form7">
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">自我评价</label>
                           <div class="left">
                               <textarea class="form-control" id="zwpj" name="zwpj" rows="7" style="width: 660px;">${student.zwpj}</textarea>
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
                       <i class="glyphicon glyphicon-tasks"  style="font-size: 20px;cursor:pointer"></i>
                       <span style="font-size: 20px">附加信息</span>
                   </div>
                   <div class="fjxx-head-right">
                       <a data-toggle="collapse" href="#fjxx-hide" aria-expanded="false" aria-controls="fjxx-hide"><i class="glyphicon glyphicon-edit" style="font-size: 20px;cursor:pointer"   id="fjxxxg"></i></a>
                   </div>
               </div>
               <%--fjxx-head end --%>
               <div class="fjxx-display" id="fjxx-display">
                   <p class="${student.sftgyysj =='1' ? '':'notshow'}" id="sj"><span style="font-size: 13px;">CET4：</span><span style="font-size: 13px" id="yysjcjxs">${student.yysjcj}</span></p>
                   <p class="${student.sftgyylj =='1' ? '':'notshow'}" id="lj"><span style="font-size: 13px;">CET6：</span><span style="font-size: 13px" id="yyljcjxs">${student.yyljcj}</span></p>
                   <div style="width: 100%;overflow: hidden">
                       <div class="left" style="width: 67px;"><span style="font-size: 13px">获奖专利：</span></div>
                       <div class="left" style="width: 660px;">
                           <span style="font-size: 13px;" id="hjqkxs">
                               ${student.hjqk}
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
                               <input type="checkbox"  id="yysj" name="yysj" ${student.sftgyysj == '1' ? 'checked':''}>CET4
                           </label>
                           <div class="left" style="margin-left: 10px;">
                               <input type="text" class="form-control" id="yysjcj" style="width: 100px;" value="${student.yysjcj}">
                           </div>
                           <label class=" control-label left" style="margin-left: 20px;">
                               <input type="checkbox" id="yylj" name="yylj" ${student.sftgyylj == '1' ? 'checked':''}>CET6
                           </label>
                           <div class="left" style="margin-left: 10px;">
                               <input type="text" class="form-control" id="yyljcj" style="width: 100px;" value="${student.yyljcj}">
                           </div>
                       </div>
                       <div class="form-group">
                           <label class="col-sm-2 control-label left" style="width: 80px">获奖专利</label>
                           <div class="left">
                               <textarea class="form-control" id="hjzl" name="hjzl" rows="7" style="width: 660px;">${student.hjqk}</textarea>
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
