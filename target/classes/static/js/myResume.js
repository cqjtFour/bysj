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
     student=new Object();
    $("#form1bc").click(function () {
        $("#head-display").removeClass("notshow");
        student.xsxm=$("#xsxm").val();
        student.xh=$("#xh").val();
        $.ajax({
            url:"/updateResume",
            type:"post",
            dataType:"json",
            data:student,
            success:function (s) {
                console.log(s.xsxm);
                $("#xsxmxs").html(s.xsxm);
            }
        })
    });
    $("#form2bc").click(function () {
        $("#jbxx-display").removeClass("notshow");
    });
    $("#form3bc").click(function () {
        $("#gzjl-display").removeClass("notshow");
    });
    $("#form4bc").click(function () {
        $("#zyyx-display").removeClass("notshow");
    });
    $("#form5bc").click(function () {
        $("#jyjl-display").removeClass("notshow");
    });
    $("#form6bc").click(function () {
        $("#xmjy-display").removeClass("notshow");
    });
    $("#form7bc").click(function () {
        $("#zwpj-display").removeClass("notshow");
    });
    $("#form8bc").click(function () {
        $("#fjxx-display").removeClass("notshow");
    });
})


function  jsnx() {
    var yx=Number($("#qwyx").val());
    var ys=Number($("#ys").val());
    var nx=(yx * ys)/10000;
    $("#nx").text(nx);
}