<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>리뷰 관리</title>
		<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		<style>
			div.content{
				border:1px solid white;
				width:95%;
				margin:auto;
			}
			/* div.content aside.sideMenuBar{
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
			} */
			
			/* div.content div.my_review{
				margin-top:9%;
				width:700px;
				margin-left:260px;
				text-align:center;
			}
			div.content div.my_review div:first-child{
				font-size:35px;
				font-weight:548;
				margin-bottom:50px;
			}
			div.content div.my_review table.r_btn,
			div.content div.my_review table.r_btn td{
				border:1px solid rgb(144, 144, 144);
				
			}
			div.content div.my_review table.r_btn{
				margin-left:40px;
			}
			div.content div.my_review table.r_btn tr td:first-child{
				border:1px solid rgb(200,10,30);
				color:rgb(200,10,30);
			}
			div.content div.my_review table.r_btn tr td:first-child button,
			div.content div.my_review table.r_btn tr td:last-child button{
				width:330px;
				height:50px;
				background-color:white;
				border:1px solid white;
				outline:none;
			}			
			div.content div.my_review table.r_btn tr td:first-child,
			div.content div.my_review table.r_btn tr td:last-child{
				width:350px;
				height:50px;
				font-size:13px;
			}
			div.content div.my_review div:nth-child(3),
			div.content div.my_review div:nth-child(4){
				text-align:center;
				font-size:10px;
				color:rgb(170,170,170);
			}
			div.content div.my_review div:nth-child(3){
				margin-top:50px;
			}
			div.content div.my_review table.review_table,
			div.content div.my_review table.review_table td{
		
			
			}
			div.content div.my_review table.review_table{			
				margin:50px 0 200px 40px;				
				width:670px;
				height:300px;
				border-bottom:1px solid rgb(224,224,224);
				border-top:1px solid rgb(140,140,140);
				color:rgb(170,170,170);
			}
			div.content div.my_review table.review_table tr:first-child{
				text-align:center;
				height:30px;				
				border-bottom:1px solid rgb(224,224,224);
			}			
			div.content div.my_review table.review_table tr:first-child td:first-child{
				width:320px;
				padding-left:130px;
				font-size:12px;
			}
			div.content div.my_review table.review_table tr:first-child td:nth-child(2){
				width:150px;
				font-size:12px;
			}
			div.content div.my_review table.review_table tr:first-child td:nth-child(3){
				width:180px;
				padding-left:50px;
				font-size:12px;
			} */
		</style>
		<script>
		function r_change1(){
			
			var str="";
			str+="<tr>";
			str+="<td>주문번호/주문일</td>";
			str+="<td>상품정보</td>";
			str+="<td>상품평작성</td>";
			str+="</tr>";
			str+="<tr>";
			str+="<td colspan='3' rowspan='3'>구매 내역이 없습니다.</td>";
			str+="</tr>";
			
			document.getElementById("review_table").innerHTML=str;
			
			document.getElementById("btn1").style.border ="1px solid rgb(200,10,30)";
			document.getElementById("btn2").style.border="1px solid black"; 
		}
		
		function r_change2(){
				
			var str="";
			str+="<tr>";
			str+="<td colspan='3' style='padding-right:140px;'>상품정보</td>";			
			str+="</tr>";
			str+="<tr>";
			str+="<td colspan='3' rowspan='3'>리뷰 내역이 없습니다.</td>";
			str+="</tr>";
			
			document.getElementById("review_table").innerHTML=str;
			document.getElementById("btn1").style.border ="1px solid black";
			document.getElementById("btn2").style.border ="1px solid rgb(200,10,30)";
			document.getElementById("btn1").style.borderRight ="1px solid rgb(200,10,30)";
			
			
			}
		</script>
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
					<li><a href="http://localhost:9000/sist_project_2/mypage/myReview.jsp" >상품평 관리</a></li>
					<li>회원정보</li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_update.jsp" class="h_side">회원정보수정</a></li>
					<li><a href="http://localhost:9000/sist_project_2/mypage/member_withdrawal.jsp" class="h_side">회원탈퇴</a></li>
				</ul>
			</nav>
		</aside>
		<div class="my_review">
			<div>상품평 관리</div>
			<table class="r_btn" >
				<tr>
					<td id="btn1"><button type="button" onclick="r_change1()" >작성 가능한 상품평</button></td>
					<td id="btn2"><button type="button" onclick="r_change2()" >작성한 상품평</button></td>
				</tr>
			</table>
			<div>*상품과 무관하거나 오해의 소지가 있는 내용의 상품평은 통보 없이 삭제될 수 있습니다.</div>
			<div>게시물에 대한 상업적/비상업적 권리는 일룸에 귀속됩니다.</div>	
			<div id="change_table">
			<table	class="review_table" id="review_table">
				<tr>
					<td >주문번호/주문일</td>
					<td >상품정보</td>
					<td >상품평작성</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="4">구매 내역이 없습니다.</td>
				</tr>
			</table>
			</div>
		</div>
		
		
		</div>		
		<jsp:include page="../footer.jsp" />
		
	</body>
</html>