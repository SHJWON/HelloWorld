/**
 * registMove.js
 */
 
$(document).ready(function(){
 
 var indexNo=0;
 
 $('#nextBtn').on('click',function(){

    document.getElementsByClassName("room__Box")[indexNo].classList.replace('show','hidden');
    document.getElementsByClassName("room__Box")[indexNo+1].classList.replace('hidden','show');
    
    indexNo+=1;
    console.log(indexNo);

})
 
  $('#prevBtn').on('click',function(){
  
    document.getElementsByClassName("room__Box")[indexNo].classList.replace('show','hidden');
    document.getElementsByClassName("room__Box")[indexNo-1].classList.replace('hidden','show');

    indexNo-=1;
    console.log(indexNo);
 })
 

});
 
 