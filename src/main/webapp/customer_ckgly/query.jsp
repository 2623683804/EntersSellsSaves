<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 需要先引入标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/maintenancedata.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).on("click", "#delete", function() {
			var cusnos = "";
			var a = document.getElementsByName("cusnos");
			for(var i=0; i<a.length; i++){
				var b = a[i];
				if(b.checked){
					cusnos += b.value+",";						
				}					
			}
			if(cusnos.length > 0){
				cusnos = cusnos.substring(0, cusnos.length-1);
			}
			//alert("salesnos=" + salesnos);
			$.ajax({				
				method:"post",
				//data:"salesno="+$(":checkbox:checked").parent().next().html(),
				data:"cusnos="+cusnos,
				url:"<%=request.getContextPath()%>/customer.action?act=delete",
				success:function(data){
					$(":checkbox:checked").parents('tr').remove()
				}
			});
		})
	})
</script>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="<%=request.getContextPath() %>/zhuye_ckgly.jsp"> <img alt="Brand"
					src="<%=request.getContextPath() %>/img/4305161-201802281415253083.jpg" width="30px">
				</a>
			</div>
			<ul class="nav navbar-nav" id="nav">
				<li class="active"><a href="<%=request.getContextPath() %>/zhuye_ckgly.jsp">Home</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button"> 维护基本资料 <span
						class="caret"></span>
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
			<div class="navbar-form navbar-left">
				<div class="form-group">
					<form action="<%=request.getContextPath()%>/customer.action?act=query1" method="post">
						<input type="text" name="cusno" class="form-control" placeholder="输入客户编号" value="${queryConditions.cusno }" />
						<input type="submit" class="btn btn-success" value="Search" id="submit"/>
					</form>
				</div>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<ol class="breadcrumb">
			<li><a href="<%=request.getContextPath() %>/zhuye_ckgly.jsp">首页</a></li>
			<li class="active">客户资料维护</li>
		</ol>
	</div>
	<div class="row">
		<div class="col-md-12">

			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<tr class="info">
					<td></td>
					<td>客户编号</td>
					<td>公司简称</td>
					<td>公司全称</td>
					<td>负责人称谓</td>
					<td>负责人</td>
					<td>电话</td>
					<td>传真</td>
					<td>移动电话</td>
					<td>销售员</td>
					<td>客户地址</td>
					<td>送货地址</td>
					<td>操作</td>
				</tr>
				<c:if test="${list != null && list.size()>0 }">
					<c:forEach items="${list }" var="c">
						<tr>
							<td><input name="cusnos" type="checkbox" value="${c.cusno }">&nbsp;&nbsp;</td>
							<td>${c.cusno }</td>
							<td>${c.cusname }</td>
							<td>${c.cusallname }</td>
							<td>${c.head }</td>
							<td>${c.headname }</td>
							<td>${c.tel }</td>
							<td>${c.fax }</td>
							<td>${c.mobtel }</td>
							<td>${c.salesman }</td>
							<td>${c.cusaddress }</td>
							<td>${c.deladdress }</td>
							<td width="5%">
								<a href="${pageContext.request.contextPath }/customer.action?act=toUpdate1&cusno=${c.cusno}"class="btn btn-primary">编辑</a>
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-md-1 col-md-offset-5">
			<input type="button" value="添加" class="btn btn-primary btn-block"
				onclick="location.href='<%=request.getContextPath()%>/customer_ckgly/add.jsp';" />
		</div>
		<div class="col-md-1">
			<button type="button" class="btn btn-danger btn-block" id="delete" onclick="return confirm('您确认要删除记录么？')">删除</button>
		</div>
	</div>
</body>

</html>