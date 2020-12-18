<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
	nibangDAO dao = new nibangDAO();
	ArrayList<faqVO> list = dao.getFAQList();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FAQ</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<style>
		 		
		 	section.section1{
		 		width:1100px;;		 				 			 		
		 		display:inline-block;
		 		height:80%;
		 		padding-top:10%;
		 		margin-bottom:100px;
		 	}
			
			.subject {
				text-align: center;
			}
			
			.subject td:nth-child(1) {
				letter-spacing: -1.5px;
			}
			
			.contents td {
				background-color: #f0f0f0;
			}
			
		</style>
 		<script>
			function slideDown(fid) {
				$("#"+fid+" div").toggle();
			} 
		</script> 
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
		    		<%for(faqVO vo : list) { %>
		    		<tr class="subject" onclick="slideDown('<%= vo.getFid() %>')"> 
		    		<!-- <tr class="subject"> -->
		    			<td><%= vo.getF_div() %></td>
		    			<td><%= vo.getF_title() %></td>
		    			<td><%= vo.getF_date() %></td>
		    			<td><%= vo.getF_views() %></td>
		    		</tr>
		    		<tr class="contents" id="<%=vo.getFid() %>">
		    			<td colspan="4">
							<div style="display: none;">
								<p><%= vo.getF_content() %></p>
							</div>
						</td>
		    		</tr>
		    		<% } %>
		    	</table>
		    		</div>
		    			<div>기타 문의사항은 1:1 문의 또는 고객센터(1577-5670)를 이용해주세요.</div>
	    			    <div>1 2 3 4 5 ></div>
		    			
		    </div>
		</section>	
			
		<jsp:include page="../footer.jsp" />
	</body>
</html>