<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
.navi {
	background-color: white;
	border: 1px solid #AAA;
	position: absolute;
	padding: 30px 50px 30px 20px;
	text-align: left;
}

p a {
	text-decoration: none;
	cursor: pointer;
	color: #909090;
	font-size: 14px;
}
</style>
<div style="position: relative; top: 40px; left: 14px;">
	<div class="navi">
		<p style="margin-bottom: 30px; font-size: 17px">고객센터</p>
		<p>
			<a href="">고객센터 안내</a>
		</p>
		<p>
			<a href="./notice.jsp" id="notice">공지사항</a>
		</p>
		<p>
			<a href="./FAQ.jsp" id="faq">FAQ</a>
		</p>
		<p>
			<a href="">A/S신청</a>
		</p>
		<p>
			<a href="">분해/설치 신청</a>
		</p>
		<p>
			<a href="">1:1문의</a>
		</p>
	</div>
</div>

<script type="text/javascript">
	var s ="<%=request.getParameter("name")%>";
	document.getElementById(s).style.color = 'rgb(200, 10, 30)';
</script>
</html>