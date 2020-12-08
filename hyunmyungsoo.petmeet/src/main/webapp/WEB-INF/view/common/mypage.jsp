<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%
	session.removeAttribute("main");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file= '../include/library.jsp' %>
<title>Pet & Meet</title>
</head>
<body>
<div class='container'>
	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>
	<div>
		<h3 class='titleFont'>마이페이지</h3>
	</div>
	<hr class='color'>
	
	<div class='row mt-4'>
		<a href='../user/userInformation' class='offset-2 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center text-nowrap'>내 정보</a>
		<a href='#' class='ml-1 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center text-nowrap'>펫 시팅<br>등록</a>
		<a href='#' class='ml-1 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center text-nowrap'>펫 시팅<br>수정삭제</a>
	</div>
	<div class='row mt-3 mb-4 text-center'>
		<a href='#' class='offset-2 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center text-nowrap'>메시지</a>
		<a href='#' class='ml-1 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center'>예약 확인</a>
		<a href='#' class='ml-1 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center'>관심</a>
		<a href='#' class='ml-1 col-2 btn btn-outline-primary mypageBtnSize d-flex justify-content-center align-items-center'>후기</a>
	</div>
	<hr class='color'>
	<div class='row offset-10'>
		<a href='../main' class='btn btn-outline-primary mt-4 font'>메인으로</a>
	</div>
	<%@ include file= '../include/footer.jsp' %>	
</div>
</body>
</html>