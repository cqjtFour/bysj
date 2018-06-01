/**
 * Created by HYHSG on 2018/4/29.
 */
$(document).ready(function () {
    $("#headxg").click(function () {
         $("#head-display").addClass("notshow");
    });
    $("#jbxxxg").click(function () {
        $("#jbxx-display").addClass("notshow");
        $("#jbxxxg").addClass("notshow");
    });
    $("#gzjlxg").click(function () {
        $("#gzjl-display").addClass("notshow");
    });
    $("#zyyxxg").click(function () {
       $("#zyyx-display").addClass("notshow");
    });
    $("#jyjlxg").click(function () {
        $("#jyjl-display").addClass("notshow");
    });
    $("#xmjyxg").click(function () {
        $("#xmjy-display").addClass("notshow");
    });
    $("#zwpjxg").click(function () {
        $("#zwpj-display").addClass("notshow");
    });
    $("#fjxxxg").click(function () {
       $("#fjxx-display").addClass("notshow");
    });


    /!*表单提交*!/
    $("#form1bc").click(function () {
        $("#head-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.qwzw=$("#zwmc").val();
        student.xsxm=$("#xsxm").val();
        student.qwhy=$("#gshy").val();
        student.xszp=$("#xszp")[0].src;
        /*student.xjcs=$("#xjcs").val();*/
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#xszpxs").attr('src',student.xszp);
                $("#xsxmxs").text(student.xsxm);
                $("#qwzwxs").text(student.qwzw);
                $("#qwhyxs").text(student.qwhy);
                $("#qwzwxs2").text(student.qwzw);
                $("#qwhyxs2").text(student.qwhy);
            },
        })
    });
    $("#form2bc").click(function () {
        $("#jbxx-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.csrq=$("#csrq").val();
        student.sjhm=$("#sjhm").val();
        student.syd=$("#syd").val();
        student.sg=$("#sg").val();
        student.mz=$("#mz").val();
        student.email=$("#yx").val();
        console.log(student.email);
        student.zzmm=$("#zzmm").val();
        student.stzk=$("#stzk").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#csrqxs").text(student.csrq);
                $("#sjhmxs").text(student.sjhm);
                $("#sydxs").text(student.syd);
                $("#sgxs").text(student.sg);
                $("#mzxs").text(student.mz);
                $("#emailxs").text(student.email);
                $("#zzmmxs").text(student.zzmm);
                $("#stzkxs").text(student.stzk);
            }
        })
    });
    $("#form3bc").click(function () {
        $("#zyyx-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.qwhy=$("#qwhy").val();
        student.qwzw=$("#qwzn").val();
        student.qwgzdd=$("#qwdd").val();
        student.qwyx=$("#qwyx").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#qwhyxs2").text(student.qwhy);
                $("#qwzwxs2").text(student.qwzw);
                $("#qwhyxs").text(student.qwhy);
                $("#qwzwxs").text(student.qwzw);
                $("#qwgzddxs").text(student.qwgzdd);
                $("#qwyxxs").text(student.qwyx);
            }
        })
    });
    $("#form4bc").click(function () {
        $("#gzjl-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.sxgsmc=$("#sxgsmc").val();
        student.sxzw=$("#sxzw").val();
        student.sxdd=$("#sxdd").val();
        student.sxkssj=$("#sxkssj").val();
        student.sxjssj=$("#sxjssj").val();
        student.zysxnr=$("#zysxnr").val();
        student.gshy=$("#hy").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#sxgsmcxs").text(student.sxgsmc);
                $("#sxzwxs").text(student.sxzw);
                $("#sxddxs").text(student.sxdd);
                $("#sxkssjxs").text(student.sxkssj);
                $("#sxjssjxs").text(student.sxjssj);
                $("#zysxnrxs").text(student.zysxnr);
                $("#gshyxs").text(student.gshy);
            }
        })
    });
    $("#form5bc").click(function () {
        $("#jyjl-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.bkjdxx=$("#xxmc").val();
        student.bkzy=$("#zymc").val();
        student.bkkssj=$("#bkkssj").val();
        student.bkbysj=$("#bkjssj").val();
        student.xl=$("#xl").val();
       /* student.sftc=$("#sftz").val();*/
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#bkjdxxxs").text(student.bkjdxx);
                $("#bkzyxs").text(student.bkzy);
                $("#bkkssjxs").text(student.bkkssj);
                $("#bkbysjxs").text(student.bkbysj);
                if(student.xl=='0' || student.xl==0)
                   $("#xlxs").text("本科");
                else
                    $("#xlxs").text("硕士");
            }
        })
    });
    $("#form6bc").click(function () {
        $("#xmjy-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.xmmc=$("#xmmc").val();
        student.xmkssj=$("#xmkssj").val()
        student.xmjssj=$("#xmjssj").val();
        student.xmnrms=$("#xmms").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#xmmcxs").text(student.xmmc);
                $("#xmkssjxs").text(student.xmkssj);
                $("#xmjssjxs").text(student.xmjssj);
                $("#xmnrmsxs").text(student.xmnrms);
            }
        })
    });
    $("#form7bc").click(function () {
        $("#zwpj-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.zwpj=$("#zwpj").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                $("#zwpjxs").text(student.zwpj);
            }
        })
    });
    $("#form8bc").click(function () {
        $("#fjxx-display").removeClass("notshow");
        student=new Object();
        student.xh=$("#xh").val();
        student.hjqk=$("#hjzl").val();
        student.yyljcj=$("#yyljcj").val();
        student.yysjcj=$("#yysjcj").val();
        if($("#yysj").attr("checked")){
            student.sftgyysj='1';
        }
        else {
            student.sftgyysj='0';
        }
        if($("#yylj").attr("checked")){
            student.sftgyylj='1';
        }
        else{
            student.sftgyylj='0';
        }
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (student) {
                if(student.sftgyysj=='1' || student.sftgyysj==1){
                    console.log("四级通过")
                    $("#yysjcjxs").text(student.yysjcj);
                    if(!$("#sj").hasClass("notshow"))
                        $("#sj").addClass("notshow");
                }
                else{
                    console.log("四级未通过")
                    if($("#sj").hasClass("notshow"))
                        $("#sj").removeClass("notshow");
                }
                if(student.sftgyylj=='1' || student.sftgyylj==1){
                    console.log("六级通过")
                    $("#yyljcjxs").text(student.yyljcj);
                    if(!$("#lj").hasClass("notshow"))
                        $("#lj").addClass("notshow");
                }else{
                    console.log("六级未通过");
                    if($("#lj").hasClass("notshow"))
                        $("#lj").removeClass("notshow");
                }

                $("#hjqkxs").text(student.hjqk);
            }
        })
    });
    
    $("#yysj").change(function () {
        var check=$(this).is(":checked");
        if(check){
            $(this).attr('checked',true);
        }
        else{
            $(this).removeAttr('checked');
        }
    })
    $("#yylj").change(function () {
        var check=$(this).is(":checked");
        if(check){
            $(this).attr('checked',true);
        }
        else{
            $(this).removeAttr('checked');
        }
    })
})

function uploadImg() {
    var options={
        url:"/uploadPicture",
        type:"post",
        dataType:"json",
        success:function (result) {
            $("#xszp").attr("src",result.msg);
            console.log("图片路径:"+result.msg);
        }
    };
    $("#form1").ajaxSubmit(options);
}

function  jsnx() {
    var yx=Number($("#qwyx").val());
    var ys=Number($("#ys").val());
    var nx=(yx * ys)/10000;
    $("#nx").text(nx);
}
