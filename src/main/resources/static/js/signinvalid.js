/**
 * Created by a on 2018/5/13.
 */
$(document).ready(function () {
    //判断空
    var tipMessage={
        dwmc: "请输入单位名称",
        dwxz: "请选择单位性质",
        zzjgdm: "请输入组织机构代码",
        sshy: "请选择单位所属行业",
        dwgm: "请选择单位规模",
        dwszd: "请输入单位所在地",
        dwlxr: "请输入单位联系人",
        dzyx: "请输入邮箱",
        lxrdh: "请输入联系人电话",
        dwlxdh: "请输入单位联系电话",
        yzbm: "请输入邮政编码",
        mm: "请输入密码",
        qrmm: "请确认密码"
    };
    $("input[type!='submit'],textarea,select").blur(function () {
        var id=$(this).attr("id");
        if(''==$(this).val()){
            $(this).next().css("color", "red");
            $(this).next().html(tipMessage[id]);
        }
        else {
            $(this).next().html("");
        }

    });

    //失去焦点验证确认密码
    $("#qrmm").blur(function () {
        mm=$("#mm").val();
        qrmm=$(this).val();
        if($(this).val()!=''&&qrmm!=mm)
            $(this).next().html("密码不匹配!");
    });

    //失去焦点验证密码长度
    $("#mm").blur(function () {
        if($(this).val()!=''&&$(this).val().length<6)
            $(this).next().html("密码长度过短!");
    });

    //验证邮箱格式
    $("#dzyx").blur(function () {
        reg=/^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
        if($(this).val()!=null&&$(this).val()!='') {
            if(!reg.test($(this).val())){
                $("#dzyx_tip").css("color", "red");
                $("#dzyx_tip").html("请输入正确邮箱格式!");
                return;
            }
            $.ajax({
                url: "/validUser",
                type: "post",
                dateType: "json",
                data: {
                    "dzyx": $("#dzyx").val()
                },
                success: function (result) {
                    if (result.msg == "该邮箱已经注册") {
                        $("#dzyx_tip").css("color", "red");
                        $("#dzyx_tip").html("该邮箱已经注册!");
                        //alert("该邮箱已经注册!")
                    } else {
                        $("#dzyx_tip").css("color", "green");
                        $("#dzyx_tip").html("可以注册!");
                    }
                }
            })
        }
    });
});
var flag=true;
function beroreSub() {
    $("input[type!='submit'],select").each(function () {
        if($(this).val()==''||$(this).val()==null){
            flag=false;
        }else {
            if($("#dzyx_tip").text()!="可以注册!"){
                flag=false;
            }else if($("#mm").val()==''||$("#mm").val().length<6){
                flag=false;
                $("#mm").trigger("blur");
            }else if ($("#qrmm").val()!=$("#mm").val()){
                flag=false;
                $("#qrmm").trigger("blur");
            }else {
                flag=true;
            }
        }
    });
    if(flag){
       sub();
    }

    return false;

}

function sub() {

        $.ajax({
            url: '/Employer/register',
            type: 'post',
            dataType: 'json',
            data: {
                "dwmc": $("#dwmc").val(),
                "dwxz": $("#dwxz").val(),
                "zzjgdm": $("#zzjgdm").val(),
                "sshy": $("#sshy").val(),
                "dwgm": $("#dwgm").val(),
                "dwszd": $("#dwszd").val(),
                "dwlxr": $("#dwlxr").val(),
                "dzyx": $("#dzyx").val(),
                "lxrdh": $("#lxrdh").val(),
                "dwjbqkjj": $("#dwjbqkjj").val(),
                "dwlxdh": $("#dwlxdh").val(),
                "yzbm": $("#yzbm").val(),
                "mm": $("#mm").val()
            },
            success: function (result) {
                if (result.status == "success") {
                    window.location.href = "/success";
                }else if(result.status == "fail"){
                    window.location.href = "/fail";
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {

            }
        });

};


