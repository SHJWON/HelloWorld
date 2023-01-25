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
		case "1":
		  $('.liside-menu a ').eq(1).addClass('on');
		 break;
		case "2":
		  $('.liside-menu a').eq(2).addClass('on');
		 berak;
		case "3":
		  $('.liside-menu a').eq(4).addClass('on');
		 berak;
		case "4":
		  $('.liside-menu a').eq(5).addClass('on');
		 berak;
		case "100":
		  $('.liside-menu a ').eq(0).addClass('on');
		 berak;
		case "200":
          $('.liside-menu a').eq(3).addClass('on');
		 berak;

	}
 
 });
 
 
 /*$('.side-menu').on('click','a',function(){
 alert($(this).parent().attr('class'));
 $('.side-menu').removeClass('on');
$(this).parent().addClass('on');
   
});*/
