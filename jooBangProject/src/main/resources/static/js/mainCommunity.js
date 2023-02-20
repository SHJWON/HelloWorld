/** mainCommunity.js **/

$(document).ready(function () {
  $(".main_commuityFilterList").on("click", function () {
    event.preventDefault();

    const comURL = "";

    if ($(this).val() == "전체") {
      comURL = "/mainComTotal";
    } else if ($(this).val() == "공지") {
      comURL = "/mainComAn";
    } else if ($(this).val() == "베스트") {
      comURL = "/mainComBest";
    }
	
	console.log($(this).val());
	
    $.ajax({
      type: "post",
      url: comURL,
      data: "",
      success: function (result) {
        $("#main_communityUl").empty();
        for (var i = 0; i < 5; i++) {
          $("#main_communityUl").append(
            '<li id="list1">' +
              '<img src="/image/default_profile.png" width="64" height="64">' +
              '<a href="/board/boardDetailView/' +
              result[i].brdNo +
              '">' +
              '<span class="listText">' +
              result[i].brdTitle +
              "</span></a>" +
              "</li>"
          );
        }
      },
      error: function () {
        alert("죄송합니다");
      },
    }); // ajax 종료
  }); // submit 종료
});