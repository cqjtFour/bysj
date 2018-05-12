<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">

<head>
    <meta charset="utf-8"/>
    <title>应聘简历</title>
    <link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
    <style>
        td {
            text-align: center;
            width: auto;
            white-space: nowrap; /* 自适应宽度*/
            word-break: keep-all; /* 避免长单词截断，保持全部 */

        }

        .table > tbody > tr > td,
        .table > tbody > tr > th,
        .table > tfoot > tr > td,
        .table > tfoot > tr > th,
        .table > thead > tr > td,
        .table > thead > tr > th {
            padding-bottom: 4px;
            padding-top: 4px;
        }
        select{
            border-radius:3px;
            -webkit-border-radius:3px;
            -moz-border-radius :3px;
        }
    </style>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>应聘简历筛选</h1>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-3" style="padding-right: 10px">
            <label>专业:</label>
            <select style="width: 150px;height: 30px;" name="special">
                <option value="0">请选择</option>
                <option value="1">土木</option>
                <option value="2">通信</option>
                <option value="3">艺术</option>
                <option value="4">计算机</option>
            </select>
        </div>
        <div class="col-md-3 " style="padding-left: 0px">
            <label>学历:</label>
            <select style="width: 150px;height: 30px;" name="education">
                <option value="0">请选择</option>
                <option value="1">专科</option>
                <option value="2">本科</option>
                <option value="3">硕士</option>
                <option value="4">博士</option>
            </select>
        </div>
        <div class="col-md-5 " style="padding-left: 0px">
            <label>投递时间:</label>
            <input type="datetime" name="startTime" style="width: 150px;height: 30px;"/>
            -
            <input type="datetime" name="endTime" style="width: 150px;height: 30px;"/>

        </div>
        <div class="col-md-1" style="padding-left: 0px;margin-left: 0px">
            <button class="btn btn-primary" style=" height: 30px;">筛选</button>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12 col-md-offset-10">
            <button type="button" class="btn btn-info">通过</button>
            <button type="button" class="btn btn-info">淘汰</button>
        </div>
    </div>
    <br>

    <div class="row">
        <table class="table table-striped table-hover">
            <thead bgcolor="antiquewhite">
            <tr>
                <td style="width: 70px;">
                    <input type="checkbox" value=""/>
                </td>
                <td>
                    <label>应聘岗位名称</label>
                </td>
                <td>
                    <label>应聘人姓名</label>
                </td>
                <td>
                    <label>应聘人电话</label>
                </td>
                <td>
                    <label>简历投递时间</label>
                </td>
                <td>
                    <label>简历详情</label>
                </td>
                <td>
                    <label>操作</label>
                </td>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm">删除</button>
                    <button class="btn btn-link btn-sm">编辑</button>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm">删除</button>
                    <button class="btn btn-link btn-sm">编辑</button>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm">删除</button>
                    <button class="btn btn-link btn-sm">编辑</button>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm">删除</button>
                    <button class="btn btn-link btn-sm">编辑</button>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm">删除</button>
                    <button class="btn btn-link btn-sm">编辑</button>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox"/></td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>THEAD 中</td>
                <td>
                    <button class="btn btn-link btn-sm"><label>删除</label></button>
                    <button class="btn btn-link btn-sm"><label>编辑</label></button>
                </td>
            </tr>
            </tbody>
        </table>

    </div>
    <div class="row">
        <div class="col-md-6">
            <span>共&nbsp;&nbsp;<label>1000</label>&nbsp;&nbsp;条数据</span>
            <span>共&nbsp;&nbsp;<label>100</label>&nbsp;&nbsp;页</span>
        </div>
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </div>
</div>

</body>

</html>