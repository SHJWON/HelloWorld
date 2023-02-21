/**
 * papago.js
 */


 $(document).ready(function(){
  	$('#papagoBtn').on('click', function(){
  	   event.preventDefault();
  	   var test=$('section').html();
  	   var map=$('#subMenuMap').text();
  	   var wish=$('#subMenuWish').text();
  	   var room=$('#subMenuRoom').text();
  	   var commuity=$('#subMenuCommunity').text();
  	   var rental=$('#subMenuRental').text();
  	   var login=$('#mainLogin').text();
  	   var signup=$('#mainSignUp').text();
  	  
       console.log(map);
      
   if(map=="지도"){
      $.ajax({
 			type:"post",
 			url:"/papago/en",
 			data: {"test":test},
 			success:function(result){	
 				$('section').html(result); 
 				$('#subMenuMap').text("Map");	
 				$('#subMenuWish').text("wishList");
 				$('#subMenuRoom').text("room register");
 				$('#subMenuCommunity').text("community");
				$('#subMenuRental').text("funrniture rental");
				$('#mainLogin').text("Login");
				$('#mainSignUp').text("join membership");
 													
 			},
 			
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 
 }else{
      location.reload();
      }
  		});
  });
 
    


  