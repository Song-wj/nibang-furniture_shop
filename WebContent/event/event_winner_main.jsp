<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>EVENT</title>
<style>
	/*  #section1_event_winner_main {
		border: 1px solid white;
	}  */
	/* #section1_event_winner_main div {
		text-align: center; 
		width: 90%;
		margin: 8% 0 0 75px;
	}
	#section1_event_winner_main div h4 {
		padding-bottom: 25px;
	}
	#section1_event_winner_main div button {
		width: 240px;
		height: 50px;
	}
	#section1_event_winner_main div button:focus {
		outline: 0 !important;
	}
	.content #section1_event_winner_main div button:nth-child(2){
		border: 1px solid #c80a1e;
		background-color: white;
		color: #c80a1e;
	}
	.content #section1_event_winner_main div button:nth-child(3){
		border: 1px solid #aaaaaa;
		background-color: white;
		color: #333333;
	}
	.content #section1_event_winner_main div button:nth-child(2):hover, 
	.content #section1_event_winner_main div button:nth-child(3):hover {
		background-color: #c80a1e;
		color: white;
		font-weight: 200px;
	}
	
	#section1_event_winner_main .eventTable {
		width: 97%;
		margin-left: 30px;
		margin-top: 30px;
		padding-left: 5px;
		padding-bottom: 130px;
		float: left;
		text-align: left;
	}
	
	#section1_event_winner_main .eventTable div.eventBox {
		display: inline-block;
		width: 373px;
		margin-left: 10px;
		margin-right: 15px;
		margin-top: 10px;
		vertical-align: top;
	}
	#section1_event_winner_main .eventTable .eventBox img{
		width: 373px;
		height: 470px;
	}
	#section1_event_winner_main .eventTable .eventBox .eventBoxTitle,
	#section1_event_winner_main .eventTable .eventBox .eventBoxSubtitle,
	#section1_event_winner_main .eventTable .eventBox .eventBoxDate {
		color: #333333;
		text-align: left;
		margin-left: 0;
		line-height: 20px;
	}
	#section1_event_winner_main .eventTable .eventBox .eventBoxTitle {
		font-size: 16px;
		color: #333333;
		margin-top: 40px;
	}
	#section1_event_winner_main .eventTable .eventBox .eventBoxSubtitle {
		font-size: 13px;
		color: #aaaaaa;
		margin-top: 13px;
	}
	#section1_event_winner_main .eventTable .eventBox .eventBoxDate {
		font-size: 14px;
		color: #aaaaaa;
		margin-top: 14px;
		font-weight: 500;
	}
	#section1_event_winner_main .eventTable div.eventBox:hover {
		font-weight: bold; 
		color: rgb(51, 51, 51);
	}
	footer {
		clear: both;
	} */
 
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_event_winner_main">
			<div>
				<h4>EVENT</h4>
				<button type="button" class="btn_event" onclick="location.href='http://localhost:9000/sist_project_2/event/event_main.jsp'">진행중 이벤트</button>
				<button type="button" class="btn_event" onclick="location.href='http://localhost:9000/sist_project_2/event/event_winner_main.jsp'">당첨자발표</button>
			</div>
			<div class="eventTable">
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event_winner1.jsp"><img src="http://localhost:9000/sist_project_2/images/event_winner1.jpg"></a>
					<div class="eventBoxTitle">나의 로망#일룸하다 이벤트 당첨발표</div>
					<div class="eventBoxSubtitle">일룸생활러 3인과 함께하는 본격 로망 실현 이벤트 [나의 로망 일룸하다] 당첨자를 발표합니다.</div>
					<div class="eventBoxDate">2020-10-21 ~ 2020-10-31</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event_winner1.jsp"><img src="http://localhost:9000/sist_project_2/images/event_winner2.jpg"></a>
					<div class="eventBoxTitle">#나의일룸생활 제품 후기 이벤트 당첨자 발표</div>
					<div class="eventBoxSubtitle">참여해주신 모든 분께 감사드립니다!</div>
					<div class="eventBoxDate">2020-09-01 ~ 2021-09-30</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>