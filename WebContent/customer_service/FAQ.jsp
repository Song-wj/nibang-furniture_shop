<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FAQ</title>
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
		    <div class ="faq">
			<div>
				<h1>FAQ</h1>
				<label>일룸 서비스에 대해 궁금한 사항을 FAQ로 신속하게 해결해보세요.</label>
			</div>
		    <div >
		    	<input type="text" name="fqa_search">
		    	<button type="button"><img src="http://localhost:9000/sist_project_2/images/search.png"></button> <br>

		    	<span>주문확인</span><div></div>
		    	<span>배송확인</span><div></div>
		    	<span>취소</span><div></div>
		    	<span>반품신청</span><div></div>
		    	<span>교환신청</span>
                </div>
		    <div>
		       <table border="1">
		       		<tr>
		       			<td>자주 묻는 질문</td>
				    	<td>상품</td>
				    	<td>주문/결제/취소</td>
				    	<td>배송/시공</td>
				    	<td>교환/반품</td>
				    	<td>A/S</td>
				    	<td>회원정보</td>
				    	<td>사이트이용</td>
		       		</tr>
		       </table>	    	
		    </div>
		      <div>
		    	<table class="faq_table">
		    		<tr>
		    			<td colspan="4">조회 결과 총 49건이 있습니다.</td>
		    		</tr>	    		
		    		<tr>
		    			<th>구분</th>
		    			<th>제목</th>
		    			<th>등록일</th>
		    			<th>조회수</th>
		    		</tr>
		    		<tr>
		    			<td>상품</td>
		    			<td>가격이 비싸요</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>AS</td>
		    			<td>이사를 하게 되어 가구를 옮겨야 하는데 해체, 재조립해주시나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>주문결제/취소</td>
		    			<td>오래 전 구입한 제품인데, 하자가 나서 A/S를 신청하니 단종된 제품이라고 합니다.</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    	
		    	</table>
		    		</div>
		    			<div>기타 문의사항은 1:1 문의 또는 고객센터(1577-5670)를 이용해주세요.</div>
	    			    <div>1 2 3 4 5 ></div>
		    			
		    </div>
		</section>	
			
		<jsp:include page="../footer.jsp" />
	</body>
</html>