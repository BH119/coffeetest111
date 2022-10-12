<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>

<head>
<html lang="en">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<!-- Bootstarp JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>

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
  <link rel="stylesheet" href="/css/adminCss/admin.css">
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
<style>
.btn:active, .btn:focus {
	outline: none !important;
	box-shadow: none !important;
}
.pagination a {
    margin: 0;

.commonContent2 {
	border: 1px;
	width: 90%;
	margin-top: 30px;
}

.commonContent1 {
	display: flex;
	justify-content: center;
}

.imgbox img {
	width: 50px;
	height: 50px;
}

.table1-dark {
	color: #000;
	background-color: #6a4a364f;
}

button {
	background-color: #F0EBE0;
	border-color: #000000;
}
</style>

  <!-- 메인 -->
    <div id="adminMain">
		<div style="width: 60%;" id="adminSection">
			<h3>공지사항</h3>
			<form action="/community/notice_list" method="get">
				<div class="adminDiv" style="display: flex;">
					<p style="font-size: 20px; margin-right: 10px;">검색 옵션</p>
					<select name="selectList" class="form-control form-control-sm"
						style="font-family: 'Courier New', Courier, monospace; height: 30px; width: 70px; margin-right: 5px;">
						<option value="N_TITLE">제목</option>
						<option value="N_WRITER">글쓴이</option>
					</select> <input name="keyword" class="form-control"
						style="width: 200px; height: 30px; border: 1px solid rgba(0, 0, 0, 0.356);"
						type="text"> <input id="searchIcon"
						style="height: 22px; width: 22px; margin-left: 5px;" type="image"
						src="/img/search.png">
				</div>
			</form>

			<div class="adminDiv2" id="tableTitle">
				<div style="margin: 0;">공지사항 ${listCount}건</div>

			</div>
			<table class="admintable">
				<thead>
					<tr>
						<th>번호</th>
						<th>글쓴이</th>
						<th>제목</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list }">
						<tr onclick="location.href='/view/notice_view?N_IDX=${dto.n_IDX}'">
							<td>${ dto.n_IDX }</td>
							<td>${ dto.n_WRITER }</td>
							<td>>${ dto.n_TITLE }</td>
							<td><fmt:formatDate value="${ dto.n_DATE }" pattern="yyyy-MM-dd" /></td>
					</c:forEach>
				</tbody>
			</table>
			<br>
			<div style="display: flex; justify-content: center;">
				<div style="    justify-content: center;  display: flex;" class="pagination">
					<c:choose>
						<c:when test="${page > 1}">
							<a onclick='location.href="/community/notice_list?page=${page-1}&selectList=${ selectList}&keyword=${keyword}"'>이전</a>
						</c:when>
						<c:otherwise>
						<style>#disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/community/notice_list?page=${page-1}&selectList=${ selectList}&keyword=${keyword}"' >이전</a>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${ startPage}" end="${ endPage}">
						<a href="/community/notice_list?page=${i}&selectList=${ selectList}&keyword=${keyword}">${i}</a>
					</c:forEach>

					<c:choose>
						<c:when test="${page < totalPage}">
							<a onclick='location.href="/community/notice_list?page=${page+1}&selectList=${selectList}&keyword=${keyword}"'>다음</a>
						</c:when>
						<c:otherwise>
						<style> #disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/community/notice_list?page=${page+1}&selectList=${selectList}&keyword=${keyword}"'>다음</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</div>

</body>
</html>