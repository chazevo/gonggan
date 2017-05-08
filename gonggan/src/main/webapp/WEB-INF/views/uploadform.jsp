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
<title>uploadform.jsp</title>
<script>
	$(document).ready(function() {
		document.getElementById("textarea").focus();
		$("[data-toggle='tooltip']").tooltip();
	});
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
		<!--<div class="container-fluid">--><div>
		<!-- container-fluid : 화면 너비가 resize 되더라도 화면에 가득 참  -->
			<div id="loginUserDetail" class="hidden">
				<table>
					<tr><td colspan="2"><button>로그아웃</button></td></tr>
					<tr><td colspan="2"><a href="mypage.jsp">마이 페이지 </a></td></tr>
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
			<div class="uploadFormDiv" > <!-- style="border:1px;"  -->
				<table width="90%" id="uploadtable" border="1" > <!--  border="1" -->
					<colgroup>
						<col width="20%" />
						<col width="25%" />
						<col width="20%" />
						<col width="25%" />
					</colgroup>
					<tr>
						<td>분류 </td>
						<td>
							<select id="category" onchange="changeForm();">
								<option value="diary" selected>일기</option>
								<option value="news">뉴스</option>
								<option value="place">장소</option>
								<option value="review">리뷰</option>
								<option value="book">책</option>
								<option value="movie">영화</option>
								<option value="music">뮤직</option>
							</select>
						</td>
						<td id="dateTd">날짜 </td>
						<td id="dateTd2">
							<input type="text" name="toDate" id="toDate" size="10" onchange="javascript:changeTitle()">
						</td>
					</tr>
					<!--<input type="hidden" id="title">-->
					<tr>
						<td colspan="4">
							<button type="button" data-toggle="collapse" data-target="#tag" id="tagadddbtn">태그 추가하기</button>
							<div id="tag" class="collapse">
								<input type="text"><button>확인</button>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<select id="" onchange="">
								<option value="diary" selected>배경이미지 </option>
								<option value="news">이미지 삽입</option>
							</select>
						</td>
						<td></td>
						<td>정렬</td>
						<td>
							<input type="image"  src="images/align_left_icon.png" id="content_allign_left"  width="15px"> &nbsp; &nbsp;
							<input type="image"  src="images/align_center_icon.png" id="content_allign_center" width="15px"> &nbsp; &nbsp;
							<input type="image" src="images/align_right_icon.png" id="content_allign_right" width="15px"> &nbsp;
						</td>
						
					</tr>
					<tbody id="bookTbody" style="display:none">
						<tr>
							<td colspan="4" align="center">
									<a data-toggle="collapse" data-target="#book">책 찾아보기</a>
									<div id="book" class="collapse text-center">
										<!-- <h4>도서 검색 </h4> --><br>
										제목&nbsp;<input type="text">&nbsp;&nbsp;&nbsp;
										저자&nbsp;<input type="text">&nbsp;&nbsp;&nbsp;
										<button type="button" id="booksearchBtn">도 서 검 색</button><br><br>
										
										
										검색도서 표시 <br>
										검색도서 표시 <br><br>
										<button type="button" id="booksearchBtn">추 가 하 기</button>
									</div>
								</td>
						</tr>
					</tbody>
					<tbody id="placeTbody" style="display:none">
						<tr>
							<td colspan="4" align="right">
									<a data-toggle="collapse" data-target="#place">장소 찾아보기</a>
									<div id="place" class="collapse text-center">
										<h4>장소 검색 </h4>
										장소&nbsp;<input type="text">
									</div>
								</td>
						</tr>
					</tbody>
					<tbody id="movieTbody" style="display:none">
						<tr>
							<td colspan="4" align="right">
								<a data-toggle="collapse" data-target="#movie">영화 찾아보기</a>
								<div id="movie" class="collapse">
									<table width="100%">
									<tr>
										<td>제목</td>
										<td><input type="text"></td>
										<td rowspan="2"><button>검색</button></td>
									</tr>
										<td>감독</td>
										<td><input type="text"></td>
									</tr>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
					<tbody id="newsTbody" style="display:none">
						<tr>
							<td colspan="4" align="center">
								<a data-toggle="collapse" data-target="#news">기사 찾아보기<img></a>
								<div id="news" class="collapse">
									<table width="100%">
									<tr><td width="25%" align="center">인기검색어</td><td><h5 style="text-align:center;">기사 검색</h5></td></tr>
									<tr>
										<td align="center" >대선후보<br>아이유 컴백<br> </td>
										<td width="65%" >
											키워드&nbsp;<input type="text">&nbsp;&nbsp;&nbsp;
											<button type="button" id="newssearchBtn">기 사 검 색</button><br><br>
										</td>
									</tr>
									</table>
								</div>
							</td>
						</tr>
					</tbody>
					<tbody id="reviewTbody" style="display:none">
						<tr>
							<td>제품</td><td><input type="text"></td>
							<td>별점</td><td>✮✮✮✮✮</td>
						</tr>
					</tbody>
					<tbody id="musicTbody" style="display:none">
						<tr>
							<td>가수</td><td><input type='text' size="14"></td>
							<td>제목</td><td><input type='text'></td>
						</tr>
						<tr>
							<td colspan="4" align="right">
								<a data-toggle="collapse" data-target="#lyrics">가사 찾아보기</a>
								<div id="lyrics" class="collapse">
									가사를 불러오는 부분 
								</div>
							</td>
						</tr>
					</tbody>
					
					<tr>
						 <td colspan="4" align="center" height="30px"><div id="dansunline"></div></td>
						</tr>
						
					
					<tr>
						<td class="uploadContent" colspan="4">
							 <!-- <textarea id="textarea" rows="20" id="content" ></textarea> --> 
							 <iframe id='edit' style='width:300px;height:200px;' ></iframe>

							
						</td>
					</tr>
					<tr><td colspan="4"><input type="checkbox">&nbsp;나만보기</td></tr>
					<tr>
						<td colspan="4" class="footerDiv">
							<div>
								<a href=""><div class="grad">등 록</div></a>&nbsp;
								<a href=""><div class="grad">취 소</div></a>
							</div>
						</td>
					</tr>
				</table>
				<br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br>
				<br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</section>
	</div>
</body>
</html>
