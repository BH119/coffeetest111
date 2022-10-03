<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


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
					<li><a href="/adminadmin_notice">공지사항</a></li>
					<li><a href="/adminadmin_member">회원관리</a></li>
					<li><a href="/adminadmin_productManagement">상품관리</a></li>
					<li><a href="/adminadmin_one2one">1:1문의</a></li>
					<li><a href="/adminadmin_review">리뷰관리</a></li>
					<li><a href="/adminadmin_orderManagement">주문관리</a></li>
					<li><a href="/adminadmin_productAsk">상품문의</a></li>
				</ul>
			</div>
			<br>
		</div>
		<!-- 메인 -->
      <div id="adminMain">
        <div id="adminSection">
          <div class="adminDiv">
            <h3 style="display: flex; justify-content: center;">상품보기</h3>

            <div class="" style="display: flex; justify-content: center;">
              <form action="modifyAction"  enctype="multipart/form-data" method="post" style="width: 600px;">
              	<input type="hidden" name="P_IDX" value="${dto.p_IDX }">
              	<input type="hidden" name="P_FILENAME1" value="${dto.p_FILENAME1 }">
              	<input type="hidden" name="P_FILEPATH" value="${dto.p_FILEPATH }">
                카테고리</br>
                <select name="P_CATEGORY" style="font-family: 'Courier New', Courier, monospace">
                  <option value="1" <c:if test="${P_CATEGORY=='1'}">selected="selected"</c:if>>콜드브루</option>
                  <option value="2" <c:if test="${P_CATEGORY=='2'}">selected="selected"</c:if>>원두</option>
                  <option value="3" <c:if test="${P_CATEGORY=='3'}">selected="selected"</c:if>>스틱</option>
                </select>
                <br><br>상품이름<br>
                <input name="P_NAME" value="${dto.p_NAME }" type="text" class="form-control">
                <br>상품코드<br>
                <input name="P_CODE" value="${dto.p_CODE }" type="text" class="form-control">
                <br>가격<br>
                <input name="P_PRICE" value="${dto.p_PRICE }" type="text" class="form-control">
                <br>재고수량<br>
                <input name="P_STOCK" value="${dto.p_STOCK }" type="text" class="form-control">
                <br>상품사진<br>
                <div class="imgbox">
					<img style="height: 200px;" src="${dto.p_FILEPATH }${dto.p_FILENAME1 }" alt="">
				</div>
                <input name="filename" type="file" multiple="multiple"><br><br>
                <button style="background-color: #ffffff; border-color: #000000;" type="button" 
                  onclick='location.href="imgDelNamePath?P_IDX=${dto.p_IDX}&P_FILENAME1=${dto.p_FILENAME1}"' class="btn btn-warning">이미지 삭제하기</button>
                <br><br>등록일 <br>
                <fmt:formatDate value="${ dto.p_DATE }"
							pattern="yyyy-MM-dd" /> 
                <br> <br>

                <button style="background-color: #ffffff; border-color: #000000;" type="submit"
                  class="btn btn-warning">수정하기</button>
                <button style="background-color: #ffffff; border-color: #000000;" type="button"
                  onclick='location.href="productDeleteAction?P_IDX=${dto.p_IDX}&P_FILENAME1=${dto.p_FILENAME1}"' class="btn btn-warning">삭제하기</button>
              </form>
            </div>
          </div>
        </div>
      </div>
</body>

</html>

