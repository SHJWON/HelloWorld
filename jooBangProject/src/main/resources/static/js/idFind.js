/**
 * idFind.js
 */
 
 $(document).ready(function() {

 	
 	// 인증번호 받기 버튼 눌렀을 때
 	$('#authBtn').on('click', function() {
 	
 		if($('#memEmail').val()=="") {
 			alert("이메일을 입력해주세요");
 		} else {
 			$.ajax({
				type:"post",
				url:"/authMailcheck",
				data:{"email":$('#memEmail').val(),
					  "memName":$('#memName').val()},
				dataType:"text",
				success:function(result){
					alert(result);
				},	
				error:function(){
					alert("error: 관리자에게 문의하세요");
				}
			}); // ajax 종료
 		}
 	});
 	
 	// 확인 버튼 눌렀을 때
 	$('#checkBtn').on('click', function() {
 	
 	
 		if($('#emailCheck').val()=="") {
 			alert("인증번호를 입력해주세요");
 		} else {
 			$.ajax({
				type:"post",
				url:"/authNumCheck",
				data:{"authNum":$('#emailCheck').val(),
					  "memName":$('#memName').val()},
				dataType:"text",
				success:function(result){
					if(result == "success") {
						authCheck = "Y";
						alert("인증되었습니다");
					} else {
						alert("인증번호가 일치하지 않습니다");
					}
				},	
				error:function(){
					alert("error: 관리자에게 문의하세요");
				}
			}); // ajax 종료
 		}
 	});
 	
 	$('#findIdForm').on('submit', function() {
 		// 폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		var memName = "";
 		var memEmail = $('#memEmail').val();
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/member/findId",
 			data:{"memName":$('#memName').val(),
 				  "memEmail":memEmail},
 			dataType:"text",
 			success:function(result) {
 				if (result != "fail") {
 					alert("ID : " + result);
 					location.href="/member/searchAfterLoginForm?memId=" + result;
 				} else {
 					alert("ID 찾기를 실패했습니다 이름과 이메일을 확인해주세요");
 					location.href="/member/findIdForm";
 				}
 			},
 			error:function() {
 				alert("실패했습니다 다시 시도해주세요");
 			},
 			complete:function() {
 				// alert("작업 완료");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 
 });