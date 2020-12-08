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
   
   //댓글
   $(document).ready(function(){
      $('#upComm1').click(function(){
         $('#recelComm1').show();
         $('#reupComm1').show();
         $('#delComm1').hide();
         $('#upComm1').hide();
         $('#textbox').attr('readonly',false).attr('disabled'.false);
         
         });
      $('#recelComm1, #reupComm1').click(function(){
         $('#recelComm1').hide();
         $('#reupComm1').hide();
         $('#delComm1').show();
         $('#upComm1').show();
         $('#textbox').attr('readonly',true).attr('disabled'.false);      
         });
   });
   $(document).ready(function(){   
      $('#upComm2').click(function(){
         $('#recelComm2').show();
         $('#reupComm2').show();
         $('#delComm2').hide();
         $('#upComm2').hide();
         $('#textbox1').attr('readonly',false).attr('disabled'.false);
         
         });
      
      $('#recelComm2, #reupComm2').click(function(){
         $('#recelComm2').hide();
         $('#reupComm2').hide();
         $('#delComm2').show();
         $('#upComm2').show();
         $('#textbox1').attr('readonly',true).attr('disabled'.false); 
         });
      
   });
</script>
<body>

<div class='container'>
  	<%@ include file= '../include/header.jsp' %>
	<%@ include file= '../include/nav.jsp' %>
	
    <h3 class='titleFont'>자유게시판</h3>
    <table class='table'>
      <tr class='thead'>
         <th colspan='12' class='font'>${board.boardTitle }
      </tr>
      <tr class='font'>
         <td>등록일</td><td>${board.regDate }</td><td>작성자</td><td>${board.user.userNickName} </td>
      </tr>
      <tr>
         <td colspan='4'>
            <div class='previewImg2'>사료 이미지</div>
            <div style=' float: left;'><br>
			${board.boardContent} 
             </div>
         </td>
      </tr>
      
    <!-- 댓글 -->
   </table>
   <hr class='color'>
   <form>
      <div class='row ml-3 font'>
         <p>강철검</p>
      </div>
      <div class='row ml-3 mb-3'>
         <textarea class='form-control col-11' id='comment' name='comment' placeholder='댓글을 작성해주세요'></textarea>
      </div>
     <div class='d-flex justify-content-end mt-1'>
       <input type='button' class='btn btn-outline-primary font' value='등록' data-toggle='modal' data-target='#addComment'>
      </div>
   </form>
   <hr class='color'> 
   <form class='font'>
      <div class='row ml-3'>
         <span class='commentName'>차차차 </span>
      </div>
      <div class='row ml-3'>
      <span class='commentDate'>2020-11-20</span>
      </div>
      <div class='row ml-3 mb-3'>
         <input value='헐 바로 사러 가야겠네요,,,,' readonly='readonly' id='textbox' class='form-control col-11'/>
      </div>
      
   <div class='d-flex justify-content-end mt-1'>
      <input type='button' class='btn btn-info mr-1' value='수정' id='upComm1'>
      <input type='button' class='btn btn-danger mr-1' value='삭제' id='delComm1' data-toggle='modal' data-target='#delComment'>
      <input type='button' class='btn btn-primary mr-1' value='등록' style='display: none;'  id='reupComm1'>
      <input type='button' class='btn btn-secondary mr-1' value='취소' style='display: none ' id='recelComm1'>
   </div>
   </form>
   <form class='font'>
      <div class='row ml-3'>
         <span class='commentName'>멍멍주 </span>
      </div>
      <div class='row ml-3'>
      <span class='commentDate'>2020-11-20</span>
      </div>
      <div class='row ml-3 mb-3'>
      <input value='이거 좋아요~!~!~!' readonly='readonly' id='textbox1' class='form-control col-11'/>
      </div>
      
   <div class='d-flex justify-content-end mt-1'>
      <input type='button' class='btn btn-info mr-1' value='수정' id='upComm2'>
      <input type='button' class='btn btn-danger mr-1' value='삭제' id='delComm2' data-toggle='modal' data-target='#delComment'>
      <input type='button' class='btn btn-primary mr-1' value='등록' style='display: none;'  id='reupComm2'>
      <input type='button' class='btn btn-secondary mr-1' value='취소' style='display: none ' id='recelComm2'>
   </div>
   </form>
   
   
      <!-- 모달 
      <div id='addComment' class='modal fade' tabindex='-1'>
         <div class='modal-dialog'>
            <div class='modal-content'>
               <div class='modal-body'>
                  <div class='row justify-content-center'>
                     <p>댓글을 등록하겠습니까?</p>
                  </div>
                  <div class='row justify-content-center'>
                     <button type='button' class='btn btn-primary' data-dismiss='modal' id='add'>등록</button>
                     <button type='submit' class='btn btn-secondary ml-2' data-dismiss='modal' id='can'>취소</button>
                  </div>
               </div>
            </div>
         </div>
      </div>   
      <div id='delComment' class='modal fade' tabindex='-1'>
         <div class='modal-dialog'>
            <div class='modal-content'>
               <div class='modal-body'>
                  <div class='row justify-content-center'>
                     <p>댓글을 삭제하겠습니까?</p>
                  </div>
                  <div class='row justify-content-center'>
                     <button type='button' class='btn btn-primary' data-dismiss='modal' id='add'>확인</button>
                     <button type='submit' class='btn btn-secondary ml-2' data-dismiss='modal' id='can'>취소</button>
                  </div>
               </div>
            </div>
         </div>
      </div>         
      <div id='del' class='modal fade' tabindex='-1'>
         <div class='modal-dialog'>
            <div class='modal-content'>
               <div class='modal-body'>
                  <div class='row justify-content-center'>
                     <p>게시글을 삭제하겠습니까?</p>
                  </div>
                  <div class='row justify-content-center'>
                     <button type='button' class='btn btn-primary' data-dismiss='modal' id='del2'>확인</button>
                     <button type='submit' class='btn btn-secondary ml-2' data-dismiss='modal' id='can'>취소</button>
                  </div>
               </div>
            </div>
         </div>
      </div>         
      -->
      
      
      <!-- 버튼 모음 -->
      <hr class='color'>      
      <div class='d-flex mt-4'>
         <input type='button' class='btn btn-outline-primary mr-1 font' value='목록' value='list' id='list'>
          <div class='flex-fill'></div> 
          <input type='button' class='btn btn-outline-info mr-1 font' value='수정' value='update' id='update' id="c${board.boardNum }">
         <input type='button' class='btn btn-outline-danger mr-2 font' value='삭제' value='del' data-toggle='modal' id="a${board.boardNum }" data-target='#del'>
      </div>   
	<%@ include file= '../include/footer.jsp' %>
        </div>    
</div>
</body>
</html> 