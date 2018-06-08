/**
 * Created by HYHSG on 2018/5/12.
 */


schoolJob=new Object();
$(document).ready(function () {

    $("#xtjyh").click(function () {
        $("<tr>" +
            "<td><input type='text'></td>" +
            "<td><input type='text'></td>" +
            "<td><input type='text'></td>" +
            "<td><input type='text'></td>" +
            "<td><span class='glyphicon glyphicon-minus' style='cursor: pointer' onclick='sc(this)'></span></td></tr>").insertBefore("#tjyh");
    })
    
    $("#tj").click(function () {
         schoolJob.yrdwxxbbh=$("#yrdwxxbbh").val();
         schoolJob.xyzpdwfzr=$("#fzr").val();
         schoolJob.fzrdh=$("#fzrdh").val();
         schoolJob.fzryx=$("#fzryx").val();
         schoolJob.yrrq=$("#jbrq").val();
         schoolJob.yysj=$("#jbsj").val();
        schoolJob.yynr= CKEDITOR.instances.zpnr.getData();

        var myDate = new Date();//获取当前年
        var year=myDate.getFullYear();//获取当前月
        var month=myDate.getMonth()+1;//获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        var s=myDate.getSeconds();
        var nowtime=year+'-'+p(month)+"-"+p(date)+" "+p(h)+':'+p(m)+":"+p(s);
         schoolJob.yytjsj=nowtime;

         $.ajax({
             url:"/insertSchoolJob",
             type:"post",
             dataType:"json",
             data:schoolJob,
             success:function (result) {
                 var reserveInfoJobs=[];
                 var trList = $("#tbody").children("tr");
                 for (var i=0;i<trList.length-1;i++) {
                       reserveInfoJob=new Object();
                       var tdArr = trList.eq(i).find("td");
                       reserveInfoJob.gwmc= tdArr.eq(0).find('input').val();//岗位名称
                       reserveInfoJob.rs = tdArr.eq(1).find('input').val();//招聘人数
                       reserveInfoJob.dy = tdArr.eq(2).find('input').val();// 薪资待遇
                       reserveInfoJob.xyzy=tdArr.eq(3).find("input").val();//需求专业
                       reserveInfoJob.xyzpyybbh=result.msg;
                     reserveInfoJobs.push(reserveInfoJob);
                 }

                $.ajax({
                    url:"/insertReserveInfoJob",
                    type:"post",
                    dataType:"json",
                    data: {reserveInfoJobs : JSON.stringify(reserveInfoJobs)},
                    success:function (result) {
                        window.location.replace("/successRec");
                    }
                })
             }
         })

    })

});


function sc(obj) {
    var thisObj=$(obj);
    thisObj.parent().parent().remove();

}

function p(s) {
    return s < 10 ? '0' + s: s;
}

