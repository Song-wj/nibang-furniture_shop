<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.sist_project_2.dao.*,com.sist_project_2.vo.*"%>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");	
	String name="";
	if(svo != null){
		name = svo.getName();
	}
%>
<%if(name.equals("관리자")) {%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/sist_project_2/css/illum.css">
<script src = "http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
</head>
<style>   
   form ul li label {      
      float:left;
      margin-right:10px;
   }
   form ul li{
      margin-bottom:15px;
      list-style:none;
   }
   form input#ntitle{
      width:343px;

   }
   form button#nw_btn{
      margin-left:550px;
   }
</style>
<script>
   $(document).ready(function (){
      $("#nw_btn").click(function (){
         if($("#ntitle").val() ==""){
            alert("제목을 입력해주세요");
            $("#ntitle").focus();
         }else if($("#ncontent").val() ==""){
            alert("내용을 입력해주세요");
            $("#ncontent").focus();
         }else
            noticeWriteForm.submit();
      })
   })
</script>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<section class ="section1">
            <div class="content">
            <div class="admin"><h1>공지사항 등록</h1></div>
              <form name ="noticeWriteForm" action="noticeWriteProc.jsp" method="post" enctype="multipart/form-data">
                 <ul>
                    <li><label>제목</label>
                       <input type="text" name="ntitle" id="ntitle" >
                    </li>
                    <li><label>내용</label>
                        <textarea rows="10" cols ="50" name ="ncontent" id="ncontent"></textarea>
                     </li>
                     <li><label>첨부 파일</label>
                        <input type="file" name="nfile" >
                     </li>                    
                 </ul>
                 <button type ="button" id="nw_btn">등록</button>
                 <button type ="reset">취소</button>
              </form>
           </div>
   </section>
</body>
</html>
<%}else %>
<%out.println("<script>alert('관리자만 접근 가능합니다.');</script>");
out.println("<script>location.href='http://localhost:9000/sist_project_2/login/login.jsp'</script>"); %> 