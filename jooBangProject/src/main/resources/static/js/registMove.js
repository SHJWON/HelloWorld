/**
 * registMove.js
 */
 
$(document).ready(function(){
 
	 var indexNo=0;
	 
	 const modal = $("#modal-container");
	 
	 $('#nextBtn').on('click',function(){
		
	
		if(indexNo>0&&!($('input:radio').is(':checked'))){
			modal.addClass('active');
			return 0;
		}
		
	
	    document.getElementsByClassName("room__Box")[indexNo].classList.replace('show','hidden');
	    document.getElementsByClassName("room__Box")[indexNo+1].classList.replace('hidden','show');
	    
	    indexNo+=1;
	    console.log(indexNo);
	
	})
	 
	  $('#prevBtn').on('click',function(){
	  
	  	if(indexNo==0){
			return 0;
		}
	  
	    document.getElementsByClassName("room__Box")[indexNo].classList.replace('show','hidden');
	    document.getElementsByClassName("room__Box")[indexNo-1].classList.replace('hidden','show');
	
	    indexNo-=1;
	    console.log(indexNo);
	 })
	 
	$('.modal-button').on('click',function(){
		modal.removeClass('active');
	});
	
	$('#modal-container').on('click',function(){
		modal.removeClass('active');
	});
});
 
 