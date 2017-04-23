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
<script src="js/home.js"></script>
<script type="text/javascript">
	window.onload = function() {
		//requestList();
		$("#loginUser").click(function() {
			if ($("#loginUserDetail").hasClass("hidden")) {
				$("#loginUserDetail").removeClass("hidden");
				$("#loginUserDetail").show();
				}
			else {
				$("#loginUserDetail").addClass("hidden");
				$("#loginUserDetail").hide();
			}
		});
	}
</script>
</head>
<body>
	<nav class="navbarCustom navbar-default">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">
				<img class="" src="images/KakaoTalk_Photo_2017-04-22-23-02-45.png" width="70px">
				<img class="" src="images/KakaoTalk_Photo_2017-04-22-18-18-54.png" width="70px"></a>
		</div>
		<div class="navbar-right">
			<a id="loginUser" class="navbar-brand" href="#" >
				<img src="images/default.png" height="40px"
							class="img-circle">&nbsp;chazevo 님 </a>
		</div>
	</nav>
	<div class="divCenter">
		<nav class="navbar navbar-default margin" >
			<!--<div class="container-fluid">--><div>
			<!-- container-fluid : 화면 너비가 resize 되더라도 화면에 가득 참  -->
				<div id="loginUserDetail" class="hidden">
					<table>
						<tr><td colspan="2"><button>로그아웃</button></td></tr>
						<tr><td colspan="2"><a href="#">회원정보수정</a></td></tr>
						<tr>
							<td><a href="#">내 블로그</a></td>
							<td><a href="#">이웃 블로그</a></td>
						</tr>
					</table>
				</div>
				<div class="header-content">
					<div class="header-content-inner">
						<h2><a href="home.jsp">당신만의 공간에서 당신의 글을 만들어보세요.</a></h2>
					</div>
					<div class="header-content-inner2"><a href="">zzz</a></div>
				</div>
				<div class="navbar-header idView">
				<!-- navbar-header : 메뉴 버튼 클릭 시 토글 width 100% -->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#menu">
					<span class="sr-only">Toggle navigation</span> Menu <i class="menu"></i>
					<!-- sr-only : 숨김 -->
					</button>
					<a href="#" >
						<img src="images/default.png" height="40px"
									class="img-circle">&nbsp;chazevo 님 </a>
				</div>
				<div class="collapse navbar-collapse" id="menu">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="">일기</a>
						</li>
						<li>
							<a href="">장소</a>
						</li>
						<li>
							<a href="#">리뷰</a>
						</li>
						<li>
							<a href="#">음악</a>
						</li>
						<li>
							<a href="">영화</a>
						</li>
						<li>
							<a href="">뉴스</a>
						</li>
						<li>
							<a href="">책</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
		<section>
			<div>
				<div>
					<div class="text-center contentDiv">
					<!--
					col-xs 는 768px미만, 
					col-sm-는 786px 이상,
					col-md-는 992px 이상,
					col-lg-는 1200px 이상의 화면에서 적용하는 것
					-->
						<h3 class="section-heading" style="color:#E6E6E6;"> 2017.04</h3>
						<table width="100%">
						<tr><th><a href="">달력으로 보기</a> / <a href="">리스트로 보기</a> </th></tr>
						<tr><td>
							<table width="100%">
								<tbody></tbody>
								<tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td></tr>
								<tr><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td></tr>
								<tr><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td></tr>
								<tr><td>22</td><td>23</td><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td></tr>
								<tr><td>29</td><td>30</td><td>31</td><td></td><td></td><td></td><td></td></tr>
							</table>
						</td></tr>
						</table>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>