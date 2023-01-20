/**
 * 
 */
  /*var menu = document.querySelectorAll("#ul a");
  for(let i=0;i<menu.lenght;i++){
  menu[i].on('click',function(){
  
  alert("click");
  menu[i].classList.toggle('on');
  });
  }*/

$(document).ready(function(){
	var menu=$('#menuNumber').val();
	switch(menu){
		case "2":
		  $('.side-menu1').eq(1).addClass('on');
		 break;
		case "3":
		  $('.side-menu').eq(2).addClass('on');
		 berak;
		case "5":
		  $('.side-menu').eq(4).addClass('on');
		 berak;
		case "6":
		  $('.side-menu').eq(5).addClass('on');
		 berak;
		case "100":
		  $('.side-menu1 ').eq(0).addClass('on');
		 berak;
		case "200":
          $('.side-menu').eq(3).addClass('on');
		 berak;

	}
 
 });
 
 
 /*$('.side-menu').on('click','a',function(){
 alert($(this).parent().attr('class'));
 $('.side-menu').removeClass('on');
$(this).parent().addClass('on');
   
});*/
