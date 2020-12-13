<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.vo.joinVO"%>
    
 <%
 request.setCharacterEncoding("utf-8");

	
	
	String email1 = request.getParameter("id");
	String email2 = request.getParameter("e-mail");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String birth1 = request.getParameter("birth1");
	String birth2 = request.getParameter("birth2");
	String birth3 = request.getParameter("birth3");
	String gender = request.getParameter("gender");
	String phone1 = request.getParameter("ph1");
	String phone2 = request.getParameter("ph2");
	String phone3 = request.getParameter("ph3");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String addr3 = request.getParameter("addr3");
	
	
	
	String id =email1 + "@" + email2;
	String birth = birth1 + "년" + birth2 + "월" + birth3 +"일";
	String addr =  "우편번호=" +addr1+  "상세주소=" +addr2 +" "+ addr3;
	String phone = phone1+ "-" + phone2 + "-" + phone3;
		
	joinVO vo = new joinVO();
	
	vo.setId(id);
	vo.setPass(pass);
	vo.setName(name);
	vo.setGender(gender);
	vo.setPhone(phone);
	vo.setBirth(birth);
	vo.setAddr(addr);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><%= vo.getId() %></li>
		<li><%= vo.getName() %></li>
		<li><%= vo.getPass() %></li>
		<li><%= vo.getGender() %></li>
		<li><%= vo.getAddr() %></li>
		<li><%= vo.getPhone() %></li>
		<li><%= vo.getBirth() %></li>
	</ul>
</body>
</html>