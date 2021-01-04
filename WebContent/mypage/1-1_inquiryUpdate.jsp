<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*, java.util.*"
    %>
<% 
	
	String sid = request.getParameter("sid");
	
	
	messageDAO dao = new messageDAO();
	messageVO vo = dao.getContent(sid);
	
	String mid =dao.getId(sid);
	


	
	
	int listAll_cnt = dao.getListCountAll(sid);
	int listProduct_cnt = dao.getListCountProduct(sid);
	int listOrder_cnt = dao.getListCountOrder(sid);
	int listDelivery_cnt = dao.getListCountDelivery(sid);
	int listExchange_cnt = dao.getListCountExchange(sid);
	int listEvent_cnt = dao.getListCountEvent(sid);
	int listEtc_cnt = dao.getListCountEtc(sid);
	int listMember_cnt = dao.getListCountMember(sid);
	int listSite_cnt = dao.getListCountSite(sid);
	ArrayList<messageVO> list =  dao.getInquiryList(sid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>1:1 문의 수정</title>
</head>
<style>
	    section.section1{
		 		width:1100px;		 				 			 		
		 		display:inline-block;
		 		height:80%;
		 		padding-top:10%;
		 		margin-bottom:100px;
		 }		 	
		span#fname {
			display:inline-block;
			width:320px;
			margin-left:-180px; 
			font-size:12px;
			background-color:white;
			padding:2px 0 0 2px;
		}
</style>	
<script>
	$(document).ready(function(){
		
	$("#m_file").change(function(){
		if(window.FileReader){
			var fileName= $(this)[0].files[0].name;
			$("#fname").text("").text(fileName);					
		}
	}) 
	})
</script>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="content">
		<jsp:include page="../sideMenuBar.jsp"/>
			<section class ="section1">
			  	<div class ="inquiry">
						<div class="mdiv"><a href="#open"  class="message"></a></div>					  
							<div class="white_content" id="open">
								<div class="inquiry_content"  id="inquiry_content">
									<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
									<h3>문의 수정</h3>
									<form name="inquiryform1" action="1-1inquiryUpdateProc.jsp" method="post" class="inquiryform1" enctype="multipart/form-data">
										<input type="hidden" name="sid" value="<%=vo.getSid()%>"> 
										<ul>
											<li>
												<label>문의구분</label>
												<select name="m_div" id="m_div">
									  				<option value="<%=vo.getM_div()%>"><%=vo.getM_div()%></option>
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
											<li><input type="text" name="m_title" id="m_title" value="<%=vo.getM_title()%>"></li>
											<li>상세 내용</li>
											<li><textarea name="m_content" id="m_content"><%=vo.getM_content()%></textarea></li>
											<li>	
												<% if(vo.getM_file() != null){ %>
													<input type="file" name="m_file" id="m_file"><span id="fname"><%=vo.getM_file() %></span>
												<% }else{ %>
													<input type="file" name="m_file" id="m_file"><span id="fname">선택된 파일 없음</span>
												<% } %>
											</li>
											<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
											<li>최대 5개 파일 업로드 가능</li>				
											<a href="http://localhost:9000/sist_project_2/mypage/1-1inquiryUpdateProc.jsp?id=<%=vo.getSid()%>"><button type="submit">수정완료</button></a>
										</ul>
									</form>
								</div>        
							</div>
						</div>
				</section>
		</div>	
</body>
</html>