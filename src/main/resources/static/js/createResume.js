/**
 * Created by HYHSG on 2018/4/24.
 */

$(document).ready(function () {
    student=new Object();
    /*基本信息*/
    $("#form1bc").click(function () {
        $("#span1").removeClass("color02");
        $("#span1").addClass("color01");
        $("#form1").addClass("notshow");
        $("#form2").removeClass("notshow");
        student.xh=$("#xh").val();
        student.xsxm=$("#xsxm").val();
        student.xb=$("input[name='xb']:checked").val();
        student.mz=$("#mz").val();
        student.syd=$("#syd").val();
        student.sjhm=$("#sjhm").val();
        student.email=$("#email").val();
        student.zzmm=$("input[name='zzmm']:checked").val();
        student.sr = $("#csrq").val();
         $.ajax({
         url:"/createStudentResume",
         type:"POST",
         dataType:"json",
         data:student,
         success:function (result) {
         if(result.status == "success"){
             console.log(result.msg);
         }else {
         }
         }
         });
    });
    /*职业意向*/
    $("#form2bc").click(function () {
        $("#span2").removeClass("color02");
        $("#span2").addClass("color01");
        $("#form2").addClass("notshow");
        $("#form3").removeClass("notshow");
        /*student.qwhx=$("#qwhy").val();
        student.qwzn=$("#qwzn").val();
        student.qwdd=$("#qwdd").val();
        student.yx=$("#yx").val();*/
    });
    /*工作经历*/
    $("#form3bc").click(function () {
        $("#span3").removeClass("color02");
        $("#span3").addClass("color01");
        $("#form3").addClass("notshow");
        $("#form4").removeClass("notshow");
        student.sxgsmc=$("#qymc").val();
        student.gshy=$("#gshy").val();
        student.sxzw=$("#zwmc").val();
        student.sxdd=$("#gzdd").val();
        student.sxkssj=$("#kssj").val();
        student.sxjssj=$("#jssj").val();
        /*student.gzms=$("#gzms").val();*/
    });
    /*教育经历*/
    $("#form4bc").click(function () {
        $("#span4").removeClass("color02");
        $("#span4").addClass("color01");
        $("#form4").addClass("notshow");
        $("#form5").removeClass("notshow");
        student.xl=$("#xl").val();
        if(parseInt(student.xl)==0){
            student.bkjdxx=$("#xxmc").val();
            student.bkzy=$("#zymc").val();
            student.bkkssj=$("#ksjdsj").val();
            student.bkjssj=$("#jsjdsj").val();
            student.zypm=$("#zypm").val();
        }
        if(parseInt(student.xl)==1){
            student.ssjdxx=$("#xxmc").val();
            student.sszy=$("#zymc").val();
            student.sskssj=$("#ksjdsj").val();
            student.ssjssj=$("#jsjdsj").val();
            /*student.zypm=$("#zypm").val();*/
        }

    });
    /*项目经验*/
    $("#form5bc").click(function () {
        $("#span5").removeClass("color02");
        $("#span5").addClass("color01");
        $("#form5").addClass("notshow");
        $("#form6").removeClass("notshow");
        /*student.xmmc=$("#xmmc").val();
        student.gsmc=$("#gsmc").val();
        student.ksxmsj=$("#ksxmsj").val();
        student.jsxmsj=$("#jsxmsj").val();
        student.xmms=$("#xmms").val();
        student.xmzz=$("#xmzz").val();
        student.xmyz=$("#xmyz").val();*/
    });
    /*自我评价*/
    $("#form6bc").click(function () {
        $("#span6").removeClass("color02");
        $("#span6").addClass("color01");
        $("#form6").addClass("notshow");
        $("#form7").removeClass("notshow");
        student.zwpj=$("#zwpj").val();
    });
    /*附加信息*/
    $("#form7bc").click(function () {
        $("#span7").removeClass("color02");
        $("#span7").addClass("color01");
        if($("#yysj").attr('checked')){
            student.sftgyysj="1";
            student.yysjcj=$("#yysjcj").val();
        }else{
            student.sftgyysj="0";
            student.yysjcj=$("#yysjcj").val();
        }
        if($("#yylj").attr('checked')){
            student.sftgyylj="1";
            student.yyljcj=$("#yyljcj").val();
        }else{
            student.sftgyysj="0";
            student.yyljcj=$("#yyljcj").val();
        }
        student.xszp=$("#yltx")[0].src;
        student.hjqk=$("#fjxx").val();
        /*$.ajax({
         url:"/createStudentResume",
         type:"POST",
         dataType:"json",
         data:student,
         success:function (result) {
         if(result.status == "error"){
         }else {
         }
         }
         });*/
    });


    $("#fh2").click(function () {
        $("#span1").removeClass("color01");
        $("#span1").addClass("color02");
        $("#form2").addClass("notshow");
        $("#form1").removeClass("notshow");
    });
    $("#fh3").click(function () {
        $("#span2").removeClass("color01");
        $("#span2").addClass("color02");
        $("#form3").addClass("notshow");
        $("#form2").removeClass("notshow");
    });
    $("#fh4").click(function () {
        $("#span3").removeClass("color01");
        $("#span3").addClass("color02");
        $("#form4").addClass("notshow");
        $("#form3").removeClass("notshow");
    });
    $("#fh5").click(function () {
        $("#span4").removeClass("color01");
        $("#span4").addClass("color02");
        $("#form5").addClass("notshow");
        $("#form4").removeClass("notshow");
    });
    $("#fh6").click(function () {
        $("#span5").removeClass("color01");
        $("#span5").addClass("color02");
        $("#form6").addClass("notshow");
        $("#form5").removeClass("notshow");
    });
    $("#fh7").click(function () {
        $("#span6").removeClass("color01");
        $("#span6").addClass("color02");
        $("#form7").addClass("notshow");
        $("#form6").removeClass("notshow");
    });
    $("#xl").change(function () {
        var xl=$("#xl").val();
        if(parseInt(xl)==1){
            $("#zypm").attr("disabled",'disabled');
        }else {
            $("#zypm").removeAttr("disabled");
        }
    });

});
function uploadImg() {
    var options={
        url:"/uploadPicture",
        type:"post",
        dataType:"json",
        success:function (result) {
            $("#yltx").attr("src",result.msg);
        }
    };
    $("#form8").ajaxSubmit(options);
}
function jsnx() {
    var yx=Number($("#yx").val());
    var ys=Number($("#ys").val());
    var nx=(yx * ys)/10000;
    $("#nx").text(nx);
}
