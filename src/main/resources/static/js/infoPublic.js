function valXxbt() {
    if ($("#xxbt").val().length==0||$("#xxbt").val().length>16){
        $("#xxbt").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#xxbt").parent().addClass("has-feedback");
        $("#xxbt").parent().addClass("has-error");
        $("#xxbt").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#xxbt").next("span").next("span").text("信息标题必填且在16个汉字之内");
        return false;
    }else{
        $("#xxbt").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#xxbt").next("span").next("span").text("");
        $("#xxbt").parent().removeClass("has-error");
        $("#xxbt").parent().addClass("has-feedback");
        $("#xxbt").parent().addClass("has-success");
        $("#xxbt").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}
function valXxzw() {
    if ($("#xxzw").val().length<50){
        $("#xxzw").next("span").removeClass("glyphicon glyphicon-ok form-control-feedback");
        $("#xxzw").parent().addClass("has-feedback");
        $("#xxzw").parent().addClass("has-error");
        $("#xxzw").next("soan").addClass("glyphicon glyphicon-remove form-control-feedback");
        $("#xxzw").next("span").next("span").text("信息正文不得小于50");
        return false;
    }else{
        $("#xxzw").next("soan").removeClass("glyphicon glyphicon-remove form-control-feedback");
        $("#xxzw").next("span").next("span").text("");
        $("#xxzw").parent().removeClass("has-error");
        $("#xxzw").parent().addClass("has-feedback");
        $("#xxzw").parent().addClass("has-success");
        $("#xxzw").next("span").addClass("glyphicon glyphicon-ok form-control-feedback");
        return true;
    }
}
function validateForm() {
    if (valXxbt()==true&&valXxzw()==true){
        return true;
    }else {
        return false;
    }

}