<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.sist_project_2.dao.*, com.sist_project_2.vo.*"
    %>
<%
	String id = request.getParameter("id");
	nibangDAO dao = new nibangDAO();
	//messageVO vo = dao.getInquiryList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<title>1:1문의</title>
<style>
	div.content {
	    border: 1px solid white;
   		width: 95%;
    	margin: auto;
    }
	summary {
		cursor: pointer;
		list-style: none;
	}
	summary::-webkit-details-marker {
		display:none;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="content">
		<jsp:include page="../sideMenuBar.jsp"/>
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
									<td>문의번호</td>
									<td style="width:150px">구분</td>
									<td style="width:400px">문의내용</td>
									<td>문의날짜</td>
								</tr>
								<tr>
                           			<td>i_134(임시) vo.sid </td>
                           			<td>상품문의 vo.m_div</td>
                           			<td>
                           				<details>
                           					<summary>dddddd vo.m_title</summary>
                           					<p><br>문의 테스트입니다.ㄴㅇㄴㅇㄹㄴㄷㄴㄹㄷㄴㄷㄹㄴ vo.m_content
 	                          				   <br><br>
 	                          					<a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiryUpdate.jsp"><button type="button" style="margin-left:250px;background-color:rgb(200,10,30); color:white;">수정</button></a>
	                           					<a href="http://localhost:9000/sist_project_2/mypage/1-1_inquiryDelete.jsp"><button type="button" style="background-color:rgb(200,10,30); color:white;">삭제</button></a>
                           					</p>
                           				</details>
                           			</td>                           			
                           			<td>2020.12.16 vo.m_date</td>	                           					
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