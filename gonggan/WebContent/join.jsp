<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[공:간] 회원가입 - 정보 입력하기</title>
<link rel='stylesheet' href='http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css'/> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel='stylesheet' href='css/css.css'/> 

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script type="text/javascript" src="js/join.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input[name='id']").keyup(function() {
			$("input[name='id_']").val($(this).val());
			});
		$("input[name='id_']").keyup(function() {
			$("input[name='id']").val($(this).val());
			});
		$("input").click(function() {
			if ($(this).val() == "")
				$(this).next().css("display", "block");
			});
		});
</script>
</head>
<body id="indexBg">
<nav class="navbar navbar-default">
<!--<div class="container-fluid">--><div>
<!-- container-fluid : 화면 너비가 resize 되더라도 화면에 가득 참  -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
		data-target="#menu">
			<span class="sr-only">Toggle navigation</span> Menu <i class="menu"></i>
			<!-- sr-only : 숨김 -->
		</button>
		<a class="" href="#">
		<img class="smallLogoImg" src="images/KakaoTalk_Photo_2017-04-22-18-18-54.png" width="70px"></a>
	</div>
		<div class="collapse navbar-collapse" id="menu">
		<!-- collapse 제거 -> 화면 크기 작아졌을 때 생기는 menu 아이콘을 클릭하지 않아도 메뉴가 펼쳐짐  -->
		<!-- navbar-collapse 제거-> 메뉴 사라짐  -->
			<ul class="nav navbar-nav navbar-right ">
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

<header>
	<div class="header-content" id="indexBg">
		<div class="header-content-inner">
		<form id="form" action="home.jsp" method="post">
			<div id="middleDiv">
				<img class="logoImg" src="images/logo.png">
				<br><br>
				<font color="#A6A6A6" size="5px">
				<b>공간</b></font>&nbsp;과 함께 하실
				<span id="idSpan">
					<input type="text" name="id" value="" placeholder=" 아이디" size="12"
					title="아이디 입력(4-12자 이내 영문 소문자,숫자,underbar만 사용가능)" class="join id" maxlength="12" 
					onblur="blurEvent(this);"/>
					<em>4-12자 이내 영문 소문자,숫자,underbar만 사용가능합니다.</em>
				</span> 님의 비밀번호는 
				<span id="pwdSpan">
					<input type="password" name="pwd" value="" placeholder="비밀번호" size="12"
					title="비밀번호 입력(4자 이상 영문 대/소문자, 숫자)" class="pw join" maxlength="12"
					onblur="blurEvent(this);"/>
					<em>4-12자 이내 영문 대/소문자, 숫자로 입력해주세요.</em>
				</span>입니다.<br />
				<span id="pwd2Span">
					<input type="password" name="pwd2" value="" placeholder=" 비밀번호" size="12"
					title="비밀번호 재입력(4-12자 이내 영문 대/소문자, 숫자)" class="pw join" maxlength="12"
					onblur="blurEvent(this);"/>
					<em>한번 더 입력해주세요.</em>
				</span>를 한번 더 알려주세요!<br />
				<span><input type="text" name="id_" value="" placeholder=" 아이디" size="12"
				title="아이디 입력(4-12자 이내 영문 소문자,숫자,underbar만 사용가능)" class="id join" maxlength="12" 
				onblur="blurEvent(this);"/>
				</span>님과 연락할 수 있는 <br>
				<span id="phoneSpan">
					<input type="text" name="phone" value="" placeholder=" 휴대전화 번호" size="11"
					title="휴대전화 번호 입력(숫자만 입력가능)" class="phone join" maxlength="11" onkeydown="return onlyNumber(event)" onkeyup="removeChar(event)" style="ime-mode:disabled;"
					onblur="blurEvent(this);"/>
					<em>숫자만 입력해 주세요.</em>
				</span>와
				<span id="emailSpan">
					<input type="text" name="email" value="" size="16" placeholder=" 이메일 주소"
					title="이메일 주소 입력" class="email join"
					onblur="blurEvent(this);"/>
					<em>이메일을 입력해 주세요.</em>
				</span>를 알려주세요.<br /><br>
				<a href="javascript:goSubmit();">
					<div class="button">WELCOME TO THE GONG:GAN</div>
				</a>
			</div>
		</form>
		</div>
	</div>
</header>
</body>
</html>
 