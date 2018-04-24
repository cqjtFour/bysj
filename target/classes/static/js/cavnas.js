var string = "";

/**生成一个随机数**/
function randomNum(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}
function validate1(){
    var userValue = document.getElementById("username").value;
    var passwordValue = document.getElementById("password").value;
    var yzm = document.getElementById("validate").value;
    if (userValue.length==0||passwordValue.length==0){
        document.getElementById("label1").innerHTML="用户名或密码不能为空";
        return false;
    }
    if(yzm != string){
        document.getElementById("label1").innerHTML="验证码不正确";
        return false;
    }
    document.getElementById("form").submit();
}
/**生成一个随机色**/
function randomColor(min, max) {
    var r = randomNum(min, max);
    var g = randomNum(min, max);
    var b = randomNum(min, max);
    return "rgb(" + r + "," + g + "," + b + ")";
}

drawPic();

/**绘制验证码图片**/
function drawPic() {
    var canvas = document.getElementById("canvas");
    var width = canvas.width;
    var height = canvas.height;
    var ctx = canvas.getContext('2d');
    ctx.textBaseline = 'bottom';

    /**绘制背景色**/
    ctx.fillStyle = randomColor(180, 240); //颜色若太深可能导致看不清
    ctx.fillRect(0, 0, width, height);
    /**绘制文字**/
    var str = '123456789';
    for (var i = 0; i < 4; i++) {
        var txt = str[randomNum(0, str.length)];
        string = string + txt;
        ctx.fillStyle = randomColor(50, 160);  //随机生成字体颜色
        ctx.font = 30 + 'px SimHei'; //随机生成字体大小
        var x = 10 + i * 25;
        var y = 33;
        var deg = randomNum(-10, 10);
        //修改坐标原点和旋转角度
        ctx.translate(x, y);
        ctx.rotate(deg * Math.PI / 180);
        ctx.fillText(txt, 0, 0);
        //恢复坐标原点和旋转角度
        ctx.rotate(-deg * Math.PI / 180);
        ctx.translate(-x, -y);
    }
    /**绘制干扰线**/
    for (var i = 0; i < 8; i++) {
        ctx.strokeStyle = randomColor(40, 180);
        ctx.beginPath();
        ctx.moveTo(randomNum(0, width), randomNum(0, height));
        ctx.lineTo(randomNum(0, width), randomNum(0, height));
        ctx.stroke();
    }
    /**绘制干扰点**/
    for (var i = 0; i < 100; i++) {
        ctx.fillStyle = randomColor(0, 255);
        ctx.beginPath();
        ctx.arc(randomNum(0, width), randomNum(0, height), 1, 0, 2 * Math.PI);
        ctx.fill();
    }
}
