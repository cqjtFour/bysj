/**
 * Created by HYHSG on 2018/5/19.
 */

$(document).ready(function () {

    $("#ly").click(function () {
        var dlzh=$("#dlzh").val();
        var xh=$("#xh").val();
        $.ajax({
            url:"/employerStudentMessage",
            type:"post",
            dataType:"json",
            data:{dlzh:dlzh,xh:xh},
            success:function (result) {
                console.log(result);
                window.location.replace("/messageCheck");

            }
        })
    })
})