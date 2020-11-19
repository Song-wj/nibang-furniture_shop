<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="http//:localhost:9000/sist_project_2/css/illum.css">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:include page="../header.jsp" />
		
		<div class="content1">
		<section class="section1">
		    <div class="join">
			<h1>회원가입 </h1>
			<form name="join" action="#" method="get" class="join_from">
				<ul>
					<li><input type="text" name="id" placeholder="아이디(이메일)">
						<input type="text" name="e-mail" > 
						<select>
						    <option value="직접입력">직접입력
							<option value="naver.com">naver.com
							<option value="nate.com">nate.com
							<option value="daum.net">daum.net
							<option value="hanamil.net">hanamil.net
							<option value="gmail.com">gmail.com
							<option value="yahoo.co.kr">yahoo.co.kr
						</select>
						<div>중복확인</div></li>
					<li><input type="text" name="pass" placeholder="비밀번호"> <br>
						<input type="text" name="cpass" placeholder="비밀번호확인"> <br>
						<div>8~15자의 영문, 숫자, 특수문자 조합
						</div></li>
					<li><input type="text" name="name" placeholder="이름"></li>
					<li><input type="text" name="pass" placeholder="생년월일">
						<input type="text" name="pass">
						<input type="text" name="pass">
						<input type="radio" name="sex" >남
						<input type="radio" name="sex" >여
						</li>
					<li><input type="text" name="ph1" placeholder="전화번호">
						<input type="text" name="ph2" >
						<input type="text" name="ph3" >
						<div>중복확인</div></li>
					<li><input type="text" name="addr" placeholder="우편번호"> <button type="button" class="btn_style">찾기</button> <br><br>
						<input type="text" name="addr2" placeholder="도로명주소" class="a"> <input type="text" name="addr3" placeholder="상세주소"></li>
				</ul>
				
					<button type="button" class="btn_style">회원가입</button>
			</form>
		   </div>
		</section>	
		</div>
		<jsp:include page="../footer.jsp" />
	</body>
</html>