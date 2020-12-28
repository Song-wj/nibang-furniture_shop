<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "com.sist_project_2.dao.*,com.sist_project_2.vo.*,java.util.*"%>
<%
	noticeDAO dao = new noticeDAO();

	String rpage= request.getParameter("rpage");
	
	int start =0;
	int end=0;
	int pageSize=10; //한 페이지당 출력되는 row
	int pageCount = 1;//전체 페이지수 : 전체 리스트 row / 한 페이지당 출력되는 row
	int dbCount = dao.getListCount() ; // DB연동 후 전체로우수 출력
	int reqPage = 1;//요청페이지
	
	if(dbCount%pageSize==0){
	   pageCount= dbCount/pageSize;
	}else{
	   pageCount= dbCount/pageSize+1;
	
	}
	
	if(rpage != null){
	   reqPage = Integer.parseInt(rpage);
	   start = (reqPage -1) * pageSize +1 ;
	   end = reqPage * pageSize;
	}else{
	   start = reqPage;
	   end = pageSize;
	}
	
	ArrayList<noticeVO> list = dao.getList(start, end);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/am-pagination.css">
<script src="http://localhost:9000/sist_project_2/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/sist_project_2/js/am-pagination.js"></script>
<style>
section.section1 {
	width: 1100px;
    display: inline-block;
    height: 80%;
    padding-top: 10%;
    margin-bottom: 100px;
}			
div.content h1 {
	margin-top: 20px;
    margin-bottom: 40px;
   	padding-left:51%;
}
table.notice_table{
	width:700px;
}
table.notice_table td.ncontent{
	background-color: #f0f0f0;
}
table.notice_table td.ncontent p{
	text-align:left;
	padding: 20px 0 20px 100px;
	font-weight: normal;
}

	.subject {
		text-align: center;
	}
	.subject td:nth-child(1) {
		letter-spacing: -1.5px;
	}
			
	.contents td {
		background-color: #f0f0f0;
	}
	.contents td#notice_content{
		padding:0;
	}
	.contents td p#notice_content_detail{
		text-align: left;
		padding: 60px 0 60px 105px;
		font-weight: normal;
	}
	.contents td p#notice_img{
		text-align: left;
		padding: 60px 0px 60px 75px;				
	}
	.page {
		text-align: center;
		margin-left: 15%;
	}
	.pageNotice {
		text-align: center;
		width: 400px;
		margin-left: 41%;
	}
</style>
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>

	$(document).ready(function(){
			// 페이지 번호 및 링크
			const pager = jQuery("#ampaginationsm").pagination({
				maxSize : 5,
				totals : <%=dbCount%>,
				pageSize : <%=pageSize%>,
				page : <%=reqPage%>,
				
				prevTest : '&lt;',
				nextTest : '&gt;',
				
				btnSize : 'sm'
			});
			
			jQuery("#ampaginationsm").on('am.pagination.change', function(e){
				$(location).attr('href','http://localhost:9000/sist_project_2/customer_service/notice.jsp?rpage=' + e.page);
				//location.href('이동페이지'); -> javascript
			}); 
		});
	
	function slideDown(nid) {
	
		$('.contents div').each(function(){
			if($(this).css('display') == 'block'){
				$(this).slideUp('fast');
				
			}
		}); 
		
		if($("#"+nid+" div").css('display') == 'none') {
			$("#"+nid+" div").css('display','block');
			$("#"+nid+" div").slideDown('fast');
			viewUpdate(nid); 
		} else {
			$("#"+nid+" div").css('display','none');
			$("#"+nid+" div").slideUp('fast');
		}   
		

		function viewUpdate(nid){
		$.ajax({
			
			url:"noticeView.jsp?nid="+nid,
			success:function(result){			
					$("."+nid).text(result);			
			}
		})
		}
	

		
	}  


</script>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div>
		<section class="section1">
		<jsp:include page="../sideMenuBar2.jsp"/>
			<div>
					<div class="content">
						<div><h1>공지사항</h1></div>
						<div class="list_body">
							<table class="notice_table" >
								<tr class="table_header">
									<th>NO</th>
									<th>제목</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
								<%for(noticeVO vo : list) {%>								
								<tr class="notice_subject" onclick="slideDown('<%=vo.getNid() %>')">
									<td><%= vo.getRno()%></td>
									<td><%= vo.getNtitle()%></td>
									<td><%= vo.getNdate()%></td>
									<td class="<%=vo.getNid() %>"><%=vo.getNviews() %></td>								
								</tr>
								<tr class="contents" id="<%=vo.getNid() %>">
					    			<td colspan="4" id="notice_content">						
					    				<div style="display: none;">				
											<p id="notice_content_detail"><%= vo.getNcontent().replace("\r\n", "<br>") %></p>
							 			<p id="notice_img">
										<%if (vo.getNsfile() != null) {%>
											<img src="http://localhost:9000/sist_project_2/upload/<%=vo.getNsfile() %>" width=150px height=150px >
										<%} %>
										</p> 
										</div>
									</td>
					    		</tr>								
								<% } %>
							</table>
						</div>
					</div>
			</div>
			<div id="ampaginationsm" class="pageNotice"></div>
		</section>
	</div>
	<jsp:include page="../nibangBanner.jsp"/>
	<jsp:include page="../footer.jsp" />
</body>
</html>
