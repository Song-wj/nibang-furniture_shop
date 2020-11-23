<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			div.content{
				border:1px solid white;
				width:95%;
				margin:auto;
			}
			div.content aside.sideMenuBar{
				border:1px solid rgb(170, 170, 170);
				margin-top:9%;
				width:165px;	
				float:left;			
			}
			div.content aside.sideMenuBar ul{
				padding-left:20px;
			}
			div.content aside.sideMenuBar ul li{
				list-style-type:none;
				margin-top:30px;
				font-size:14.5px;
				font-weight:540;
			}
			div.content aside.sideMenuBar ul li:nth-child(3) ,
			div.content aside.sideMenuBar ul li:nth-child(4) ,
			div.content aside.sideMenuBar ul li:nth-child(5) ,
			div.content aside.sideMenuBar ul li:nth-child(7) ,
			div.content aside.sideMenuBar ul li:nth-child(8) ,
			div.content aside.sideMenuBar ul li:nth-child(10) ,
			div.content aside.sideMenuBar ul li:nth-child(11)  {
				margin-top:15px;
			}
			div.content aside.sideMenuBar ul li:nth-child(3) a,
			div.content aside.sideMenuBar ul li:nth-child(4) a,
			div.content aside.sideMenuBar ul li:nth-child(5) a,
			div.content aside.sideMenuBar ul li:nth-child(7) a ,
			div.content aside.sideMenuBar ul li:nth-child(8) a ,
			div.content aside.sideMenuBar ul li:nth-child(10) a,
			div.content aside.sideMenuBar ul li:nth-child(11) a{
				font-size:12px;				
				color:rgb(144, 144, 144);
				text-decoration:none;
				font-weight:0;
			}
			div.content aside.sideMenuBar ul li:nth-child(3) a:hover,
			div.content aside.sideMenuBar ul li:nth-child(4) a:hover,
			div.content aside.sideMenuBar ul li:nth-child(5) a:hover,
			div.content aside.sideMenuBar ul li:nth-child(7) a:hover ,
			div.content aside.sideMenuBar ul li:nth-child(8) a:hover ,
			div.content aside.sideMenuBar ul li:nth-child(10) a:hover,
			div.content aside.sideMenuBar ul li:nth-child(11) a:hover{
				color:rgb(200,10,30);
			}
			div.content div.cancel_info{
				margin-top:9%;
				width:700px;
				margin-left:260px;
				text-align:center;
			
			}
			div.content div.cancel_info>div:first-child{
				font-size:30px;
				font-weight:548;
				margin-bottom:50px;
			}
			div.content div.cancel_info>div:nth-child(2){
				font-size:20px;
				margin-bottom:30px;
			}
			div.content div.cancel_form{
				border:2px solid rgb(244, 244, 244);
				width:730px;
				margin-left:250px;
				margin-top:30px;
				margin-bottom:130px;
			}
			div.content div.cancel_form>div.r1{
				text-align:center;
			}
			div.content div.cancel_form>div.r1>div:first-child{
				margin-top:70px;
				margin-bottom:30px;
				font-size:20px;
			}
			div.content div.cancel_form>div.r1>div:nth-child(2),
			div.content div.cancel_form>div.r1>div:nth-child(3){
				color:rgb(200,10,30);
				font-size:13px;
			}
			div.content div.cancel_form>div.r1>div:last-child{
				margin-top:30px;
				font-size:13.5px;
			}
			div.content div.cancel_form>div.r2{
				border-top:2px solid rgb(244, 244, 244);
				border-bottom:2px solid rgb(244, 244, 244);
				margin:30px 0 80px 80px;
				width:560px;
			}
			div.content div.cancel_form>div.r2 div{
				display:inline-block;	
				width:230px;
				height:180px;	
				padding-top:20px;
				
			}
			div.content div.cancel_form>div.r2 div:first-child{
				float:left;
				margin-left:30px;
			}
		    div.content div.cancel_form>div.r2 div:first-child ul{
		    	padding-left:20px;
		    } 
		    div.content div.cancel_form>div.r2 div:first-child ul li,
		     div.content div.cancel_form>div.r2 div:last-child ul li{
		    	font-size:12.5px;
		    }
		    div.content div.cancel_form>div.r2 div:last-child label,
		    div.content div.cancel_form>div.r2 div:first-child label{
		     	margin-bottom:20px;
		     	font-size:14px;
		     }
		    div.content div.cancel_form>div.r2 div:first-child label>span{
		    	color:rgb(200,10,30);
		    	margin-left:20px;
		    	font-size:15px;
		    }
		     div.content div.cancel_form>div.r2 div:last-child{
		     	width:240px;
		     }
		    div.content div.cancel_form>div.r2 div:last-child label>span{
		    	font-size:17px;
		    	color:rgb(144, 144, 144);
				margin-left:15px;
		    }
			div.content div.cancel_form>div.r2 div:nth-child(2){
				background-color:rgb(244, 244, 244);
				width:3px;
				height:150px;
				float:left;
				margin-right:20px;
				margin-left:20px;
				margin-top:20px;
			}
			div.content div.cancel_form>div.r2 div:last-child label{
				margin-left:22px;
	
			}		
			div.content div.cancel_form>div.r3 div:first-child{
				text-align:center;
				font-size:17px;
				
			} 
			div.content div.cancel_form>div.r3 div{
				font-size:23px;
				margin-bottom:40px;
			}
			div.content div.cancel_form>div.r3 table.rule_table{
				margin-left:80px;
				width:560px;
			}			
			 div.content div.cancel_form>div.r3 table.rule_table td{
				border:1px solid rgb(224,224,224);
				
			} 
			div.content div.cancel_form>div.r3 table.rule_table td{
				font-size:13px;
				height:100px;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:first-child td{
				text-align:center;
				height:30px;
				border-top:1px solid rgb(140,140,140);
				border-left:1px solid white;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:first-child td:first-child{
				width:340px;	
				border-left:1px solid white;			
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(2) td:first-child,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(3) td:first-child{
				padding-left:25px;
				border-left:1px solid white;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:first-child td:last-child,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(2) td:last-child,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(3) td:last-child,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(4) td:last-child{
				border-right:1px solid white;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(2) td,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(3) td,
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(4) td{
				padding-left:20px;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(3) td{
			
				height:150px;
			}
			div.content div.cancel_form>div.r3 table.rule_table tr:nth-child(4) td{
				height:50px;
			}
			div.content div.cancel_form>div.r4 {
				text-align:center;
				margin-top:50px;
			}
			div.content div.cancel_form>div.r4 div:first-child{
				font-size:22px;
				margin-bottom:40px;
			}
			div.content div.cancel_form>div.r4 div:nth-child(2),
			div.content div.cancel_form>div.r4 div:nth-child(3){
				font-size:13px;
				color:rgb(200,10,30);
			}
			div.content div.cancel_form>div.r4 div:nth-child(4){
				margin-top:60px;
			}
			div.content div.cancel_form>div.r4 div:nth-child(4),
			div.content div.cancel_form>div.r4 div:nth-child(5),
			div.content div.cancel_form>div.r4 div:nth-child(6){				
				font-size:13px;
				color:rgb(51,51,51);
			}
			div.content div.cancel_form>div.r4 div:nth-child(6){
				margin-bottom:70px;
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
					<li><a href="#">주문/배송 조회</a></li>
					<li><a href="#">주문/취소 조회</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/cancel_refund_info.jsp">교환/반품/환불 안내</a></li>
					<li>나의 게시글 답변</li>
					<li><a href="#" >1:1문의</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp">상품평 관리</a></li>
					<li>회원정보</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<div class="cancel_info">
			<div>교환/반품/환불 안내</div>
			<div>취소절차</div>
			<div>교환/반품/환불에 대한 문의사항은 1:1 문의 또는 고객센터 1577-5670로 문의 주시기 바랍니다.</div>
		</div>
		<div class="cancel_form">
			<div class="r1">
				<div>교환 및 반품</div>
				<div>가구의 특성상 상품박스를 개봉하거나 설치(조립)이 된 후에는 상품 가치가 하락하여</div>
				<div>재판매가 불가능한 상태이므로 교환/반품 기간이라도 교환/반품이 불가합니다.</div>
				<div>공정거래위원회 표준 약관에 의거하여 납품 후 7일 이내에 교환/반품 신청이 가능합니다.</div>
			</div>
			<div class="r2">
				<div >
					<label>교환 및 반품이 가능한 경우   <span>O</span></label>
					<ul>						
						<li>배송된 상품이 주문 내용과 상이한 경우</li>
						<li>상품에 오염이나 손상이 있는 경우</li>
						<li>상품 자체의 이상 및 결함이 있는 경우</li>
					</ul>
				</div>
				<div></div>
				<div>
					<label>교환 및 반품이 불가능한 경우  <span>X</span></label>
					<ul>						
						<li>상품 박스를 개봉한 경우</li>
						<li>상품을 설치(조립)한 경우</li>
						<li>고객님의 사용 및 부주의로 인하여 상품 가치가 감소한 경우</li>
					</ul>
				</div>
				</div>
				<div class="r3">
					<div>주문취소 및 교환/반품 비용 규정</div>
					<table	class="rule_table">
						<tr>
							<td colspan="2">구분</td>
							<td>반품비</td>
						</tr>
						<tr>
							<td>주문취소<br>(납품 전)</td>
							<td>배송 3일전 오후 6시 <br>~ <br>배송당일</td>
							<td>구매금액의 10% <br>(50,000원 이하 상품은 5,000원 정액)</td>
						</tr>
						<tr>
							<td rowspan="2">교환/반품<br>(납품 후)</td>
							<td>7일 이내</td>
							<td>박스 개봉 전<br>
								구매금액의 10% (50,000원 이하 상품은 5,000원 정액)<br><br>
								박스 개봉 후<br>
								구매금액의 50%</td>
						</tr>
						<tr>
							<td>7일 이후</td>
							<td>교환/반품 불가</td>
						</tr>
					</table>
				</div>
				<div class="r4">
					<div>환불 안내</div>
					<div>소비자 보호 규정에 의거하여 주문의 취소일 혹은 재화 등을 반환받은 날로부터</div>
					<div>영업일 3일 이내에 결제 금액을 환불해 드립니다.</div>
					<div>단, 신용카드 결제 일자에 맞추어 대금이 청구될 경우, 익월 신용카드 대금청구 시 카드사에서</div>
					<div>환급 처리됩니다. 무통장입금의 경우에는 주문의 취소 혹은 제품 회수 후 입금 계좌가 확인되면</div>
					<div> 3일 이내에 환불해 드립니다. (토요일, 일요일 및 공휴일은 제외)</div>
					</div>
				</div>
				
			</div>
		
		<jsp:include page="../footer.jsp" />
	</body>
</html>