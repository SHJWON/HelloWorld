/** btnEvents.css **/

function change_btn(e) {
  var btns = document.querySelectorAll(".main_commuityFilterList");
  btns.forEach(function (btn, i) {
    if (e.currentTarget == btn) {
      btn.classList.add("active");
    } else {
      btn.classList.remove("active");
    }
  });
  console.log(e.currentTarget);
}