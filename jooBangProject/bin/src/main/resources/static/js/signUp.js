/**
 * signup.js
 */
$(document).ready(function(){
    $('#memPwd2').keyup(function (e) {
        let check_pwd = $(this).val();
        let pwd = $('#memPwd').val();
            // 
            if ( check_pwd != pwd ) {
                $('#pwdcheck2').text('일치하지 않음');
            } else{
                $('#pwdcheck2').text('');
            }
    });
});

function signupCheck() {
	var memId = document.getElementById("memId");
	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");
	var memName = document.getElementById("memName");
	var memNickName = document.getElementById("memNickName");
	var memBirth = document.getElementById("memBirth");
	var memHP = document.getElementById("memHP");
	var memEmail = document.getElementById("memEmail");
	var memZipcode = document.getElementById("memZipcode");

	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		return false;
	};
	
	if($("input[name='checked_id']").val()==''){
        alert('아이디중복 확인을 해주세요.');
        $("input[name='checked_id']").eq(0).focus();
        return false;
    	}

	if (memPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		memPwd.focus();
		return false;
	};

	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(memPwd.value)) {
		document.getElementById("pwdcheck1").innerHTML = '비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.'; 
		memPwd.focus();
		return false;
	};

	if (memPwd2.value !== memPwd.value) {
		document.getElementById("pwdcheck2").innerHTML = '다시쓰셈'; 
		
		memPwd2.focus();
		return false;
	};

	if (memName.value == "") {
		alert("이름을 입력하세요.")
		memName.focus();
		return false;
	};
		if (memNickName.value == "") {
		alert("닉네임을 입력하세요.")
		memNickName.focus();
		return false;
	};
	if (memBirth.value == "") {
		alert("생년월일을 입력하세요.")
		memBirth.focus();
		return false;
	};

	var num = /^[0-9]+/g;

	if (!num.test(memHP.value)) {
		alert("전화번호는 숫자만 입력하세요.")
		memHP.focus();
		return false;
	};

	if (memEmail.value == "") {
		alert("이메일을 입력하세요.")
		memEmail.focus();
		return false;
	};
	
	if (memZipcode.value == "") {
		alert("주소를 입력하세요.")
		memZipcode.focus();
		return false;
	};

	document.signUpForm.submit();
};
