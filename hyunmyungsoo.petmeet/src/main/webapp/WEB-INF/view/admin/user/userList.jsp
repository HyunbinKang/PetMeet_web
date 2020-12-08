<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%
	session.removeAttribute("main");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file= '../include/library.jsp' %>
<%@ page import= 'hyunmyungsoo.petmeet.domain.User' %>
<%@ page import='java.util.List'%>
<%
	List<User> userList = (List<User>)request.getAttribute("userList");
%>
<title>Pet & Meet Admin</title>
</head>
<body>
	<div class='container'>
	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>
     	<table class='table'>
			<thead class='thead-light'> 
				<tr><th class='text-center'>선택</th><th>회원ID</th><th>회원이름</th><th>닉네임</th></tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test='${userList.size()>0}'>
						<c:forEach var='user' items='${userList}'>
							<tr>
								<th class='text-center'>
									<input type='radio' name='userChoice' value='${user.getUserId()}' form='userChoice'/>
								</th>
								<td>${user.getUserId()}</td>
								<td>${user.getUserId()}</td>
								<td>${user.getUserId()}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr><td colspan='4' class='text-center'>사원이 없습니다</td></tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	
		<form method='post' id='userChoice'>
			<div class='row justify-content-end'>
				<button type='submit' class='btn btn-outline-primary mr-1'>수정</button>
				<button type='button' class='btn btn-outline-danger mr-3'>탈퇴</button>
			</div>
		</form>
	</div>
</body>
</html>