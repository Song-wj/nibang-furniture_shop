<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "com.sist_project_2.vo.*, com.sist_project_2.dao.*, java.util.*"    
    %>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}

	nibangDAO ndao = new nibangDAO();
	withdrawalDAO wdao = new withdrawalDAO();
	
	ArrayList<joinVO> jlist = ndao.getMember();
	ArrayList<withdrawalVO> wlist = wdao.getWithdrawalList();
%>
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<style>
	div.list_body{
		position: absolute;
		top: 30%;
		left: 13%;
	}
	
	.notice_table tr td{
		text-align: center;
	}
	
	.notice_table {
		width: 100%;
	}
	
	.notice_table tr td:nth-child(5) {
		width: 120px;
	}
	.notice_table tr td:nth-child(7) {
		width: 200px;
	}
	.notice_table tr td:nth-child(8) {
		width: 120px;
	}
	
	h1 {
		text-align: center;
	}
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
		<section class="section1">
			<div>
				<div class="content">
					<div class="admin"><h1>회원정보</h1></div>
						<div class="list_body">
							<table class="notice_table">
							<% if(jlist.size() != 0) { %>
								<tr>
									<th>아이디</th>
									<th>이름</th>
									<th>생년월일</th>
									<th>성별</th>
									<th>연락처</th>
									<th>우편번호</th>
									<th>주소</th>
									<th>가입날짜</th>
								</tr>
								<% for(joinVO vo : jlist) { %>
								<tr>
									<td><%= vo.getEmail() %></td>
									<td><%= vo.getName() %></td>
									<td><%= vo.getBirth() %></td>
									<td><%= vo.getGender() %></td>
									<td><%= vo.getPh() %></td>
									<td><%= vo.getAddr_num() %></td>
									<td><%= vo.getAddr() %></td>
									<td><%= vo.getMdate() %></td>
								</tr>
								<% } %>							
							<% } else { %>
								<tr>
									<th>회원정보가 없습니다.</th>
								</tr>
							<% } %>
							</table>
							
							<h1>탈퇴사유</h1>
							<table class="notice_table">
								<% if(wlist.size() != 0) { %>
								<tr>
									<th>탈퇴 아이디</th>
									<th>탈퇴이유</th>
									<th>기타의견</th>
									<th>탈퇴날짜</th>
								</tr>
								<% for(withdrawalVO vo : wlist) { %>
								<tr>
									<td><%= vo.getDid() %></td>
									<td><%= vo.getD_reason() %></td>
									<td><%= vo.getD_content() %></td>
									<td><%= vo.getDdate() %></td>
								</tr>
								<% } %>		
								<% } else { %>
								<tr>
									<th>탈퇴한 회원이 없습니다.</th>
								</tr>	
								<% } %>				
							</table>
						</div>
					</div>
				</div>
		</section>
</body>
</html>
<%}else {%>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); }%> 