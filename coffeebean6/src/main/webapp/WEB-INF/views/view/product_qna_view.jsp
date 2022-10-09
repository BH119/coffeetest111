<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Document</title>
<!-- Bootstrap CSS -->
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

<style>
.btn:active, .btn:focus {
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

		<!-- 메인 -->
		<div id="adminMain">
			<div id="adminSection">
				<div class="adminDiv">
					<h3 style="display: flex; justify-content: center;">상품문의 등록</h3>

					<div class="" style="display: flex; justify-content: center;">
						<form action="/productAskWriteAction" enctype="multipart/form-data" method="post"  style="width: 600px;">
							<br>상품이름<br> <input name="P_NAME" type="text" class="form-control">
							<br>상품코드<br> <input name="P_CODE" type="text" class="form-control">
							<br>가격<br> <input name="P_PRICE" type="text" class="form-control">
							<br>상품설명<br> <textarea name="P_CONTENT" rows="" cols=""></textarea>
							<br>재고수량<br> <input name="P_STOCK" type="text" class="form-control">
							<br> 상세설명사진:<input name="filename" type="file" multiple="multiple"><br>
							<br>
							<button style="background-color: #ffffff; border-color: #000000;"
								type="submit" class="btn btn-warning">등록하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>