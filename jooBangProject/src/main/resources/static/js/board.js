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
	     break;
		case "3":
		  $('.liside-menu a').eq(4).addClass('on');
		 break;
		case "4":
		  $('.liside-menu a').eq(5).addClass('on');
		 break;
		case "100":
		  $('.liside-menu a ').eq(0).addClass('on');
		 break;
		case "200":
          $('.liside-menu a').eq(3).addClass('on');
		 break;

	}
 
 });
 

 $(document).ready(function(){
 var sid = $('#sid').val();
 var url=$('#url').val();
  $('#insertBtn').on("click",function(){
 if(sid ==""){
   		alert("로그인 후 이용해주세요");
	    location.href ="/member/login"
	 }else{
 location.href =url;
 }
 });
});

 $(document).ready(function(){
    var page=$('#pageNum').val();
	var pageBtn=$('#pageBtn').val();
	if(page==1){
	   $('#pageBtn').addClass('btnOn'); 
	}
 });  
 
 