<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%
	session.setAttribute("main", "main");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file= './include/library.jsp' %>
<title>Pet & Meet</title>
</head>
<body>
	<div class='container'>
	<%@ include file= './include/header.jsp' %>
   
	<%@ include file= './include/nav.jsp' %>
   
		<div class='carousel slide' data-ride='carousel'>
			<div id='mainCarou' class='carousel slide' data-ride='carousel'>
			    <ol class='carousel-indicators'>
					<li data-target='#mainCarou' data-slide-to='0'></li>
					<li data-target='#mainCarou' data-slide-to='1'></li>
					<li data-target='#mainCarou' data-slide-to='2'></li>
				</ol>
	            <div class='carousel-inner'>
					<div class='carousel-item active'>
					<div class='carouImg'>서비스 설명 이미지</div>
					<div class='carousel-caption text-dark'>
						<a href='./manual/01.html' class='font'>자세히 보기</a>
					</div>
					</div>
				<div class='carousel-item'>
					<div class='carouImg'>서비스 설명 이미지</div>
					<div class='carousel-caption text-dark'>
						<a href='./manual/01.html' class='font'>자세히 보기</a>
					</div>
				</div>
				<div class='carousel-item'>
					<div class='carouImg'>서비스 설명 이미지</div>
					<div class='carousel-caption text-dark'>
						<a href='./manual/01.html' class='font'>자세히 보기</a>
					</div>
				</div>
	            </div>
				<a href='#mainCarou' class='carousel-control-prev' data-slide='prev'>
					<span class='carousel-control-prev-icon'></span>
				</a> 
				<a href='#mainCarou' class='carousel-control-next' data-slide='next'>
					<span class='carousel-control-next-icon'></span>
				</a>
			</div>
		</div>
		<div class='reviewBar'>
			<hr>
			<div class='reviewBarFont'>Review</div>
			<hr>
		</div>

		<div class='card-deck mt-3'>
			<div class='card'>
				<div class='reviewImg'>후기 이미지</div>
	            <div class='card-body'>
					<h5 class='card-title'>★★★★</h5>
					<p class='card-text'>너무 만족합니다^^</p>
				</div>
	            <div class='card-footer'>
					<small class='text-muter'>2020-11-20</small>
				</div>
			</div>
		<div class='card'>
			<div class='reviewImg'>후기 이미지</div>
			<div class='card-body'>
				<h5 class='card-title'>★★★★</h5>
				<p class='card-text'>재방문했습니다. 아이가 좋아하네요.</p>
			</div>
			<div class='card-footer'>
				<small class='text-muter'>2020-11-26</small>
			</div>
		</div>
	</div>
	<%@ include file= './include/footer.jsp' %>
	</div>
</body>
</html>