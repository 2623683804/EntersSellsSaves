<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统--库存查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统--采购入库-修改</title>
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
<body onload="document.search.submit()">
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="<%=request.getContextPath() %>/zhuye_xsy.jsp"> <img alt="Brand"
				src="<%=request.getContextPath()%>/img/4305161-201802281415253083.jpg"
				width="30px">
			</a>
		</div>
		<ul class="nav navbar-nav" id="nav">
			<li class="active"><a href="<%=request.getContextPath() %>/zhuye_xsy.jsp">Home</a></li>
			
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 采购 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/purchase_xsy/purchase_sales_input.jsp"
							class="list-group-item">采购入库</a> <a
							href="<%=request.getContextPath()%>/purchase_xsy/purchase_sales_return.jsp"
							class="list-group-item">采购退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 销售 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/sell_xsy/sell_sales_output.jsp"
							class="list-group-item">销售出库</a> <a
							href="<%=request.getContextPath()%>/sell_xsy/sell_sales_return.jsp"
							class="list-group-item">销售退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 库存 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/stock_inquiry_xsy/stock_inquiry.jsp"
							class="list-group-item">库存查询</a>
					</div>
				</ul></li>
			
				</ul>

		
		<div id="login">
					<a href="<%=request.getContextPath()%>/logout.action" class="btn btn-info navbar-right navbar-btn">退出登录</a>
				</div>
		<form class="form-horizontal navbar-form navbar-right">
					<div class="form-group" id="form1">
						<label class="col-sm-12 control-label">当前登陆用户：${GLOBAL_USER.uname }&nbsp;&nbsp;&nbsp;</label>
					</div>
				</form></div>
	</nav>
	<div class="container" id="containe">
		<div>
		<form class="form-inline" name="search" class="search" method="post"
						action="<%=request.getContextPath()%>/stock.action?act=queryById1">
			<div class="row">
				<div class="col-md-6">
					
						<label>根据库存编号查询库存: </label>
						<input type="text" class="form-control" placeholder="请输入编号" name="comno">
						<button type="submit" class="btn  btn-info">查询</button>
					
				</div>
			
				<div class="col-md-6">
					<label>根据商品名称查询库存：</label>
					<input type="text" class="form-control" placeholder="请输入商品名称" name="comname">
					<button type="submit" class="btn  btn-info">查询</button>
					
				</div>
			</div><br />
			
			<div class="row">
				<div class="col-md-6">
					
						<label>根据最后进货日期查询库存: </label>
						<input type="text" class="form-control" placeholder="2015-02-22" name="cgdate">
						<button type="submit" class="btn  btn-info">查询</button>
					
				</div>
			
				<div class="col-md-6">
					
						<label>根据最后送货日期查询库存: </label>
						<input type="text" class="form-control" placeholder="2015-02-22" name="salesdate">
						<button type="submit" class="btn  btn-info">查询</button>
					
				</div>
		
			</div>
			</form>
		</div>
		<br />
		<div class="row">
			${msg }
			<table
				class="table table-striped table-bordered table-hover table-condensed"
				id="tab">
				<tbody>
					<tr class="info">
						<th width="12%">库存编号</th>
						<th width="12%">当前数量</th>
						<th width="12%">商品名称</th>
						<th width="12%">安全存量</th>
						<th width="12%">最后进货日期</th>
						<th width="12%">最后送货日期</th>
						<th width="14%">建议购买价</th>
						<th width="14">建议销售价</th>
					</tr>
					<c:if test="${list != null && list.size()>0 }">
						<c:forEach items="${list }" var="sto">
							<tr>
								<td>${sto.comno }</td>
								<td>${sto.amount }</td>
								<td>${sto.comname }</td>
								<td>${sto.inventory }</td>
								<td><fmt:formatDate value="${sto.cgdate }"
										pattern="yyyy-MM-dd" /></td>
								<td><fmt:formatDate value="${sto.salesdate }"
										pattern="yyyy-MM-dd" /></td>
								<td>${sto.cgprice }</td>
								<td>${sto.salesprice }</td>
								
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
	<!--container-->
</body>
</html>