/**
 * registMove.js
 */
 
$(document).ready(function(){
 	// 버튼 누를 시 이동
	 var indexNo=0;
	 
	 const modal = $("#modal-container");
	 
	 $('#nextBtn').on('click',function(){
		
		if(indexNo>=($(".room__Box").length-1)){
			$('#nextBtn').prop("type","submit");
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

		ProgressBar_Move(indexNo);
	    
	})
	 
	  $('#prevBtn').on('click',function(){
	  
	  	if(indexNo==0){
			return 0;
		}
	  
	     $(".room__Box")[indexNo].classList.replace('show','hidden');
	     $(".room__Box")[indexNo-1].classList.replace('hidden','show');
	
	    indexNo-=1;

		ProgressBar_Move(indexNo);
	 })
	
	
	
	// 모달 페이지
	 
	$('.modal-button').on('click',function(){
		modal.removeClass('active');
	});
	
	$('#modal-container').on('click',function(){
		modal.removeClass('active');
	});
	
	$("#postcodify_search_button").postcodifyPopUp();
	// 주소 검색
	/*$("#postcodify_search_button").postcodifyPopUp();
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
 	}); */
	
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
	const label = $('.label');
	//const label = document.querySelectorAll('.label');
	
	label.each(function(){
    	$(this).click(function(e){
	        let optionList = $(this).next();
	        let optionItems = optionList.children('.optionItem');
	        clickLabel($(this), optionItems);
	    })
	}) 
	
	/*label.forEach(function(lb){
	    lb.addEventListener('click', e => {
	        let optionList = lb.nextElementSibling;
	        let optionItems = optionList.querySelectorAll('.optionItem');
	        clickLabel(lb, optionItems);
	    })
	});*/
	
	const clickLabel = (lb, optionItems) =>{
		if(lb.parent().hasClass('active')){
			lb.parent().removeClass('active');
			optionItems.each()
		} else{
			lb.parent().addClass('active');
			optionItems.each(function(){
				$(this).click(function(e){
			        handleSelect(lb, $(this));
			    })			
			})
		}
	}
	
	/* const clickLabel = (lb, optionItems) => {
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
	}*/
	
	const handleSelect = (label, item) => {
		label.children('label').text(item.text());
		label.children('.label_input').val(item.val());
	    label.parent().removeClass('active');
	}

});
 

 function ProgressBar_Move(indexNo){
 		console.log(indexNo);
 
 		// 방정보 진행바 이동
		if(indexNo>=0 & indexNo<=4){
			console.log("1번");
			$(".progress_Container:first-child .progress_bar").css("transition","transform 600ms linear");
			$(".progress_Container:first-child .progress_bar").css("transform","translateX("+indexNo*25+"%)");
		}

		// 방소개 진행바 이동		
		if(indexNo>=5 & indexNo<=9){
			console.log("2번");
			$(".progress_Container:nth-child(2) .progress_bar").css("transition","transform 600ms linear");
			$(".progress_Container:nth-child(2) .progress_bar").css("transform","translateX("+(indexNo%5)*25+"%)");
		}

		// 요금안내 진행바 이동
		if(indexNo>=10 & indexNo<=14){
			console.log("3번");
			$(".progress_Container:last-child .progress_bar").css("transition","transform 600ms linear");
			$(".progress_Container:last-child .progress_bar").css("transform","translateX("+(indexNo%5)*25+"%)");
		}
 }