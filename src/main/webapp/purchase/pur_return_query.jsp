<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>进销存系统--采购退货</title>
</head>
<body onload="document.search.submit()">
	<form class="form-inline" name="search" class="search" method="post"
		action="<%=request.getContextPath()%>/puroutput.action?act=query">	
		<input type="submit" value="查询采购退货单" class="btn btn-primary" />

		
	</form>
		
</body>
</html>