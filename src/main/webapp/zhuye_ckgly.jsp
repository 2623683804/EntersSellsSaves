<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>主页</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/boot01.css" />
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		
	</head>

	<body>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">
						<img alt="Brand" src="img/4305161-201802281415253083.jpg" width="30px">
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
								<a href="<%=request.getContextPath() %>/salesman_ckgly/querysalesman.jsp" class="list-group-item">销售员资料维护</a>
								<a href="<%=request.getContextPath() %>/commodity_ckgly/querycommodity.jsp" class="list-group-item">商品资料维护</a>
								<a href="<%=request.getContextPath() %>/customer_ckgly/querycustomer.jsp" class="list-group-item">客户资料维护</a>
								<a href="<%=request.getContextPath() %>/supplier_ckgly/querysupplier.jsp" class="list-group-item">供应商资料维护</a>
							</div>
						</ul>
					</li>
				</ul>

				<div id="login">
					<a href="<%=request.getContextPath()%>/logout.action" class="btn btn-info navbar-right navbar-btn">退出登录</a>
				</div>
				
				<form class="form-horizontal navbar-form navbar-right">
					<div class="form-group" id="form1">
						<label class="col-sm-12 control-label">当前登陆用户：${GLOBAL_USER.uname }&nbsp;&nbsp;&nbsp;</label>
					</div>
				</form>

			</div>
		</nav>

		<div class="container" id="cf">
			<div class="row">
				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="img/1-16112Q40FDQ.jpg" alt="...">
								<div class="carousel-caption">
									...
								</div>
							</div>
							<div class="item">
								<img src="img/1-16112Q40A5G1.jpg" alt="...">
								<div class="carousel-caption">
									...
								</div>
							</div>
							<div class="item">
								<img src="img/1-16112Q2214c52.jpg" alt="...">
								<div class="carousel-caption">
									...
								</div>
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<br />
			<div class="row ">
				<div class="col-md-12" align="center">
					<h1><font color="red" face="微软雅黑">企业动态</font></h1>
					<h3>————————</h3>
					<h3>COMPANY NEWS</h3>
				</div>
				<br /><br /><br /><br />
				<div class="col-md-6">
					<img src="img/new.png" class="img-rounded" alt="" width="560px" />
				</div>
				<div class="col-md-6">
					<img src="img/b2.jpg" class="img-rounded" alt="" width="560px" />
				</div>
			</div>
		</div>

		<br />

		<div class="container">
			<div class="row">
				<div class="col-md-12" align="center">
					<h1><font color="red" face="微软雅黑">本周报表</font></h1>
					<h3>————————</h3>
					<h3>WEEKLY REPORT</h3>
				</div>
				<div class="col-sm-6 col-md-3 ">
					<div class="thumbnail ">
						<img src="img/t01bf21e9c421006b93.jpg " alt="... ">
						<div class="caption ">
							<h3>销售</h3>
							<p>HBuilder support HTML5+ specification，HTML5+ is anenhanced HTML5 extensions defined by the HTML5 Industry Alliance</p>
							<p>
								<a href="# " class="btn btn-primary " role="button ">查看详情</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 ">
					<div class="thumbnail ">
						<img src="img/t01fcc79253246a34ad.jpg" alt="... ">
						<div class="caption ">
							<h3>市场</h3>
							<p>HBuilder support HTML5+ specification，HTML5+ is anenhanced HTML5 extensions defined by the HTML5 Industry Alliance</p>
							<p>
								<a href="# " class="btn btn-primary " role="button ">查看详情</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 ">
					<div class="thumbnail ">
						<img src="img/timg (1).jpg" alt="... ">
						<div class="caption ">
							<h3>设计</h3>
							<p>HBuilder support HTML5+ specification，HTML5+ is anenhanced HTML5 extensions defined by the HTML5 Industry Alliance</p>
							<p>
								<a href="# " class="btn btn-primary " role="button ">查看详情</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 ">
					<div class="thumbnail ">
						<img src="img/timg (7).jpg" alt="... ">
						<div class="caption ">
							<h3>技术</h3>
							<p>HBuilder support HTML5+ specification，HTML5+ is anenhanced HTML5 extensions defined by the HTML5 Industry Alliance</p>
							<p>
								<a href="# " class="btn btn-primary " role="button ">查看详情</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<center>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<br />
					<font color="white">Copyright © 2006-2017 clantrip.com All Rights Reversed. 京ICP备16015317号</font>
				</div>
			</nav>
		</center>
	</body>

</html>