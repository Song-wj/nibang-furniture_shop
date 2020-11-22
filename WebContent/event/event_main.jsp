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
<title>EVENT</title>
<style>
	#section1_event_main {
		border: 1px solid white;
	}
	#section1_event_main div {
		text-align: center; 
		width: 90%;
		margin: 8% 0 0 75px;
	}
	#section1_event_main div h4 {
		padding-bottom: 25px;
	}
	#section1_event_main div button {
		width: 240px;
		height: 50px;
	}
	#section1_event_main div button:focus {
		outline: 0 !important;
	}
	.content #section1_event_main div button:nth-child(2){
		border: 1px solid #c80a1e;
		background-color: white;
		color: #c80a1e;
	}
	.content #section1_event_main div button:nth-child(3){
		border: 1px solid #aaaaaa;
		background-color: white;
		color: #333333;
	}
	.content #section1_event_main div button:nth-child(2):hover, 
	.content #section1_event_main div button:nth-child(3):hover {
		background-color: #c80a1e;
		color: white;
		font-weight: 200px;
		border: 0;
		outline: 0;
	}
	.content #section1_event_main div button:nth-child(2):active, 
	.content #section1_event_main div button:nth-child(3):active {
		border: 0;
		outline: 0;
	}
	
	#section1_event_main .eventTable {
		width: 97%;
		margin-left: 30px;
		margin-top: 30px;
		padding-left: 5px;
		padding-bottom: 130px;
		float: left;
	}
	
	#section1_event_main .eventTable div.eventBox {
		display: inline-block;
		width: 373px;
		margin-left: 10px;
		margin-right: 15px;
		margin-top: 10px;
		vertical-align: top;
	}
	#section1_event_main .eventTable .eventBox img{
		width: 373px;
		height: 470px;
	}
	#section1_event_main .eventTable .eventBox .eventBoxTitle,
	#section1_event_main .eventTable .eventBox .eventBoxSubtitle,
	#section1_event_main .eventTable .eventBox .eventBoxDate {
		color: #333333;
		text-align: left;
		margin-left: 0;
		line-height: 20px;
	}
	#section1_event_main .eventTable .eventBox .eventBoxTitle {
		font-size: 16px;
		color: #333333;
		margin-top: 40px;
	}
	#section1_event_main .eventTable .eventBox .eventBoxSubtitle {
		font-size: 13px;
		color: #aaaaaa;
		margin-top: 13px;
	}
	#section1_event_main .eventTable .eventBox .eventBoxDate {
		font-size: 14px;
		color: #aaaaaa;
		margin-top: 14px;
		font-weight: 500;
	}
	#section1_event_main .eventTable div.eventBox:hover {
		font-weight: bold; 
		color: rgb(51, 51, 51);
	}
	footer {
		clear: both;
	}
}
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<section class="section1" id="section1_event_main">
			<div>
				<h4>EVENT</h4>
				<button type="button" class="btn_event" onclick="location.href='http://localhost:9000/sist_project_2/event/event_main.jsp'">진행중 이벤트</button>
				<button type="button" class="btn_event" onclick="location.href='http://localhost:9000/sist_project_2/event/event_winner_main.jsp'">당첨자발표</button>
			</div>
			<div class="eventTable">
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event1.jpg"></a>
					<div class="eventBoxTitle">#로망실현<br>나의 일룸생활 프로모션</div>
					<div class="eventBoxSubtitle">지금, 일룸에서 더 큰 혜택을 만나보세요</div>
					<div class="eventBoxDate">2020-11-01 ~ 2021-01-10</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event2.jpg"></a>
					<div class="eventBoxTitle">나만의 시간이 필요한 모든 분들을<br>엄마의서재에 초대합니다</div>
					<div class="eventBoxSubtitle">일룸이 모두에게 따듯한 위로를 건넵니다. 이곳, 엄마의서재에서. 한동안 잊고 지냈던 여유와 재충전의 기쁨을 누려보세요.</div>
					<div class="eventBoxDate">2020-10-26 ~ 2021-12-31</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event3.jpg"></a>
					<div class="eventBoxTitle">다독다독 북클럽 모집</div>
					<div class="eventBoxSubtitle">책을 깊게 음미하고, 서로의 생각을 나누며 넓어지는 시간.<엄마를 위한 다독다독 북클럽>에서만나보세요.</div>
					<div class="eventBoxDate">2020-10-22 ~ 2020-11-22</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event4.jpg"></a>
					<div class="eventBoxTitle">엄마의서재에서 만나다</div>
					<div class="eventBoxSubtitle">이현아 선생님과 함께 그림책으로 마음의 숨 쉬기</div>
					<div class="eventBoxDate">2020-11-22 ~ 2020-11-25</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event5.jpg"></a>
					<div class="eventBoxTitle">#나의일룸생활 리빙가구편</div>
					<div class="eventBoxSubtitle">당신의 일룸과 어떻게 살고 있나요? 지금 당신의 이야기를 들려주세요.</div>
					<div class="eventBoxDate">2020-07-01 ~ 2020-12-31</div>
				</div>
				<div class="eventBox">
					<a href="http://localhost:9000/sist_project_2/event/event1.jsp"><img src="http://localhost:9000/sist_project_2/images/event6.jpg"></a>
					<div class="eventBoxTitle">#나의일룸생활 제품 후기 이벤트</div>
					<div class="eventBoxSubtitle">당신의 생활 속에서 일룸과 함께 만든 공간은 어떤 모습인가요?</div>
					<div class="eventBoxDate">2020-07-01 ~ 2020-12-31</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />		
</body>
</html>