/**
 * 
 */

 $(document).ready(function(){
  
 		event.preventDefault(); 		
 			
 		$.ajax({
 			type:"post",
 			url:"/roominfo",
 			data: String,
 			success:function(result){
 			$('#roominfo').html(result);
 			
 												
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	

});
 