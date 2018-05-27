<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <style>
        #selDiv{
            position: absolute;
            top:10px;
            right: 100px;
        }

    </style>
    <script language="javascript" type="text/javascript">
        window.onload=function(){
            //设置年份的选择
            var myDate= new Date();
            var startYear=myDate.getFullYear()-10;//起始年份
            var endYear=myDate.getFullYear()+10;//结束年份
            var obj=document.getElementById('myYear')
            for (var i=startYear;i<=endYear;i++)
            {
                obj.options.add(new Option(i,i));
            }
            obj.options[obj.options.length-11].selected=1;
        }
    </script>
</head>
<body>
<div id="main" style="width: 1200px;height:400px;"></div>
<div id="selDiv">
    <label for="myYear">请选择年份</label>
    <span style="margin-left:100px;width:18px;overflow:hidden;">
        <select style="width:118px;margin-left:-100px;height: 30px;border-radius:5px;"
                 id="myYear">
        </select>
    </span>
</div>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('main'));

    $(function () {
        getData();
    });

    $("#myYear").change(function () {
        getData();
    })

    function getData() {
        var year = $("#myYear").val();
        $.ajax({
            url: "/selectBigZaHui",
            dataType: "json",
            type: "POST",
            data:{"year":year},
            success: function (result) {
                var names = [];    //类别数组（实际用来盛放X轴坐标值）
                var nums = [];    //就业率数组（实际用来盛放Y坐标值）
                $.each(result, function (index, item) {
                    names.push(item.xymc);
                    nums.push(item.num);
                });
                // 填入数据
                myChart.setOption({
                    title: {
                        text: '学院就业率'
                    },
                    tooltip: {},
                    legend: {
                        data: ['就业率']
                    },
                    xAxis: {
                        data: names,
                        axisLabel: {
                            interval: 0,//横轴信息全部显示
                            rotate: -30,//-30度角倾斜显示
                        }
                    },
                    yAxis: {},
                    series: [{
                        name: '就业率',
                        type: 'bar',
                        data: nums
                    }]
                });
            }
        })
    }

</script>
</body>
</html>