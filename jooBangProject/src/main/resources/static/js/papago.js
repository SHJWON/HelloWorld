/**
 * papago.js
 */


 $(document).ready(function(){
  	$('#papagoBtn').on('click', function(){
  	   event.preventDefault();
  	   var test=$('section').html();
  	   var map=$('#subMenuMap').text();
       console.log(map);
      
   if(map=="지도"){
      $.ajax({
 			type:"post",
 			url:"/papago/en",
 			data: {"test":test},
 			success:function(result){	
 				$('section').html(result); 
 				$('#subMenuMap').text("Map");										
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
 
    


  