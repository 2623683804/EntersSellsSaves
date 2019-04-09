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
					<a class="navbar-brand" href="<%=request.getContextPath() %>/zhuye_ckgly.jsp">
						<img alt="Brand" src="<%=request.getContextPath() %>/img/4305161-201802281415253083.jpg" width="30px">
					</a>
				</div>
				<ul class="nav navbar-nav" id="nav">
					<li class="active">
						<a href="<%=request.getContextPath() %>/zhuye_ckgly.jsp">Home</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
							维护基本资料
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
					<div class="list-group">
						<a href="<%=request.getContextPath()%>/salesman_ckgly/querysalesman.jsp"
							class="list-group-item">基本资料维护</a> <a
							href="<%=request.getContextPath()%>/commodity_ckgly/querycommodity.jsp"
							class="list-group-item">商品资料维护</a> <a
							href="<%=request.getContextPath()%>/customer_ckgly/querycustomer.jsp"
							class="list-group-item">客户资料维护</a> <a
							href="<%=request.getContextPath()%>/supplier_ckgly/querysupplier.jsp"
							class="list-group-item">供应商资料维护</a>
					</div>
				</ul></li>
			
				</ul>
			</div>
		</nav>

		<div class="container-fluid" id="cf">
			<ol class="breadcrumb">
				<li>
					<a href="<%=request.getContextPath() %>/zhuye_ckgly.html">首页</a>
				</li>
				<li>
					<a href="<%=request.getContextPath() %>/supplier_ckgly/querysupplier.jsp">供应商资料维护</a>
				</li>
				<li class="active">增加供应商</li>
			</ol>
		</div>
		<div class="container">
			<div class="row" id="row1">
				<div class="panel panel-default col-md-6 col-md-offset-3">
					<center>
						<div class="panel-heading" id="welcome"><font size="4"><b>增加供应商</b></font></div>
					</center>

					<div class="panel-body">
						<div class="col-md-12">
							<form class="form-horizontal" action="<%=request.getContextPath()%>/supplier.action?act=add1" method="post">
								<div class="form-group">
									<label class="col-md-3 control-label">供应商简称：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="supname" id="" value="${s.supname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">供应商全称：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="supallname" value="${s.supallname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">负责人称谓：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="head" value="${s.head }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">负责人姓名：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="headname" value="${s.headname }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">电话：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="tel" value="${s.tel }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">传真：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="fax" value="${s.fax }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">移动电话：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="mobtel" value="${s.mobtel }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">供应商地址：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="address" value="${s.address }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">工厂地址：</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="facaddress" value="${s.facaddress }" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-3 control-label">最后进货日</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="importdate" value="${s.importdate }" />
									</div>
								</div>
								<br />
								<div class="col-md-6">
									<input type="submit" value="确认提交" class="btn btn-primary btn-block"/>
								</div>
								<div class="col-md-6">
									<input type="button" value="取消返回" class="btn btn-default btn-block"
				onclick="location.href='<%=request.getContextPath()%>/supplier_ckgly/querysupplier.jsp';" />
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>