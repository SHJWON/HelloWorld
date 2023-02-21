/**
 * ocr.js
 */
 
$(document).ready(function(){
	//웰컴 메시지 
	callAjax();

	$('#btnClose').on('click', function(){
		$('.modal-container').removeClass('active');
	});
	
	$('.chatbot_btn').on('click',function(){
		$('.modal-container').addClass('active');
	});

 	$('#chatbotForm').on('submit', function(){
		event.preventDefault();
 		//폼이 submit 되지 않도록 기본 기능 중단
 		
 		//message가 빈값인 경우 확인 메시지 출력
 		if($('#message').val()==""){
 			alert("메시지를 입력하세요");
 			$('#message').focus();
 			return false;
 		}
 		
 		// 챗봇 창에 메세지 추가
 		$('#chatBox').append('<div class="msgBox send"><span id="in"><span>'+
 							$('#message').val() + '</span></span></div><br>');
 		
 		callAjax();
 		
 		$('#message').val(''); // 입력란 비우기
 	});// submit 종료

	function callAjax() {
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/chatbot",
 			data: {"message": $('#message').val()},
 			dataType:"json",
 			success:function(result){
 				// JSON 형식으로 받음 
 				console.log(result);
 				var bubbles = result.bubbles;
 				// 챗봇 창에 받은 메시지 추가
 				for(var b in bubbles){
					if(bubbles[b].type == 'text'){ // 기본 답변인 경우
		 				$('#chatBox').append('<div class="msgBox receive"><div class="msgImg"><img src="/image/chatbot.png"></div>'+
		 				'<div class="msgBoxWrapper"><span style="margin-bottom: 0px;">빵챗</span><span id="in">' +
		 											  bubbles[b].data.description + '</span></div></div><br>');
		 											  
		 				if(bubbles[b].data.url){
		 					$('.msgBox:last .msgBoxWrapper').append('<span id="in">' +
		 											  '<a href="'+bubbles[b].data.url+'">'+bubbles[b].data.url + '</a></span>');
		 				}
					} else{
						console.log("뭐가문제임");
					}
				
				}
 				// 스크롤해서 올리기 : 스크롤 높이 값로 scrollTop 설정
 				$('#chatBox').scrollTop($('#chatBox').prop("scrollHeight"));
 				
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 
 	}
});

 	
 	$('#plusBtn').on('click', function(){
		$('.chatbot_btn').addClass('active');
	});
	
  