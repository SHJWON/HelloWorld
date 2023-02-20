/** mainFurniture.js **/

$(document).ready(function () {
  $(".main_furnitureFilterList").on("click", function () {
    event.preventDefault();

    let furURL = "";

    if ($(this).val() == "1") {
      furURL = "/mainFurTotal";
    } else if ($(this).val() == "2") {
      furURL = "/mainFurWood";
    } else if ($(this).val() == "3") {
      furURL = "/mainFurApplianeces";
    }

    $.ajax({
      type: "post",
      url: furURL,
      data: "",
      success: function (result) {
        $("#furnitureRentalist").empty();
        for (var i = 0; i < 3; i++) {
          $("#furnitureRentalist").append(
            '<li class="furnitureCompany">' +
              '<div> <a href="' +
              result[i].furnitureMoveURL +
              ' class="furnitureGridBox">' +
              '<div><img src="/image/furniture/' +
              result[i].furnitureImg +
              '" width="260" height="200" id="furniturImg1" class="mainCardImg"/>' +
              "<h4> " +
              result[i].furnitureCity +
              "</h4>" +
              "<h4> " +
              result[i].furnitureTitle +
              "</h4>" +
              "<h5> " +
              result[i].furnitureCompany +
              "</h5>" +
              "<h5> " +
              result[i].furnitureTell +
              "</h5></div></a></div>" +
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