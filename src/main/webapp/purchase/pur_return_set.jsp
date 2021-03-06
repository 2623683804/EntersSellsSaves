<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统-采购退货-修改</title>
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
			<a class="navbar-brand" href="<%=request.getContextPath() %>/zhuye_gly.jsp"> <img alt="Brand"
				src="<%=request.getContextPath()%>/img/4305161-201802281415253083.jpg"
				width="30px">
			</a>
		</div>
		<ul class="nav navbar-nav" id="nav">
			<li class="active"><a href="<%=request.getContextPath() %>/zhuye_gly.jsp">Home</a></li>
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
						<a
							href="<%=request.getContextPath()%>/sell/sell_output_query.jsp"
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
								<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
							维护系统
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<div class="list-group" id="lg">
								<a href="<%=request.getContextPath()%>/user/UDate.jsp" class="list-group-item">维护用户资料</a>
								<a href="<%=request.getContextPath()%>/user/powerQuery.jsp" class="list-group-item">管理用户权限</a>
								
							</div>
						</ul>
					</li>
					
				</ul>

		
		<div id="login">
					<a href="<%=request.getContextPath()%>/logout.action" class="btn btn-info navbar-right navbar-btn">退出登录</a>
				</div>
		<form class="form-horizontal navbar-form navbar-right">
					<div class="form-group" id="form1">
						<label class="col-sm-12 control-label">当前登陆用户：${GLOBAL_USER.uname }&nbsp;&nbsp;&nbsp;</label>
					</div>
				</form>
	</div>
	</nav>
	${msg }
	<div class="container" id="containe">
		<!--修改-->
		<div id="div_set">
			<h2>对采购入库单号为"${purr.puroutid}" 的记录进行修改</h2>
			<form method="post" 
				action="${pageContext.request.contextPath }/puroutput.action?act=toUpdate">
				<input type="hidden" name="puroutid"  value="${purr.puroutid }"/>
				<div class="form-group">
					<label>供应商编号:</label> <input type="text" placeholder="1001"
						name="supno" class="form-control" value="${purr.supno} " />
				</div>
				<div class="form-group">
					<label>供应商名称:</label> <input type="text" placeholder="请输入供应商名称"
						name="supallname" class="form-control" value="${purr.supallname} "/>
				</div>
				<div class="form-group">
					<label>采购日期:</label> <input type="text" placeholder="2015-02-03"
						name="thdate" class="form-control" value="<fmt:formatDate value="${purr.thdate }"
										pattern="yyyy-MM-dd" />"/>
				</div>
				<div class="form-group">
					<label>总金额:</label> <input type="text" placeholder="请输入总金额"
						name="totalamount" class="form-control" value="${purr.totalamount} "/>
				</div>
				<div class="form-group">
					<label>商品编号:</label> <input type="text" placeholder="1001"
						name="comno" class="form-control" value="${purr.comno} "/>
				</div>
				<div class="form-group">
					<label>单价:<label> <input type="text" value="${purr.unitprice} "
							name="unitprice" placeholder="请输入单价" class="form-control" />
				</div>
				<input type="submit" id="submit_02" value="保存"
					class="btn btn-success" /> 
					<a href="<%=request.getContextPath()%>/purchase/pur_return_query.jsp" id="cancel_01" class="btn btn-default" type="button">取消修改</a>
			</form>
		</div>

	</div>
	<!--container-->
</body>
</html>