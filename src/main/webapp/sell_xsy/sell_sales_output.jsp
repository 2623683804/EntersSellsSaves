<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统--销售出库</title>
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
							href="<%=request.getContextPath()%>/purchase_xsy/purchase_input_query.jsp"
							class="list-group-item">采购入库</a> <a
							href="<%=request.getContextPath()%>/purchase_xsy/purchase_return_query.jsp"
							class="list-group-item">采购退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 销售 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a href="<%=request.getContextPath()%>/sell_xsy/sell_output_query.jsp"
							class="list-group-item">销售出库</a> <a
							href="<%=request.getContextPath()%>/sell_xsy/sell_return_query.jsp"
							class="list-group-item">销售退货</a>
					</div>
				</ul></li>
			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button"> 库存 <span class="caret"></span>
			</a>
				<ul class="dropdown-menu">
					<div class="list-group" id="lg">
						<a
							href="<%=request.getContextPath()%>/stock_inquiry_xsy/stock_query.jsp"
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
			<form class="form-inline" name="search" class="search"  method="post"
				action="<%=request.getContextPath()%>/sell.action?act=query1">
			<div class="form-group">
				<label><span class="glyphicon glyphicon-apple"></span>销售出库</label>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-primary" type="button" id="add">增加</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			
			<div class="form-group" id="div_1">
				<input type="text" class="form-control" name="selloutid" placeholder="请输入单号">
				<input type="submit" class="btn  btn-info" value="搜索"  /></div>
			</form>
		</div>
		<!--增加-->
			<div id="div_entering">
				<form action="<%=request.getContextPath()%>/sell.action?act=selladd1"
				method="post">
					<div class="form-group">
						<label>客户编号：</label>
						<input type="text" class="form-control" name="cusno"/>
					</div>
					<div class="form-group">
						<label>客户名称:</label>
						<input type="text" placeholder="请输入客户名称" class="form-control" name="cusname" />
					</div>
					<div class="form-group">
						<label>销售日期:</label>
						<input type="text"  class="form-control" name="salesdate" />
					</div>

					<div class="form-group">
						<label>业务员编号：</label>
						<input type="text"  class="form-control" name="salesmanid" />
					</div>
					<div class="form-group">
						<label>送货地址:</label>
						<input type="text" title="请输入送货地址" class="form-control" name="shaddress" />
					</div>
					<div class="form-group">
						<label>总金额:</label>
						<input type="text" placeholder="请输入总金额" class="form-control" name="totalamount" />
					</div>
					<div class="form-group">
						<label>商品编号:</label>
						<input type="text" placeholder="输入不能超过8位字符" class="form-control" name="comno" />
					</div>
					<div class="form-group">
						<label>商品数量:<label>
						<input type="text"  value="1" class="form-control" name="amount" />
					</div>
					<div class="form-group">
						<label>单价:<label>
						<input type="text" placeholder="请输入单价" class="form-control" name="unitprice"/>
					</div>
					<input type="submit" id="submit" value="录入销售出库单" class="btn btn-success"/>
					<input type="button" value="取消录入" id="cancel" class="btn btn-default"/>
				</form>
			</div>
		<br/>
			<div class="row">
				<table class="table table-striped table-bordered table-hover table-condensed" id="table1">
					<tbody>
					<tr class="info">
						<th width="8%">客户编号</th>
						<th width="8%">客户名称</th>
						<th width="6%">单号</th>
						<th width="8%">销售日期</th>
						<th width="8%">业务员编号</th>
						<th width="13%">送货地址</th>
						<th width="8%">总金额</th>
						<th width="8%">商品编号</th>
						<th width="5%">商品数量</th>
						<th width="8%">单价</th>
						<th width="15%">操作</th>
					</tr>
					<c:if test="${list != null && list.size()>0 }">
						<c:forEach items="${list }" var="sell">
							<tr>
								<td>${sell.cusno }</td>
								<td>${sell.cusname }</td>
								<td>${sell.selloutid }</td>
								<td><fmt:formatDate value="${sell.salesdate }"
										pattern="yyyy-MM-dd" /></td>
								<td>${sell.salesmanid }</td>
								<td>${sell.shaddress }</td>
								<td>${sell.totalamount }</td>
								<td>${sell.comno }</td>
								<td>${sell.amount }</td>
								<td>${sell.unitprice }</td>
								<td><a class=" set btn btn-warning btn-sm" type="button"role=button  
									href="${pageContext.request.contextPath }/sell.action?act=update1&selloutid=${sell.selloutid}">
									修改</a>
									<a class="btn btn-danger btn-sm" type="button" role=button 
									href="${pageContext.request.contextPath }/sell.action?act=delete1&selloutid=${sell.selloutid}"
									onclick="return confirm('您确定要删除吗？')">删除</a>
									
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
					
			
</body>
</html>