/**
 * Created by HYHSG on 2018/5/2.
 */
$(document).ready(function () {
    user=new Object();
    /*当前密码*/
    $("#dqmm").focus(function () {
        $("#error1").addClass("notshow");
    });
    $("#dqmm").blur(function () {
       user.dlzh=$("#dlzh").val();
       user.dlmm=$("#dqmm").val();
       $.ajax({
           url:"/passwordVerification",
           type:"post",
           dataType:"json",
           data:user,
           success:function (result) {
               if(!result)
                   $("#error1").removeClass("notshow");
           }
       })
    });
    /*新密码*/
    $("#xmm").focus(function () {
       $("#error2").addClass("notshow");
    });
    $("#xmm").blur(function () {
        var xmm=$("#xmm").val();
       if(xmm.length<6)
           $("#error2").removeClass("notshow");
    });
    /*确认密码*/
    $("#qrmm").focus(function () {
        $("#error3").addClass("notshow");
    });
    $("#qrmm").blur(function () {
        var xmm=$("#xmm").val();
        var qrmm=$("#qrmm").val();
        if(xmm != qrmm)
            $("#error3").removeClass("notshow");
    });
    /*密保答案*/
    $("#mbda").focus(function () {
        $("#error4").addClass("notshow");
    });
    $("#mbda").blur(function () {
       var mbda=$("#mbda").val();
       if(mbda == null || mbda=="")
           $("#error4").removeClass("notshow");
    });
    /*保存*/
    $("#bc").click(function () {
        //提交前检验
       var dqmm=$("#dqmm").val();
       var xmm=$("#xmm").val();
       var qrmm=$("#qrmm").val();
       var mbda=$("#mbda").val();
       if(dqmm==null || dqmm=="")
           $("#error1").removeClass("notshow");
       else if(xmm==null || xmm=="")
           $("#error2").removeClass("notshow");
       else if(qrmm==null || qrmm=="")
           $("#error3").removeClass("notshow");
       else if(mbda==null || mbda=="")
           $("#error4").removeClass("notshow");
       else{
           var error1=$("#error1").hasClass("notshow");
           var error2=$("#error2").hasClass("notshow");
           var error3=$("#error3").hasClass("notshow");
           var error4=$("#error4").hasClass("notshow");
           user.dlmm=$("#xmm").val();
           user.zhwt=$("#mbwt").val();
           user.zhda=$("#mbda").val();
           if(  error1 && error2 && error3 && error4){
               user.dlmm=$("#xmm").val();
               $.ajax({
                   url:"/updatePassword",
                   type:"post",
                   dataType:"json",
                   data:user,
                   success:function (result) {
                       if(result){
                           $("#form").addClass("notshow");
                           $("#success").removeClass("notshow");
                       }
                       else
                           alert("更新密码失败!");
                   }
               })
           }
           else {
               alert("有错误，无法更新！");
           }
       }
    });
});