<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">

<head>
		<meta charset="utf-8" />
		<title>招聘岗位管理</title>
		<%-- javascript --%>
		<script src="./bootstrap-3.3.7-dist/js/jquery.js" type="text/javascript"></script>
		<script src="./bootstrap-3.3.7-dist/js/bootstrap.js" type="text/javascript"></script>
		<script src="./js/recruitment.js" type="text/javascript"></script>
		<%-- style --%>
		<link href="./bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
	    <link href="./css/recruitment.css" rel="stylesheet" type="text/css"/>
		<style>
		</style>
</head>
<body>


	<!-- 添加岗位 -->
	<div class="modal fade" id="gwxx" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div id="circle" class="notshow"></div>
				<div id="circle1" class="notshow"></div>
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="modal-body">
						<form class="form-horizontal" role="form">
							<input type="hidden" id="zpgwbh" value=""/>
							<div class="form-group">
								<label for="mc" class="control-label left" style="margin-left:10px;margin-right:10px; " >岗位名称:</label>
								<input type="text" class="form-control left" id="mc" style="width: 200px;" value="" placeholder="不能为空">
								<label for="gwlx" class="control-label left" style="margin-left:30px;margin-right:10px; " >类型:</label>
								<input type="text" class="form-control left" id="gwlx" style="width: 200px;" value="" placeholder="不能为空">
							</div>
							<div class="form-group">
								<label for="zy" class="control-label left" style="margin-left:10px;margin-right:10px; " >专业要求:</label>
								<input type="text" class="form-control left" id="zy" style="width: 200px;">
							</div>
							<div class="form-group">
								<label for="dd" class="control-label left" style="margin-left:10px;margin-right:10px; " >工作地点:</label>
								<input type="text" class="form-control left" id="dd" style="width: 200px;">
							</div>
							<div class="form-group">
								<label for="jyyq" class="control-label left" style="margin-left:10px;margin-right:10px; " >经验要求:</label>
								<input type="text" class="form-control left" id="jyyq" style="width: 200px;">
							</div>
							<div class="form-group">
								<label for="xlyq" class="control-label left" style="margin-left:10px;margin-right:10px; " >学历要求:</label>
								<select class="form-control left" id="xlyq" style="width: 200px;">
									<option value="本科">本科</option>
									<option value="硕士">硕士</option>
								</select>
							</div>
							<div class="form-group">
								<label for="zpsl" class="control-label left" style="margin-left:10px;margin-right:10px; " >招聘数量:</label>
								<input type="text" class="form-control left" id="zpsl" style="width: 200px;">
								<label for="yx" class="control-label left" style="margin-left:30px;margin-right:10px; " >月薪:</label>
								<input type="text" class="form-control left" id="yx" style="width: 200px;">
							</div>
							<div class="form-group">
								<label for="gwjj" class="control-label left" style="margin-left:10px;margin-right:10px; " >岗位简介:</label>
								<textarea rows="3" cols="" class="form-control left" id="gwjj" style="width: 475px;"></textarea>
							</div>
						</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="tj"  data-container="body" data-toggle="popover" data-placement="top">添加</button>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" id="yrdwxxbbh" value="${employers.yrdwxxbbh}"/>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>招聘岗位管理</h1>
			</div>
		</div>
		<hr />

		<div id="xsgw">
			<div  style="overflow: hidden">
				<div style="float: right;">
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#gwxx" id="tjgw" data-whatever="添加岗位">
						添加岗位
					</button>
				</div>
			</div>
			<br>

			<div class="row">
				<table class="table table-striped table-hover">
					<thead bgcolor="antiquewhite">
					<tr>
						<td>
							<label>岗位名称</label>
						</td>
						<td>
							<label>招聘人数</label>
						</td>
						<td>
							<label>岗位类型</label>
						</td>
						<td>
							<label>发布时间</label>
						</td>
						<td>
							<label>需求专业</label>
						</td>
						<td>
							<label>操作</label>
						</td>
					</tr>
					</thead>
					<tbody id="tbody">
					<c:forEach items="${gws}" var="gw">
						<tr>
							<td>${gw.mc}</td>
							<td>${gw.zpsl}</td>
							<td>${gw.gwlx}</td>
							<td>${gw.fbsj}</td>
							<td>${gw.zy}</td>
							<td>
								<button class="btn btn-link btn-sm" zpgwbh="${gw.zpgwbh}" onclick="sc(this)" >删除</button>
								<button class="btn btn-link btn-sm" zpgwbh="${gw.zpgwbh}" onclick="bj(this)" >编辑</button>
							</td>
						</tr>
					</c:forEach>
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
		<div id="bj" class="notshow"></div>

	</div>

</body>
</html>