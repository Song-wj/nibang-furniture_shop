<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"
    %>
<%
	String fid = request.getParameter("fid");
	faqDAO dao = new faqDAO();
	
	//1. 선택한 페이지값
	String rpage= request.getParameter("rpage");
	
	//2-1. 페이지 값에 따라서 start, end count 구하기
	//1페이지(1~10) , 2페이지(11~20)...
	int start =0;
	int end=0;
	int pageSize=10; //한 페이지당 출력되는 row
	int pageCount = 1;//전체 페이지수 : 전체 리스트 row / 한 페이지당 출력되는 row
	int dbCount = dao.getListCountExchange() ; // DB연동 후 전체로우수 출력
	int reqPage = 1;//요청페이지
	
	//2-2. 전체페이지 수 구하기
	if(dbCount%pageSize==0){
	   pageCount= dbCount/pageSize;
	}else{
	   pageCount= dbCount/pageSize+1;
	
	}
	
	//2-3. start, end 값 구하기
	if(rpage != null){
	   reqPage = Integer.parseInt(rpage);
	   start = (reqPage -1) * pageSize +1 ;
	   end = reqPage * pageSize;
	}else{
	   start = reqPage;
	   end = pageSize;
	}
	
	ArrayList<faqVO> list = dao.getFAQListExchage(start, end);
	dao.nibangViews(fid);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>FAQ</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/am-pagination.css">
		<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/sist_project_2/js/am-pagination.js"></script>
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
			.contents td#faq_content{
				padding:0;
			}
			.contents td p#faq_content_detail {
				margin-top: -35px;
				margin-left: -30px;
				text-align: left;
				padding: 60px 95px 60px 95px;
				font-weight: normal;
			}
			.page {
				text-align: center;
				margin-left: 15%;
			}
		</style>
 		<script>
	 		$(document).ready(function(){
	 			// 페이지 번호 및 링크
		 			const pager = jQuery("#ampaginationsm").pagination({
	 				maxSize : 5,
	 				totals : <%=dbCount%>,
	 				pageSize : <%=pageSize%>,
	 				page : <%=reqPage%>,
	 				
	 				prevTest : '&lt;',
	 				nextTest : '&gt;',
	 				
	 				btnSize : 'sm'
	 			});
	 			
	 			jQuery("#ampaginationsm").on('am.pagination.change', function(e){
	 				$(location).attr('href','http://localhost:9000/sist_project_2/customer_service/FAQ_exchange.jsp?rpage=' + e.page);
	 				//location.href('이동페이지'); -> javascript
	 			}); 
	 		});
			
		
				function slideDown(fid) {
				
				
				$('.contents div').each(function(){
					if($(this).css('display') == 'block')
						$(this).slideUp('fast');
				}); 
				
				if($("#"+fid+" div").css('display') == 'none') {
					$("#"+fid+" div").css('display','block');
					$("#"+fid+" div").slideDown('fast');
					viewUpdate(fid);
				} else {
					$("#"+fid+" div").css('display','none');
					$("#"+fid+" div").slideUp('fast');
				}   
				
			
				function viewUpdate(nid){
				$.ajax({
					url: "FAQ_Views.jsp?fid=" + fid,
					success: function(data){
							$("."+fid).text(data);
						
					} 
				});
				}
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
		       			<td onClick="location.href='FAQ_hits.jsp'">자주 묻는 질문</td>
				    	<td onClick="location.href='FAQ_product.jsp'">상품</td>
				    	<td onClick="location.href='FAQ_order.jsp'">주문/결제/취소</td>
				    	<td onClick="location.href='FAQ_delivery.jsp'">배송/시공</td>
				    	<td onClick="location.href='FAQ_exchange.jsp'">교환/반품</td>
				    	<td onClick="location.href='FAQ_as.jsp'">A/S</td>
				    	<td onClick="location.href='FAQ_member.jsp'">회원정보</td>
				    	<td onClick="location.href='FAQ_site.jsp'">사이트이용</td>
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
		    			<td><%= vo.getF_div() %></td>
		    			<td><%= vo.getF_title() %></td>
		    			<td><%= vo.getF_date() %></td>
		    			<td class="<%= vo.getFid()%>"><%= vo.getF_views() %></td>
		    		</tr>
		    		<tr class="contents" id="<%=vo.getFid() %>">
		    			<td colspan="4" id="faq_content">
							<div style="display: none;">
								<p id="faq_content_detail"><%= vo.getF_content().replace("\r\n", "<br><br>") %></p>
							</div>
						</td>
		    		</tr>
		    		<% } %>
		    	</table>
		    		</div>
		    			<div>기타 문의사항은 1:1 문의 또는 고객센터(1577-5670)를 이용해주세요.</div>
		    </div>
		    <div id="ampaginationsm" class="page"></div>
		</section>	
		<jsp:include page="../nibangBanner.jsp"/>	
		<jsp:include page="../footer.jsp" />
	</body>
</html>