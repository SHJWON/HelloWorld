/**
 * registMove.js
 */
 
$(document).ready(function(){
 	// 버튼 누를 시 이동
	 var indexNo=0;
	 
	 const modal = $("#modal-container");
	 
	 $('#nextBtn').on('click',function(){
		
		if(indexNo>=($(".room__Box").length-1)){
			
			return 0;
		}
		if(((indexNo==1)&&!($('input:radio').is(':checked')))
			){
			modal.addClass('active');
			return 0;
		}
		
	
	    $(".room__Box")[indexNo].classList.replace('show','hidden');
	    $(".room__Box")[indexNo+1].classList.replace('hidden','show');
	    
	    indexNo+=1;
	})
	 
	  $('#prevBtn').on('click',function(){
	  
	  	if(indexNo==0){
			return 0;
		}
	  
	     $(".room__Box")[indexNo].classList.replace('show','hidden');
	     $(".room__Box")[indexNo-1].classList.replace('hidden','show');
	
	    indexNo-=1;
	 })
	
	
	
	// 모달 페이지
	 
	$('.modal-button').on('click',function(){
		modal.removeClass('active');
	});
	
	$('#modal-container').on('click',function(){
		modal.removeClass('active');
	});
	
	
	// 주소 검색
	
	$('.Button_AddressSearchBtn').on('click',function(){
 		new daum.Postcode({
 			// 팝ㅇ버 창에서 검색 결과 클릭했을 때
 			oncomplete:function(data){
 				var address1 = "";
 				
 				// 도로명 주소인 경우
 				if(data.userSelectedType =='R'){
 					address1 = data.roadAddress + "(" + data.bname + data.buildingName + ")";
 				}else{	// 지번 주소인 경우
 					address1 = data.jibunAddress;
 				}
 				
 				// 입력란에 검색한 우편번호, 주소1 출력
 				document.getElementById('zipcode').value = data.zonecode;
 				document.getElementById('address1').value = address1;
 				
 				// 상세 주소 입력란에 입력한 값은 삭제하고 포커스 주기
 				var address2 = document.getElementById('address2');
 				address2.value="";
 				address2.focus();
 			}
 		}).open();
 	});
	
	// 글자수 표기
	$('.title_box').keyup(function (e) {
		let content = $(this).val();
	    
	    // 글자수 세기
	    if (content.length == 0 || content == '') {
	    	$('.textCount').text('0자');
	    } else {
	    	$('.textCount').text(content.length + '자');
	    }
	    
	    // 글자수 제한
	    if (content.length >= 30) {
	    	$('.textCount').text('30자');
	        $(this).val($(this).val().substring(0, 30));
	    };
	});
	
	$('.title_box').keydown(function (e) {
		let content = $(this).val();
		
	    if (content.length >= 30) {
	        $(this).val($(this).val().substring(0, 30));
	    };
	});
	
	// 드롭다운 구현
	
	/* 화살표 함수 */
	const label = document.querySelectorAll('.label');
	
	label.forEach(function(lb){
	    lb.addEventListener('click', e => {
	        let optionList = lb.nextElementSibling;
	        let optionItems = optionList.querySelectorAll('.optionItem');
	        clickLabel(lb, optionItems);
	    })
	});
	
	const clickLabel = (lb, optionItems) => {
    if(lb.parentNode.classList.contains('active')) {
        lb.parentNode.classList.remove('active');
        optionItems.forEach((opt) => {
            opt.removeEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
    } else {
        lb.parentNode.classList.add('active');
        optionItems.forEach((opt) => {
            opt.addEventListener('click', () => {
                handleSelect(lb, opt)
            })
        })
   		}
	}
	const handleSelect = (label, item) => {
	    label.innerHTML = item.textContent;
	    label.parentNode.classList.remove('active');
	}
	
	// 라벨을 클릭시 옵션 목록이 열림/닫힘
	label.addEventListener('click', () => {
	  if(label.parentNode.classList.contains('active')) {
	  	label.parentNode.classList.remove('active');
	  } else {
	  	label.parentNode.classList.add('active');
	  }
	})
});
 
 