
$(document).ready(function(){
  $("#TOSForm").click(function(){
            
            // 첫 번째 체크박스가 체크되어 있는경우
            if($("#chk1").is(":checked")){
                
            } else { // 첫 번째 체크박스가 체크 되어있지 않은 있는경우
                alert("첫 번째 항목을 체크 해주세요.")
                return false;
            }
            
            // 두 번째 체크박스가 체크되어 있는경우
            if($("#chk2").is(":checked")){
            } else { // 두 번째 체크박스가 체크 되어있지 않은 있는경우
                alert("두 번째 항목을 체크 해주세요.");
                return false;
            }
            // 세 번째 체크박스가 체크되어 있는경우
            if($("#chk3").is(":checked")){
            } else { // 세 번째 체크박스가 체크 되어있지 않은 있는경우
                alert("세 번째 항목을 체크 해주세요.");
                return false;
          }
          
          }); // ajax 종료 	
 	});// submit 종료


