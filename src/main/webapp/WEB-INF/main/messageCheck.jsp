<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/4
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言查看</title>
    <%-- javascript --%>
    <script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript"></script>
    <script src="./js/messageCheck.js" type="text/javascript"></script>

    <%-- style --%>
    <link href="./css/messageCheck.css" rel="stylesheet" type="text/css">
    <link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
      <div class="contentsec">
          <div class="content">
              <div class="head">
                  <label><span id="bt"></span></label>
              </div>
              <%-- head end--%>
              <div class="middle ">
                  <input type="hidden" id="xh" value="${user.xh}">
                  <div class="messageoperation">
                      <div class="messageshow" id="messageshow">
                          <p><span class="blue">华为技术有限公司     2018/05/04   22:07:33</span></p>
                          <p ><span  style="margin-left: 10px;">你已经通过简历筛选，请你明天下午2点到30303室参加面试！</span></p>
                          <p><span class="green">何泳桦     2018/05/04   22:37:54</span></p>
                          <p><span style="margin-left: 10px;">好的，谢谢！</span></p>

                          <p><span class="blue">华为技术有限公司     2018/05/04   22:07:33</span></p>
                          <p ><span  style="margin-left: 10px;">你已经通过简历筛选，请你明天下午2点到30303室参加面试！</span></p>
                          <p><span class="green">何泳桦     2018/05/04   22:37:54</span></p>
                          <p><span style="margin-left: 10px;">好的，谢谢！</span></p>


                      </div>
                      <%-- message show --%>
                      <div class="messagesend">
                          <div class="messageedit">
                              <textarea id="messageedit"></textarea>
                          </div>
                          <%-- messageedit end --%>
                          <div class="send">
                              <button class="btn btn-default" type="button" id="fs">发送</button>
                          </div>
                          <%-- send end --%>
                      </div>
                      <%-- messageshow end --%>
                  </div>
                  <%-- messageoperationn end --%>
                  <div class="contactsshow">
                      <ul>
                          <li >阿里巴巴</li>
                          <li >腾讯<span class="badge right">5</span></li>
                          <li >蚂蚁金服<span class="badge right">10</span></li>
                          <li>联想集团<span class="badge right">13</span></li>
                      </ul>
                  </div>
                  <%-- contactsshow end --%>
              </div>
              <%-- middle end --%>
          </div>
          <%-- content end --%>
      </div>
      <%-- contentsec end --%>
</body>
</html>
