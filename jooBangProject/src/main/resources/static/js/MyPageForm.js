/**
 * myPage
 */

 $(document).ready(function(){
 	$('#myPageForm').on('submit', function(){ 	
 		event.preventDefault(); 		
 		
 		//폼에 입력한 값들을 쿼리 스트링 방식의 데이터로 변환 : serialize() 사용
 		//type=prdName&keyword=노트북 형식으로 만들어서 전송
 		var formData = $(this).serialize();
 		// 이렇게 보내고 컨트롤러에서 HashMap으로 받음 		
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/board/boardSearch",
 			data: formData,
 			success:function(result){
 			$('#searchResultBox').html(result);		
 												
 			},
 			error:function(){
 				alert("실패");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
 	//[삭제]버튼 클릭했을 떄 장바구니에서 선택된 상품 삭제
    $('#deleteCartBtn').on('click', function(){
     //선택 여부 확인 : 하나라도 선택하면 true, 아무것도 선택하지 않으면false
     var checked=$('.chkDelete').is(':checked');
     
     if(checked){//하나라도 선택한 경우
     var answer=confirm("선택된 방을 삭제하시겠습니가?");
     if(answer){
      //체크된 체크박스의 cartNo를 배열에 추가
      var checkArr=new Array();
      $('.chkDelete:checked').each(function(){
        //checkArr.push($(this.val()));//value="${prd.cartNo}"한 경우
        checkArr.push($(this).attr("data-roomNo"));//태그에 사용자 정의 속성을 사용한 경우 :data-cartNo="${prd.cartNo }    
       });
       //서버로 전송
       	$.ajax({
 			type:"post",
 			url:"/myPage/deleteRoom",
 			data: {"chbox":checkArr},
 			dataType:'text',
 			success:function(result){
 				if(result == 1){
 					location.href="/myPage/myRoom";
 				}		
 			},
 			error:function(){
 				alert("실패");
 			},
 		}); // ajax 종료 	
     }
    
     
     }else{ //아무것도 선택하지 않은 경우
      alert("선택된 상품이 없습니다");
     }
});         
});
 