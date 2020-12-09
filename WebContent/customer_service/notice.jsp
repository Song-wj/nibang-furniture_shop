<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
section.section1 {
	width: 1100px;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}
			

div.content h1 {
	margin-top: 20px;
    margin-bottom: 40px;
   	padding-left:51%;
}



</style>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
		<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry.jsp">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
			<div>
					<div class="content">
						<div><h1>공지사항</h1></div>
						<div class="list_body">
							<table class="notice_table">
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
								<tr>
									<td>1</td>
									<td>일룸 이용약관 및 개인정보 처리방침 개정 사전안내</td>
									<td>2020.09.18</td>
									<td>417</td>
								</tr>
								<tr>
									<td>2</td>
									<td>일룸 소식을 구독하는 방법 A to Z</td>
									<td>2020.06.05</td>
									<td>397</td>
								</tr>
								<tr>
									<td>3</td>
									<td>일룸 사칭 피싱 문자 메세지를 주의해주세요.</td>
									<td>2020.05.08</td>
									<td>207</td>
								</tr>
								<tr>
									<td>4</td>
									<td>2020년 11월 무이자 할부 안내</td>
									<td>2020.11.02</td>
									<td>163</td>
								</tr>
								<tr>
									<td>5</td>
									<td>2020년 9월 무이자 할부 안내</td>
									<td>2020.09.01</td>
									<td>426</td>
								</tr>
								<tr>
									<td>6</td>
									<td>2020년 8월 무이자할부 안내</td>
									<td>2020.08.03</td>
									<td>353</td>
								</tr>
								<tr>
									<td>7</td>
									<td>2020년 7월 무이자할부 안내</td>
									<td>2020.07.02</td>
									<td>356</td>
								</tr>
								<tr>
									<td>8</td>
									<td>개인정보 처리방침 변경에 대한 사전안내</td>
									<td>2020.06.11</td>
									<td>255</td>
								</tr>
								<tr>
									<td>9</td>
									<td>6월 무이자할부 안내</td>
									<td>2020.06.01</td>
									<td>517</td>
								</tr>
								<tr>
									<td>10</td>
									<td>5월 무이자할부 안내</td>
									<td>2020.05.15</td>
									<td>355</td>
								</tr>
							</table>
						</div>
					</div>
			</div>
		</section>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>
