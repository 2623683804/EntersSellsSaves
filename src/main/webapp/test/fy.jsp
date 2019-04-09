<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分页</title>
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

	<table
		class="table table-striped table-bordered table-hover table-condensed"
		id="tab">
		
		
		<tbody>
			<tr class="info">
				<th width="10%">供应商编号</th>
				<th width="10%">供应商名称</th>
				<th width="10%">采购单单号</th>
				<th width="10%">采购日期</th>
				<th width="10%">总金额</th>
				<th width="10%">商品编号</th>
				<th width="10%">商品数量</th>
				<th width="10%">单价</th>
				<th width="20%">操作</th>
			</tr>
			<c:if test="${list != null && list.size()>0 }">
				<c:forEach items="${list }" var="puri">
					<tr>
						<td>${puri.supno }</td>
						<td>${puri.supallname }</td>
						<td>${puri.purinid }</td>
						<td><fmt:formatDate value="${puri.cgdate }"
								pattern="yyyy-MM-dd" /></td>
						<td>${puri.totalamount }</td>
						<td>${puri.comno }</td>
						<td>${puri.amount }</td>
						<td>${puri.unitprice }</td>
						<td><a class=" set btn btn-warning btn-sm" type="button"
							role=button
							href="${pageContext.request.contextPath }/purinput.action?act=update&purinid=${puri.purinid}">
								修改</a> <a class="btn btn-danger btn-sm" type="button" role=button
							href="${pageContext.request.contextPath }/purinput.action?act=delete&purinid=${puri.purinid}"
							onclick="return confirm('您确定要删除吗？')">删除</a></td>
					</tr>

				</c:forEach>
			</c:if>
		</tbody>
	</table>
		
		
		<br /> 
		<center>
		<label>第${page.currentpage}/${page.totalpage}页   共${page.totalrows}条</label> 
		<a href="${pageContext.request.contextPath }/fy.action?act=query" type="button" role=button class=" set btn btn-warning btn-sm">首页</a> 
		<a href="${pageContext.request.contextPath }/fy.action?act=queryNext&currentpage=${page.currentpage-1}"  id="shang" type="button" role=button class=" set btn btn-warning btn-sm">上一页</a>
		<a href="${pageContext.request.contextPath }/fy.action?act=queryNext&currentpage=${page.currentpage+1}"  id="xia" type="button" role=button class=" set btn btn-warning btn-sm">下一页</a>
		<a href="${pageContext.request.contextPath }/fy.action?act=queryEnd" type="button" role=button class=" set btn btn-warning btn-sm">尾页</a> 
		<br/>
		<form action="${pageContext.request.contextPath }/fy.action?act=queryJump" method="post">
			跳转到: <input type="text" style="width: 30px" name="Jumppage" />页 
					<input type="submit"  value="跳转" class=" btn  btn-info"/>
		</form>	
		</center>
</body>
<script type="text/javascript">
$(function() {
	var cur = ${page.currentpage};
	var tot = ${page.totalpage};
	if (cur-1<=0) {
		$("#shang").css("pointer-events", "none");
	}
	if (cur+1>tot) {
		$("#xia").css("pointer-events", "none");
	}
});

</script>
</html>
