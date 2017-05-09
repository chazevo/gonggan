function like(obj,writerId, postId) {
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
