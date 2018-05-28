/**
 * Created by HYHSG on 2018/5/21.
 */

job=new Object();
$(document).ready(function () {

    $("#gwxx").bind("click",function (e) {
        if($(e.target).closest("#tj").length==0){
            $("#tj").popover('destroy');
        }
    })

    $("#gwxx").on('show.bs.modal',function (event) {
        var button = $(event.relatedTarget);
        var modal = $(this) ;
        var recipient="";
        var cz="";
        if (button.data('whatever')=='添加岗位'){
            recipient = button.data('whatever');
            cz="添加"
        }
        else{
            recipient ="岗位编辑";
            cz="编辑";
        }

        modal.find('.modal-title').text(recipient);
        modal.find(".btn-primary").text(cz);
    })

    $("#tjgw").click(function () {
        $("#mc").val(null);
        $("#gwlx").val(null);
        $("#zy").val(null);
        $("#dd").val(null);
        $("#jyyq").val(null);
        $("#xlyq").val("0").attr("selected",true);
        $("#zpsl").val(null);
        $("#yx").val(null);
        $("#gwjj").text("");
    });

    $("#tj").click(function () {
        var title=$("#gwxx").find('.modal-title').text();
        job.mc= $("#mc").val();
        job.gwlx= $("#gwlx").val();
        job.zy=$("#zy").val();
        job.dd= $("#dd").val();
        job.gzjy=$("#jyyq").val();
        job.xlyq=  $("#xlyq").val();
        job.zpsl=$("#zpsl").val();
        job.yx= $("#yx").val();
        job.gwjj= $("#gwjj").val();
        job.yrdwxxbbh=$("#yrdwxxbbh").val();
        if(job.mc==null || job.mc=="" || job.gwlx=="" || job.gwlx==null){
            $("#tj").popover({
                content:"岗位名称、类型不能为空！"
            })
            $("#tj").popover("show");
        }else{
            $("#circle").removeClass("notshow");
            $("#circle1").removeClass("notshow");
            jQuery("#circle").fadeOut(5000);
            jQuery("#circle1").fadeOut(7000);
            if(title=="添加岗位"){
                var myDate=new Date();
                var year=myDate.getFullYear();//获取当前月
                var month=myDate.getMonth()+1;//获取当前日
                var date=myDate.getDate();
                var nowtime=year+'-'+p(month)+"-"+p(date);
                job.fbsj=nowtime;
                $.ajax({
                    url:"/insertJob",
                    type:"post",
                    dataType:"json",
                    data:job,
                    success:function (result) {
                        $("#tbody").empty();
                        for (var i=0;i<result.length;i++){
                            $("#tbody").append("<tr>" +
                                "<td>"+result[i].mc+"</td>" +
                                "<td>"+result[i].zpsl+"</td>" +
                                "<td>"+result[i].gwlx+"</td>" +
                                "<td>"+result[i].fbsj+"</td>" +
                                "<td>"+result[i].zy+"</td>" +
                                "<td>" +
                                "<button class='btn btn-link btn-sm' zpgwbh='"+result[i].zpgwbh+"'  onclick='sc(this)'>删除</button>" +
                                "<button class='btn btn-link btn-sm'  zpgwbh='"+result[i].zpgwbh+"' onclick='bj(this)'>编辑</button>" +
                                "</td>" +
                                "</tr>");
                        }
                        $("#circle").addClass("notshow");
                        $("#circle1").addClass("notshow");
                        $("#gwxx").modal("hide");
                    }
                })
            }else{
                job.zpgwbh=$("#zpgwbh").val();
                $.ajax({
                    url:"/updateJob",
                    type:"post",
                    dataType:"json",
                    data:job,
                    success:function (result) {
                        $("#tbody").empty();
                        for (var i=0;i<result.length;i++){
                            $("#tbody").append("<tr>" +
                                "<td>"+result[i].mc+"</td>" +
                                "<td>"+result[i].zpsl+"</td>" +
                                "<td>"+result[i].gwlx+"</td>" +
                                "<td>"+result[i].fbsj+"</td>" +
                                "<td>"+result[i].zy+"</td>" +
                                "<td>" +
                                "<button class='btn btn-link btn-sm' zpgwbh='"+result[i].zpgwbh+"'  onclick='sc(this)'>删除</button>" +
                                "<button class='btn btn-link btn-sm'  zpgwbh='"+result[i].zpgwbh+"' onclick='bj(this)'>编辑</button>" +
                                "</td>" +
                                "</tr>");
                        }
                        $("#circle").addClass("notshow");
                        $("#circle1").addClass("notshow");
                        $("#gwxx").modal("hide");
                    }
                })
            }
        }
    });

});

function p(s) {
    return s < 10 ? '0' + s: s;
}

function sc(obj) {
    var thisObj=$(obj);
    var zpgwbh=thisObj.attr("zpgwbh");
    var yrdwxxbbh=$("#yrdwxxbbh").val();
    job.zpgwbh=zpgwbh;
    job.yrdwxxbbh=yrdwxxbbh;
    console.log(job);
    $.ajax({
        url:"/deleteJob",
        type:"post",
        dataType:"json",
        data:job,
        success:function (result) {
            $("#tbody").empty();
            for (var i=0;i<result.length;i++){
                $("#tbody").append("<tr>" +
                    "<td>"+result[i].mc+"</td>" +
                    "<td>"+result[i].zpsl+"</td>" +
                    "<td>"+result[i].gwlx+"</td>" +
                    "<td>"+result[i].fbsj+"</td>" +
                    "<td>"+result[i].zy+"</td>" +
                    "<td>" +
                    "<button class='btn btn-link btn-sm' zpgwbh='"+result[i].zpgwbh+"' onclick='sc(this)'>删除</button>" +
                    "<button class='btn btn-link btn-sm'  zpgwbh='"+result[i].zpgwbh+"' onclick='bj(this)'>编辑</button>" +
                    "</td>" +
                    "</tr>");
            }
            $("#gwxx").modal("hide");
        }
    })

}


function bj(obj) {
    var thisObj=$(obj);
    var zpgwbh={"zpgwbh":thisObj.attr("zpgwbh")};
    $.ajax({
        url:"/getJob",
        type:"post",
        dataType:"json",
        data:zpgwbh,
        success:function (result) {
            $("#zpgwbh").val(result.zpgwbh);
            $("#mc").val(result.mc);
            $("#gwlx").val(result.gwlx);
            $("#zy").val(result.zy);
            $("#dd").val(result.dd);
            $("#jyyq").val(result.gzjy);
            $("#xlyq").val(result.xlyq).attr("selected",true);
            $("#zpsl").val(result.zpsl);
            $("#yx").val(result.yx);
            $("#gwjj").text(result.gwjj);
            $("#gwxx").modal("show");
        }
    })
}
