<%--
  Created by IntelliJ IDEA.
  User: HYHSG
  Date: 2018/5/16
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="./js/sockjs.min.js" type="text/javascript"></script>
    <script src="./js/stomp.js" type="text/javascript"></script>
    <script src="./js/jquery-3.1.1.js" type="text/javascript"></script>
</head>
<body onload="disconnect()">
<noscript><h2 style="color: #e80b0a;">Sorry，浏览器不支持WebSocket</h2></noscript>
<div>
    <div>
        <button id="connect" onclick="connect();">连接</button>
        <button id="disconnect" disabled="disabled" onclick="disconnect();">断开连接</button>
    </div>

    <div id="conversationDiv">
        <label>输入你的名字</label><input type="text" id="name"/>
        <button id="sendName" onclick="sendName();">发送</button>
        <p id="response"></p>
    </div>
</div>
<script type="text/javascript">
    var stompClient = null;
    function setConnected(connected) {
        document.getElementById("connect").disabled = connected;
        document.getElementById("disconnect").disabled = !connected;
        document.getElementById("conversationDiv").style.visibility = connected ? 'visible' : 'hidden';
//        $("#connect").disabled = connected;
//        $("#disconnect").disabled = !connected;
        $("#response").html();
    }
    function connect() {
        var socket = new SockJS('/endpointSang');
        stompClient = Stomp.over(socket);
        stompClient.connect({}, function (frame) {
            setConnected(true);
            console.log('Connected:' + frame);
            stompClient.subscribe('/topic/getResponse', function (response) {
                showResponse(JSON.parse(response.body).responseMessage);
            })
        });
    }
    function disconnect() {
        if (stompClient != null) {
            stompClient.disconnect();
        }
        setConnected(false);
        console.log('Disconnected');
    }
    function sendName() {
        privateMessage=new Object();
        privateMessage.fsyhzh="631406010107";
        privateMessage.jsyhzh="1234@qq.com";
        stompClient.send("/getMessageHistory", {}, JSON.stringify(privateMessage));
    }
    function showResponse(message) {
        /*$("#response").html(message);*/
        console.log(message);
    }
</script>

</body>
</html>
