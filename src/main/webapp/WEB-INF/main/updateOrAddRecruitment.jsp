<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>新增/修改岗位信息</title>
		<link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	</head>

	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>修改/添加岗位信息</h1>
				</div>
			</div>
			<hr />
			<div class="row">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="gwmc" class="col-sm-2 control-label">岗位名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" style="width: 200px;" placeholder="请输入" id="gwmc">
						</div>
					</div>
					<div class="form-group">
						<label for="gwlx" class="col-sm-2 control-label">岗位类型</label>
						<div class="col-sm-10">
							<select id="gwlx" style="width: 200px;" class="form-control">
								<option value="0">测试</option>
								<option value="1">开发</option>
								<option value="2">运维</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="gzdd" class="col-sm-2 control-label">工作地点</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="gzdd"  style="width: 200px;">
						</div>
					</div>
					<div class="form-group">
						<label for="xqzz" class="col-sm-2 control-label">需求专业</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="xqzz" style="width: 200px;">
						</div>
					</div>
					<div class="form-group">
						<label for="xlyq" class="col-sm-2 control-label">学历要求</label>
						<div class="col-sm-10">
							<select id="xlyq" style="width: 200px;" class="form-control">
								<option value="0">专科</option>
								<option value="1">本科</option>
								<option value="2">硕士</option>
								<option value="3">博士</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="zprs" class="col-sm-2 control-label">招聘人数</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="zprs" placeholder="请输入数字" style="width: 200px;">
						</div>
					</div>
					<div class="form-group">
						<label for="xzdy" class="col-sm-2 control-label">薪资待遇</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="xzdy" style="width: 200px;">
						</div>
					</div>
					<div class="form-group">
						<label for="xzdy" class="col-sm-2 control-label">岗位简介</label>
						<div class="col-sm-10">
							<textarea class="form-control" style="width: 200px;height: 100px;"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">确定提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>

	</body>

</html>