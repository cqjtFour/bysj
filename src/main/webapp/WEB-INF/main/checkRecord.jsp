<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">

	<head>
		<meta charset="utf-8" />
		<title>审核记录</title>
		<link type="text/css" rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
		<style>
			td {
				text-align: center;
				width: auto;
				white-space: nowrap; /* 自适应宽度*/
			    word-break:  keep-all; /* 避免长单词截断，保持全部 */

			}
			
			.table>tbody>tr>td,
			.table>tbody>tr>th,
			.table>tfoot>tr>td,
			.table>tfoot>tr>th,
			.table>thead>tr>td,
			.table>thead>tr>th{
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
					<h1>审核记录</h1>
				</div>
			</div>
			<hr />
			<div class="row">
				<div class="col-md-12 col-md-offset-1">
					<button type="button" class="btn btn-info">通过</button>
					<button type="button" class="btn btn-info">未通过</button>
					<label class="col-md-offset-4">状态</label>
					<select style="width: 150px;height: 30px;">
						<option value="0">全部</option>
						<option value="1">通过</option>
						<option value="2">未通过</option>
						<option value="3">未审核</option>
					</select>
					<button class="btn btn-primary" style=" height: 30px;">查询</button>

				</div>
			</div>
			<br>

			<div class="row">
				<table class="table table-striped table-hover">
					<thead bgcolor="antiquewhite">
						<tr>
							<td style="width: 70px;">
								<input type="checkbox" value="" />
							</td>
							<td>
								<label>审核号</label>
							</td>
							<td>
								<label>公司名称</label>
							</td>
							<td>
								<label>单位性质</label>
							</td>
							<td>
								<label>所属行业</label>
							</td>
							<td>
								<label>单位规模</label>
							</td>
							<td>
								<label>联系人</label>
							</td>
							<td>
								<label>联系电话	</label>
							</td>
							<td>
								<label>提交时间</label>
							</td>
							<td>
								<label>审核人</label>
							</td>
							<td>
								<label>状态</label>
							</td>
							<td>
								<label>审核时间</label>
							</td>
							<td>
								<label>操作</label>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox" /></td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>THEAD 中</td>
							<td>
								<button class="btn btn-link btn-sm">通过</button>
								<button class="btn btn-link btn-sm">未通过</button>
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