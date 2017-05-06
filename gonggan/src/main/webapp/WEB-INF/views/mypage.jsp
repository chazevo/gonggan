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
<link href="css/jquery.fancybox.min.css" rel="stylesheet" type="text/css">
<link rel='stylesheet' href='css/css.css'/> 

<script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/mypage.js"></script>
<script type="text/javascript">
	window.onload = function() {
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
	<div id="loginUserDetail" class="hidden">
		<img src="images/idclick_icon.png">
		<table>
			<tr><td colspan="2"><button>로그아웃</button></td></tr>
			<tr><td colspan="2"><a href="mypage.jsp">마이 페이지 </a></td></tr>
			<tr>
				<td><a href="#">내 블로그</a></td>
				<td><a href="#">이웃 블로그</a></td>
			</tr>
		</table>
	</div>
	<div class="divCenter">
		<!--<div class="container-fluid">--><div>
		<!-- container-fluid : 화면 너비가 resize 되더라도 화면에 가득 참  -->
			<div id="loginUserDetail" class="hidden">
				<table>
					<tr><td colspan="2"><button>로그아웃</button></td></tr>
					<tr><td colspan="2"><a href="#">마이 페이지 </a></td></tr>
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
				<div class="header-content-inner2">
					<a href="controll.jsp">
					<img class="smallIcon"
					src="images/KakaoTalk_Photo_2017-04-24-10-28-40_21.png"></a>
				</div>
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
	<section>
		<div class="mypage">
			<div><span>GONGGAN_JJ</span> 님</div>
			<div class="right">
				<a href="uploadform.jsp" class="transparentFont">포스트쓰기</a>
				<a href="home.jsp">
					<div class="goToMyBlog">내 블로그</div>
				</a>
				<img src="images/KakaoTalk_Photo_2017-04-26-10-24-13.png" width="50px">
			</div>
			<table class="tbl1" width="100%">
			<colgroup>
				<col width="15%" />
				<col width="30%" />
				<col width="45%" />
			</colgroup>
			<tr>
				<td  class="td">
					<table width="100%">
						<tr>
							<td><b>내 정보 수정</b></td>
							<td>프로필 </td>
						</tr>
						<tr>
							<td colspan="2" class="text-center">
								<div>
									<a href="">
										<img src="images/myproimg_default.png" width="60%">
									</a>
									<a href="javascript:profileImgDelete();"><div class="x">X</div></a>
								</div>
								aekek_jj
							</td>
						</tr>
						<tr>
							<td colspan="2" class="text-center">
								<textarea id="introducingArea" readonly="readonly">내소개입니다
안녕하세요 !! :)
여행 공간지기입니다!</textarea>
							</td>
						</tr>
						<tr><td colspan="2">
							<a href="javascript:editProfile();"><div id="editProfile">수정</div></a>
							</td></tr>
					</table>
				</td>
				<td class="td">
					<table width="100%">
						<tr>
							<td><b>내 정보 수정</b></td>
							<td>내 정보</td>
						</tr>
						<tr>
							<td>아이디 </td>
							<td>aekek_jj</td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" id="pwd" value="0305" readonly></td>
						</tr>
						<tr>
							<td><p class="p">비밀번호 확인</p></td>
							<td>
								<input type="password" id="pwd2" readonly>
							</td>
						</tr>
						<tr>
							<td>이메일</td>
							<td>
								<input type="text" id="email" value="aekwjd@naver.com" readonly>
							</td>
						</tr>
						<tr>
							<td>핸드폰 번호</td>
							<td>
								<input type="text" id="phone" value="010-7440-4084" readonly>
							</td>
						</tr>
						<tr>
							<td colspan="2"><a href="javascript:editInfo();"><div id="editInfo">수정</div></a></td>
						</tr>
					</table>
				</td>
				<td class="td notTableList">
					<table width="100%">
						<tr><td><b>내 포스트 알람 _ 댓글 </b></td></tr>
						<tr>
							<td>내 포스트 알람이 없습니다.
							게시글을 작성하고 이웃을 만들어보세요!! </td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								<a href="">동갑내기 부부의 세계로 가는 자전거 여행!</a>
								게시글에 <b>댓글</b>을 남기셨습니다.
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
						<tr>
							<td>
								<font><a href="">이대장</a> 님이</font>
								너무 예뻐요!! 너무 마음에드네요!! 어디서 구매하셨나요??!! 알려주세요~!!!
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="td notTableList">
					<b>이웃새글_8</b><br>
					<a href="">꼼지락이주부 감성 DIY.셀프 인테리어</a> | 
					<font>
						<a href="">꼼지락이 주부</a></font><br>
					<a href="">동갑내기 부부의 세계로 가는 자전거 여행</a> | 
					<font>
						<a href="">이대장</a></font><br>
					<a href="">토리와 함께 추억쌓기 놀이</a> |
					<font>
						<a href="">긍정의아이콘 |토리|</a></font><br>
					<a href="">행복가득한 그루터기 발자취!</a> |
					<font>
						<a href="">그루터기</a></font><br>
					<a href="">진격의 깐깐징어 깐깐징어 깐징어 우아우아......</a> |
					<font>
						<a href="">깐깐징어</a></font><br>
					<a href="">행복가득한 그루터기 발자취!</a> |
					<font>
						<a href="">그루터기</a></font><br>
					<a href="">동갑내기 부부의 세계로 가는 자전거 여행</a> | 
					<font>
						<a href="">이대장</a></font><br>
					<a href="">행복가득한 그루터기 발자취!</a> |
					<font>
						<a href="">그루터기</a></font><br>
				</td>
				<td class="td notTableList">
					<b>내 포스트 알람_좋아요</b><br>
					내 포스트 알람이 없습니다.
					게시글을 작성하고 이웃을 만들어보세요!!<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">이대장</a> 님이</font>
					<a href="">동갑내기 부부의 세계로 가는 자전거 여행</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">이대장</a> 님이</font>
					<a href="">동갑내기 부부의 세계로 가는 자전거 여행</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
					<font>
						<a href="">긍정의아이콘 |토리|</a> 님이</font>
					<a href="">토리와 함께 추억쌓기 놀이</a> | 
					게시글에 <b>좋아요</b>을 누르셨습니다.<br>
				</td>
			</tr>
			</table>
		</div>
	</section>
		
</body>
</html>