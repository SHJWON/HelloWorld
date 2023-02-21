/**
 * stt.js
 */
  $(document).ready(function(){
 
 	// 웰컴 메시지ㅣ 받기 위해 message 입력 받기 전에
 	// 빈 값으로 서버에 전송하고 결과 받음 	
 	callAjax(); // 빈 값의 message가 서버로 전송
 	
 	// 처음 시작시 <audio> 안 보이게
 	$('#audio').hide();
 	
 	
 	//////////////////////////////////////////////////////////////////
 	// 음성으로 질문하기 
 	// (1) 음성 녹음
  	//////////////////////////////////////////////////////////////////////////
  	const recordBtn = document.getElementById("recordBtn");
  	const stopBtn = document.getElementById("stopBtn");
  	
  	if(navigator.mediaDevices) {
  		var constraints = {
  			audio:true
  		}
  		
  		let chunks = []; // 녹음 데이터 저장하기 위한 변수
  		
  		navigator.mediaDevices.getUserMedia(constraints)
  			.then(stream => {
  				const mediaRecorder = new MediaRecorder(stream);
  				
  				// [녹음] 버튼 눌렀을 때
  				recordBtn.onclick = () => {
  					mediaRecorder.start(); // 녹음 시작
  					recordBtn.style.background = "red"; // [녹음] 버튼 배경색
  					recordBtn.style.color = "black";
  				}
  				
  				// [정지] 버튼 눌렀을 때
  				stopBtn.onclick = () => {
  					mediaRecorder.stop(); // 녹음 정지
  					recordBtn.style.background = ""; // [녹음] 버튼 배경색 설정한 것 삭제
  					recordBtn.style.color = "";
  				}
  				
  				// chunks에 저장된 녹음 데이터를 audio 양식으로 설정
  				// blob : 녹음 데이터
  				mediaRecorder.onstop = e => {
  					const blob = new Blob(chunks, {
  						'type':'audio/mp3 codecs=opus'
  				});
  				
  				chunks = []; // 초기화 : 초기화하지 않으면 녹음 내용이 누적됨
  				
  				// 녹음 내용을 파일로 저장 시 파일명 랜덤 생성
  				var num  = new Date();
  				const clipName = num.getTime() + "_voiceMsg"; // 파일 이름
  				
  				// 파일 업로드 함수 호출
  				fileUploadFn(blob, clipName); // 음성 파일 데이터, 파일명
  				
  			  }// mediaRcorder.onstop 끝
  			  
  			  // 녹음 시작시킨 상태가 되면 chunks에 녹음 데이터 저장
  			  mediaRecorder.ondataavailable = e => {
  			  		chunks.push(e.data);
  			  }
  			  
  			  }).catch(err => {
  			  		console.log("오류 발생 : " + err);
  			  });
  		
  	}  	
  	//////////////////////////////////////////////////////////////////////////
  	
  	// (2) 파일 업로드 
  	// 서버에 파일 업로드 하는 함수
  	function fileUploadFn(blob, clipName) {
  		// 음성 파일을 폼에 추가
  		var formData = new FormData();
  		formData.append('uploadFile', blob, clipName + ".mp3");
  		// name, 데이터, 파일명
  		
  		// 서버에 전달하고 응답 받음
  		$.ajax({
 			type:"post",
 			url:"stt",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false,
 			data: formData,
 			success:function(result){
 			//alert(result);
 				// <input> 태그의 값을 받은 텍스트로 설정
 				$('#searchBar').val(result);
 							  
 			
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
  	}
  	});
 
 
/* $(document).ready(function() {
 	$('#sttForm').on('submit', function() {
 		// 폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		// 폼 데이터 읽어 오기
 		var formData = new FormData($('#sttForm')[0]);
 		
 		// 파일명 추출
		var fileName = $('#uploadFile').val().split("\\").pop(); // 파일명만 추출
 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"stt",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false,
 			data:formData,
 			success:function(result) {
 				$('#resultDiv').text(result);
 				
 				// 오디오 출력
 				$('#voiceDiv').html("<audio src='/audio/" + fileName + "' controls>");
 			},
 			error:function() {
 				alert("실패");
 			}
 		}); // ajax 종료
 	}); // submit 종료
 });*/