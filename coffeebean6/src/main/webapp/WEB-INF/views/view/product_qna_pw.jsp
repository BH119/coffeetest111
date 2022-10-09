<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/log&join/pwFind.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  
  
  <script type="text/javascript">





$(function(){
	$("#ChkBtn").click(function(){
		var qna_PW = $('#qna_PW').val();
		console.log(qna_PW);
		$.ajax({
	            url : "/view/product_qna_pw_Action",
	            type : 'post',
	            data : { qna_PW:qna_PW },
	            success : function(date) {
	            	if(date == '1'){
	            		window.location.href = "/view/product_qna_view?PA_IDX=";
	            	}
				} //통신성공
		}); // ajax
	});	// 이메일전송클릭액션
});	//온로드

</script>
</head>
<body>

    <div class="main">
        <form action="#" name="pwFindForm">
            <h4>상품문의 비밀번호</h4>
           <input id="qna_PW" type="password" class="id_box" name="qna_PW" placeholder="작성 비밀번호" style="font-family: 'Courier New', Courier, monospace" ><br>
        </form>
        <div>
          <input id="ChkBtn" type="button" class="button_box" value="확인" onclick="submit();">
        </div>
        <br>
        <div class="close_box">
            <input type="button" class="close_box" value="닫기" onclick="window.close();">
        </div>
      </div>
      
  <script>
    function submit() {
      var form = document.pwFindForm;
      form.submit();
    }
  </script>
  
</body>
</html>