<%--

Created by IntelliJ IDEA.
User: ASUS
Date: 2018/4/17
Time: 14:40
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>就业管理系统</title>
    <!--// Stylesheets //-->
    <link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
    <link href="css/advice.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <!--// Javascripts //-->
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/signinvalid.js"></script>
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</head>

<body>
<!-- Wrapper Start -->
<div id="outer_wrapper">
    <!-- Header Start -->
    <div id="header">
        <div class="rays">
            <div class="inner">
                <!-- Logo Start -->
                <div class="logo">
                    <a href="/index"><img src="images/logo.png" alt=""/></a>
                </div>
                <!-- Logo End -->
                <div class="right">
                    <!-- Navigation Start -->
                    <div class="navigation">
                        <div id="smoothmenu1" class="ddsmoothmenu">
                            <ul>
                                <li><a href="/index">首页</a></li>
                                <li><a href="/advice">通知公告</a></li>
                                <li><a href="#">招聘信息</a>
                                    <ul class="backcolr">
                                        <li><a href="/specialrecruitment">专场招聘</a></li>
                                        <li><a href="/socialrecruitment">社会招聘</a></li>
                                        <li><a href="/doublemeeting">双选会</a></li>
                                    </ul>
                                </li>
                                <li ><a href="/download">下载中心</a></li>
                                <li><a href="#">就业指南</a>
                                    <ul class="backcolr">
                                        <li><a href="/employmentguidance">就业指导</a></li>
                                        <li><a href="/employmentpolicy">就业政策</a></li>
                                    </ul>
                                </li>
                                <li><a href="/studentresume">学生简历</a></li>
                                <li><a href="/graduating">毕业去向</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <!-- Navigation End -->
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- Bread Crumb Start -->
    <div id="bread-crumb">
        <div class="inner">
            <ul>
                <li><span class="glyphicon glyphicon-home" style="margin-right:5px ;"></span><a href="#">主页</a></li>
                <li><span class="glyphicon glyphicon-user " style="margin-right:5px ;"></span><a href="#">企业注册</a></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Content Section Start -->
    <div id="contentsec">
        <div class="inner">
            <div class="fullwidth box left">
                <h3 class="widget-head-border colr">用人单位注册</h3>
                <form class="form-horizontal notshow"   action="#" target="rfFrame" role="form"  id="signinform" style="width: 800px;margin:0px auto;">
                    <div class="form-group">
                        <label class="col-sm-2  control-label">*&nbsp;&nbsp;&nbsp;单位名称</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="dwmc" required placeholder="单位名称" style="width: 250px;" >
                            <span id="dwmc_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位性质</label>
                        <div class="col-sm-10">
                        <select class="form-control" style="width: 300px;" id="dwxz" required>
                            <option value="">请选择</option>
                            <option value="国企">国企</option>
                            <option value="私企">私企</option>
                            <option value="外企">外企</option>
                        </select>
                        <span id="dwxz_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" >*&nbsp;&nbsp;&nbsp;组织机构代码</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="zzjgdm" required   placeholder="组织机构代码（统一社会信用代码）" style="width: 250px;"></input>
                            <span id="zzjgdm_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;所属行业</label>
                        <div class="col-sm-10">
                        <select class="form-control" style="width: 300px;" id="sshy" required>
                            <option value="">请选择</option>
                            <option value="it">it</option>
                            <option value="Ecomy">Econmy</option>
                            <option value="Law">Law</option>
                        </select>
                        <span id="sshy_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位规模</label>
                        <div class="col-sm-10">
                        <select class="form-control" style="width: 200px;" id="dwgm" required>
                            <option value="">请选择</option>
                            <option value="1-49人">1-49人</option>
                            <option value="50-99人">50-99人</option>
                            <option value="100-499人">100-499人</option>
                            <option value="500-999人">500-999人</option>
                            <option value="1000人以上">1000人以上</option>
                        </select>
                        <span id="dwgm_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位所在地</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="dwszd" required  placeholder="单位所在地" style="width: 250px;">
                        <span id="dwszd_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位联系人</label>
                        <div class="col-sm-10">
                          <input class="form-control" id="dwlxr" required placeholder="单位联系人" style="width: 250px;">
                          <span id="dwlxr_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;电子邮箱</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="dzyx" required placeholder="电子邮箱同时作为登录帐号" style="width: 250px;">
                        <span id="dzyx_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;联系人电话</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="lxrdh" required placeholder="联系人电话" style="width: 250px;">
                        <span id="lxrdh_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位联系电话</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="dwlxdh" required  placeholder="单位联系电话" style="width: 250px;">
                        <span id="dwlxdh_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;邮政编码</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="yzbm" required  placeholder="邮政编码" style="width: 250px;">
                        <span id="yzbm_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;单位基本情况简介</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="dwjbqkjj" rows="5"  placeholder="单位基本情况简介" style="margin-left: 0px"></textarea>
                            <span id="dwjbqkjj_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;密码</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="mm" type="password" required placeholder="请输入密码" style="width: 250px;"/>
                        <span id="mm_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">*&nbsp;&nbsp;&nbsp;确认密码</label>
                        <div class="col-sm-10">
                        <input class="form-control" id="qrmm" type="password" required placeholder="请再次输入密码" style="width: 250px;"/>
                        <span id="qrmm_tip" style="color:red"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                        <button style="width: 150px;"  type="submit" onclick="beroreSub()"  class="btn btn-info form-control">提交</button>
                        </div>
                    </div>

                </form>
                <iframe id="rfFrame" name="rfFrame" src="about:blank" style="display:none;"></iframe>

            </div>
            <!--fullwidth box left end-->
        </div>
        <!--inner end-->
    </div>
    <!-- Content Section End -->

    <!--Friendship-link start 友情链接-->
    <div class="friendship-link">
        <div class="links">
            <span style="float: left; padding-top: 10px;">友情链接:</span>
            <ul>
                <li>
                    <a href="http://www.scpta.gov.cn/" title="四川省人事考试网" target="_blank">
                        <img src="img/d6f21951-ae83-4847-9f1a-5f4189281cf6.png" width="106px" height="39px"/>
                    </a>
                </li>
                <li>
                    <a href="http://gj.ncss.cn/" title="高校毕业生到国际组织实习任职信息" target="_blank">
                        <img src="img/0af63035-b7ce-4ba4-ac44-4d46a60acdca.jpg" width="106px" height="39px"/>
                    </a>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <!--container end-->
    </div>
    <!--Friendship-link end-->

    <!-- Footer Start 尾部-->
    <div id="footer">
        <div class="footer-rays">
            <div class="inner">
                <div class="foot-navi-coopyrights">
                    <p class="company-info">
                        <span>查号电话：(023)62651999 | 传真：(023)62650561 | 邮政编码：400074 | 邮箱：jyk@cqjtu.edu.cn</span>
                    <p style="color: #fff;">学校地址：重庆市南岸区学府大道66号|渝ICP备11007697号-1|Copyright &copy;2012 CQJTU 重庆交通大学</p>
                    </p>
                    <p class="web-info">
                        <span>Copyright&#169;2015&nbsp;CQJTU&nbsp;重庆交通大学&nbsp;</span>
                        <span>
            				<a href="http://www.miibeian.gov.cn/" target="_blank">渝ICP备11007697号</a>
            			</span>
                    </p>
                </div>
                <!--foot-navi-coopyrights end-->
                <!-- Follow Us - Go to Top Start -->
                <div class="followus">
                    <!-- Go to Top Start -->
                    <div class="gotop">
                        <a href="#top">&nbsp;</a>
                        <span>Back to Top</span>
                    </div>
                    <!-- Go to Top End -->
                </div>
                <!-- Follow Us - Go to Top End -->
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
</div>
<!-- Wrapper End -->

</body>
</html>