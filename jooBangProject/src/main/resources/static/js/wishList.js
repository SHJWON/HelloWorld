/**
 * wishList.js
 */
 
 // wishList_CheckBtn 누를 시 ajax를 통해서 controller로 db 정보 전달
 
$(document).ready(function () {

	// id와 pw값 변수에 저장
	var id = $('#sid').val();
	var roomNo = $('#roomNo').val();

	var basicOption = $('#basicOption').val();


	if (id == "") {
		// 로그인하지 않은 상태에서 wishList_CheckBtn 클릭시
		$('#wishList_CheckBtn').on('click', function () {
			alert("로그인해주세요");
			$(this).prop('checked', false);
		});
		return 0;
	} else {
		// 로그인한 상태에서 wishList에 해당방을 가지고 있는지 확인
		checkWish(id, roomNo);

		// 로그인한 상태에서 클릭 시 ajax를 통해서 controller에 memID·roomNo 전달
		$('#wishList_CheckBtn').change(function () {
			if ($(this).is(':checked')) {
				$.ajax({
					type: "post",
					url: "/insert_wishList",
					data: {
						"memId": id,
						"roomNo": roomNo
					},
					dataType: 'text',
					success: function (wish_count) {
						console.log("생성 성공");
						$("#wish_count").text(wish_count);
					},
					error: function () {
						console.log("실패");
					},
					complete: function () {
						//alert("작업 완료");
					}
				}); // ajax 종료 
			} else {
				$.ajax({
					type: "post",
					url: "/delete_wishList",
					data: {
						"memId": id,
						"roomNo": roomNo
					},
					dataType: 'text',
					success: function (wish_count) {
						console.log("삭제 성공");
						$("#wish_count").text(wish_count);
					},
					error: function () {
						console.log("실패");
					},
					complete: function () {
						//alert("작업 완료");
					}
				}); // ajax 종료 
			}

		}); // change 종료
	}//else 종료
});

function checkWish(id, roomNo){
	$.ajax({
		type: "post",
		url: "/wishList_check",
		data: {
			"memId": id,
			"roomNo": roomNo
		},
		dataType: 'text',
		success: function (result) {
			if (result == "true") {
				$('#wishList_CheckBtn').prop('checked', true);
			} else{
				console.log("예약하지 않음")
			}
		},
		error: function () {
			console.log("실패");
		},
		complete: function () {
			//alert("작업 완료");
		}
	}); // ajax 종료 
}