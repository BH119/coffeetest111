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
  
  
  <title>공지사항</title>  
  
  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="../css/main.css">
  <link rel="stylesheet" href="../css/community/one2one.css">
  <link rel="stylesheet" href="../css/community/one2oneList.css">
  <link rel="stylesheet" href="../css/community/notice.css">
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
        <h2 class="one2one_title">공지사항</h2>
        <table class="one2onetable">
            <thead>
                <tr>
                    <th class="th-no">NO.</th>
                    <th class="th-title">글제목</th>
                    <th class="th-date">날짜</th>
                    <th class="th-hit">조회</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dto" items="${ list }" varStatus="status">
                <tr onclick="location.href='/notice_view.html'">
                    <td>1</td>
                    
                    <td><a href="/viewDTO?board_idx=${ dto.BOARD_IDX }">
                        1년이상 사용하지 않은 적립금 자동소멸 안내</td>
                    <td width="17%">
                        <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                    <td>130</td>
                </tr>
                <tr onclick="location.href='/notice_view.html'">
                    <td>2</td>
                    
                    <td><a href="/viewDTO?board_idx=${ dto.BOARD_IDX }">
                        네이버 알림 서비스 시행 안내</td>
                    <td width="17%">
                        <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                    <td>158</td>
                </tr>
                <tr onclick="location.href='/notice_view.html'">
                    <td>3</td>
                    
                    <td><a href="/viewDTO?board_idx=${ dto.BOARD_IDX }">
                        익산지역 우체국택배 접수중지</td>
                    <td width="17%">
                        <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                    <td>85</td>
                </tr>
                <tr onclick="location.href='/notice_view.html'">
                    <td>4</td>
                    
                    <td><a href="/viewDTO?board_idx=${ dto.BOARD_IDX }">
                        KT회선오류로 전화연결 오류</td>
                    <td width="17%">
                        <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                    <td>146</td>
                </tr>
                <tr onclick="location.href='/notice_view.html'">
                    <td>5</td>
                    
                    <td><a href="/viewDTO?board_idx=${ dto.BOARD_IDX }">
                        원두 가격 인상 관련 안내</td>
                    <td width="17%">
                        <fmt:formatDate value="${ dto.BOARD_DATE }" pattern = "yyyy-MM-dd"/>2022-09-20</td>
                    <td>218</td>
                </tr>
                </c:forEach>
            </tbody>
        </table><br>     

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

</body>
</html>