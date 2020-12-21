<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<% 
	String id = request.getParameter("id");
	String sid = request.getParameter("sid");
	messageDAO dao = new messageDAO();
	messageVO vo = dao.getContent(sid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script>

</script>
<title>1:1 문의 수정</title>
</head>
<style>
	      section.section1{
		 		width:1100px;;		 				 			 		
		 		display:inline-block;
		 		height:80%;
		 		padding-top:10%;
		 		margin-bottom:100px;
		 	}		 	
		 	
</style>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<section class ="section1">
			<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp?id=<%=id%>">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp?id=<%=id%>">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp?id=<%=id%>">FAQ</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp?id=<%=id%>">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
		  	<div class ="inquiry">
					<div class="mdiv"><a href="#open"  class="message"></a></div>					  
						<div class="white_content" id="open">
						<div class="inquiry_content"  id="inquiry_content">
							<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
							<h3>문의 수정ㄴ</h3>
							<form name="inquiryform1" action="1-1inquiryProc.jsp" method="post" class="inquiryform1" enctype="multipart/form-data">
								<input type="hidden" name="sid" value="<%=sid%>"> 
								<ul>
									<li>
										<label>문의구분</label>
										<select name="m_div" id="m_div">
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
									<li><input type="text" name="m_title" id="m_title"><%=vo.getM_title()%></li>
									<li>상세 내용</li>
									<li><textarea name="m_content" id="m_content"><%=vo.getM_content()%></textarea></li>
									<li>	
										<input type="file" name="m_file" id="m_file">
									</li>
									<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
									<li>최대 5개 파일 업로드 가능</li>				
								</ul>
									<a href="http://localhost:9000/sist_project_2/custmer_service/1-1inquiryUpdateProc.jsp"><button type="submit">수정완료</button></a>
									<a href="http://localhost:9000/sist_project_2/custmer_service/1-1inquiryDeleteProc.jsp"><button type="button">삭제하기</button></a>
							</form>
						</div>        
					</div>
				</div>
		</section>
</body>
</html>