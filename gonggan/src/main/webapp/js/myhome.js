function requestList() {
	
	$.ajax({
	      url: "/gonggan/postlist.do",
	      data: {},
	      success: function(data) {
	    	  callbackList(data);
	      },
	      error: function(data,status,error){
	         console.log("error : " + error);
	      }
	   });
}

function callbackList(data) {

	var flag;
	var str;
	var week = 1;

	var jsonObj = JSON.stringify(data);
	var jsonArr = JSON.parse(jsonObj);

	switch (firstday) {
	case 1: 
		str = "<tr>";
		break;
	case 2:
		str = "<tr><td></td>";
		break;
	case 3:
		str = "<tr><td></td><td></td>";
		break;
	case 4:
		str = "<tr><td></td><td></td><td></td>";
		break;
	case 5:
		str = "<tr><td></td><td></td><td></td><td></td>";
		break;
	case 6:
		str = "<tr><td></td><td></td><td></td><td></td><td></td>";
		break;
	case 7:
		str = "<tr><td></td><td></td><td></td><td></td><td></td><td></td>";
		break;
	}
	
	while (document.getElementById("listbody").rows.length > 0 )
		document.getElementById("listbody").deleteRow(0);

	for (var i=1 ; i<=lastdate ; i++) {
		flag = false;
		
		for (var j in jsonArr.list){
			//jsonArr.list[i].imagePath;
			//alert(jsonArr.list[i].year + "년 " + jsonArr.list[i].month + "월 " + jsonArr.list[i].date + "일 ");
			
			if (jsonArr.list[j].date == i) {
				str += "<td>"
					+ "<a data-fancybox data-src='#'>"
					+ "<img width='40px' class='" + (jsonArr.list[j].date == today ? "today" : "")
					+ "' src='/gonggan/uploadImages/" + jsonArr.list[j].photoPath + "'>"
					+ "</a></td>";
				flag = true;
				break;
			}
		}
		
		if (flag == false) str += "<td>" + i + "</td>";
		
		document.getElementById("listbody").innerHTML = str;
		if (document.getElementById("listbody").children[week-1].children.length == 7) {
			str += "</tr><tr>";
			week++;
		}
	}
	
	if (document.getElementById("listbody").children[week-1].children.length < 7)
		do {
			str += "<td></td>";
			document.getElementById("listbody").innerHTML = str;
		} while (document.getElementById("listbody").children[week-1].children.length <= 7);
	str += "</tr>";
	document.getElementById("listbody").innerHTML = str;
	
}

function lastMonth() {
	
	var date = new Date();
	date.setMonth(--month);
	date.setDate(1);
	
	firstday = date.getDay();
	today = 99;
	lastdate = new Date(2017, month, 0).getDate();
	
	$("#year").text(year);
	$("#month").text(month<10 ? "0" + month : month);
	$("#today").text("");
	
	requestList();
}

function nextMonth() {
	
	var date = new Date();
	date.setMonth(++month);
	date.setDate(1);
	
	firstday = date.getDay();
	today = 99;
	lastdate = new Date(2017, month, 0).getDate();

	$("#year").text(year);
	$("#month").text(month<10 ? "0" + month : month);
	$("#today").text("");
	
	requestList();
}

function checkboxControl(type, object) {
	/*
	if (object.checked == true && type == "list")
		document.getElementById("calendar").check = false;
	else if (object.checked == false && type == "list")
		document.getElementById("calendar").check = true;
	else if (object.checked == true && type == "calendar")
		document.getElementById("list").check = false;
	else if (object.checked == false && type == "calendar")
		document.getElementById("list").check = true;
		
		*/
}