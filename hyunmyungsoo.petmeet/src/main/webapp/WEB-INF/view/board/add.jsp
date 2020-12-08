<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- include : lib -->
<meta charset='UTF-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' />
<link rel='stylesheet' href='../res/css/lib.css'>
<!-- /include : lib -->
<title>Pet & Meet</title>
</head>
<script>

$(() => {
	   $("#addBtn").click(()=>{
	      $.ajax({
	         url :"addB",
	         method :"post",
	         contentType: "application/json",
	         data:JSON.stringify({
	            boardTitle :$("#boardTitle").val(),
	            boardFile :$("#boardFile").val(),
	            boardContent :$("#boardContent").val()
	         }),
	         success : result => showMsg("추가",result), //response에 있던 데이터를 result에 담을 것이다. 
	         error: e => showMsg("추가", false) 
	      })
	   });
});
</script>
<body>
<div class='container'>
  	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>
	<div>
		<h3 class='titleFont'>자유게시판</h3>
	</div>
	
	<form id="addForm">
		<div class='center-block'>
			<table class='table table-sm'>
				<thead>
					<tr>
						<th class='thead'>
							<input type='text' class='form-control'placeholder='제목을 입력해주세요!' required id="boardTitle" />
						</th>
					</tr>
					<tr>
						<th>
							<input type='file' value='이미지업로드' multiple='multiple' id="boardFile" name="boardImage" onchange="imgView(this)">
						</th>
					</tr>
	
					<tr>
						<th class='thead'>
							<img width="250" height="200" class="previewImg" id='previewImg'>
							<textarea class='form-control' style='height : 300px;'placeholder='내용을 입력해 주세요!' id="boardContent"></textarea>
						</th>
					</tr>
				</thead>
			</table>
		</div>	
		
		<div id='msg' class='alert'>
			<strong></strong>
		</div>
		
		<!--  
		<div id='addBoard' class='modal fade' tabindex='-1'>
		   <div class='modal-dialog'>
		      <div class='modal-content'>
		         <div class='modal-body'>
		            <div class='row justify-content-center'>
		               <p>게시글을 등록하겠습니까?</p>
		            </div>
		            <div class='row justify-content-center'>
		               <button type='button' class='btn btn-primary' data-dismiss='modal'>등록</button>
		               <button type='submit' class='btn btn-secondary ml-2' data-dismiss='modal' id='can'>취소</button>
		            </div>
		         </div>
		      </div>
		   </div>
		</div>				
	-->
		
		
		<div class='d-flex justify-content-end mt-4'>
			<button type='button' class='btn btn-outline-primary mr-2 font' data-toggle='modal' data-target='#addBoard' id='addBtn'>
				등록
			</button>
			<button class='btn btn-outline-danger ml-1 font' type='button' value='취소' id='back'>취소</button>
		</div>		
	</form>
	
	<%@ include file= '../include/footer.jsp' %>	
</div>
</body>
</html>