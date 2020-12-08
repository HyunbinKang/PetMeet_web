<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%
	session.removeAttribute("main");
%>
<!DOCTYPE html>
<html>
<head>
<%@ include file= '../include/library.jsp' %>
<title>Pet & Meet Admin3</title>
</head>
<script>
function showImg(input) {
   if(input.files[0]) { // 파일이 있는지 확인
      let reader = new FileReader();
                     // load이벤트가 발생하면 실행되는 리스너 callback
      reader.addEventListener('load', () => {
         $('#previewImg').attr('src', reader.result); // img미리보기가 나타남
      }, false) // 자바스크립트가 제공하는 리스너
      
      reader.readAsDataURL(input.files[0]); // 선택한 파일을 읽어들인다.
   }
}

$(() => {
   $('input').change(function() {
      showImg(this);
   });
});
</script>
<body>
	<div class='container'>
	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>

		<form method='post' enctype='multipart/form-data'>
			<div class='form-row'>
				<div class='form-group col-4'>
					<div class='custom-file'>
						<input name='attachFile' type='file' class='custom-file-input' id='attachFile'/>
						<label class='custom-file-label' for='attachFile'>파일찾기</label>
					</div>
				</div>
				<div class='col-4'>
					<button type='submit' class='btn btn-primary'>제출</button>
				</div>
			</div>
		</form>
   
		<img id='previewImg'/> <!-- 제출 전에 미리 보기 -->
	</div>
</body>
</html>