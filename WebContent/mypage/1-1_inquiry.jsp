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
<title>1:1문의</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
    }
	div.content aside.sideMenuBar {
		border: 1px solid rgb(170, 170, 170);
	    margin-top: 9%;
	    width: 165px;
	    float: left;
	}

	div.content aside.sideMenuBar ul {
		padding-left: 20px;
	}

	div.content aside.sideMenuBar ul li {
		list-style-type: none;
		margin-top: 30px;
		font-size: 14.5px;
		font-weight: 540;
	}

	div.content aside.sideMenuBar ul li:nth-child(3), div.content aside.sideMenuBar ul li:nth-child(4),
	div.content aside.sideMenuBar ul li:nth-child(5), div.content aside.sideMenuBar ul li:nth-child(7),
	div.content aside.sideMenuBar ul li:nth-child(8), div.content aside.sideMenuBar ul li:nth-child(10),
	div.content aside.sideMenuBar ul li:nth-child(11) {
		margin-top: 15px;
	}
	
	div.content aside.sideMenuBar ul li:nth-child(3) a, div.content aside.sideMenuBar ul li:nth-child(4) a,
	div.content aside.sideMenuBar ul li:nth-child(5) a, div.content aside.sideMenuBar ul li:nth-child(7) a,
	div.content aside.sideMenuBar ul li:nth-child(8) a, div.content aside.sideMenuBar ul li:nth-child(10) a,
	div.content aside.sideMenuBar ul li:nth-child(11) a {
		font-size: 12px;
		color: rgb(144, 144, 144);
		text-decoration: none;
		font-weight: 0;
	}

	div.content aside.sideMenuBar ul li:nth-child(3) a:hover, div.content aside.sideMenuBar ul li:nth-child(4) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(5) a:hover, div.content aside.sideMenuBar ul li:nth-child(7) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(8) a:hover, div.content aside.sideMenuBar ul li:nth-child(10) a:hover,
	div.content aside.sideMenuBar ul li:nth-child(11) a:hover {
		color: rgb(200, 10, 30);
	}
	
	div.right_content{
		position: relative;
	    min-height: 600px;
	    width: 800px;
	    margin-left: 18%;
	    margin-top: 107px;
	    text-align: center;
	}
	
	div.title {
		font-size: 35px;
		color: #333;
		margin-bottom: 44px;
	}
	button.inquiry_btn {
		width: 110px;
	    height: 30px;
	    font-size: 13px;
	    border: none;
	    background-color: #63666A;
	    color: #FFF;
	}
	span.cNum {
	    vertical-align: middle;
	    text-align: center;
	    display: inline-block;
	    top: 0px;
	    right: 0px;
	    width: 23px;
	    height: 20px;
	    background-color: #f0f0f0;
	    color: #aaa;
	    border-radius: 50%;
	}
	div.head tr {
	    height: 50px;
	}
	head td {
	    font-size: 15px;
	    cursor: pointer;
	}
	div.duration_btn button {
				display: inline-block;
    			background-color: #fff;
   				width: 182px;
    			height: 50px;
    			font-weight: 300;
    			color: #333;
    			border: none;
    			position: relative;
    			z-index: 0;
    			outline: 1px solid #aaa;
				margin-right: -3px;    			
	}
	div.head {
		border-top: 1px solid #e0e0e0;
	    border-bottom: 1px solid #e0e0e0;
	    padding: 40px 0 40px 0;
    }
	div.body1 {
		padding: 40px 0 35px 0;
	}	
	
	tr.noto td{
		border-top: 1px #aaa solid;
	    border-bottom: 1px solid #f0f0f0;
	    height: 25px;
	    font-size: 13px;
	    color: #aaa;
	    text-align: center;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="content">
		<aside class="sideMenuBar">
				<nav>
					<ul>
						<li>마이페이지</li>
						<li>나의 쇼핑내역</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/order_delivery.jsp">주문/배송 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/search_order_cancel.jsp">주문/취소 조회</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
						<li>나의 게시글 답변</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiry.jsp" >1:1문의</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
						<li>회원정보</li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
						<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
					</ul>
				</nav>
			</aside>
		<div>
			<div class="right_content">
				<div class="title">1:1문의</div>
				<div class="head">
					<table>
						<tbody>
							<tr>
								<td rowspan="3" style="width:110px; text-align:center;">
									<img 
									src="http://localhost:9000/sist_project_2/images/1on1.png"
									style="padding-bottom: 20px; padding-left: 80px;">
									
									<span style="padding-left: 80px;">
										<button type="button" class="inquiry_btn">1:1문의하기</button>
									</span>
								</td>
								<td rowspan="3" style="width:110px;"></td>
								<td class="all" onclick="">전체내역</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">상품문의</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">주문/결제/취소</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
							</tr>
							<tr>
								<td class="">배송/시공</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">교환/반품/환불</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">A/S</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
							</tr>
							<tr>
								<td class="">회원정보</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">사이트이용</td>
								<td style="width:53px">
									<span class="cNum">0</span>
								</td>
								<td class="">기타</td>
								<td style="width:53px">
									<span class="cNum">0</span>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="body1">
					<div class="duration_btn" style="margin-top: 30px;">
						<button type="button" class="duration_btn1">1개월</button>
						<button type="button" class="duration_btn2">3개월</button>
						<button type="button" class="duration_btn3">6개월</button>
						<button type="button" class="duration_btn4">전체</button>
					</div>
					<p style="text-align:center; color: #aaaaaa;
							 margin:40px;	font-size: 15px;">
						최대 3년 이내 주문내역만 조회하실 수 있습니다.</p>
				</div>
				<div class="body2" style="margin-bottom: 100px;">
					<div>
						<table  style="width:100%">
							<tbody>
								<tr class="noto">
									<td style="width:150px">구분</td>
									<td style="width:440px">문의내용</td>
									<td>처리상태</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="noList" style="padding:170px 0; text-align:center;">
						<p style="color:#aaa; font-size:18px;" class="noto">조회 결과가 없습니다.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>