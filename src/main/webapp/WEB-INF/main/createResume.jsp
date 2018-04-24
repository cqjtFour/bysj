<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/4/23
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--javascript--%>
    <script src="./js/jquery.min.js" type="text/javascript"></script>
    <script src="./js/createResume.js" type="text/javascript"></script>
    <%--style--%>
    <link href="./css/createResume.css" rel="stylesheet" rel="stylesheet">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
</head>
<body>
      <div class="contentsec">
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
                          <span>5.语言能力</span>
                          <span class="wid216 color02" id="span5"></span>
                      </li>
                      <li>
                          <span>6.项目经验</span>
                          <span class="wid216 color02" id="span6"></span>
                      </li>
                      <li>
                          <span>7.自我评价</span>
                          <span class="wid216 color02" id="span7"></span>
                      </li>
                      <li>
                          <span>8.附加信息</span>
                          <span class="wid216 color02" id="span8"></span>
                      </li>
                      <li>
                          <span><img src="./images/icon_success.jpg">擅长技能</span>
                          <span class="wid216 color02" id="span9"></span>
                      </li>
                  </ul>
              </div>
              <%--speedOfProgress--%>
              <div class="inner">
                    <div class="jibenxinxi">
                        <form class="form-horizontal" role="form" id="form1" target="id_iframe">
                            <div class="form-group">
                                <label for="xsxm" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;名字</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xsxm" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="xbnan" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;性别</label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="xbnan" value="0"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="xbnv" value="1"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="csrq" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;出生日期</label>
                                <div class="col-sm-10" >
                                    <input type="date" class="form-control" id="csrq" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="syd" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;生源地</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="syd" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sjhm" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;手机号码</label>
                                <div class="col-sm-10" >
                                    <input type="tel" class="form-control" id="sjhm" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;电子邮箱</label>
                                <div class="col-sm-10" >
                                    <input type="email" class="form-control" id="email" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="zgdy" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;政治面貌</label>
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
                                    <button type="submit" class="btn btn-default" id="form1bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow" role="form" id="form2" target="id_iframe">
                            <div class="form-group">
                                <label for="qwhy" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;期望行业</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwhy" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="qwzn" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;期望职能</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwzn" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="qwdd" class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;期望地点</label>
                                <div class="col-sm-10" >
                                    <input type="text" class="form-control" id="qwdd" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label  class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;期望年薪</label>
                                <div  style="float: left;">
                                    <input type="text" class="form-control" id="qwnx" style="width: 100px;margin-left: 14px;">
                                </div>
                                <label for="ys" class=" control-label" style="float: left;margin-left: 10px;margin-right: 10px">元/月&nbsp;&nbsp;×</label>
                                <div  style="float: left;">
                                    <input type="number" min="1" max="12" placeholder="12" class="form-control" id="ys" style="width: 60px;margin-right: 10px;">
                                </div>
                                <label class=" control-label" style="float: left;">= <span id="nx"></span>万</label>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form2bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow"  role="form" id="form3" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;企业名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="qymc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;公司行业</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gshy" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;职位名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="zwmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;工作地点</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gzdd" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;工作时间</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="ksnf" style="width: 200px;margin-left: 14px;">
                                </div>
                                <label class="control-label" style="float: left;margin-left: 10px;margin-right: 10px;">————</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="jsyf" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;工作描述</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="gzms" maxlength="1000" placeholder="请详述您的工作职责范围以及工作业绩" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form3bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <%--form3 end--%>
                        <form class="form-horizontal notshow"  role="form" id="form4" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;学校名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xxmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;专业名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="zymc" style="width: 200px;">
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
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;学历</label>
                                <div style="float: left;">
                                    <select class="form-control" style="width: 200px;margin-left: 14px;" >
                                        <option value="本科">本科</option>
                                        <option value="硕士">硕士</option>
                                    </select>
                                </div>
                                <div style="float: left">
                                    <label class="control-label">
                                        <input type="checkbox"  id="tz" style="margin-left: 10px">&nbsp;是否统招
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form4bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <%--form4 end--%>
                        <form class="form-horizontal notshow"  role="form" id="form5" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;语言能力</label>
                                <div style="float:left;">
                                    <label class="control-label">
                                        <input type="checkbox"  id="yy" style="margin-left: 10px;">&nbsp;英语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="hy" style="margin-left: 10px;">&nbsp;韩语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="alby" style="margin-left: 10px;">&nbsp;阿拉伯语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="pth" style="margin-left: 10px;">&nbsp;普通话
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div style="float:left;margin-left: 137px;">
                                    <label class="control-label">
                                        <input type="checkbox"  id="dy" style="margin-left: 10px;">&nbsp;德语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="ey" style="margin-left: 10px;">&nbsp;俄语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="xbyy" style="margin-left: 10px;">&nbsp;西班牙语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="ptyy" style="margin-left: 10px;">&nbsp;葡萄牙语
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div style="float:left;margin-left: 137px;">
                                    <label class="control-label">
                                        <input type="checkbox"  id="fy" style="margin-left: 10px;">&nbsp;法语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="yuey" style="margin-left: 10px;">&nbsp;粤语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="ydly" style="margin-left: 10px;">&nbsp;意大利语
                                    </label>
                                    <label class="control-label">
                                        <input type="checkbox"  id="qt" style="margin-left: 10px;">&nbsp;其他
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;英语等级</label>
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
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form5bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow"  role="form" id="form6" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;项目名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="xmmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;公司名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="gsmc" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" style="float: left;">*&nbsp;&nbsp;&nbsp;项目时间</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="ksxmsj" style="width: 200px;margin-left: 14px;">
                                </div>
                                <label class="control-label" style="float: left;margin-left: 10px;margin-right: 10px;">————</label>
                                <div style="float: left;">
                                    <input type="date" class="form-control" id="jsxmsj" style="width: 200px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;项目描述</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="xmms" maxlength="1000" rows="5" placeholder="请详细描述项目内容，填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;项目职责</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="xmzz" maxlength="1000" rows="5" placeholder="请详细描述您的职责范围及工作任务，填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;项目业绩</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="xmyz" maxlength="1000" rows="5" placeholder="请详细描述您在项目中取得的业绩，填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form6bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow"  role="form" id="form7" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;自我评价</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="zwpj" rows="5" maxlength="1000" placeholder="建议您对自己做一个简短的评价，简明扼要的描述您的职业优势，让企业HR快速了解您！填写文字限1000字以内"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form7bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow"  role="form" id="form8" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;附加信息</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="fjxx" rows="5" placeholder="如：获奖资格证书、专利等，填写文字限1000字以内" maxlength="1000"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form8bc">保存</button>
                                </div>
                            </div>
                        </form>
                        <form class="form-horizontal notshow"  role="form" id="form9" target="id_iframe">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;擅长技能</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" id="scjn" rows="5" placeholder="" maxlength="1000"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-default" id="form9bc">保存</button>
                                </div>
                            </div>
                        </form>
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
