<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 div.content {
	 	border:1px solid white; 
		
	} 
	section.section1 div.login {
		/* border:1px solid blue; */
	 	width: 55%;
		margin: auto;
		text-align: center;
		margin-top: 200px;
		margin-bottom: 200px;
		padding-left:200px;
		padding-right:200px;
	}	
	section.section1 div.login h1 {
		padding-bottom: 40px;
		border-bottom: 1px solid lightgray;
		margin-bottom: 30px; 
	}
	section.section1 div.login form ul {
		list-style-type:none;
	}
	section.section1 div.login form input {
		width:100%; height:40px;
		text-indent:10px;
		margin:15px;
	}
	form ul li div.link {
	 	/* border:1px solid green; */
		display:inline-block;
		width:100%; height:40px;
	    padding-left:165px;
		/*padding-right:25px; */
		/* padding-bottom:20px; */
		margin:20px;
	}
	form ul a {
		/*  border:1px solid red;  */
		text-decoration:none;
		padding-left:10px;
		font-size:14px;
	}
	
	section.section1 div.login form button {
  		width:45%; height:45px;
  		padding:10px 20px;
  		background-color:rgb(200,10,30);
  		border:none;
  		font-family:"나눔바른고딕";
  		color:white;
  		font-size:14px;
        font-weight:700;
  	}
  	section.section1 div.login form button:hover {
         opacity:0.5;
    }
</style>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	
	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
			<h1>로그인</h1>
			<form name="loginForm" action="#" method="get" class="loginform">
				<ul>
	                  <li>
	                     <input type="text" name="id" placeholder="아이디(이메일)">
	                  </li>
	                  <li>
	                     <input type="text" name="pass" placeholder="비밀번호">
	                  </li>
			          <li>
			          	<div class="link">
					       	<a href="http://localhost:9000/sist_project_2/join/join.jsp">회원가입</a>
					      	<a href="#">아이디,패스워드 찾기</a>
					    </div>
			          </li>
	                  <li>
	                     <button type="button" class="btn_style">로그인</button>
	                  </li>
	               </ul>
			</form>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>