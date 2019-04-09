<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/addsalesman.css" />
		<script src="<%=request.getContextPath() %>/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>

	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="<%=request.getContextPath() %>/zhuye_gly.jsp">
						<img alt="Brand" src="<%=request.getContextPath() %>/img/4305161-201802281415253083.jpg" width="30px">
					</a>
				</div>
				<ul class="nav navbar-nav" id="nav">
					<li class="active">
						<a href="../zhuye.jsp">Home</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
							维护基本资料
							<span class="caret"></span>
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

		<div class="container-fluid" id="cf">
			<ol class="breadcrumb">
				<li>
					<a href="<%=request.getContextPath() %>/zhuye.html">首页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath() %>/commodity/querycommodity.jsp">商品资料维护</a>
				</li>
				<li class="active">修改商品资料</li>
			</ol>
		</div>
		<div class="container">
			<div class="row" id="row1">
				<div class="panel panel-default col-md-6 col-md-offset-3">
					<center>
						<div class="panel-heading" id="welcome"><font size="4"><b>修改商品资料</b></font></div>
					</center>

					<div class="panel-body">
						<div class="col-md-12">
							<form class="form-horizontal" action="<%=request.getContextPath()%>/commodity.action?act=update" method="post">
								<input type="hidden" name="comno" value="${c.comno }"/>
								<div class="form-group">
									<label class="col-md-3 control-label">商品名称：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="comname" value="${c.comname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">安全存量：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="inventory" id="" value="${c.inventory }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">当前数量：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="amount" value="${c.amount }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">建议采购价：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="cgprice" value="${c.cgprice }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">建议销售价：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="salesprice" value="${c.salesprice }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">最后采购日：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="cgdate" value="<fmt:formatDate value="${c.cgdate }" pattern="yyyy-MM-dd"/>" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">最后销售日：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="salesdate" value="<fmt:formatDate value="${c.salesdate }" pattern="yyyy-MM-dd"/>" />
									</div>
								</div>
								<br />
								<div class="col-md-6">
									<input type="submit" value="确认修改" class="btn btn-primary btn-block"/>
								</div>
								<div class="col-md-6">
									<input type="button" value="取消返回" class="btn btn-default btn-block" onclick="location.href='<%=request.getContextPath()%>/comodity/querycommodity.jsp';" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>