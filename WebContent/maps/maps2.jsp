<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
   
<!DOCTYPE html>
<html>
<head >
    <meta charset="utf-8">
    <title>키워드로 장소검색하고 목록으로 표출하기</title>
    <script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7ce94d4dd9c22ccad809655bc3ab74f&libraries=services"></script>
	<script>
	
		function search_loc(loc){
			
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 4 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(); 
		
		// 키워드로 장소를 검색합니다
		ps.keywordSearch(loc, placesSearchCB); 
		
		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();
		
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }       
		
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        map.setBounds(bounds);
		    } 
		}
		
		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
		    imageSize = new kakao.maps.Size(24, 29), // 마커이미지의 크기입니다
		    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
		    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        
		    	image: markerImage, 
		    	map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });
		
		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
		
		}
		
		$(document).ready(function(){
			
			search_loc("일룸 서울");
		
			$('li').click(function(){
				var a ="일룸"+$(this).attr("id");
				var b =$(this).attr("id");
				search_loc(a);
				store_list(b);
								
				var output =""
				
					$.ajax({
						url:"gu_list.jsp?loc="+$(this).attr("id"),
						success:function(data){
							var jdata = JSON.parse(data);
							
							var output="<ul id='gu'>";
							for(var i in jdata.jlist){
								output += "<li id="+jdata.jlist[i].gu +">"+jdata.jlist[i].gu +"</li>"
							}
							output +="</ul>";
							$("#store_loc").text(""); 					
							$("#store_loc").append(output);
							
							
							$("#gu li").click(function (){
								var gu = "일룸" +$(this).attr("id");
								var c =$(this).attr("id");
								search_loc(gu);
								store_list(c);
								
							})
						}
					
					
						
					})
	
			})
			
			function store_list(loc){
				
				$.ajax({
					url:"store_list.jsp?loc="+$("#"+loc).attr("id"),
					success:function(data){
						
						var jdata = JSON.parse(data);
						$("#store_info").text(""); 		
						var output="";
						for(var i in jdata.jlist){
							
							
							output += "<div class='list_line'>"
							output += "<div><img src='../images/"+jdata.jlist[i].mimg+"' id='store_img'></div>"
							output += "<ul id='store_list'>";
							output += "<li>"+jdata.jlist[i].mloc +"</li>"
							output += "<li>"+jdata.jlist[i].maddr +"</li>"
							output += "<li>"+jdata.jlist[i].mph +"</li>"
							output += "<li>"+jdata.jlist[i].mpark +"</li>"
							output += "<li>"+jdata.jlist[i].mtime +"</li>"
							output += "<li>"+jdata.jlist[i].mholiday +"</li>"
							output +="</ul>";	
							output +="</div>";
						}
						
											
						$("#store_info").append(output); 
					}
					})
				
			}
			
			
			
	})
</script>

    <style>
		.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;height:500px;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;height:400px;margin:90px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center; }
		#menu_wrap .option p {margin:10px 0;}  
		#menu_wrap .option button {margin-left:5px;}
		#placesList li {list-style: none;}
		#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
		#placesList .item span {display: block;margin-top:4px;}
		#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
		#placesList .item .info{padding:10px 0 10px 55px;}
		#placesList .info .gray {color:#8a8a8a;}
		#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#placesList .info .tel {color:#009900;}
		#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
		#placesList .item .marker_1 {background-position: 0 -10px;}
		#placesList .item .marker_2 {background-position: 0 -56px;}
		#placesList .item .marker_3 {background-position: 0 -102px}
		#placesList .item .marker_4 {background-position: 0 -148px;}
		#placesList .item .marker_5 {background-position: 0 -194px;}
		#placesList .item .marker_6 {background-position: 0 -240px;}
		#placesList .item .marker_7 {background-position: 0 -286px;}
		#placesList .item .marker_8 {background-position: 0 -332px;}
		#placesList .item .marker_9 {background-position: 0 -378px;}
		#placesList .item .marker_10 {background-position: 0 -423px;}
		#placesList .item .marker_11 {background-position: 0 -470px;}
		#placesList .item .marker_12 {background-position: 0 -516px;}
		#placesList .item .marker_13 {background-position: 0 -562px;}
		#placesList .item .marker_14 {background-position: 0 -608px;}
		#placesList .item .marker_15 {background-position: 0 -654px;}
		#pagination {margin:10px auto;text-align: center;}
		#pagination a {display:inline-block;margin-right:10px;}
		#pagination .on {font-weight: bold; cursor: default;color:#777;}
		section.map_section{
			border:1px solid white;
		}
		div.map_wrap{
			margin: 150px 0 150px 250px;
		}
		div.bg_white div.select_loc{
			border:1px solid red;
			width:80px;
			height:385px;
  	    	float:left;
		}
		div.bg_white div.select_loc li{
			margin-bottom:10px;
			font-size:10px;
		}
		div.bg_white div.select_loc li button{
			font-size:10px;
			backgroud-color:rgba(255, 255, 255, 0.7);
			border:1px solid white;
		}
		div.bg_white div#store_loc{
			border:1px solid blue;
			width:230px;
			height:385px;
		}
		div.label{
			border:1px solid blue;
			width:750px;
			margin-top:-40px;
			margin-bottom:50px;
			font-size:25px;
			text-align:center;
		}
		section.store_detail{
			margin-bottom:200px;
			height:250px;
		}
		section.store_detail div{
			clear:both;
			display:inline-block; 
			width:50px; 
			height:50px;
			
		}		
		section.store_detail div.list_line{
			border-bottom:0.5px solid lightgray;
			width:700px;
			height:250px;
			margin-left:-50px;
			margin-bottom:30px;
		}
		section.store_detail div#store_info{
			margin-left:300px;
			margin-bottom:50px;
		}
		section.store_detail div#store_info ul{
			display:inline-block;			
			list-style:none;
		}
		section.store_detail div#store_info ul li{
			margin-bottom:10px;
			width:150px;
		}
		section.store_detail div#store_info li:nth-child(2){
			margin-bottom:20px;
		}
		section.store_detail div#store_info li:nth-child(1),
		section.store_detail div#store_info li:nth-child(2){
			font-size:10px;
		}
		section.store_detail div#store_info li:nth-child(3),
		section.store_detail div#store_info li:nth-child(4),
		section.store_detail div#store_info li:nth-child(5),
		section.store_detail div#store_info li:nth-child(6){
			font-size:8px;
		}
		
		img#store_img{
			width:300px; 
			height:200px;			
			margin-bottom:90px;
			
		}
		ul#store_list{
			margin-left:300px;
			
		}
		ul#gu li{
			list-style:none;
			font-size:10px;
			margin-bottom:15px;
		}
		ul#gu li:nth-child(3){
			margin-left:10px;
		}
		ul#gu{
			border:1px solid red;
			width:60px;
			height:300px;
			margin-left:80px;
			margin-top:30px;
		}

		
</style>

</head>
<body>
	<jsp:include page="../header.jsp" />
		<section class ="map_section">
		<div class="map_wrap">
		<div class = "label">매장안내</div>
		    <div id="map" style="width:750px;height:400px;position:relative;overflow:hidden;"></div>
		
		    <div id="menu_wrap" class="bg_white">
		        <div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;">
		                  	<div>
		                  		<div class ="select_loc">
		                  			<ul>
		                  				<li id="서울">서울</li>
		                  				<li id="인천 ">인천</li>
		                  				<li id="대전">대전</li>
		                  				<li id="세종">세종</li>
		                  				<li id="광주">광주</li>
		                  				<li id="대구">대구</li>
		                  				<li id="울산">울산</li>
		                  				<li id="부산">부산</li>
		                  				<li id="제주">제주</li>
		                  				<li id="경기도">경기도</li>
		                  				<li id="강원도">강원도</li>
		                  				<li id="세종">충청도</li>
		                  				<li id="전라도">전라도</li>
		                  				<li id="경상도">경상도</li>
                  					</ul>
		                  		</div>
		                  		<div id ="store_loc">
		                  			
		                  		</div>
		                  	</div>
		                </form>
		            </div>
		        </div>

		        <!-- <ul id="placesList"></ul>
		        <div id="pagination"></div> -->
		    </div>
		</div>
		</section>
		<section class= "store_detail">
			<div id ="store_info">
				
			</div>
		</section> 
	<jsp:include page="../footer.jsp" />
 	
</body>
</html>