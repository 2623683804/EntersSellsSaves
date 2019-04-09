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
			var comnos = "";
			var a = document.getElementsByName("comnos");
			for(var i=0; i<a.length; i++){
				var b = a[i];
				if(b.checked){
					comnos += b.value+",";						
				}					
			}
			if(comnos.length > 0){
				comnos = comnos.substring(0, comnos.length-1);
			}
			//alert("salesnos=" + salesnos);
			$.ajax({				
				method:"post",
				//data:"salesno="+$(":checkbox:checked").parent().next().html(),
				data:"comnos="+comnos,
				url:"<%=request.getContextPath()%>/commodity.action?act=delete",
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
					<form action="<%=request.getContextPath()%>/commodity.action?act=query1" method="post">
						<input type="text" name="comnno" class="form-control" placeholder="输入商品编号" value="${queryConditions.comnno }" />
						<input type="submit" class="btn btn-success" value="Search" id="submit"/>
					</form>
				</div>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<ol class="breadcrumb">
			<li><a href="<%=request.getContextPath() %>/zhuye_ckgly.jsp">首页</a></li>
			<li class="active">商品资料维护</li>
		</ol>
	</div>
	<div class="row">
		<div class="col-md-12">

			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<tr class="info">
					<td></td>
					<td>商品编号</td>
					<td>商品名称</td>
					<td>安全存量</td>
					<td>当前数量</td>
					<td>建议采购价</td>
					<td>建议销售价</td>
					<td>最后采购日</td>
					<td>最后销售日</td>
					<td>操作</td>
				</tr>
				<c:if test="${list != null && list.size()>0 }">
					<c:forEach items="${list }" var="c">
						<tr>
							<td><input name="comnos" type="checkbox" value="${c.comno }">&nbsp;&nbsp;</td>
							<td>${c.comno }</td>
							<td>${c.comname }</td>
							<td>${c.inventory }</td>
							<td>${c.amount }</td>
							<td>${c.cgprice }</td>
							<td>${c.salesprice }</td>
							<td><fmt:formatDate value="${c.cgdate }" pattern="yyyy-MM-dd"/></td>
							<td><fmt:formatDate value="${c.salesdate }" pattern="yyyy-MM-dd"/></td>
							<td width="5%">
								<a href="${pageContext.request.contextPath }/commodity.action?act=toUpdate1&comno=${c.comno}"class="btn btn-primary">编辑</a>
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
				onclick="location.href='<%=request.getContextPath()%>/commodity_ckgly/add.jsp';" />
		</div>
		<div class="col-md-1">
			<button type="button" class="btn btn-danger btn-block" id="delete" onclick="return confirm('您确认要删除记录么？')">删除</button>
		</div>
	</div>
</body>

</html>