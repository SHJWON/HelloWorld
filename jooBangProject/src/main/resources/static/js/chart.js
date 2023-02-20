/**
 * 
 */
$(document).ready(function() {
			var roomNameList=$(".roomName").get(); 
			var roomRentList=$(".roomRent").get(); 
			
			var roomNames=[];
			var roomRents=[];
			for(var i=0;i<roomNameList.length;i++){
			 roomNames.push(roomNameList[i].value);
			 roomRents.push(roomRentList[i].value);
			}
			
			
			
			var ctx = document.getElementById('myChart');
			var myChart = new Chart(ctx, {
				type : 'bar',
				data: {
        labels:roomNames,
        datasets: [{
            label: '가격',
            data: roomRents,
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ],
						borderColor : [ 'rgba(255, 99, 132, 1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ],
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
			  
			  
