<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>지도페이지</title>
    <script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
   	    <c:import url="/WEB-INF/views/head.jsp"/>
   	       	<link rel="stylesheet" type="text/css" href="<c:url value='/css/map.css' />"> 
    <script src="<c:url value='js/map.js'/>"></script>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=yaysmxugs9&submodules=geocoder"></script>
	<script src="<c:url value='/js/MarkerClustering.js'/>" ></script>
	<script src="https://kit.fontawesome.com/bb34e32cb3.js" crossorigin="anonymous"></script>

</head>
<body>

      <nav>
        <c:import url="/WEB-INF/views/top.jsp"/>
      </nav>
      <div id="wrap">
<div class="menu">
<hr>
<% 
String address= request.getParameter("searchBar");
%>
   <input type="text" id="address" value="<%= address %>">
   <button type="submit" id="mapsubmit"><i class="fa fa-search"></i></button>
  <hr>
<div id="roominfo">
</div>
</div>
<div id="map" style="width:72%; height:800px;">

</div>
</div>
<script>
var areaArr = new Array();  // 지역을 담는 배열 ( 지역명/위도경도 )
var markers = new Array(); // 마커 정보를 담는 배열
var infoWindows = new Array(); // 정보창을 담는 배열
var infoWindowSearch = new naver.maps.InfoWindow({
    anchorSkew: true
});

var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(37.552758094502494, 126.98732600494576), //지도 시작 지점
    zoom: 12
});

function initMap() { 
	
			// 지역을 담은 배열의 길이만큼 for문으로 마커와 정보창을 채워주자 
			
             <c:forEach var="room" items="${roomList }">
		    var marker = new naver.maps.Marker({
		        map: map,
		        title:"동구", // 지역구 이름 
		        position: new naver.maps.LatLng(${room.lat}, ${room.lng}), // 지역구의 위도 경도 넣기 
		        icon: {
		            url:'/image/mark.png', //50, 68 크기의 원본 이미지
		            size: new naver.maps.Size(50, 50),
		            scaledSize: new naver.maps.Size(40, 40),
		            origin: new naver.maps.Point(0, 0),
		            anchor: new naver.maps.Point(12, 34),
		            mapTypeControl: true
		        }

		    });
		    
		    /* 정보창 */
			 var infoWindow = new naver.maps.InfoWindow({
			     content: '<div class="content"style="width:300px;text-align:center;padding:10px;"><a href="<c:url value='/roominfo/${room.roomNo}'/>"><b><img src="/image/registImg/${fn:split(room.roomImage, ',')[0]}"></a><hr>'
			    +'${fn:split(room.roomAddress1, ' ')[0]}' + " " +'${fn:split(room.roomAddress1, ' ')[1]}'+ '</b><br><br>'
			    +'방 개수:'+ ${room.roomBCount} +'화장실 개수:'+ ${room.roomRCount}+'<br><br><b>'
			    +'<span id="roomRent"><fmt:formatNumber value="${room.roomRent}" pattern="#,###"/></sapn>￦ / 주'+'</b></div>'
			 }); // 클릭했을 때 띄워줄 정보 HTML 작성                                                      
			 map.setCursor('pointer');
			 markers.push(marker); // 생성한 마커를 배열에 담는다.
			 infoWindows.push(infoWindow); // 생성한 정보창을 배열에 담는다.
			 </c:forEach>
			
		 
	    function getClickHandler(seq) {
	            return function(e) {  // 마커를 클릭하는 부분
	            	
	                var marker = markers[seq], // 클릭한 마커의 시퀀스로 찾는다.
	                    infoWindow = infoWindows[seq];
	              
	           
	                if (infoWindow.getMap()) {
	                    infoWindow.close();
	                } else {
	                    infoWindow.open(map, marker); // 표출
	                }
	                 
	    		}
	    	
	    	}
	    for (var i=0, ii=markers.length; i<ii; i++) {
	    	console.log(markers[i] , getClickHandler(i));
	        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i)); // 클릭한 마커 핸들러
	   
	    }
	   
	}
				
		
$(document).ready(function(){
	initMap();	
	
	if($("#address").val()!= "null"){
		searchAddressToCoordinate($('#address').val());
	} else{
		$("#address").val("");
	}
	
	var htmlMarker1 = {
	        content: '<div class="htmlMarker"style="cursor:pointer;width:60px;height:60px;line-height:62px;font-size:15px;color:white;text-align:center;font-weight:bold;background:url(/image/ping.png);background-size:contain;"></div>',
	        size: N.Size(40, 40),
	        anchor: N.Point(20, 20)
	    },
	    htmlMarker2 = {
	        content: '<div  style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/image/ping.png);background-size:contain;"></div>',
	        size: N.Size(40, 40),
	        anchor: N.Point(20, 20)
	    },
	    htmlMarker3 = {
	        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/image/ping.png);background-size:contain;"></div>',
	        size: N.Size(40, 40),
	        anchor: N.Point(40, 40)
	    },
	    htmlMarker4 = {
	        content: '<div  class="htmlMarker" style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/image/ping.png);background-size:contain;"></div>',
	        size: N.Size(40, 40),
	        anchor: N.Point(20, 20)
	    },
	    htmlMarker5 = {
	        content: '<div class="htmlMarker" style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(/image/ping.png);background-size:contain;"></div>',
	        size: N.Size(40, 40),
	        anchor: N.Point(20, 20)
	};
	 var markerClustering = new MarkerClustering({
         minClusterSize: 1,
         maxZoom: 10,
         map: map,
         markers: markers,
         disableClickZoom: false,
         gridSize: 100,
         icons: [htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4, htmlMarker5],
         indexGenerator: [10, 100, 200, 500, 1000],
         stylingFunction: function(clusterMarker, count) {
             $(clusterMarker.getElement()).find('div:first-child').text(count);
         }
});
	 function searchCoordinateToAddress(latlng) {

		    infoWindow.close();

		    naver.maps.Service.reverseGeocode({
		        coords: latlng,
		        orders: [
		            naver.maps.Service.OrderType.ADDR,
		            naver.maps.Service.OrderType.ROAD_ADDR
		        ].join(',')
		    }, function(status, response) {
		        if (status === naver.maps.Service.Status.ERROR) {
		            return alert('Something Wrong!');
		        }

		        var items = response.v2.results,
		            address = '',
		            htmlAddresses = [];

		        for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
		            item = items[i];
		            address = makeAddress(item) || '';
		            addrType = item.name === 'roadaddr' ? '[도로명 주소]' : '[지번 주소]';

		            htmlAddresses.push((i+1) +'. '+ addrType +' '+ address);
		        }

		        infoWindow.setContent([
		            '<div style="padding:10px;min-width:200px;line-height:150%;">',
		            '<h4 style="margin-top:5px;">검색 좌표</h4><br />',
		            htmlAddresses.join('<br />'),
		            '</div>'
		        ].join('\n'));

		        infoWindow.open(map, latlng);
		    });
		}
	 function searchAddressToCoordinate(address) {
		    naver.maps.Service.geocode({
		        query: address
		    }, function(status, response) {
		        if (status === naver.maps.Service.Status.ERROR) {
		            return alert('Something Wrong!');
		        }

		        if (response.v2.meta.totalCount === 0) {
		            return alert('잘못입력하셨습니다.');
		        }

		        var htmlAddresses = [],
		            item = response.v2.addresses[0],
		            point = new naver.maps.Point(item.x, item.y);

		        if (item.roadAddress) {
		            htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
		        }

		        if (item.jibunAddress) {
		            htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
		        }

		        if (item.englishAddress) {
		            htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
		        }

		        infoWindowSearch.setContent([
		            '<div style="padding:10px;min-width:200px;line-height:150%;">',
		            '<h4 style="margin-top:5px;">검색 주소 : '+ address +'</h4><br />',
		            htmlAddresses.join('<br />'),
		            '</div>'
		        ].join('\n'));

		        map.setCenter(point);
		      
		    });
		}
	 function initGeocoder() {
		    $('#address').on('keydown', function(e) {
		        var keyCode = e.which;

		        if (keyCode === 13) { // Enter Key
		            searchAddressToCoordinate($('#address').val());
		        }
		    });

		 $('#mapsubmit').on('click', function(e) {
		        e.preventDefault();

		        searchAddressToCoordinate($('#address').val());
		    });

		
		}
	 function makeAddress(item) {
		    if (!item) {
		        return;
		    }

		    var name = item.name,
		        region = item.region,
		        land = item.land,
		        isRoadAddress = name === 'roadaddr';

		    var sido = '', sigugun = '', dongmyun = '', ri = '', rest = '';

		    if (hasArea(region.area1)) {
		        sido = region.area1.name;
		    }

		    if (hasArea(region.area2)) {
		        sigugun = region.area2.name;
		    }

		    if (hasArea(region.area3)) {
		        dongmyun = region.area3.name;
		    }

		    if (hasArea(region.area4)) {
		        ri = region.area4.name;
		    }

		    if (land) {
		        if (hasData(land.number1)) {
		            if (hasData(land.type) && land.type === '2') {
		                rest += '산';
		            }

		            rest += land.number1;

		            if (hasData(land.number2)) {
		                rest += ('-' + land.number2);
		            }
		        }

		        if (isRoadAddress === true) {
		            if (checkLastString(dongmyun, '면')) {
		                ri = land.name;
		            } else {
		                dongmyun = land.name;
		                ri = '';
		            }

		            if (hasAddition(land.addition0)) {
		                rest += ' ' + land.addition0.value;
		            }
		        }
		    }

		    return [sido, sigugun, dongmyun, ri, rest].join(' ');
		}

		function hasArea(area) {
		    return !!(area && area.name && area.name !== '');
		}

		function hasData(data) {
		    return !!(data && data !== '');
		}

		function checkLastString (word, lastString) {
		    return new RegExp(lastString + '$').test(word);
		}

		function hasAddition (addition) {
		    return !!(addition && addition.value);
		}

		naver.maps.onJSContentLoaded = initGeocoder;
        
        });
        
 
</script>

</body>
</html>