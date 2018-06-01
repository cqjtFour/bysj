/**
 * Created by HYHSG on 2018/5/19.
 */


apply=new Object();
apply.ckzt=2;
apply.zpgwbh=0;
$(document).ready(function () {
    $("#sx").click(function () {
        apply.xh=$("#startTime").val();//为形势所需，暂用xh保存startTime
        apply.ypsj=$("#endTime").val();//为形势所需，暂用ypsj保存endTime
        if(apply.zpgwbh==0){
            apply.ypbbh=$("#yrdwxxbbh").val();//用ypbbh存yrdwxxbbh更新applies session对象
            $.ajax({
                url:"/getAppalies",
                type:"post",
                dataType:"json",
                data:apply,
                success:function (result) {
                    $("#tbody tr").remove();
                    var ckzt="";
                    var color="";
                    var shzt="";
                    var shztcolor="";
                    for(var i=0;i<result.length;i++){
                        console.log(result[i].shzt+" "+typeof(result[i].shzt));
                        if(result[i].ckzt ==0){
                            ckzt="未查看";
                            color="color:red;";
                        }
                        else{
                            ckzt="已查看";
                            color="color:green;";
                        }

                        if (result[i].shzt==1){
                            shzt="淘汰";
                            shztcolor="orange";
                        }else if(result[i].shzt==2){
                            shzt="通过";
                            shztcolor="green";
                        }else {
                            shzt="";
                            shztcolor="";
                        }

                        $("#tbody").append("<tr>" +
                            "<td style='color: "+shztcolor+"'>"+shzt+"</td>" +
                            "<td>"+result[i].job.mc+"</td>" +
                            "<td><a style='cursor:pointer' xh='"+result[i].student.xh+"' onclick='tj(this)'>"+result[i].student.xsxm+"</a></td>" +
                            "<td>"+result[i].student.discipline.zymc+"</td>" +
                            "<td>"+result[i].ypsj+"</td>" +
                            "<td style='"+color+"'>"+ckzt+"</td>" +
                            "<td>"+
                            "<button class='btn btn-success btn-sm' xh='"+result[i].student.xh+"' zpgwbh='"+result[i].zpgwbh+"' onclick='tg(this)'>通过</button>" +
                            "<button class='btn btn-warning btn-sm' xh='"+result[i].student.xh+"' zpgwbh='"+result[i].zpgwbh+"' onclick='tt(this)'>淘汰</button>" +
                            "</td>" +
                            "</tr>");
                    }
                }
            })
        }else {
            $.ajax({
                url:"/getStudentsByGw",
                type:"post",
                dataType:"json",
                data:apply,
                success:function (result) {
                    $("#tbody tr").remove();
                    var ckzt="";
                    var color="";
                    var shzt="";
                    var shztcolor="";
                    for(var i=0;i<result.length;i++){
                        console.log(result[i].shzt);
                        if(result[i].ckzt ==0){
                            ckzt="未查看";
                            color="color:red;";
                        }
                        else{
                            ckzt="已查看";
                            color="color:green;";
                        }

                        if (result[i].shzt==1){
                            shzt="淘汰";
                            shztcolor="orange";
                        }else if(result[i].shzt==2){
                            shzt="通过";
                            shztcolor="green";
                        }else {
                            shzt="";
                            shztcolor="";
                        }

                        $("#tbody").append("<tr>" +
                            "<td style='color: "+shztcolor+"'>"+shzt+"</td>"+
                            "<td>"+result[i].job.mc+"</td>" +
                            "<td><a style='cursor:pointer' xh='"+result[i].student.xh+"' onclick='tj(this)'>"+result[i].student.xsxm+"</a></td>" +
                            "<td>"+result[i].student.discipline.zymc+"</td>" +
                            "<td>"+result[i].ypsj+"</td>" +
                            "<td style='"+color+"'>"+ckzt+"</td>" +
                            "<td>"+
                            "<button class='btn btn-success btn-sm' xh='"+result[i].student.xh+"' zpgwbh='"+result[i].zpgwbh+"' onclick='tg(this)'>通过</button>" +
                            "<button class='btn btn-warning btn-sm' xh='"+result[i].student.xh+"' zpgwbh='"+result[i].zpgwbh+"' onclick='tt(this)'>淘汰</button>" +
                            "</td>" +
                            "</tr>");
                    }
                }
            })
        }

    })

    $("#gw").change(function () {
        apply.zpgwbh=$(this).find("option:selected").val();
    })
    $("#zt").change(function () {
        apply.ckzt=$(this).find("option:selected").val();
    })
})

function  tj(obj) {
    var thisObj=$(obj);
    var xh={"xh":thisObj.attr("xh")}
    $.ajax({
        url:"/getStudent",
        type:"post",
        dataType:"json",
        data:xh,
        success:function (result) {
            if (result.msg=="success")
                window.location.replace("/resume");
            else
                console.log("fail!");
        }
    });

     apply.xh=thisObj.attr("xh");
     apply.zpgwbh=thisObj.attr("zpgwbh");
     apply.ypbbh=$("#yrdwxxbbh").val();//用ypbbh存yrdwxxbbh更新applies session对象
     $.ajax({
         url:"/updateCKZT",
         type:"post",
         dataType:"json",
         data:apply,
         success:function (result) {
             if (result.msg=="success")
                 console.log("success!");
             else
                 console.log("fail!");
         }
     })
}

function tg(obj) {
    var thisObj=$(obj);
    apply1=new Object();
    apply1.xh=thisObj.attr("xh");
    apply1.zpgwbh=thisObj.attr("zpgwbh");
    apply1.ypbbh=$("#yrdwxxbbh").val();//用ypbbh存yrdwxxbbh更新applies session对象
    apply1.shzt=2;
    $.ajax({
        url:"/updateSHZT",
        type:"post",
        dataType:"json",
        data:apply1,
        success:function (result) {
            if (result.status="success"){
               thisObj.parent().prev().prev().prev().prev().prev().prev().text(result.msg);
                thisObj.parent().prev().prev().prev().prev().prev().prev().css("color","green");
            }
        }
    })
}

function tt(obj) {
    var thisObj=$(obj);
    apply1=new Object();
    apply1.xh=thisObj.attr("xh");
    apply1.zpgwbh=thisObj.attr("zpgwbh");
    apply1.ypbbh=$("#yrdwxxbbh").val();//用ypbbh存yrdwxxbbh更新applies session对象
    apply1.shzt=1;
    $.ajax({
        url:"/updateSHZT",
        type:"post",
        dataType:"json",
        data:apply1,
        success:function (result) {
             if(result.status=="fail"){
                 thisObj.parent().prev().prev().prev().prev().prev().prev().text(result.msg);
                 thisObj.parent().prev().prev().prev().prev().prev().prev().css("color","orange");
             }
        }
    })
}