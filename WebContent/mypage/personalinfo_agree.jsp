<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
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
<title>개인정보 수집 및 이용 동의</title>
</head>
<style>
	.personalinfo_agree {
		border:2px solid black;
		color:rgb(51,51,51);
		margin:60px 100px;
	}
	.personalinfo_agree div.title {
		font-size:20px;
		font-weight:600;
		margin:10px 0 0 10px;
	}
	.personalinfo_agree div.title img{
		margin-left:700px;
	}
	
	.personalinfo_agree div.content {
		font-size:14px;
		margin-left:10px;
	}
	.personalinfo_agree div.table {
		margin: 20px 30px 20px 110px;
		font-size:12px;
	}
	.personalinfo_agree div.table th {
		text-align:center;
	}
	.personalinfo_agree div.table td:first-child, 
	.personalinfo_agree div.table td:nth-child(2) {
		padding: 10px 150px 10px 10px;
	}
	.personalinfo_agree div.table td:last-child {
		text-align:center;
	}
</style>

<body>
	<div class="personalinfo_agree" id="personalinfo_agree">
		<div class="title">
			개인정보 수집 및 이용 동의 [선택]
			<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a><br><br>
		</div>
		<div class="content">
			㈜ 일룸(이하 ‘일룸’ 또는 ‘회사’)은 최초 회원 가입 또는 서비스 이용 시 이용자로부터 아래와 같은 개인정보를 수집하고 있습니다. 귀하께서는 선택항목 수집/이용에 <br>
			대한 동의를 거부하실 수 있으며, 이는 서비스 제공에 필수적으로 제공되어야 하는 정보가 아니므로 동의를 거부하시더라도 회원가입, 서비스 이용, 홈페이지 이용 <br>
			등이 가능합니다. 다만 선택항목 수집/이용에 대하여 동의하지 않으실 경우, 이벤트 참여 및 판촉 안내 등 서비스에 제한이 있을 수 있습니다.<br>
		</div>
		<div class="table">
			<table border=2>
				<tr>
					<th>수집항목</th>
					<th>이용목적</th>
					<th>보유 및 이용기간</th>
				</tr>
				<tr>
					<td>- 성명<br>- 이메일주소<br>- 휴대폰번호<br>- 결혼여부<br>- 결혼기념일<br>- 자녀유무<br>
						- 첫자녀탄생연도<br>- 자택주소<br>- 마케팅 수신 동의여부<br>- 플랫폼 이용 동의여부<br>- 관심매장
					</td>
					<td>
						<br><br>
						1. 맞춤서비스 제공 및 이벤트 정보 제공<br> 2. 신규서비스 및 상품 개발<br> 3. 시장조사, 고객만족도조사, 고객별 통계 분석자료 활용<br>
						4. 고객 편의 제공 및 이벤트 경품 배송<br> 5. 광고성 정보 발송<br>
					</td>
					<td>
						<br><br><br>회원 탈퇴 시<br> 또는 <br> 동의 철회 시
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>