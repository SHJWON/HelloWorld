/**
 * 
 */
  
  $(document).ready(function(){
  	$('#papagoBtn').on('click', function(){
  	   event.preventDefault();
  	   var test=$('html').html();
  	  
      console.log(test);
      $.ajax({
 			type:"post",
 			url:"/myPage/test",
 			data: {"test":test},
 			success:function(result){	
 				$('html').html(result); 
 																
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 
  
  		});
  });
 
  
  