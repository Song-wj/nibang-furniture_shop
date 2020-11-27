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
<title>1:1 문의</title>
</head>
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
		 	.section1 aside.sideMenuBar2 ul li:nth-child(2) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(3) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(4) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(5) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(6) a:hover,
		 	.section1 aside.sideMenuBar2 ul li:nth-child(7) a:hover{
		 		color:rgb(200,10,30);
		 	}		
		 	.section1 div div:first-child{
		 		margin-left:35%;
		 	}
		 	.section1 div div:first-child h1{
		 		margin-top:20px;
		 		margin-bottom:30px;
		 		padding-left:180px;
		 	}
		 	.section1 div div:first-child label{
		 	    font-size:18px;
		 		width:700px;
		 		margin-left:150px; 		
		 	}

		 	.section1 div div:nth-child(2) div:first-child{
		 		margin-left:50px;
		 		margin-right:20px;
		 	}
		 	.section1 div div:nth-child(2) div.kdiv,
		 	.section1 div div:nth-child(2) div.mdiv{
		 		display:inline-block;
		 		text-align:center;
		 		width:270px;
		 		height:170px;
		 		border:1px solid black;
		 		margin-top:30px;		 		
		 	}		
		

		      a.kakao{
		        display:inline-block;
		        width:270px;
		        height:170px;
		     	background-image: url('http://localhost:9000/sist_project_2/images/talk1.png');
		 		background-size:30px;
		 		background-repeat:no-repeat;
		 		background-position:3.2cm 50px;
		 		
		     }
		     a.kakao span{
		     	color:black;
		     	display:inline-block;
		     	font-size:13px;
		     	margin-top:70px;
		     	font-weight:600;
		     }
		      a.kakao:hover{
		      	background-image: url('http://localhost:9000/sist_project_2/images/talk2.png');
		      
		      }
		       a.message{
		        display:inline-block;
		        width:270px;
		        height:170px;
		     	background-image: url('http://localhost:9000/sist_project_2/images/talk3.png');
		 		background-size:27px;
		 		background-repeat:no-repeat;
		 		background-position:3.2cm 50px;
		 		
		     }
		     a.message span{
		     	color:black;
		     	display:inline-block;
		     	font-size:13px;
		     	margin-top:70px;
		     	font-weight:600;
		     }
		      a.message:hover{
		      	background-image: url('http://localhost:9000/sist_project_2/images/talk4.png');
		      
		      }
		 	.section1 div>div#third_div{
		 		display:inline-block;
		 		margin-top:70px;
		 		margin-left:33%;
		 		width:567px;
		 		border-top:1px solid rgb(170,170,170);		
		 		padding-top:40px; 		
		 	}
		 	.section1 div>div:nth-child(3) label:first-child{
		 		font-weight:bold;
		 		font-size:15px;
		 		margin-bottom:20px;
		 	}
		 	.section1 div>div:nth-child(3)>div:nth-child(3){
		 		margin:10px 0 0 0;
		 	}
		 	.section1 div>div:nth-child(3) div>span{
		 		display:inline-block;
		 		border:1px solid rgb(170,170,170);
		 		width:50px;
		 		height:30px;
		 		text-align:center;
		 		padding-top:4px;
		 		border-radius:4px;
		 		margin-right:5px;
		 	}
		 	.section1 div>div:nth-child(3) div:last-child{
		 		color:black;
		 		font-size:12px;
		 		font-weight:bold;
				margin:10px 0 30px 0;
		 	}	 	
		 	.section1 div div:nth-child(2) img:hover{
		 	}		 
		 	
		 	.white_content {
		    position: fixed;
		    top: 0;
		    right: 0;
		    bottom: 0;
		    left: 0;
		    background: rgba(0, 0, 0, 0.8);
		    opacity:0;
		    -webkit-transition: opacity 400ms ease-in;
		    -moz-transition: opacity 400ms ease-in;
		    transition: opacity 400ms ease-in;
		    pointer-events: none;
			}
			.white_content:target {
			    opacity:1;
			    pointer-events: auto;
			} 
			.white_content > div {
				position: absolute;
				top: 100px;
				left: 400px;
				width: 500px;
				height: 500px;
				padding: 16px;
				border: 2px solid red;
				background-color: white;
				overflow: auto;	
			}
		
			form.inquiryform1{
				color:rgb(51,51,51);
				font-weight:450;
			}
	
			.inquiry_content h3{
				margin-left:170px;
				padding:40px 0 30px 0 ;
				color:rgb(51,51,51);
			}
			.inquiry_content form.inquiryform1 ul li:first-child label{
				font-size:15px; 
				color:rgb(51,51,51);
				font-weight:450;
				display:inline-block;
				width:90px;
				margin-left:0;
				margin-bottom:7px;
			}
			.inquiry_content form.inquiryform1 ul li{
				list-style-type:none;
				font-size:14px;

			}			
			.inquiry_content form.inquiryform1 ul li select{
				width:307px;
				height:40px;
				margin-bottom:10px;
			}
			.inquiry_content form.inquiryform1 input[type="text"]{
				width:400px;
				height:40px;
				margin:10px 1px;
			}
			.inquiry_content form.inquiryform1 textarea {
				width:400px;
				height:150px;
				margin:10px 1px 30px 1px;
			}
			.inquiry_content form.inquiryform1 ul li:nth-child(7),
			.inquiry_content form.inquiryform1 ul li:nth-child(8){
				color:rgb(200,10,30);
				font-size: 13px;
				font-weight:400;
				margin:10px 0;
			}
			.inquiryform1 button{
				width:200px;
				height:50px;
				margin:25px 110px 25px 130px;
				background-color:rgb(200,10,30);
				border:1px solid rgb(200,10,30);
				color:white;
			}
			.inquiryform1 button:hover{
				 background-color:rgb(160,14,43);
			}
			.inquiry_content a{
				float:right;
				margin:20px 15px;
			}
</style>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<section class ="section1">
			<aside class="sideMenuBar2">
			<nav>
				<ul>
				    <li>고객센터</li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/customer_service.jsp">고객센터 안내</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/notice.jsp">공지사항</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/FAQ.jsp">FAQ</a></li>
					<li><a href="#">회원정보</a></li>
					<li><a href="http://localhost:9000/sist_project_2/customer_service/1-1inquiry2.jsp">1:1문의</a></li>
				</ul>	
			</nav>
		   </aside>
		  	<div>
				<div>
					<h1>1 : 1 문의</h1>
					<label>궁금하신 사항을 남겨주세요.</label>
				</div>
				<div >
					<div class="kdiv"><a href="" class="kakao" > <br><span>카톡문의</span></a></div>
					<div class="mdiv"><a href="#open"  class="message"><br><span>쪽지문의</span></a></div>					  
						<div class="white_content" id="open">
						<div class="inquiry_content"  id="inquiry_content">
							<a href="#close"><img src="http://localhost:9000/sist_project_2/images/option_delete.png"></a>
							<h3>쪽지 문의</h3>
							<form name="inquiryform1" action="#" method="get" class="inquiryform1">
								<ul>
									<li>
										<label>문의구분</label>
										<select name="inquiry_kinds" id="inquiry_kinds">
							  				<option value="선택">선택</option>
							  				<option value="상품문의">상품문의</option>
							  				<option value="주문/결제/취소">주문/결제/취소</option>
							  				<option value="배송">배송</option>
							  				<option value="교환/반품">교환/반품</option>
							  				<option value="회원정보">회원정보</option>
							  				<option value="사이트이용">사이트이용</option>
							  				<option value="이벤트/프로모션">이벤트/프로모션</option>
							  				<option value="기타문의">기타문의</option>
										</select>
									</li>
									<li>제목</li>
									<li><input type="text" name="ititle"></li>
									<li>상세 내용</li>
									<li><textarea name="icontent"></textarea></li>
									<li>	
										<input type="file" name="ifile">
									</li>
									<li>제품 전체 이미지, 부분(파손부위) 이미지를 함께 첨부 바랍니다.<br></li>
									<li>최대 5개 파일 업로드 가능</li>				
								</ul>
									<button type="button">신청하기</button>
							</form>
						</div>        
					</div>
				</div>
				<div id="third_div">
					<label>채팅 상담 운영시간</label>
					<div><span>평일</span> 9:30 ~ 17:30  ( 점심시간 12:30 ~ 13:30 ) </div>
					<div><span>주말</span> 9:30 ~ 12:30  ( 쇼핑몰 구매상담 제외 ) </div> 
					<div>일요일 및 법정 공휴일 휴무</div>
				</div>
			   
		   </div>
		</section>
</body>
</html>