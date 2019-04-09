<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>无标题页</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css" />
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js" ></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js" ></script>
		
	</head>

	<body class="mian_bj">
		<div class="mian_top_01">
			<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">
						<img alt="Brand" src="img/4305161-201802281415253083.jpg" width="30px">
					</a>
				</div>
				<ul class="nav navbar-nav" id="nav">
					<li class="active">
						<a href="<%=request.getContextPath() %>/zhuye_gly.jsp">Home</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">
							维护基本资料
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<div class="list-group">
								<a href="<%=request.getContextPath() %>/salesman/querysalesman.jsp" class="list-group-item">销售员资料维护</a>
								<a href="<%=request.getContextPath() %>/commodity/querycommodity.jsp" class="list-group-item">商品资料维护</a>
								<a href="<%=request.getContextPath() %>/customer/customer.jsp" class="list-group-item">客户资料维护</a>
								<a href="<%=request.getContextPath() %>/supplier/supplier.jsp" class="list-group-item">供应商资料维护</a>
							</div>
						</ul>
					</li>
					
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
								<a href="<%=request.getContextPath()%>/user/update.jsp" class="list-group-item">维护用户资料</a>
								<a href="<%=request.getContextPath()%>/user/power_Query.jsp" class="list-group-item">管理用户权限</a>
								
							</div>
						</ul>
					</li>
					
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="search" />
					</div>
					<button type="submit" class="btn btn-success">Search</button>
				</form>

				<form class="form-horizontal navbar-form navbar-left">
					<div class="form-group" id="form1">
						<label class="col-sm-10 control-label">当前登陆用户：${GLOBAL_USER.uname }</label>
					
					</div>
				</form>

				<div id="login">
					<a href="<%=request.getContextPath()%>/logout.action" class="btn btn-info navbar-right navbar-btn">退出登录</a>
				</div>
			</div>
		</nav>
				<div class="mian_b">

					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label >用户姓名：${u.uname }</label>	
								</div>
								<form class="form-horizontal" action="<%=request.getContextPath()%>/user.action?act=update1" method="post" id="myForm">
								<input type="hidden" name="id" value="${u.id }" />
								
									
									<div class="form-group">
										<label class="col-md-2 control-label" >用户身份</label>
										<div class="col-md-10">
											<select class="form-control" name="ctype" values="${u.ctype }">
												<option>仓库管理员</option>
												<option>销售员</option>
												<option>管理员</option>
											</select>
										</div>
									</div>
										<div class="row">
								<div class="col-md-6 ">
									<button type="submit" class="btn btn-primary btn-block" form="myForm">修改</button>
								</div>
								<div class="col-md-6">
									<a type="button" class="btn btn-default btn-block" href="<%=request.getContextPath()%>/user/power_Query.jsp">返回</a>
								</div>
							</div>
								</form>

							</div>
						</div>
					</div>

				</div>
				
			

		</div>
		</div>
	</body>

</html>
