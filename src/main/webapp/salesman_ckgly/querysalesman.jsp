<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>

<body onload="document.form1.submit()">
	
	<form action="<%=request.getContextPath()%>/salesman.action?act=query1" method="post" name="form1">
		<input type="text" name="salesno" class="form-control"
			placeholder="输入销售员编号" value="${queryConditions.salesno }" />
	</form>
</body>

</html>