<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%
	Object mainCheckNav1 = session.getAttribute("main");
%>
<div class='row justify-content-center'>
<%
	if(mainCheckNav1 != null){
%>
<!-- 		<div class='logoImg'><a href='main'>로고이미지</a></div> -->
<!--  
		<a href='main'><img src='img/logo.PNG' class='logoImg' 
		onerror='imgError(this);' width='135' height='69'></a> -->
<% 
	}else{
%>
<!-- 		<div class='logoImg'><a href='../main'>로고이미지</a></div> -->
<!--  
		<a href='../main'><img src='../img/logo.PNG' class='logoImg' 
		onerror='imgError(this);' width='135' height='69'></a>
		-->
<%
	}
%>
</div>