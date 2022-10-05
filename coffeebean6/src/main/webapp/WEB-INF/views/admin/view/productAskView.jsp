<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    .btn:active,
    .btn:focus {
      outline: none !important;
      box-shadow: none !important;
    }

    .commonContent2 {
      border: 1px;
      width: 90%;
      margin-top: 30px;
    }

    .commonContent1 {
      display: flex;
      justify-content: center;
    }
  </style>
  <title>Document</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
    crossorigin="anonymous"></script>

</head>
<link rel="stylesheet" href="/css/adminCss/admin.css">
  
<body>
  <div class="container" style="width: 100%;">
    <div id="header"></div>
    <div class="commonContent1">
      <h2 style="margin-top: 50px;">관리자페이지</h2>
    </div>


    <!-- 사이드메뉴 -->
		<div class="adminTitle">
			<div class="adminTitleS">
				<ul>
					<li><a href="/admin/admin_notice">공지사항</a></li>
					<li><a href="/admin/admin_member">회원관리</a></li>
					<li><a href="/admin/admin_productManagement">상품관리</a></li>
					<li><a href="/admin/admin_one2one">1:1문의</a></li>
					<li><a href="/admin/admin_review">리뷰관리</a></li>
					<li><a href="/admin/admin_orderManagement">주문관리</a></li>
					<li><a href="/admin/admin_productAsk">상품문의</a></li>
				</ul>
			</div>
			<br>
		</div>
		<!-- 메인 -->
      <div id="adminMain">
        <div id="adminSection">
          <div class="adminDiv">
            <h3 style="display: flex; justify-content: center;">상품문의 관리</h3>

            <div class="" style="display: flex; justify-content: center;">
              <form style="width: 600px;">
              	상품사진<br>
                <input type="image" src="${ dto.PA_P_FILEPATH }${ dto.PA_P_FILENAME1 }" class="form-control" disabled>
                상품이름<br>
                <input type="text" value="${dto.PA_P_NAME }" class="form-control" disabled>
                <br> 제목<br>
                <input type="text" value="${dto.PA_TITLE }" class="form-control" disabled>
                <br> 내용<br>
                <textarea  style="height: 200px;" class="form-control" disabled> ${dto.PA_CONTENT }</textarea>
                <br> 작성자<br>
                <input value="${dto.PA_M_NAME }" type="text" class="form-control" disabled>
                <br> 작성일<br>
                
                <input value='<fmt:formatDate value="${dto.PA_REGDATE }" pattern="yyyy-MM-dd" />' type="text" class="form-control" disabled>
                <br>


                <button style="background-color: #ffffff; border-color: #000000;" type="button"
                  onclick='location.href="/admin/view/productAskDeleteAction?PA_IDX=${dto.PA_IDX}"' class="btn btn-warning">삭제하기</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      
      
    <form action="/admin/view/answerWriteAction" method="get">
		<table  width="600" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<td style="display: flex; flex-direction: column;"  colspan=""2>
					<input type="hidden" name="AS_PA_IDX" value="${ dto.PA_IDX }">
					<label>글쓴이</label><input type="text" name="AS_NAME" value="admin"><br>
					<label>답변내용</label><textarea  name="AS_CONTENT" style="height: 120px; width: 100%;" rows="2" cols="50" name="reply_content"></textarea><br>
					<button type="submit" >답변달기</button>
				</td>
			</tr>
		</table>
	</form>

	<br>
	
	<table width="600" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>별명</th>
			<th>내용</th>
			<th>날짜</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="answerDto" items="${ list }">
			<tr>
				<td>${ answerDto.AS_NAME }</td>
				<td>${ answerDto.AS_CONTENT }</td>
				<td>
					<fmt:formatDate value="${ answerDto.AS_DATE }" pattern="yyyy-MM-dd" />
				</td>
				<td><a href="/admin/view/answerDeleteAction?AS_IDX=${ answerDto.AS_IDX }&AS_PA_IDX=${ answerDto.AS_PA_IDX }"><button>삭제</button></a></td>
			</tr>
		</c:forEach>
	</table>
    </div>
</body>

</html>

