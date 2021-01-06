<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.vo.*, com.sist_project_2.dao.*"
%>
<%
	String mid = request.getParameter("id");
	String rid = request.getParameter("rid");
	String oid = request.getParameter("oid");
	reviewDAO dao = new reviewDAO();
	reviewVO vo = dao.getContent(rid);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>상품평 수정</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
    }
	.review h1 {
		display: inline-block;
		margin: 10% 30% 3% 30%;
	}	 	
	.review form ul {
		list-style:none;
	}
	.review form ul li:first-child,
	.review form ul li:nth-child(3),
	.review form ul li:nth-child(5){
		font-size: 18px;
		margin:20px 0 10px 230px;
		text-align:center;
		display:inline-block;
	}
	.review form ul li:nth-child(6){
		margin:20px 0 30px 350px;
	}
	.review form ul li input[type="text"],
	.review form ul li textarea {
		width: 400px;
		height: 40px;
		margin: 0 230px;
	}
	.review form ul li textarea {
		height: 150px;
		margin: 0 230px;
	}
	.review #btn_reviewUpdate {
		margin: 5px 0 0 450px;
		background-color: rgb(200, 10, 30);
		border: 1px solid rgb(200, 10, 30);
		color: white;
		width: 200px;
		height: 50px;
	}
	.review #btn_reviewUpdate:hover {
		background-color: rgb(160, 14, 43);
	}	
	
</style>
</head>
<script>
	 $(document).ready(function(){
		
	$("#r_file").change(function(){
		if(window.FileReader){
			var fileName= $(this)[0].files[0].name;
			$("#fname").text("").text(fileName);					
		}
	}); 
	}); 
</script>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<section class ="section1">
		<div class ="content">
		<jsp:include page="../sideMenuBar.jsp"/>
		  	<div class ="review">
				<h1>상품평</h1>
					<form id="reviewform1" name="reviewform1" action="reviewUpdateProc.jsp?id=<%=mid %>" method="post" enctype="multipart/form-data">
						<input type="hidden" name="rid" value="<%=rid%>"> 
						<input type="hidden" name="mid" value="<%=mid%>"> 
						<input type="hidden" name="oid" value="<%=oid%>"> 
							<ul>
								<li>제목</li>
								<li><input type="text" name="r_title" id="r_title" value="<%=vo.getR_title()%>"></li>
								<li>내용을 작성해주세요</li>
								<li><textarea name="r_content" id="r_content"><%=vo.getR_content()%></textarea></li>
								<li>만족도
									<select name="r_satis" id="r_satis" style="margin-left:30px;">
										<option value="<%=vo.getR_satis()%>"><%=vo.getR_satis()%></option>
										<option value="1">👍</option>
										<option value="2">👍👍</option>
										<option value="3">👍👍👍</option>
										<option value="4">👍👍👍👍</option>
										<option value="5">👍👍👍👍👍</option>
									</select>
								</li>
								<li>
								<% if(vo.getR_file() != null){ %>
									<%-- <input type="file" name="r_file" id="r_file"><span id="fname"><%=vo.getR_file() %></span>
								<% }else{ %>
									<input type="file" name="m_file" id="m_file"><span id="fname">선택된 파일 없음</span>
								<% } %> --%>
								<% } %> 
								</li>
								<li>
									<button type="submit" id="btn_reviewUpdate">수정 완료</button>
								</li>
							</ul>
						</form>
					</div>
				</div>
			</section>
			
	<jsp:include page="../nibangBanner.jsp"/>	
	<jsp:include page="../footer.jsp" />	
</body>
</html>