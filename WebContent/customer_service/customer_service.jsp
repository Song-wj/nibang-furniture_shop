<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
		  	<div class="customer_service">
				<div>
					<h1>고객센터 안내</h1>
					<label>서비스 신청 및 다양한 문의를 실시간으로 편리하게 해결하실 수 있습니다.</label>
				</div>
				<div >
					<div class="kdiv"><a href="" class="kakao" > <br><span>카톡문의</span></a></div>
					<div class="mdiv"><a href="#open"  class="message"><br><span>쪽지문의</span></a></div>					  
						<div class="white_content" id="open">
						<div class="inquiry_content"  id="inquiry_content">
							<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
							<h3>쪽지 문의</h3>
							<form name="inquiryform1" action="#" method="get" class="inquiryform1">
								<ul>
									<li>
										<label>문의구분</label>
										<select name="inquiry_kinds" id="inquiry_kinds">
							  				<option value="선택">선택</option>
							  				<option value="상품문의">상품문의</option>
							  				<option value="주문/결제/취소">주문/결제/취소</option>
							  				<option value="배송">배송</option>
							  				<option value="교환/반품">교환/반품</option>
							  				<option value="회원정보">회원정보</option>
							  				<option value="사이트이용">사이트이용</option>
							  				<option value="이벤트/프로모션">이벤트/프로모션</option>
							  				<option value="기타문의">기타문의</option>
										</select>
									</li>
									<li>제목</li>
									<li><input type="text" name="ititle"></li>
									<li>상세 내용</li>
									<li><textarea name="icontent"></textarea></li>
									<li>	
										<input type="file" name="ifile">
									</li>
									<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
									<li>최대 5개 파일 업로드 가능</li>				
								</ul>
									<button type="button">신청하기</button>
							</form>
						</div>        
					</div>
				</div>

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
					<button type="button">매장 안내 바로가기</button>
			    </div>
			    <div>
			    	<table class="click_img">
			    		<tr>		    			
			    			<td><a href=""><img src="../images/notice.png"><label>공지사항</label></a></td>
			    			<td><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp"><img src="../images/faq.png"><label>fAQ</label></a></td>
			    			<td><a href=""><img src="../images/question.png"><label>1:1 문의</label></a></td>		    			
			    		</tr>
			    	</table>
			    </div>		    
		   </div>
		</section>
		<jsp:include page="../nibangBanner.jsp"/>
		<jsp:include page="../footer.jsp" />
	</body>
</html>
