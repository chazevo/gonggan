<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!-- 이거 있으면 부트스트랩 안먹음 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel='stylesheet' href='http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css'/> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel='stylesheet' href='css/css.css'/> 

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/uploadForm.js"></script>
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$("[data-toggle='tooltip']").tooltip();
	});
</script>
</head>
<body>
	<!--<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">-->
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
						<a href="" class="">UPLOAD</a>
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
	
	<table width="" border="1" align="center">
		<tr>
			<td colspan="4">
				<select id="category" onchange="changeForm();">
					<option value="diary" selected>diary</option>
					<option value="news">news</option>
					<option value="place">place</option>
					<option value="review">review</option>
					<option value="book">book</option>
					<option value="movie">movie</option>
					<option value="music">music</option>
				</select>
			</td>
		</tr>
		<input type="hidden" id="title">
		<tr>
			<td colspan="4">
				<button type="button" data-toggle="collapse" data-target="#tag">태그 추가하기</button>
				<div id="tag" class="collapse">
					<input type="text"><button>확인</button>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<table class="categoryTable diary">
					<tr>
						<td>Contents</td>
						<td><textarea></textarea></td>
						<td>Date</td>
						<td>
							<input type="text" name="toDate" id="toDate" onchange="javascript:changeTitle()">
						</td>
					</tr>
				</table>
				<table class="categoryTable music" style="visibility:hidden">
					<tr>
						<td>title</td>
						<td>
							<input type="text">
						</td>
						<td>artist</td>
						<td>
							<input type="text">
						</td>
						<td><input type="checkbox" checked>&nbsp;유튜브 연결</td>
					</tr>
					<tr>
						<td>contents</td>
						<td><textarea></textarea></td>
						<td>lyrics</td>
						<td><textarea></textarea></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr><td colspan="4"><input type="checkbox">&nbsp;나만보기</td></tr>
		<tr><td colspan="4"><input type="submit" value="업로드"><button>취소</button></td></tr>
	</table>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>







