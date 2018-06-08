<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/19
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>个人简历</title>
    <%--javascript--%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./js/resume.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <%--style--%>
    <link href="./css/resume.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="contentsec">
        <c:if test="${user.jsbh==4}">
            <div class="tiaozhuan">
                <a id="ly"  style="margin-right:20px;cursor: pointer;margin-right: 10px;">
                    <span class="glyphicon glyphicon-comment" style="font-size: 25px"></span>
                </a>
                <a href="/jobResume">
                    <span class="glyphicon glyphicon-menu-left" style="font-size: 25px;margin-right: 30px;"></span>
                </a>
                <input type="hidden" id="dlzh" value="${user.dlzh}">
                <input type="hidden" id="xh" value="${student.xh}">
            </div>
        </c:if>
        <c:if test="${user.jsbh==3}">
            <div class="tiaozhuan">
                <a href="/printResume" target="view_window" style="margin-left:40px;margin-right: 10px;">
                    <span class="glyphicon glyphicon-print" style="font-size: 25px;"></span>
                </a>
                <a href="/myResume">
                    <span class="glyphicon glyphicon-edit" style="font-size: 25px"></span>
                </a>
            </div>
        </c:if>
    <div class="content">
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
            </div>
        </div>
        <%--head end--%>
        <div class="jbxx">
            <div class="jbxx-head">
                <div class="jbxx-head-left">
                    <i class="glyphicon glyphicon-user"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">基本信息</span>
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
        </div>
        <%--jbxx end--%>
        <div class="zyyx">
            <div class="zyyx-head">
                <div class="zyyx-head-left">
                    <i class="glyphicon glyphicon-briefcase"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">职业意向</span>
                </div>
            </div>
            <%--gzjl-head end--%>
            <div class="zyyx-display" id="zyyx-display">
                <p style="font-size: 13px">期望行业：<span style="font-size: 13px;" id="qwhyxs2">${student.qwhy}</span></p>
                <p style="font-size: 13px">期望职能：<span style="font-size: 13px;" id="qwzwxs2">${student.qwzw}</span></p>
                <p style="font-size: 13px">期望地点：<span style="font-size: 13px;" id="qwgzddxs">${student.qwgzdd}</span></p>
                <p style="font-size: 13px">期望月薪：<span style="font-size: 13px;" id="qwyxxs">${student.qwyx}</span></p>
            </div>
        </div>
        <%--zyyx end--%>
        <div class="gzjl">
            <div class="gzjl-head">
                <div class="gzjl-head-left">
                    <i class="glyphicon glyphicon-list-alt"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">工作经历</span>
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
        </div>
        <%--gzjl end--%>
        <div class="jyjl">
            <div class="jyjl-head">
                <div class="jyjl-head-left">
                    <i class="glyphicon glyphicon-book"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">教育经历</span>
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
        </div>
        <%--jyjl end--%>
        <div class="xmjy">
            <div class="xmjy-head">
                <div class="xmjy-head-left">
                    <i class="glyphicon glyphicon-credit-card"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">项目经验</span>
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
        </div>
        <%--xmjy end--%>
        <div class="zwpj">
            <div class="zwpj-head">
                <div class="zwpj-head-left">
                    <i class="glyphicon glyphicon-star-empty"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">自我评价</span>
                </div>
            </div>
            <%--zwpj-head end--%>
            <div class="zwpj-display" id="zwpj-display" style="width: 760px;">
                <p ><span style="font-size: 13px;" id="zwpjxs">${student.zwpj}</span></p>
            </div>
            <%--zwpj-display end--%>
        </div>
        <%--zwpj end--%>
        <div class="fjxx">
            <div class="fjxx-head">
                <div class="fjxx-head-left">
                    <i class="glyphicon glyphicon-tasks"  style="font-size: 20px;cursor:pointer"></i>
                    <span style="font-size: 20px">附加信息</span>
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
        </div>
    </div>
    <%--content end--%>
</div>
    <%--contentsec end--%>
</body>
</html>
