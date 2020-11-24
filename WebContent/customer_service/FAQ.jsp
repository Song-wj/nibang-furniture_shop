<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
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
		<style>
		 		
		 	section.section1{
		 		width:1100px;;		 				 			 		
		 		display:inline-block;
		 		height:80%;
		 		padding-top:10%;
		 		margin-bottom:100px;
		 	}
		 	.section1 aside.sideMenuBar2{
		 		border:1px solid rgb(144, 144, 144);		 		
		 		float:left;
		 		margin-right:100px;
		 		margin-left:50px;
		 		height:300px;	
		 		padding-right:50px;	
		 		margin-top:20px;		 		
		 	}
	 		.section1 aside.sideMenuBar2 ul{
		 		list-style-type: none;	
		 		padding-left:20px;		 	    
		 	}
		 	.section1 aside.sideMenuBar2 ul>li{
		 		font-size:15px;	
		 		margin-top:20px; 			 			 	    
		 	}
		 	.section1 aside.sideMenuBar2 ul>li>a{
		 		text-decoration:none;
		 		color:rgb(144, 144, 144);	 		 
		 	}
		 	.section1 aside.sideMenuBar2 ul>li:first-child>a{
		 		font-size:20px;	
		 		font-weight:10000px;
		 		color:black;
		 		margin-bottom:10px;
		 	}
		 	.section1 div {
		 		margin-left:50px;
		 	}
		 	.section1 div div:first-child {
		 		display:inline-block;
		 		width:600px;
		 		heigth:70px;
		 		text-align:center;
		 		margin-left:30px;		 		
		 	}
		 	.section1 div div:first-child h1{		 		
		 		margin-top:-40px;
		 	}		 		 	
		 	.section1 div div:nth-child(1)>label{
		 		font-size:15px;
		 		margin: 30px 0;	
		 		padding-left:20px;	 
	
		 	}
		 	.section1 div div:nth-child(2)>button{		 		
		 		background-color:white;
		 		border:none;
		 		margin-left:30px;
		 	}
		 	.section1 div div:nth-child(2)>button>img{
		 		width:45px;
		 		height:46px;
		 				 		
		 	}
		 	.section1 div div:nth-child(1){
		 		margin-top:50px;
		 	}
		 	.section1 div div:nth-child(2){
		 		border:1px solid rgb(144, 144, 144);
 	 		    display:inline-block;
		 		width:650px;
		 		height:200px;
		 		padding-top:50px;
		 		margin-left:-5px;
		 		margin-bottom:30px;	
		 		padding-left:130px;	
		 		clear:left;

		 	}
		 	.section1 div div:nth-child(2) >input[type="text"]{
		 		width:350px;
		 		height:50px;
		 		border:3px solid rgb(200, 10, 30);			 			 		
		 	}
		 	.section1 div div span{
		 		display:inline-block;
		 		font-size:13px;
		 		color:rgb(200, 10, 30);
		 		margin-top:30px;
		 		margin-right:5px;
		 		padding-right:9px;
		 	}
		 	.section1 div div:nth-child(2)>div {
		 		display:inline-block;
		 		width:1px;
		 		height:11px;
		 		background-color:lightgray;
		 		margin:0 5px;
		 	}		 
		 	.section1 div div:nth-child(3){
		 		
		 		margin-left:247px;
		 		display:inline-block;
		 		width:638px;
		 	}
		 	.section1 div div:nth-child(3)>table{
		 		border-collaspe:collaspe;
			  	border:1px solid rgb(170,170,170);
			  	width:650px;
			  	margin-left:15px;
		 	}
		 	.section1 div div:nth-child(3)>table td{
		 		padding:5px 10px;
		 		font-size:13px;		 
		 		color:rgb(144, 144, 144);
		 		text-align:center;		 				
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table{
		 		width:660px;
		 		margin-left:210px;
		 		margin-top:30px ;	 		
		 	}			 			 	
		 	.section1 div div:nth-child(4)>table.faq_table,
		 	.section1 div div:nth-child(4)>table.faq_table th,
		 	.section1 div div:nth-child(4)>table.faq_table td{		 		
			  	border-collaspe:collaspe;
			  	border:1px solid #333;
			  	border-left:1px solid white;
		 		border-right:1px solid white;
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table th,
		 	.section1 div div:nth-child(4)>table.faq_table td{
		 		font-size:13.5px;
		 		font-weight:550;
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(2) th{
		 		text-align:center;
		 		color:rgb(144, 144, 144);
		 		font-size:13px;
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr td{
		 		padding:20px 0;
		 		
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(2) th ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(3) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(4) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(5) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(6) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(7) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(8) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(9) td ,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(10) td,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(11) td,
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(12) td{
		 
		 		border-bottom:1px solid lightgray;
		 	
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr:nth-child(13) td{
		 		border-bottom:1px solid white;
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr td:first-child{
		 		text-align:center;
		 	}
		 	.section1 div div:nth-child(4)>table.faq_table tr:first-child td{		 		
		 		color:black;
		 		border-top:1px solid white;
		 		border-bottom:1px solid rgb(144, 144, 144);
		 		font-size:12px;
		 		text-align:right; 
	
		 	}
		    .section1 div div:nth-child(4)>table.faq_table tr td:nth-child(2){
				padding-left:20px;
				padding-right:10px;
			
			}	
			.section1 div div:nth-child(4)>table.faq_table tr td:nth-child(1){
				width:100px;
			}					
		 	.section1 div div:nth-child(4)>table.faq_table tr td:nth-child(4){
		 		width:70px;
		 		text-align:center;
		 	}
		 	.section1 div div:nth-child(5){
		 		text-align:center;
		 		margin-top:10px;
		 		width:747px;
		 		height:50px;
		 		background-color:rgb(240,240,240);
		 		padding-top:10px;
		 		margin-left:200px;
		 		color:rgb(114,114,114);
		 	}
		 	.section1 div div:nth-child(6){
		 		padding-left:50px;
		 		display:inline-block;
		 		margin-left:500px;
		 	}
		    .section1 div div:nth-child(3)>table tr td:hover{
		 		background-color:rgb(99,102,106);
		 		color:white;
		 	} 		 	
		 	.section1 div div:nth-child(4)>table.faq_table tr:hover{
		 		color:rgb(200,10,30);
		 	}
		 	.section1 aside.sideMenuBar2 ul li:nth-child(2) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(3) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(4) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(5) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(6) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(7) a:hover{
		 		color:rgb(200,10,30);
		 	}		 	
		 	.section1 div div:nth-child(2)>button:focus{
		 		outline:none;
		 	}
		</style>
	</head>
	<body>
		<jsp:include page="../header.jsp" />
		<section class ="section1">
			<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="#">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
		    <div>
			<div>
				<h1>FAQ</h1>
				<label>일룸 서비스에 대해 궁금한 사항을 FAQ로 신속하게 해결해보세요.</label>
			</div>
		    <div >
		    	<input type="text" name="fqa_search">
		    	<button type="button"><img src="http://localhost:9000/sist_project_2/images/search.png"></button> <br>

		    	<span>주문확인</span><div></div>
		    	<span>배송확인</span><div></div>
		    	<span>취소</span><div></div>
		    	<span>반품신청</span><div></div>
		    	<span>교환신청</span>
                </div>
		    <div>
		       <table border="1">
		       		<tr>
		       			<td>자주 묻는 질문</td>
				    	<td>상품</td>
				    	<td>주문/결제/취소</td>
				    	<td>배송/시공</td>
				    	<td>교환/반품</td>
				    	<td>A/S</td>
				    	<td>회원정보</td>
				    	<td>사이트이용</td>
		       		</tr>
		       </table>	    	
		    </div>
		      <div>
		    	<table class="faq_table">
		    		<tr>
		    			<td colspan="4">조회 결과 총 49건이 있습니다.</td>
		    		</tr>	    		
		    		<tr>
		    			<th>구분</th>
		    			<th>제목</th>
		    			<th>등록일</th>
		    			<th>조회수</th>
		    		</tr>
		    		<tr>
		    			<td>상품</td>
		    			<td>가격이 비싸요</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>AS</td>
		    			<td>이사를 하게 되어 가구를 옮겨야 하는데 해체, 재조립해주시나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>주문결제/취소</td>
		    			<td>오래 전 구입한 제품인데, 하자가 나서 A/S를 신청하니 단종된 제품이라고 합니다.</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    		</tr>
		    		<tr>
		    			<td>배송/시공</td>
		    			<td>제품을 구입하면 사용하던 제품을 무료로 수거해 주거나 옮겨주나요?</td>
		    			<td>2018.03.13</td>
		    			<td>100</td>
		    	
		    	</table>
		    		</div>
		    			<div>기타 문의사항은 1:1 문의 또는 고객센터(1577-5670)를 이용해주세요.</div>
	    			    <div>1 2 3 4 5 ></div>
		    			
		    </div>
		</section>	
			
		<jsp:include page="../footer.jsp" />
	</body>
</html>