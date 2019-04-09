<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							href="<%=request.getContextPath()%>/purchase/sell_output_query.jsp"
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
							href="<%=request.getContextPath()%>/sell/sell_sales_output.jsp"
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
								<a href="#" class="list-group-item">管理用户权限</a>
								<a href="#" class="list-group-item">修改密码</a>
							</div>
						</ul>
					</li>
					
				</ul>
			</div>
		</nav>

		<div class="container-fluid" id="cf">
			<ol class="breadcrumb">
				<li>
					<a href="<%=request.getContextPath() %>/zhuye.html">首页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath() %>/customer/querycustomer.jsp">客户资料维护</a>
				</li>
				<li class="active">增加客户</li>
			</ol>
		</div>
		<div class="container">
			<div class="row" id="row1">
				<div class="panel panel-default col-md-6 col-md-offset-3">
					<center>
						<div class="panel-heading" id="welcome"><font size="4"><b>增加客户</b></font></div>
					</center>

					<div class="panel-body">
						<div class="col-md-12">
							<form class="form-horizontal" action="<%=request.getContextPath()%>/customer.action?act=add" method="post">
								<div class="form-group">
									<label class="col-md-3 control-label">公司简称：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="cusname" id="" value="${c.cusname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">公司全称：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="cusallname" value="${c.cusallname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">负责人称谓：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="head" value="${c.head }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">负责人：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="headname" value="${c.headname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">电话：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="tel" value="${c.tel }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">传真：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="fax" value="${c.fax }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">移动电话：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="mobtel" value="${c.mobtel }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">销售员：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="salesman" value="${c.salesman }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">客户地址：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="cusaddress" value="${c.cusaddress }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">送货地址</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="deladdress" value="${c.deladdress }" />
									</div>
								</div>
								<br />
								<div class="col-md-6">
									<input type="submit" value="确认提交" class="btn btn-primary btn-block"/>
								</div>
								<div class="col-md-6">
									<input type="button" value="取消返回" class="btn btn-default btn-block"
				onclick="location.href='<%=request.getContextPath()%>/customer/querycustomer.jsp';" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>