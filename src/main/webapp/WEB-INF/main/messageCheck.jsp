<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/4
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>留言查看</title>
    <%-- javascript --%>
    <%--<script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>--%>
    <script src="./js/jquery-3.1.1.js" type="text/javascript"></script>
    <script src="./js/sockjs.min.js" type="text/javascript"></script>
    <script src="./js/stomp.js" type="text/javascript"></script>
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
                  <label><span id="bt">
                  </span></label>
              </div>
              <%-- head end--%>
              <div class="middle ">
                  <input type="hidden" id="zh" value="${user.dlzh}">
                  <div class="messageoperation">
                      <div class="messageshow" id="messageshow" style="padding-top: 10px;padding-left: 5px;">
                      </div>
                      <%-- messageshow end --%>
                      <div class="messagesend">
                          <div class="messageedit">
                              <textarea id="messageedit" ></textarea>
                          </div>
                          <%-- messageedit end --%>
                          <div class="send">
                              <button class="btn btn-default" data-container="body" data-toggle="popover"
                                      data-placement="top" type="button" id="fs">发送</button>
                          </div>
                          <%-- send end --%>
                      </div>
                      <%-- messageshow end --%>
                  </div>
                  <%-- messageoperationn end --%>
                  <div class="contactsshow">
                      <ul>
                          <c:forEach items="${conversationNameList}" var="privateMessage" varStatus="loop">
                              <li style="text-align: center">${privateMessage.fsyhmc}<span class="badge right">${unreadMessageNumbers[loop.count-1]}</span></li>
                              <label class="notshow">${privateMessage.fsyhzh}</label>
                              <label class="notshow">${privateMessage.fsyhmc}</label>
                          </c:forEach>
                      </ul>
                  </div>
                  <%-- contactsshow end --%>
              </div>
              <%-- middle end --%>
          </div>
          <%-- content end --%>
      </div>
      <%-- contentsec end --%>
      <script type="text/javascript">
          $(function () {
              $("#fs").popover('destroy');
          });
      </script>
</body>
</html>
