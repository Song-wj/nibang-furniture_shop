<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<% 
	String mid = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객센터</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<style>
			section.section1{
		 		width:1100px;;		 				 			 		
		 		display:inline-block;
		 		height:80%;
		 		padding-top:10%;
		 		margin-bottom:100px;
		 	}	 	
		</style>
	</head>
	<body>
		<jsp:include page="../header.jsp" />
		<section class ="section1">
		<jsp:include page="../sideMenuBar2.jsp"/>			
		  	<div class="customer_service">
				<div>
					<h1>고객센터 안내</h1>
					<label>서비스 신청 및 다양한 문의를 실시간으로 편리하게 해결하실 수 있습니다.</label>
				</div>
				<div></div> <!-- 이 줄 지우지마세요 css 때문에 어쩔수없이 냅뒀어요ㅠㅠ -->
				<div id="third_div">
					<label>고객센터 운영시간</label>
					<div><span>평일</span> 9:30 ~ 17:30  ( 점심시간 12:30 ~ 13:30 ) </div>
					<div><span>주말</span> 9:30 ~ 12:30  ( 쇼핑몰 구매상담 제외 ) </div> 
					<div>일요일 및 법정 공휴일 휴무</div>
				</div>
			   	<div id="forth_div">
			   		<div>1 5 7 7 - 5 6 7 0</div>  
			   		<div>전화로 문의 시 월, 화요일 / 공휴일 다음날은 상담전화가 많아 일정이 다소 지연될 수 있습니다.</div>
			   	</div>
			    <div>
			    	<div>매장 전화문의</div>
			    	<div><span>매장에서 구매하신 제품의 배송문의, 주문내용 변경</span> 등은 해당 대리점에서 문의 가능합니다.</div>
					<div>매장 운영시간은 매장 안내에서 확인하실 수 있습니다.</div>
					<a href="http://localhost:9000/sist_project_2/maps/maps2.jsp"><button type="button">매장 안내 바로가기</button></a>
			    </div>
			    <div>
			    	<table class="click_img">
			    		<tr>		    			
			    			<td><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp"><img src="../images/notice.png"><label>공지사항</label></a></td>
			    			<td><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp"><img src="../images/faq.png"><label>fAQ</label></a></td>
			    			<td><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp"><img src="../images/question.png"><label>1:1 문의</label></a></td>		    			
			    		</tr>
			    	</table>
			    </div>		    
		   </div>
		</section>
		<jsp:include page="../nibangBanner.jsp"/>
		<jsp:include page="../footer.jsp" />
	</body>
</html>
