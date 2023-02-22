/**
 * signup.js
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
 	
 	function signupCheck() {
	var memId = document.getElementById("memId");
	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");

	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		return false;
	};

	if (memPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		memPwd.focus();
		return false;
	};
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(memPwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		memPwd.focus();
		return false;
	};

	if (memPwd2.value !== memPwd.value) {
		alert("비밀번호가 일치하지 않습니다.")
		memPwd2.focus();
		return false;
	};
	document.changePwd.submit();
};
 });












