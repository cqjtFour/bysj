/**
 * Created by HYHSG on 2018/5/5.
 */
var stompClient = null;
var stompClient2=null;
var bz=false;
privateMessage=new Object();
privateMessage.jsyhzh="";
privateMessage.fsyhzh="";
privateMessage.xxnr="";
privateMessage.fssj="";
$(document).ready(function () {
    $(document).bind("click",function (e) {
        if($(e.target).closest("#fs").length==0){
            $("#fs").popover('destroy');
        }
    })
    connect();
    connent2();
   $("ul li").click(function () {
       $(this).css("background-color","#d5d5d5").siblings().css("background-color","white");
       var s=$(this).find("span").text();
       var nr=$(this).text();
       nr=nr.substr(0,nr.length-s.length);
       $("#bt").text(nr);
       $(this).find("span").text("");
       privateMessage.jsyhzh=$(this).next().text();
       privateMessage.fsyhzh=$("#zh").val();
       $.ajax({
           url:"/setAlreadyRead",
           type:"post",
           dataType:"json",
           data:privateMessage,
           success:function (result) {

           }
       });
       getMessageHistory();
       $("#messageshow").scrollTop($("#messageshow")[0].scrollHeight);
   });

   $("#fs").click(function () {
       var t=$("#messageedit").val();
       if(privateMessage.jsyhzh!="" && privateMessage.jsyhzh!=null){
           if( t!=null && t!=""){
               privateMessage.xxnr=t;
               privateMessage.zt=0;
               var myDate = new Date();//获取当前年
               var year=myDate.getFullYear();//获取当前月
               var month=myDate.getMonth()+1;//获取当前日
               var date=myDate.getDate();
               var h=myDate.getHours();       //获取当前小时数(0-23)
               var m=myDate.getMinutes();     //获取当前分钟数(0-59)
               var s=myDate.getSeconds();
               var nowtime=year+'-'+p(month)+"-"+p(date)+" "+p(h)+':'+p(m)+":"+p(s);
               privateMessage.fssj=nowtime;
               insertMessage();
           }else{
               $("#fs").popover({
                   html:true,
                   content:'发送内容不能为空，请重新输入'
               })
               $("#fs").popover('show');
           }
       }else {
           $("#fs").popover({
               html:true,
               content:'请选择发送对象'
           })
           $("#fs").popover('show');
       }

       $("#messageedit").empty();
       $("#messageedit").val("");
       $("#messageshow").scrollTop($("#messageshow")[0].scrollHeight);
   });

   $("#messageedit").keydown(function (event) {
       if(event.keyCode == 13) {
           event.preventDefault();
           var t=$("#messageedit").val();
           if(privateMessage.jsyhzh!="" && privateMessage.jsyhzh!=null){
               if( t!=null && t!=""){
                   privateMessage.xxnr=t;
                   privateMessage.zt=0;
                   var myDate = new Date();//获取当前年
                   var year=myDate.getFullYear();//获取当前月
                   var month=myDate.getMonth()+1;//获取当前日
                   var date=myDate.getDate();
                   var h=myDate.getHours();       //获取当前小时数(0-23)
                   var m=myDate.getMinutes();     //获取当前分钟数(0-59)
                   var s=myDate.getSeconds();
                   var nowtime=year+'-'+p(month)+"-"+p(date)+" "+p(h)+':'+p(m)+":"+p(s);
                   privateMessage.fssj=nowtime;
                   insertMessage();
               }else{
                   $("#fs").popover({
                       html:true,
                       content:'发送内容不能为空，请重新输入'
                   })
                   $("#fs").popover('show');
               }
           }else {
               $("#fs").popover({
                   html:true,
                   content:'请选择发送对象'
               })
               $("#fs").popover('show');
           }
           $("#messageedit").empty();
           $("#messageedit").val("");
           $("#messageshow").scrollTop($("#messageshow")[0].scrollHeight);
       }
   });


});
function p(s) {
    return s < 10 ? '0' + s: s;
}


function getMessageHistory( ) {
    $("#messageshow p").remove()
    $.ajax({
        url:"/getMessageHistory",
        type:"post",
        dataType:"json",
        data:privateMessage,
        success:function (result) {
            for(var i=0;i<result.length;i++){
                if(result[i].fsyhzh==privateMessage.jsyhzh){
                    $("#messageshow").append("<p><span class='green'>"+result[i].fsyhmc+"     "+result[i].fssj+"</span></p>" +
                        "<p><span style='margin-left: 10px'>"+result[i].xxnr+"</span></p>")
                }
                else{
                    $("#messageshow").append("<p><span class='blue'>"+result[i].fsyhmc+"     "+result[i].fssj+"</span></p>" +
                        "<p><span style='margin-left: 10px'>"+result[i].xxnr+"</span></p>")
                }

            }
        }
    })
}

function disconnect() {
    if (stompClient != null) {
        stompClient.disconnect();
    }
}
function disconnect2() {
    if (stompClient2 != null) {
        stompClient2.disconnect();
    }
}

function connect() {
    //与服务端点endpointSang取得链接
    var socket = new SockJS('/endpointSang');
    //Stomp简单（流）文本定向消息协议，作为客户端
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        //订阅代理/topic/getResponse，获得其推送的数据
        stompClient.subscribe('/topic/getResponse', function (response) {
            showResponse(JSON.parse(response.body));
        })
    });
}

function connent2() {
    var socket = new SockJS('/endpointSang');
    stompClient2 = Stomp.over(socket);
    stompClient2.connect({}, function (frame) {
        stompClient2.subscribe('/topic/getUnreadMessageNumbers', function (response) {
            showResponse2(JSON.parse(response.body));
        })
    });
}

function insertMessage() {
    //客户端请求
    stompClient.send("/insertPrivateMessage", {}, JSON.stringify(privateMessage));
}

function showResponse(result) {
    getNewUnreadMessageNumbers();
    if((result[0].fsyhzh==privateMessage.fsyhzh && result[0].jsyhzh==privateMessage.jsyhzh)||
        (result[0].fsyhzh==privateMessage.jsyhzh && result[0].jsyhzh==privateMessage.fsyhzh)){
        $("#messageshow p").remove();
        for(var i=0;i<result.length;i++){
            if(result[i].fsyhzh==privateMessage.jsyhzh){
                $("#messageshow").append("<p><span class='green'>"+result[i].fsyhmc+"     "+result[i].fssj+"</span></p>" +
                    "<p><span style='margin-left: 10px'>"+result[i].xxnr+"</span></p>")
            }
            else{
                $("#messageshow").append("<p><span class='blue'>"+result[i].fsyhmc+"     "+result[i].fssj+"</span></p>" +
                    "<p><span style='margin-left: 10px'>"+result[i].xxnr+"</span></p>")
            }
        }
        if(result[result.length-1].fsyhzh==privateMessage.jsyhzh && result[result.length-1].jsyhzh==privateMessage.fsyhzh){
            ChangeState();
        }
    }
    console.log(result[result.length-1].jsyhzh==privateMessage.fsyhzh && result[result.length-1].fsyhzh!=privateMessage.jsyhzh);
    if(result[result.length-1].jsyhzh==privateMessage.fsyhzh && result[result.length-1].fsyhzh!=privateMessage.jsyhzh){
        bz=true;
    }

}

function ChangeState(){
    $.ajax({
        url:"/setAlreadyRead",
        type:"post",
        dataType:"json",
        data:privateMessage,
        success:function (result) {
              console.log("更改状态成功！");
        }
    });

}


function getNewUnreadMessageNumbers() {
     stompClient2.send("/getNewUnreadMessageNumbers",{},JSON.stringify(privateMessage));
}
function showResponse2(result) {
    var i=0;
    if(bz){
       $('ul').find('li').each(function () {
           $(this).find('span').text(result[i].msg);
           i++;
       })
    }
    bz=false;
}