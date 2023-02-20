/**
 * 
 */
$(document).ready(function() {
			var roomNameList=$(".roomName").get(); 
			var roomRentList=$(".roomRent").get(); 
			
			var roomNames=[];
			var roomRents=[];
			var roomColors=[];
			
			
			for(var i=0;i<roomNameList.length;i++){
			 roomNames.push(roomNameList[i].value);
			 roomRents.push(roomRentList[i].value);
			 roomColors.push(getRandomColor());
			}
			
			
			function getRandomColor() {
	     
	     return "#" + Math.floor(Math.random() * 0xffffff).toString(16);
	     
          }
			
			var ctx = document.getElementById('myChart');
			var myChart = new Chart(ctx, {
				type : 'bar',
				data: {
        labels:roomNames,
        datasets: [{
            label: '가격',
            data: roomRents,
						backgroundColor : roomColors,
						borderColor : [ 'rgba(0,0,0, 1)' ],
						borderWidth : 2
					} ]
				},
				options : {
					responsive : false,
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					},
				}
			});
		});
