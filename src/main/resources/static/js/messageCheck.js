/**
 * Created by HYHSG on 2018/5/5.
 */
$(document).ready(function () {
   $("ul li").click(function () {
       $(this).css("background-color","#d5d5d5").siblings().css("background-color","white");
       var s=$(this).find("span").text();
       var nr=$(this).text();
       nr=nr.substr(0,nr.length-s.length);
       $("#bt").text(nr);
       $(this).find("span").remove();
   });
   $("#fs").click(function () {
       var t=$("#messageedit").val();
       var html=$("#messageshow").html();
       var myDate = new Date();//获取当前年
       var year=myDate.getFullYear();//获取当前月
       var month=myDate.getMonth()+1;//获取当前日
       var date=myDate.getDate();
       var h=myDate.getHours();       //获取当前小时数(0-23)
       var m=myDate.getMinutes();     //获取当前分钟数(0-59)
       var s=myDate.getSeconds();
       var now=year+'/'+p(month)+"/"+p(date)+"   "+p(h)+':'+p(m)+":"+p(s);

       var insertHtml=" <p><span class='green'>何泳桦     "+now+"</span></p><p><span style='margin-left: 10px;'>"+t+"</span></p>";
       $("#messageshow").html(html+insertHtml);
       $("#messageedit").val("");
   });

   $("#messageedit").keydown(function (event) {
       if(event.keyCode == 13){
           var t=$("#messageedit").val();
           var html=$("#messageshow").html();
           var myDate = new Date();//获取当前年
           var year=myDate.getFullYear();//获取当前月
           var month=myDate.getMonth()+1;//获取当前日
           var date=myDate.getDate();
           var h=myDate.getHours();       //获取当前小时数(0-23)
           var m=myDate.getMinutes();     //获取当前分钟数(0-59)
           var s=myDate.getSeconds();
           var now=year+'/'+p(month)+"/"+p(date)+"   "+p(h)+':'+p(m)+":"+p(s);

           var insertHtml=" <p><span class='green'>何泳桦     "+now+"</span></p><p><span style='margin-left: 10px;'>"+t+"</span></p>";
           $("#messageshow").html(html+insertHtml);
           $("#messageedit").val("");
       }
   });
});
function p(s) {
    return s < 10 ? '0' + s: s;
}