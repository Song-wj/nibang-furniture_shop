<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.content {
	border: 1px solid white;
}

section.section1 div.login {
	border: 1px solid lightgray;
	max-width: 500px;
	margin: auto;
	text-align: center;
	margin-top: 200px;
	margin-bottom: 200px;
	padding: 30px;
}

section.section1 div.login h3 {
	padding-top: 25px;
	padding-bottom: 40px;
	border-bottom: 1px solid lightgray;
	margin-bottom: 30px;
}

section.section1 div.login form ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
}

section.section1 div.login form li {
	margin: 15px;
}

section.section1 div.login form input.textfield {
	width: 100%;
	height: 40px;
	text-indent: 10px;
}

form ul li div.link {
	display: flex;
	align-items: center;
	flex-direction: row;
	justify-content: flex-end;
	font-size: 14px;
}
form ul li div.all {
	display:flex;
	justify-content: space-between;
	margin-top:30px;
}
form ul li div.idCheckbox {
	display:flex;
	align-items:center;
}
form ul li a {
	text-decoration: none;
	color: black;
	flex: 0 1 auto;
}

section.section1 div.login form button {
	width: 45%;
	height: 45px;
	padding: 10px 20px;
	background-color: rgb(200, 10, 30);
	border: none;
	font-family: "나눔바른고딕";
	color: white;
	font-size: 14px;
	font-weight: 700;
	margin-top:20px;
}

section.section1 div.login form button:hover {
	opacity: 0.5;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />

	<div class="content">
		<section class="section1" id="section1_login">
			<div class="login">
				<h3>로그인</h3>
				<form name="loginForm" action="#" method="get" class="loginform">
					<ul>
						<li><input type="text" name="id" placeholder="아이디(이메일)" class="textfield">
						</li>
						<li><input type="text" name="pass" placeholder="비밀번호" class="textfield">
						</li>
						<li>
							<div class="all">
								<div class="idCheckbox">
								<input type="checkbox" class="checkbox">
								<div style="margin-left:10px; font-size:14px;">아이디저장</div>
								</div>
								<div class="link">
									<a href="http://localhost:9000/sist_project_2/join/join.jsp">회원가입</a>
									<div
										style="background-color: lightgray; width: 2px; height: 15px; margin: 0 10px;"></div>
									<a href="#">아이디,패스워드 찾기</a>
								</div>
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
	<jsp:include page="../footer.jsp" />
</body>
</html>