<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统--采购入库</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/pur-sa.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/purchase-sales-input.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand"
				href="<%=request.getContextPath()%>/zhuye_gly.jsp"> <img
				alt="Brand"
				src="<%=request.getContextPath()%>/img/4305161-201802281415253083.jpg"
				width="30px">
			</a>
		</div>
		<ul class="nav navbar-nav" id="nav">
			<li class="active"><a
				href="<%=request.getContextPath()%>/zhuye_gly.jsp">Home</a></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 维护基本资料 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/salesman/querysalesman.jsp"
							class="list-group-item">基本资料维护</a> <a
							href="<%=request.getContextPath()%>/commodity/querycommodity.jsp"
							class="list-group-item">商品资料维护</a> <a
							href="<%=request.getContextPath()%>/customer/querycustomer.jsp"
							class="list-group-item">客户资料维护</a> <a
							href="<%=request.getContextPath()%>/supplier/querysupplier.jsp"
							class="list-group-item">供应商资料维护</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 采购 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/purchase/pur_input_query.jsp"
							class="list-group-item">采购入库</a> <a
							href="<%=request.getContextPath()%>/purchase/pur_return_query.jsp"
							class="list-group-item">采购退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 销售 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a href="<%=request.getContextPath()%>/sell/sell_output_query.jsp"
							class="list-group-item">销售出库</a> <a
							href="<%=request.getContextPath()%>/sell/sell_return_query.jsp"
							class="list-group-item">销售退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 库存 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/stock_inquiry/stock_query.jsp"
							class="list-group-item">库存查询</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 维护系统 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a href="<%=request.getContextPath()%>/user/update.jsp"
							class="list-group-item">维护用户资料</a> <a
							href="<%=request.getContextPath()%>/user/power_Query.jsp"
							class="list-group-item">管理用户权限</a>

					</div>
				</ul></li>
			
		</ul>

		<div id="login">
			<a href="<%=request.getContextPath()%>/logout.action"
				class="btn btn-info navbar-right navbar-btn">退出登录</a>
		</div>
		<form class="form-horizontal navbar-form navbar-right">
			<div class="form-group" id="form1">
				<label class="col-sm-12 control-label">当前登陆用户：${GLOBAL_USER.uname }&nbsp;&nbsp;&nbsp;</label>
			</div>
		</form>

	</div>
	</nav>
	<div class="container" id="containe">
		<div>
			<form class="form-inline" name="search" class="search" id="myForm"
				method="post"
				action="<%=request.getContextPath()%>/purinput.action?act=query2">
				<div class="form-group">
					<label><span class="glyphicon glyphicon-apple"></span>采购入库</label>
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-primary" type="button" id="add">增加</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<div class="form-group" id="div_1">
					<input type="text" class="form-control" name="purinid"
						placeholder="请输入单号"> <input type="submit"
						class="btn  btn-info" value="搜索" />
				</div>
			</form>
		</div>
		<!--增加-->
		<div id="div_entering">
			<form
				action="<%=request.getContextPath()%>/purinput.action?act=purinputadd"
				method="post">
				<div class="form-group">
					<label>供应商编号:</label> <input type="text" placeholder="1001"
						name="supno" class="form-control" />
				</div>
				<div class="form-group">
					<label>供应商名称:</label> <input type="text" placeholder="请输入供应商名称"
						name="supallname" class="form-control" />
				</div>
				<div class="form-group">
					<label>采购日期:</label> <input type="date" placeholder="2015-02-03"
						name="cgdate" class="form-control" />
				</div>
				<div class="form-group">
					<label>总金额:</label> <input type="text" placeholder="请输入总金额"
						name="totalamount" class="form-control" />
				</div>
				<div class="form-group">
					<label>商品编号:</label> <input type="text" placeholder="1001"
						name="comno" class="form-control" />
				</div>
				<div class="form-group">
					<label>商品数量:<label> <input type="text"
							name="amount" placeholder="2000" class="form-control" />
				</div>
				<div class="form-group">
					<label>单价:<label> <input type="text"
							name="unitprice" placeholder="请输入单价" class="form-control" />
				</div>
				<input type="submit" value="录入采购入库单" class="btn btn-success" /> <input
					type="button" value="取消录入" id="cancel" class="btn btn-default" />
			</form>
		</div>

		<br />
		<div class="row">
			
			<table
				class="table table-striped table-bordered table-hover table-condensed"
				id="tab">
				<tbody>
					<tr class="info">
						<th width="10%">供应商编号</th>
						<th width="10%">供应商名称</th>
						<th width="10%">采购单单号</th>
						<th width="10%">采购日期</th>
						<th width="10%">总金额</th>
						<th width="10%">商品编号</th>
						<th width="10%">商品数量</th>
						<th width="10%">单价</th>
						<th width="20%">操作</th>
					</tr>
					<c:if test="${list != null && list.size()>0 }">
						<c:forEach items="${list }" var="puri">
							<tr>
								<td>${puri.supno }</td>
								<td>${puri.supallname }</td>
								<td>${puri.purinid }</td>
								<td><fmt:formatDate value="${puri.cgdate }"
										pattern="yyyy-MM-dd" /></td>
								<td>${puri.totalamount }</td>
								<td>${puri.comno }</td>
								<td>${puri.amount }</td>
								<td>${puri.unitprice }</td>
								<td><a class=" set btn btn-warning btn-sm" type="button"
									role=button
									href="${pageContext.request.contextPath }/purinput.action?act=update&purinid=${puri.purinid}">
										修改</a> <a class="btn btn-danger btn-sm" type="button" role=button
									href="${pageContext.request.contextPath }/purinput.action?act=delete&purinid=${puri.purinid}"
									onclick="return confirm('您确定要删除吗？')">删除</a></td>
							</tr>

						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<br /> 
			<center>
			<label>第${page.currentpage}/${page.totalpage}页   共${page.totalrows}条</label> 
			<a href="${pageContext.request.contextPath }/purinput.action?act=query" type="button" role=button class=" set btn btn-warning btn-sm">首页</a> 
			<a href="${pageContext.request.contextPath }/purinput.action?act=queryNext&currentpage=${page.currentpage-1}"  id="shang" type="button" role=button class=" set btn btn-warning btn-sm">上一页</a>
			<a href="${pageContext.request.contextPath }/purinput.action?act=queryNext&currentpage=${page.currentpage+1}"  id="xia" type="button" role=button class=" set btn btn-warning btn-sm">下一页</a>
			<a href="${pageContext.request.contextPath }/purinput.action?act=queryEnd" type="button" role=button class=" set btn btn-warning btn-sm">尾页</a> 
			<br/>
			<form action="${pageContext.request.contextPath }/purinput.action?act=queryJump" method="post">
				跳转到: <input type="text" style="width: 30px" name="Jumppage" />页 
						<input type="submit"  value="跳转" class=" btn  btn-info"/>
			</form>	
			</center>
		</div>
	</div>
	<!--container-->
</body>
<script type="text/javascript">
$(function() {
	var cur = ${page.currentpage};
	var tot = ${page.totalpage};
	if (cur-1<=0) {
		$("#shang").css("pointer-events", "none");
	}
	if (cur+1>tot) {
		$("#xia").css("pointer-events", "none");
	}
});

</script>
</html>