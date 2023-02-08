/**
 * mainSearch.js
 */


$(document).ready(function () {
  $("form input").keydown(function (e) {
  	event.preventDefault(); 
    if (e.keyCode == 13) {
      $("form").submit();
    }
    
    $.ajax({
      type: "post",
      url: "/map/mapView",
      data: { keyword: $("#searchBar").val() },
      dataType: "text",
      success: function (result) {
        $("#map").html(result);
      },
      error: function () {
        alert("검색어를 확인해주세요.");
      },
    }); // ajax 종료
  }); // submit 종료
});