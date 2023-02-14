/**
 * papago.js
 */

$(document).ready(function () {
  $("#papagoBtn").on("click", function () {
    event.preventDefault();
    var test = $("html").html();
    var map = $("#subMenuMap").text();
    if (map == "지도") {
      $.ajax({
        type: "post",
        url: "/papago/en",
        data: { test: test },
        success: function (result) {
          $("html").html(result);
        },

        error: function () {
          alert("실패");
        },
      }); // ajax 종료
    } else if (map == "map") {
      $.ajax({
        type: "post",
        url: "/papago/ko",
        data: { test: test },
        success: function (result) {
          $("html").html(result);
        },

        error: function () {
          alert("실패");
        },
      }); // ajax 종료
    }
  });
});
    


  