<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>销售退货--修改</title>
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
			<div id="div_set">
				<h2>对销售出库单单号为“${sellre.sellreid }”的记录进行修改</h2>
				<form  action="<%=request.getContextPath()%>/sellre.action?act=toUpdate1"
				method="post">
				<input type="hidden" name="sellreid"  value="${sellre.sellreid}"/>
					<div class="form-group">
						<label>客户编号：</label>
						<input type="text" class="form-control" name="cusno" value="${sellre.cusno}"/>
					</div>
					<div class="form-group">
						<label>客户名称:</label>
						<input type="text" placeholder="请输入客户名称" class="form-control" name="cusname" value="${sellre.cusname}"/>
					</div>
					<div class="form-group">
						<label>退货日期:</label>
						<input type="text" class="form-control" name="xthdate" value="<fmt:formatDate value="${sellre.xthdate }"
										pattern="yyyy-MM-dd" />"/>
					</div>
					<div class="form-group">
						<label>总金额:</label>
						<input type="text" placeholder="请输入总金额" class="form-control" name="totalamount"  value="${sellre.totalamount}"/>
					</div>
					<div class="form-group">
						<label>商品编号:</label>
						<input type="text" placeholder="输入不能超过8位字符" class="form-control" name="comno" value="${sellre.comno}"/>
					</div>
					<div class="form-group">
						<label>商品数量:<label>
						<input type="text"  value="1" class="form-control" name="amount" value="${sellre.amount} " />
					</div>
					<div class="form-group">
						<label>单价:<label>
						<input type="text" placeholder="请输入单价" class="form-control" name="unitprice" value="${sellre.unitprice} "/>
					</div>
					<input type="submit" id="submit_01" value="保存"  class="btn btn-success"/>
					<a href="<%=request.getContextPath()%>/sell_xsy/sell_return_query.jsp" id="cancel_01" class="btn btn-default" type="button">取消修改</a>
				</form>
			</div>

</body>
</html>