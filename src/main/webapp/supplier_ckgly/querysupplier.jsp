<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>

<body onload="document.form1.submit()">
	<form action="<%=request.getContextPath()%>/supplier.action?act=query1" method="post" name="form1">
		<input type="text" name="supno" class="form-control" placeholder="输入销售员编号" value="${queryConditions.supno }" />
	</form>
</body>

</html>