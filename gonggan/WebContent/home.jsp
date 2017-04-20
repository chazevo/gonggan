<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css'/> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel='stylesheet' href='css/css.css'/> 

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
		<!--<div class="container-fluid">--><div>
		<!-- container-fluid : 화면 너비가 resize 되더라도 화면에 가득 참  -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#menu">
				<span class="sr-only">Toggle navigation</span> Menu <i class="menu"></i>
				<!-- sr-only : 숨김 -->
				</button>
				<a class="navbar-brand page-scroll" href="#">
				<img src="images/default.png" width="40" height="40"
							class="img-circle" align="left">&nbsp;
				chazevo 님</a>
				<a href="control.jsp" class="" data-toggle="tooltip" data-original-title="설정">
				<img src="images/cog-512.png" width="20px"></a>
			</div>
			<div class="collapse navbar-collapse" id="menu">
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="uploadform.jsp" class="">UPLOAD</a>
					</li>
					<li>
						<a href="">movie</a>
					</li>
					<li>
						<a href="">diary</a>
					</li>
					<li>
						<a href="#">book</a>
					</li>
					<li>
						<a href="#">review</a>
					</li>
					<li>
						<a href="">place</a>
					</li>
					<li>
						<a href="">music</a>
					</li>
					<li>
						<a href="">news</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1><a href="home.jsp">지승이의 블로그</a></h1><hr>
				<p style="color:gray"> Hello </p>
			</div>
		</div>
	</header>
</body>
</html>