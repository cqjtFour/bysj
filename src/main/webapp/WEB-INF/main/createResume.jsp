<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/4/23
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%--javascript--%>
    <script src="./js/jquery.min.js" type="text/javascript"></script>
    <script src="./js/createResume.js" type="text/javascript"></script>
    <script src="./js/jquery.form.js" type="text/javascript"></script>
    <%--style--%>
    <link href="./css/createResume.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
      <div class="contentsec">
          <div class="ts" id="ts"><span>你当前还没有简历，需要创建简历！</span></div>
          <div class="content">
              <div class="speedOfProgress">
                  <ul>
                      <li>
                          <span>1.基本信息</span>
                          <span class="wid216 color02  borradiu" id="span1"></span>
                      </li>
                      <li>
                          <span>2.职业意向</span>
                          <span class="wid216 color02" id="span2"></span>
                      </li>
                      <li>
                          <span>3.工作经历</span>
                          <span class="wid216 color02" id="span3"></span>
                      </li>
                      <li>
                          <span>4.教育经历</span>
                          <span class="wid216 color02" id="span4"></span>
                      </li>
                      <li>
                          <span>5.项目经验</span>
                          <span class="wid216 color02" id="span5"></span>
                      </li>
                      <li>
                          <span>6.自我评价</span>
                          <span class="wid216 color02" id="span6"></span>
                      </li>
                      <li>
                          <span><img src="./images/icon_success.jpg">附加信息</span>
                          <span class="wid216 color02" id="span7"></span>
                      </li>
                  </ul>
              </div>
              <%--speedOfProgress--%>
              <div class="inner">
                    <div class="jibenxinxi">
                        <form class="form-horizontal" role="form" id="form1" target="id_iframe">
                            <input type="hidden" id="xh" name="xh" value="${student.xh}">
                            <div class="form-group">
                                <label for="xsxm" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;名字</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xsxm" name="xsxm" style="width: 200px;" value="${student.xsxm}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="xbnan" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;性别</label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input type="radio" name="xb" id="xbnan" value="0" checked> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="xb" id="xbnv" value="1"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="csrq" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;出生日期</label>
                                <div class="col-sm-10" >
                                    <input type="date" class="form-control" id="csrq" name="csrq" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="syd" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;民族</label>
                                <div class="col-sm-10" >
                                    <select class="form-control" style="width: 200px;" id="mz" name="mz">
                                          <option value="汉族">汉族</option>  
                                          <option value="蒙古族">蒙古族</option>  
                                          <option value="回族">回族</option>  
                                          <option value="藏族">藏族</option>  
                                          <option value="维吾尔族">维吾尔族</option>  
                                          <option value="苗族">苗族</option>  
                                          <option value="彝族">彝族</option>  
                                          <option value="壮族">壮族</option>  
                                          <option value="布依族">布依族</option>  
                                          <option value="朝鲜族">朝鲜族</option>  
                                          <option value="满族">满族</option>  
                                          <option value="侗族">侗族</option>  
                                          <option value="瑶族">瑶族</option>  
                                          <option value="白族">白族</option>  
                                          <option value="土家族">土家族</option>  
                                          <option value="哈尼族">哈尼族</option>  
                                          <option value="哈萨克族">哈萨克族</option>  
                                          <option value="傣族">傣族</option>  
                                          <option value="黎族">黎族</option>  
                                          <option value="傈僳族">傈僳族</option>  
                                          <option value="佤族">佤族</option>  
                                          <option value="畲族">畲族</option>  
                                           <option value="高山族">高山族</option>  
                                          <option value="拉祜族">拉祜族</option>  
                                          <option value="水族">水族</option>  
                                          <option value="东乡族">东乡族</option>  
                                          <option value="纳西族">纳西族</option>  
                                          <option value="景颇族">景颇族</option>  
                                          <option value="柯尔克孜族">柯尔克孜族</option>  
                                          <option value="土族">土族</option>  
                                          <option value="达斡尔族">达斡尔族</option>  
                                          <option value="仫佬族">仫佬族</option>  
                                          <option value="羌族">羌族</option>  
                                          <option value="布朗族">布朗族</option>  
                                          <option value="撒拉族">撒拉族</option>  
                                          <option value="毛南族">毛南族</option>  
                                          <option value="仡佬族">仡佬族</option>  
                                          <option value="锡伯族">锡伯族</option>  
                                          <option value="阿昌族">阿昌族</option>  
                                          <option value="普米族">普米族</option>  
                                          <option value="塔吉克族">塔吉克族</option>  
                                          <option value="怒族">怒族</option>  
                                          <option value="乌孜别克族">乌孜别克族</option>  
                                          <option value="俄罗斯族">俄罗斯族</option>  
                                          <option value="鄂温克族">鄂温克族</option>  
                                          <option value="德昂族">德昂族</option>  
                                          <option value="保安族">保安族</option>  
                                          <option value="裕固族">裕固族</option>  
                                          <option value="京族">京族</option>  
                                          <option value="塔塔尔族">塔塔尔族</option>  
                                          <option value="独龙族">独龙族</option>  
                                          <option value="鄂伦春族">鄂伦春族</option>  
                                          <option value="赫哲族">赫哲族</option>  
                                          <option value="门巴族">门巴族</option>  
                                          <option value="珞巴族">珞巴族</option>  
                                          <option value="基诺族">基诺族</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="syd" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;生源地</label>
                                <div class="col-sm-10" >
                                    <select  class="form-control" style="width: 200px;" id="syd"  name="syd">
                                          <option value="北京市">北京市</option>
                                         <option value="浙江省">浙江省</option>
                                         <option value="天津市">天津市</option>
                                         <option value="安徽省">安徽省</option>
                                         <option value="上海市">上海市</option>
                                         <option value="福建省">福建省</option>
                                         <option value="重庆市">重庆市</option>
                                         <option value="江西省">江西省</option>
                                         <option value="山东省">山东省</option>
                                         <option value="河南省">河南省</option>
                                         <option value="湖北省">湖北省</option>
                                         <option value="湖南省">湖南省</option>
                                         <option value="广东省">广东省</option>
                                         <option value="海南省">海南省</option>
                                         <option value="山西省">山西省</option>
                                         <option value="青海省">青海省</option>
                                         <option value="江苏省">江苏省</option>
                                         <option value="辽宁省">辽宁省</option>
                                         <option value="吉林省">吉林省</option>
                                         <option value="台湾省">台湾省</option>
                                         <option value="河北省">河北省</option>
                                         <option value="贵州省">贵州省</option>
                                         <option value="四川省">四川省</option>
                                         <option value="云南省">云南省</option>
                                         <option value="陕西省">陕西省</option>
                                         <option value="甘肃省">甘肃省</option>
                                         <option value="黑龙江省">黑龙江省</option>
                                         <option value="香港特别行政区">香港特别行政</option>
                                         <option value="澳门特别行政区">澳门特别行政</option>
                                         <option value="广西壮族自治区">广西壮族自治</option>
                                         <option value="宁夏回族自治区">宁夏回族自治</option>
                                         <option value="新疆维吾尔自治区">新疆维吾尔治区</option>
                                         <option value="内蒙古自治区">内蒙古自治区</option>
                                         <option value="西藏自治区">西藏自治区</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sjhm" class="col-sm-2 control-label left">*&nbsp;&nbsp;&nbsp;手机号码</label>
                                <div class="left" style="margin-left: 15px;">
                                    <input type="tel" class="form-control" id="sjhm" name="sjhm" style="width: 200px;">
                                </div>
                                <label class="left control-label notshow" id="sjhmError" style="margin-left: 20px;">
                                    <span style="color: red;">号码格式错误!</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-sm-2 control-label left">*&nbsp;&nbsp;&nbsp;电子邮箱</label>
                                <div class="left" style="margin-left: 15px;" >
                                    <input type="email" class="form-control" id="email" name="email" style="width: 200px;" title="格式错误">
                                </div>
                                <label class="left control-label notshow" id="emailError" style="margin-left: 20px;">
                                    <span style="color: red;">邮箱格式错误!</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="zgdy" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;政治面貌</label>
                                <div class="col-sm-10" >
                                    <label class="radio-inline">
                                        <input type="radio" name="zzmm" id="zgdy" value="中共党员（含预备党员）"> 中共党员（含预备党员）
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="zzmm" id="ty" value="团员"> 团员
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="zzmm" id="qz" value="群众">群众
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="zzmm" id="mzdp" value="民主党派">民主党派
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="zzmm" id="wdprs" value="无党派人士">无党派人士
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form1bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <%--form1 end--%>

                        <form class="form-horizontal notshow" role="form" id="form2" target="id_iframe">
                            <div class="form-group">
                                <label for="qwhy" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;期望行业</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwhy" name="qwhy" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="qwzn" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;期望职能</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwzn" name="qwzn" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="qwdd" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;期望地点</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwdd" name="qwdd" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label" style="float: left;">&nbsp;&nbsp;&nbsp;期望年薪</label>
                                <div  style="float: left;">
                                    <input type="text" class="form-control" id="yx" name="yx" onmouseout="jsnx()" style="width: 100px;margin-left: 14px;">
                                </div>
                                <label for="ys" class=" control-label" style="float: left;margin-left: 10px;margin-right: 10px">元/月&nbsp;&nbsp;×</label>
                                <div  style="float: left;">
                                    <input type="number" min="1" max="12" value="12" class="form-control" id="ys" onmouseout="jsnx()"  name="ys" style="width: 60px;margin-right: 10px;">
                                </div>
                                <label class=" control-label" style="float: left;">= <span id="nx"></span>万/年</label>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form2bc">保存</button>
                                    <button class="btn btn-default" style="float: right;" id="fh2"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form2 end--%>

                        <form class="form-horizontal notshow"  role="form" id="form3" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;企业名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="qymc" name="qymc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;公司行业</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gshy" name="gshy" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;职位名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="zwmc" name="zwmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;工作地点</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gzdd" name="gzdd" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">&nbsp;&nbsp;&nbsp;工作时间</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="kssj" name="kssj" style="width: 200px;margin-left: 14px;">
                                </div>
                                <label class="control-label" style="float: left;margin-left: 10px;margin-right: 10px;">————</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="jssj" name="jssj" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;工作描述</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="gzms" name="gzms" maxlength="1000" placeholder="请详述您的工作职责范围以及工作业绩" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form3bc">保存</button>
                                    <button class="btn btn-default" style="float: right;" id="fh3"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form3 end--%>

                        <form class="form-horizontal notshow"  role="form" id="form4" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;学历</label>
                                <div style="float: left;">
                                    <select class="form-control" style="width: 200px;margin-left: 14px;" id="xl" name="xl">
                                        <option value="0">本科</option>
                                        <option value="1">硕士</option>
                                    </select>
                                </div>
                                <div style="float: left">
                                    <label class="control-label">
                                        <input type="checkbox"  id="tz" name="tz" value="0" style="margin-left: 10px">&nbsp;是否统招
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;学校名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xxmc" name="xxmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;专业名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="zymc" name="zymc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;专业排名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="zypm" name="zypm" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;就读时间</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="ksjdsj" style="width: 200px;margin-left: 14px;">
                                </div>
                                <label class="control-label" style="float: left;margin-left: 10px;margin-right: 10px;">————</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="jsjdsj" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form4bc">保存</button>
                                    <button class="btn btn-default" style="float: right;" id="fh4"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form4 end--%>

                        <form class="form-horizontal notshow"  role="form" id="form5" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;项目名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xmmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">&nbsp;&nbsp;&nbsp;项目时间</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="ksxmsj" style="width: 200px;margin-left: 14px;">
                                </div>
                                <label class="control-label" style="float: left;margin-left: 10px;margin-right: 10px;">————</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="jsxmsj" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;项目描述</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="xmms" maxlength="1000" rows="5" placeholder="请详细描述项目内容，填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form5bc">保存</button>
                                    <button class="btn btn-default" style="float: right;" id="fh5"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form6 end--%>

                        <form class="form-horizontal notshow"  role="form" id="form6" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;自我评价</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="zwpj" rows="5" maxlength="1000" placeholder="建议您对自己做一个简短的评价，简明扼要的描述您的职业优势，让企业HR快速了解您！填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form6bc">保存</button>
                                    <button class="btn btn-default" style="float: right;" id="fh6"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form7 end--%>
                        <form class="form-horizontal notshow"  role="form" id="form7" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;更新头像</label>
                                <div class="col-sm-10">
                                    <label for="xztp" class="btn btn-default">选择图片</label>
                                    <input id="xztp" type="file" name="file" style="display: none" onchange="uploadImg()">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;预览头像</label>
                                <div class="col-sm-10">
                                    <label class="control-label"><img src="${student.xszp}" style="width: 140px;height: 140px;" class="img-thumbnail" id="yltx"></label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">&nbsp;&nbsp;&nbsp;英语等级</label>
                                <div style="float:left;">
                                    <label class="control-label" style="float: left">
                                        <input type="checkbox"  id="yysj" style="margin-left: 10px;">&nbsp;英语四级
                                    </label>
                                    <input type="text" class="form-control" id="yysjcj" placeholder="四级成绩" style="width: 100px;float: left;margin-left: 10px;">
                                    <label class="control-label" style="float: left;">
                                        <input type="checkbox"  id="yylj" style="margin-left: 10px;margin-left: 20px;">&nbsp;英语六级
                                    </label>
                                    <input type="text" class="form-control" id="yyljcj" placeholder="六级成绩" style="width: 100px;float: left;margin-left: 10px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;附加信息</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="fjxx" rows="5" placeholder="如：获奖资格证书、专利等，填写文字限1000字以内" maxlength="1000"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="button" class="btn btn-default" id="form7bc">提交</button>
                                    <button class="btn btn-default" style="float: right;" id="fh7"><span class="glyphicon glyphicon-arrow-left"></span></button>
                                </div>
                            </div>
                        </form>
                        <%--form8 end--%>
                        <div class="notshow" id="success" style="width: 300px;margin: 100px auto;">
                            <h1>Success!   <a href="/resume" style="font-size: 17px;">查看我的简历</a></h1>
                        </div>
                        <iframe id="id_iframe" name="id_iframe" style="display:none;"></iframe>
                    </div>
                  <%--jibenxinxi end--%>
              </div>
              <%--inner end--%>
          </div>
          <%--content end--%>
      </div>
      <%--contentsec end--%>
</body>
</html>
