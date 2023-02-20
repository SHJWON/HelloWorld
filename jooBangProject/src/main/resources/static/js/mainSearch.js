/**
 * mainSearch.js
 */

$(document).ready(function () {
  $(".mainItem searchBox form").keydown(function (e) {
  	event.preventDefault(); 
    if ($("#searchBar").is("focus") && e.keyCode == 13) {
      $(".mainItem searchBox form").submit();
    }
  }); // submit 종료
});