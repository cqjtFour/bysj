function valColName() {
    if ($("#facultyName").val().length==0||$("#facultyName").val().length>16){
        $("#facultyName").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#facultyName").parent().addClass("has-feedback");
        $("#facultyName").parent().addClass("has-error");
        $("#facultyName").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName").next("span").next("span").text("学院名称必填且在16个汉字之内");
        return false;
    }else{
        $("#facultyName").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName").next("span").next("span").text("");
        $("#facultyName").parent().removeClass("has-error");
        $("#facultyName").parent().addClass("has-feedback");
        $("#facultyName").parent().addClass("has-success");
        $("#facultyName").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}

function valZyName() {
    if ($("#facultyName").val().length==0||$("#facultyName").val().length>16){
        $("#facultyName").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#facultyName").parent().addClass("has-feedback");
        $("#facultyName").parent().addClass("has-error");
        $("#facultyName").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName").next("span").next("span").text("学院名称必填且在16个汉字之内");
        return false;
    }else{
        $("#facultyName").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName").next("span").next("span").text("");
        $("#facultyName").parent().removeClass("has-error");
        $("#facultyName").parent().addClass("has-feedback");
        $("#facultyName").parent().addClass("has-success");
        $("#facultyName").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}


function valColPeople() {
    if ($("#colPeople").val().length==0||$("#colPeople").val().length>4){
        $("#colPeople").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#colPeople").parent().addClass("has-feedback");
        $("#colPeople").parent().addClass("has-error");
        $("#colPeople").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colPeople").next("span").next("span").text("学院负责人必填且在4个汉字之内");
        return false;
    }else{
        $("#colPeople").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colPeople").next("span").next("span").text("");
        $("#colPeople").parent().removeClass("has-error");
        $("#colPeople").parent().addClass("has-feedback");
        $("#colPeople").parent().addClass("has-success");
        $("#colPeople").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}

function valColTel() {
    if ($("#coltel").val().length!=11){
        $("#coltel").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#coltel").parent().addClass("has-feedback");
        $("#coltel").parent().addClass("has-error");
        $("#coltel").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#coltel").next("span").next("span").text("学院联系电话必填且为11位");
        return false;
    }else{
        $("#coltel").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#coltel").next("span").next("span").text("");
        $("#coltel").parent().removeClass("has-error");
        $("#coltel").parent().addClass("has-feedback");
        $("#coltel").parent().addClass("has-success");
        $("#coltel").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}
function valColShow() {
    if ($("#colshow").val().length>50){
        $("#colshow").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#colshow").parent().addClass("has-feedback");
        $("#colshow").parent().addClass("has-error");
        $("#colshow").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colshow").next("span").next("span").text("学院简介50字以内");
        return false;
    }else{
        $("#colshow").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colshow").next("span").next("span").text("");
        $("#colshow").parent().removeClass("has-error");
        $("#colshow").parent().addClass("has-feedback");
        $("#colshow").parent().addClass("has-success");
        $("#colshow").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}



function valColName_update() {
    if ($("#facultyName_update").val().length==0||$("#facultyName_update").val().length>16){
        $("#facultyName_update").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#facultyName_update").parent().addClass("has-feedback");
        $("#facultyName_update").parent().addClass("has-error");
        $("#facultyName_update").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName_update").next("span").next("span").text("学院名称必填且在16个汉字之内");
        return false;
    }else{
        $("#facultyName_update").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#facultyName_update").next("span").next("span").text("");
        $("#facultyName_update").parent().removeClass("has-error");
        $("#facultyName_update").parent().addClass("has-feedback");
        $("#facultyName_update").parent().addClass("has-success");
        $("#facultyName_update").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}

function valColPeople_update() {
    if ($("#colPeople_update").val().length==0||$("#colPeople_update").val().length>4){
        $("#colPeople_update").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#colPeople_update").parent().addClass("has-feedback");
        $("#colPeople_update").parent().addClass("has-error");
        $("#colPeople_update").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colPeople_update").next("span").next("span").text("学院负责人必填且在4个汉字之内");
        return false;
    }else{
        $("#colPeople_update").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colPeople_update").next("span").next("span").text("");
        $("#colPeople_update").parent().removeClass("has-error");
        $("#colPeople_update").parent().addClass("has-feedback");
        $("#colPeople_update").parent().addClass("has-success");
        $("#colPeople_update").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}

function valColTel_update() {
    if ($("#coltel_update").val().length!=11){
        $("#coltel_update").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#coltel_update").parent().addClass("has-feedback");
        $("#coltel_update").parent().addClass("has-error");
        $("#coltel_update").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#coltel_update").next("span").next("span").text("学院联系电话必填且为11位");
        return false;
    }else{
        $("#coltel_update").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#coltel_update").next("span").next("span").text("");
        $("#coltel_update").parent().removeClass("has-error");
        $("#coltel_update").parent().addClass("has-feedback");
        $("#coltel_update").parent().addClass("has-success");
        $("#coltel_update").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}
function valColShow_update() {
    if ($("#colshow_update").val().length>50){
        $("#colshow_update").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#colshow_update").parent().addClass("has-feedback");
        $("#colshow_update").parent().addClass("has-error");
        $("#colshow_update").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colshow_update").next("span").next("span").text("学院简介50字以内");
        return false;
    }else{
        $("#colshow_update").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#colshow_update").next("span").next("span").text("");
        $("#colshow_update").parent().removeClass("has-error");
        $("#colshow_update").parent().addClass("has-feedback");
        $("#colshow_update").parent().addClass("has-success");
        $("#colshow_update").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}


function validateForm() {
    if (valColName()==true&&valColPeople()==true&&valColShow()==true&&valColTel()==true){
        return true;
    }else {
        return false;
    }

}

//删除学院
$("#deleteFaculty").click(function () {
    var deleteNos = "";
    $.each($(".check_item:checked"),function () {
        deleteNos += $(this).parents("tr").find("td:eq(1)").text()+",";
    });
    if (deleteNos === ""){
        $("#deleteMenu").attr("data-content","至少选择一条数据删除");
    }else{
        deleteNos = deleteNos.substring(0,deleteNos.length-1);
        if (confirm("确定删除编号为["+deleteNos+"]的菜单吗")){
            $.ajax({
                url:"/deleteFaculty",
                type:"POST",
                data:{"deleteNos":deleteNos},
                success:function(result){
                    if (result.status === "0"){
                        alert(result.msg);
                    } else if (result.status === "1"){
                        alert(result.msg);
                        to_page(currentPage);
                    }

                }
            });
        }
    }
})