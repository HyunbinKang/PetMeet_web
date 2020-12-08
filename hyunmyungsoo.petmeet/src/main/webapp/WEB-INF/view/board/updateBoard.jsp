<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='utf-8' isELIgnored='false'%>
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
//이미지 추가
var imgView = function(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.addEventListener("load", function() {
			$('.previewImg').attr('src', reader.result);
		}, false);
		reader.readAsDataURL(input.files[0]);
	}
}
</script>

<body>
	<div class='container'>
  	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>
	
		<div>
			<h3 class='titleFont'>자유게시판</h3>
		</div>
		
		<form id="updateForm" name="updateForm" method="post" >
		<div class='center-block'>
			<table class='table table-sm'>
				<thead>
					<tr>
						<th class='thead'>
							<input type='text' class='form-control' value='${board.boardTitle}' required />
						</th>
					</tr>
					<tr>
						<th>
							<input type="file" id="ex_file" value="이미지업로드" onchange="imgView(this)">
						</th>
					</tr>
					<tr>
						<th class='thead'>
							<img width="250" height="200" class="previewImg"/>
							<textarea class='form-control' style='height : 300px;' id="boardContent">${board.boardContent}
							</textarea>
						</th>
					</tr>
				</thead>
			</table>
		</div>
		
		
		<!-- 모달
		<div id='upBoard' class='modal fade' tabindex='-1'>
		   <div class='modal-dialog'>
		      <div class='modal-content'>
		         <div class='modal-body'>
		            <div class='row justify-content-center'>
		               <p>게시글을 수정하겠습니까?</p>
		            </div>
		            <div class='row justify-content-center'>
		               <button type='button' class='btn btn-primary' data-dismiss='modal' id='upComment'>확인</button>
		               <button type='submit' class='btn btn-secondary ml-2' data-dismiss='modal'>취소</button>
		            </div>
		         </div>
		      </div>
		   </div>
		</div>			
		
		-->
		
		<div class='d-flex justify-content-end mt-4'>
			<button type='submit' class='btn btn-outline-info mr-2 font' data-toggle='modal' data-target='#upBoard'>
				수정
			</button>
			<button class='btn btn-outline-danger ml-1 font' type='button' value='취소' id='back'>취소</button>
		</div>			
		</form>
		
		
	<%@ include file= '../include/footer.jsp' %>
		</div>
	</div>
</body>
</html>