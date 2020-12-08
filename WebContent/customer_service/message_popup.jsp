<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
</head>
<body>
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
</body>
</html>