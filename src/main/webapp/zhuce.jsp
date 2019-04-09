<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css" />
<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function(){
		$("[name='uname']").blur(function(){
			$.ajax({
				method:"post",
				data:"uname="+$(this).val(),
				url:"<%=request.getContextPath()%>/user.action?act=queryByUname",
						success : function(data) {
											//alert("data=" + data);
						if (data == "true") {//重复
						$("#unameSpan").css("color","red");
						$("#unameSpan").html("用户名已经被使用，请修改。");
						$("[type='submit']").attr("disabled", "true"); //禁用按钮
						} else {
						$("#unameSpan").css("color","green");
						$("#unameSpan").html("用户名可以使用。");
						$("[type='submit']").removeAttr("disabled"); //启用按钮
						}
										}
				});
		});
	})
</script>
</head>

<body>
	<div class="container">
		<div class="row" id="row1"></div>
		<div class="row" id="row2">
			<div class="panel panel-default col-md-6 col-md-offset-3">
				<center>
					<div class="panel-heading" id="welcome">注册页面</div>
				</center>

				<div class="panel-body">
					<div class="col-md-12">
						<form class="form-horizontal"
							action="<%=request.getContextPath()%>/user.action?act=zhuce"
							method="post" id="myForm">
							<div class="form-group">
								<label class="col-md-3 control-label">用户名：</label>
								<div class="col-md-9 has-feedback">
									<input type="text" class="form-control" name="uname"  form="myForm"
										value="${u.uname }" placeholder="username" />
										<span id="unameSpan" style="color: red;"></span>
										 <span class="glyphicon glyphicon-user form-control-feedback"></span>
										
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">输入密码：</label>
								<div class="col-md-9 has-feedback">
									<input type="password" class="form-control" name="pass" form="myForm"
										id="" value="${u.pass }" placeholder="password" /> <span
										class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">手机号码：</label>
								<div class="col-md-9 has-feedback">
									<input type="text" class="form-control" name="phone" id="" form="myForm"
										value="${u.phone }" placeholder="phone" /> <span
										class="glyphicon glyphicon-phone form-control-feedback"></span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-3 control-label">用户类型：</label>
								<div class="col-md-9 has-feedback">
									<select class="form-control" name="ctype" values="${u.ctype }">
										<option>仓库管理员</option>
										<option>销售员</option>
										
									</select> <span class="glyphicon glyphicon-phone form-control-feedback"></span>
								</div>
							</div>
							<br />
							<div class="col-md-6 col-md-offset-0">
								<button type="submit" class="btn btn-default btn-block">注册</button>
							</div>
							<div class="col-md-6">
								<a class="btn btn-default btn-block" href="login.jsp">返回登录</a>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>