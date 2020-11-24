<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
=======
<title>공지사항</title>
>>>>>>> 6c876f2fab670ae7009fe5fe3e1d7ca699f863cd
<style>
section.section1 {
	width: 100%;
	display: inline-block;
	height: 80%;
	margin-top: 55px;
	margin-bottom: 55px;
}

.title {
	text-align: center;
	font-size: 35px;
}

table.notice_table th {
	text-align: center;
}

table.notice_table td:first-child, table.notice_table td:nth-child(3),
	table.notice_table td:nth-child(4) {
	text-align: center;
}

.section1 div div:nth-child(3)>table {
	border-collaspe: collaspe;
	border: 1px solid rgb(170, 170, 170);
	width: 650px;
	margin-left: 15px;
}

.section1 div div:nth-child(3)>table td {
	padding: 5px 10px;
	font-size: 13px;
	color: rgb(144, 144, 144);
}

table.faq_table {
	width: 750px;
	margin-left: 150px;
	margin-top: 30px;
}

table.notice_table, table.notice_table th, table.notice_table td {
	border-collaspe: collaspe;
	/* 	border: 1px solid #333;
 */
	border-left: 1px solid white;
	border-right: 1px solid white;
}

table.notice_table tr:nth-child(2) th {
	text-align: center;
	color: rgb(144, 144, 144);
	font-size: 13px;
}

table.notice_table tr td {
	padding: 20px 0;
}

table.notice_table tr td:first-child {
	text-align: center;
}

table.notice_table tr:first-child td {
	color: black;
	font-size: 12px;
	text-align: right;
}

table.notice_table tr td:nth-child(2) {
	padding-left: 100px;
}

table.notice_table tr td:nth-child(1) {
	width: 100px;
}

table.notice_table tr td:nth-child(3) {
	padding: 0 50px 0 50px;
}

table.notice_table tr td:nth-child(4) {
	width: 70px;
	text-align: center;
}

table.notice_table tr {
	border: 1px solid #f0f0f0;
	cursor: pointer;
}

table.notice_table tr:hover {
	color: rgb(200, 10, 30);
}

table.notice_table tr:first-child {
	color: #aaa;
	pointer-events: none;
	border-top: 1px #aaa solid;
	font-size: 13px;
	height: 25px;
}

table.notice_table td {
	font-size: 15px;
}

table.notice_table th {
	font-size: 13px;
}
div.title {
padding: 40px 0 40px 0;
}
div.content {
	margin:50px;
}
</style>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
			<jsp:include page="./sidebar.jsp">
				<jsp:param name="name" value="notice" />
			</jsp:include>
			<div>
				<div style="width: 100%; display: flex; justify-content: center;">
					<div class="content">
						<div class="title">공지사항</div>
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
			</div>
		</section>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>
