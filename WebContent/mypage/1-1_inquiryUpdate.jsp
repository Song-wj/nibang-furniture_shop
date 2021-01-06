<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
%>
<%
	String mid = request.getParameter("id");
	String sid = request.getParameter("sid");
	messageDAO dao = new messageDAO();
	messageVO vo = dao.getContent(sid);

	/* String mid =dao.getId(sid); */
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>1:1문의 수정</title>
<style>	
	div.content {
   		width: 95%;
    	margin: auto;
    } 	
    .inquiry_update h1 {
		display: inline-block;
		margin: 10% 30% 3% 30%;
	}	 	
    .inquiry_update form ul {
		list-style:none;
	}
	.inquiry_update form ul li {
		margin: 6px 230px;
		display:inline-block;
		font-weight:500;
	}
	
	.inquiry_update form ul li:nth-child(7){
		margin-left:350px;
		font-size:14px;
		font-weight:500;
	} 
	
	.inquiry_update form ul li select{
		width: 300px;
		height: 40px;
		margin-left:30px;
	}
	.inquiry_update form ul li input[type="text"],
	.inquiry_update form ul li textarea {
		width: 400px;
		height: 40px;
	}
	.inquiry_update form ul li textarea {
		height: 150px;
	}
	.inquiry_update #btn_inquiryUp {
		margin: 30px 0 100px 230px;
		background-color: rgb(200, 10, 30);
		border: 1px solid rgb(200, 10, 30);
		color: white;
		width: 200px;
		height: 50px;
	}
	.inquiry_update #btn_inquiryUp:hover {
		background-color: rgb(160, 14, 43);
	}	
	span#fname {
		display:inline-block;
		width:320px;
		margin-left:-205px; 
		font-size:13px;
		background-color:white;
		padding:2px 0 0 2px;
	}
	
</style>
</head>
<script>
	 $(document).ready(function(){
		 
		$("#m_file").change(function(){
			if(window.FileReader){
				var fileName= $(this)[0].files[0].name;
				$("#fname").text("").text(fileName);					
			}
		}); 
		
		
		$("#btn_1-1inquiryUp").click(function(){
			if($("#m_div").val() == "선택"){
				alert("문의 구분을 선택해주세요");
				$("#m_div").focus();
				return false;
			}else if($("#m_title").val() == ""){
				alert("제목을 입력해주세요");
				$("#m_title").focus();
				return false;
			}else if($("#m_content").val() == ""){
				alert("내용을 입력해주세요");
				$("#m_content").focus();
				return false;
			}else{
				inquiryform1.submit();
			}
		}); 	
		
	}); 
</script>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<section class ="section1">
		<div class ="content">
		<jsp:include page="../sideMenuBar.jsp"/>
		  	<div class ="inquiry_update">
				<h1>문의 수정</h1>
					<form name="inquiryform1" action="1-1inquiryUpdateProc.jsp" method="post" class="inquiryform1" enctype="multipart/form-data">
						<input type="hidden" name="sid" value="<%=vo.getSid()%>"> 
						<input type="hidden" name="mid" value="<%=vo.getMid()%>"> 
							<ul>
								<li><label>문의구분</label>
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
								<li><a href="http://localhost:9000/sist_project_2/mypage/1-1inquiryUpdateProc.jsp?id=<%=vo.getSid()%>"><button type="submit" id="btn_inquiryUp" style="color:white; text-decoration:none;">수정완료</button></a></li>
							</ul>
						</form>
					</div>
				</div>
			</section>
			
	<jsp:include page="../nibangBanner.jsp"/>	
	<jsp:include page="../footer.jsp" />	
</body>
</html>