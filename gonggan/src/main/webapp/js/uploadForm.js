$(function() {
	$( "#toDate" ).datepicker({
		inline: true,
		dateFormat: "yy-mm-dd",    /* 날짜 포맷 */
		prevText: 'prev',
		nextText: 'next',
		showButtonPanel: true,    /* 버튼 패널 사용 */
		changeMonth: true,        /* 월 선택박스 사용 */
		changeYear: true,        /* 년 선택박스 사용 */
		showOtherMonths: true,    /* 이전/다음 달 일수 보이기 */
		selectOtherMonths: true,    /* 이전/다음 달 일 선택하기 */
		showOn: "button",
		buttonImage: "images/calendar_icon.png",
		buttonImageOnly: true,
		minDate: '-30y',
		closeText: '닫기',
		currentText: '오늘',
		showMonthAfterYear: true,        /* 년과 달의 위치 바꾸기 */
		/* 한글화 */
		/*
		monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dayNames : ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
		*/
		showAnim: 'slideDown',
		/* 날짜 유효성 체크 */
		onClose: function( selectedDate ) {
			$('#fromDate').datepicker("option","minDate", selectedDate);
		}
	});
});

function changeTitle() {
	document.getElementById("title").value = document.getElementById("toDate").value;
	alert(document.getElementById("title").value);
}

function changeForm() {
	$("#textarea").focus();
	
	if (document.getElementById("category").value == "review") {
		$("#reviewTbody").css("display", "table-row-group");
	}
	else
		$("#reviewTbody").css("display", "none");

	if (document.getElementById("category").value == "music") {
		$("#musicTbody").css("display", "table-row-group");
		document.getElementById("dateTd2").innerHTML =
			"<input type='checkbox' checked>&nbsp;유튜브 연결";
	}
	else
		$("#musicTbody").css("display", "none");

	if (document.getElementById("category").value == "diary") {
		document.getElementById("dateTd").innerHTML = "날짜";
		document.getElementById("dateTd2").innerHTML =
			"<input type='text' name='toDate' id='toDate' onchange='javascript:changeTitle()'>";
	}
	else {
		document.getElementById("dateTd").innerHTML = "";
		document.getElementById("dateTd2").innerHTML = "";
	}
	
	if (document.getElementById("category").value == "news") {
		$("#newsTbody").css("display", "table-row-group");
	}
	else
		$("#newsTbody").css("display", "none");

	if (document.getElementById("category").value == "movie") {
		$("#movieTbody").css("display", "table-row-group");
	}
	else
		$("#movieTbody").css("display", "none");

	if (document.getElementById("category").value == "place") {
		$("#placeTbody").css("display", "table-row-group");
	}
	else
		$("#placeTbody").css("display", "none");

	if (document.getElementById("category").value == "book") {
		$("#bookTbody").css("display", "table-row-group");
	}
	else
		$("#bookTbody").css("display", "none");
	
	/*
	else {
		document.getElementById("appendArea").deleteRow(0);
	}
	*/
	
}
