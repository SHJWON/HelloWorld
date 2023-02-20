/** mainCommunity.js **/

$(document).ready(function () {
  $("#mComAn").on("click", function () {
    event.preventDefault();

    $.ajax({
      type: "post",
      url: "/mainComAn",
      data: "",
      success: function (result) {
      	$("#main_communityUl").empty();
      	for(var i = 0; i < result.length; i++){
	        $("#main_communityUl").append(
				'<li id="list1">'+
				'<img src="/image/default_profile.png" width="64" height="64">'+
				'<a href="/board/boardDetailView/'+result[i].brdNo+'">'+
				'<span class="listText">'+result[i].brdTitle+'</span></a>'+
				'</li>'
			);      		
      	}
      },
      error: function () {
        alert("죄송합니다");
      },
    }); // ajax 종료
  }); // submit 종료
}); 