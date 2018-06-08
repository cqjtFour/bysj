<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8" />
		<title>审核记录</title>
		<link href="css/headfooter.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="css/gray.css" title="styles1" media="screen"/>
		<link href="css/advice.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css"/>
		<!--script-->
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/x-javascript" src="js/paging_1.js"></script>
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
					<label class="col-md-offset-4">状态</label>
					<select id="ztselect" style="width: 150px;height: 30px;">
						<option value="-1">全部</option>
						<option value="1">通过</option>
						<option value="2">未通过</option>
						<option value="0">未审核</option>
					</select>
					<button onclick="ztcx()" class="btn btn-primary" style=" height: 30px;">查询</button>
					<script type="text/javascript">
						function ztcx() {
							var zt=$("#ztselect").val();
                            window.location.href="/checkRecord?shzt="+zt;
                        }
					</script>
				</div>
			</div>
			<br>

			<div class="row">
				<table class="table table-striped table-hover">
					<thead bgcolor="antiquewhite">
						<tr>
							<td>
								<label>公司名称</label>
							</td>
							<td>
								<label>单位性质</label>
							</td>
							<td>
								<label>组织结构代码</label>
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
								<label>电子邮箱	</label>
							</td>
							<td>
								<label>提交时间</label>
							</td>
							<td>
								<label>状态</label>
							</td>
							<td>
								<label>审核人</label>
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
						<c:forEach items="${pageInfo.list }" var="cr">
							<tr>
								<td >${cr.employers.dwmc }</td>
								<td>${cr.employers.dwxz }</td>
								<td>${cr.employers.zzjgdm }</td>
								<td>${cr.employers.sshy }</td>
								<td>${cr.employers.dwgm }</td>
								<td>${cr.employers.dwlxr }</td>
								<td>${cr.employers.lxrdh }</td>
								<td>${cr.employers.dzyx }</td>
								<td>${cr.tjsj }</td>

								<c:if test="${cr.shzt==0}">
									<td>未审核</td>
									<td>无</td>
									<td>无</td>
								</c:if>
								<c:if test="${cr.shzt==1}">
									<td>已通过</td>
									<td>${cr.employmentDepartment.rymc }</td>
									<td>${cr.shsj }</td>
								</c:if>
								<c:if test="${cr.shzt==2}">
									<td>未通过</td>
									<td>${cr.employmentDepartment.rymc }</td>
									<td>${cr.shsj }</td>
								</c:if>
								<c:if test="${cr.shzt==0}">
									<td>
										<button id="${cr.yrdwxxshbbh }" dlzh="${cr.employers.dlzh }" onclick="agree(this)" class="btn btn-success btn-sm">通过审核</button>
										<button id="${cr.yrdwxxshbbh }" dlzh="${cr.employers.dlzh }" onclick="disagree(this)" class="btn btn-warning btn-sm">驳回审核</button>
									</td>
								</c:if>
								<c:if test="${cr.shzt==1||cr.shzt==2}">
									<td>
										<button  class="btn btn-success btn-sm" disabled>通过审核</button>
										<button  class="btn btn-warning btn-sm" disabled>驳回审核</button>
									</td>
								</c:if>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<script type="text/javascript">
				function agree(Obj) {
					$.ajax({
					    url: "/checkRecord/changeStatus",
						type: "post",
						dataType: "json",
						data:{
					        "yrdwxxshbbh":$(Obj).attr("id"),
                            "dwdlzh":$(Obj).attr("dlzh"),
							"shzt": 1
						},
                        success:function (result) {
                            if (result.status == "success"){
                                location.reload(true);
                            }else {
                                alert(result.status);
							}
                        }
					})
                };

				function disagree(Obj) {
                    $.ajax({
                        url: "/checkRecord/changeStatus",
                        type: "post",
                        dataType: "json",
                        data:{
                            "yrdwxxshbbh":$(Obj).attr("id"),
							"dwdlzh":$(Obj).attr("dlzh"),
                            "shzt": 2
                        },
                        success:function (result) {
                            if (result.status == "success"){
                                location.reload(true);
                            }else {
                                alert(result.status);
                            }
                        }
                    })
                };
			</script>
			<div class="page" id="page"></div>
			<script type="text/javascript">
				$("#ztselect").val(${shzt })
                $('#page').paging({
                    webPage:"/checkRecord?shzt="+$("#ztselect").val(),
                    parameter:"/checkRecordToPage?shzt="+$("#ztselect").val(),
                    initPageNo: ${pageInfo.pageNum}, // 初始页码
                    totalPages: ${pageInfo.pages}, //总页数
                    pageNo:${pageInfo.pageNum},
					/*totalCount: '合计' + setTotalCount + '条数据', // 条目总数*/
                    slideSpeed: 600, // 缓动速度。单位毫秒
                    jump: true, //是否支持跳转
                    callback: function(page) { // 回调函数
                        console.log(page);
                    }
                })
                window.onload = function(){
                    var obj_lis = document.getElementById("pageSelect").getElementsByTagName("li");
                    for(var i=0;i < obj_lis.length;i++){
                        obj_lis[i].onclick = function(){
                            var j = parseInt(this.innerHTML);
                            $.ajax({
                                url:"/checkRecordToPage",
                                type:"GET",
                                dataType:"json",
                                data:{
									"shzt":$("#ztselect").val(),
                                    "page":i
                                },
                                success:function (result) {
                                    if (result.status == "success"){
                                        window.location.href="/checkRecord"+"?page="+j+"&shzt="+$("#ztselect").val();
                                    }
                                }
                            })
                        }
                    }
                }
			</script>
		</div>

	</body>

</html>