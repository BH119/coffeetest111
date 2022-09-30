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
  
  
  <title>1:1문의게시판</title> 
   
  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="../css/main.css">
  <link rel="stylesheet" href="../css/community/one2one.css">
  <link rel="stylesheet" href="../css/community/one2oneList.css">
  <link rel="stylesheet" href="../css/header.css">
  <link rel="stylesheet" href="../css/sidebar.css">
  <link rel="stylesheet" href="../css/footer.css">
  
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  
  <script>
    $(document).ready(function(){
      $('#headerTop').load("/headerTop.html");
      $('#header').load("/header.html");   
      $('#sidebar').load("./tool/sidebar.html");  
      $('#footer').load("/footer.html");
    });
  </script>

</head>
<body>

  <!-- 메인 --> 
  <div class="all">
      <h2 class="one2one_title">1:1 문의 게시판</h2>
      <table class="one2onetable">
          <thead>
              <tr>
                  <th class="th2-no">NO.</th>
                  <th class="th2-category">구분</th>
                  <th class="th2-title">글제목</th>
                  <th class="th2-name">작성자</th>
                  <th class="th2-date">날짜</th>
                  <th class="th2-hit">조회</th>
              </tr>
          </thead>
          <tbody>
              <!-- <c:forEach var="dto" items="${ list }" varStatus="status"> -->
              <tr onclick="location.href='/one2one_read.html'">
                <!-- notice_view 만들때참고할거  -->
                  <td>1</td>
                  <td>교환/반품문의</td>
                  <td>
                      교환문의 드립니다.</td>
                  <td>강*현</td>
                  <td>
                      <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                  <td>5</td>
              </tr>
           <!-- </c:forEach> -->
          </tbody>    
      </table><br>
      <div class="formbtn">
        <a href="/one2one.html" class="formBtn">글쓰기</a>
      </div>

  </div>


    <div class="pagination">
        <a href="#">이전</a>
        <a class="active" href="#">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">다음</a>
      </div>

  <!-- 푸터 -->
     <div id="footer"></div> 

</body>
</html>