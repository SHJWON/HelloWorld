/**
 * mainSearch.js
 */

$(document).ready(function () {
  $("form input").keydown(function (e) {
  	event.preventDefault(); 
    if (e.keyCode == 13) {
      $("form").submit();
    }
  }); // submit 종료
});