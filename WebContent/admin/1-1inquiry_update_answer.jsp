<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist_project_2.vo.*,com.sist_project_2.dao.*"%>
    
 <%
 	String sid = request.getParameter("sid");
 	messageAnswerDAO dao = new messageAnswerDAO();
 	messageVO vo = dao.getContent(sid);
 	answerVO avo = dao.getAnswerContent(sid);
 %>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<style>
	table.notice_table{
		width:500px;
		margin:50px 0 0 400px;
	}
	
	table.notice_table tr.table_header td#a{
		padding-left:10px;
		text-align:left;
	}
	table.notice_table tr:nth-child(2) p{
		text-align:left;
		margin-left:10px;
	}
	div.answer_div{
		margin-top:200px;
	}
	div.answer_div textarea{
		margin-left:400px;
		margin-top :70px;
		width:400px;
		height:200px;
		resize:none;
		font-size:15px;
		border-radius:15px;
		display:block;
	}
	div.answer_div button#update_answer{
		margin-left:650px;
	}
	
</style>
<script>
$(document).ready(function(){
	$("#update_answer").click(function (){
		if($("#answer_area").val() == ""){
			alert("답변을 입력해주세요");
		}else
			updateAnswerForm.submit();
	})
})
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<section class="section1">
			<div>
					<div class="content">
						<div class="admin"><h1>1:1 문의</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>제목</th>
									<td id="a"><%= vo.getM_title() %></td>
									<th>구분</th>
									<td id="a"><%= vo.getM_div() %></td>
									<th>등록일</th>
									<td id="a"><%= vo.getM_date() %></td>
								</tr>
								<tr>
									<td colspan ='6'>
									<p><%= vo.getM_content()%></p>
									<%if(vo.getM_file() !=null ) {%>
										<p><img src="../upload/<%= vo.getM_sfile() %>"  width=120px height=120px></p>
									<%} %>
									</td>
					    			
								</tr>							
							</table>
						</div>
					</div>
			</div>
			
			<div class ="answer_div">
				<form name="updateAnswerForm" action="1-1inquiry_update_answerProc.jsp?sid=<%= vo.getSid() %>"  method="post">
				<div>
					<textarea name="acontent" id="answer_area" ><%=avo.getAcontent() %></textarea>					
				</div>
				<button type="button" id="update_answer">수정하기</button>				
				<button type="reset" >취소</button>
				</form>
			</div>
		</section>
</body>
</html>