<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>order_in</title>
    <link rel="stylesheet" href="../css/member/order_in.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="./css/sidebar.css">

    <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  <script>
    // 코드중복을 피하기 위해 탑헤더/헤더/푸터를 만들어
    // 재사용한다. jquery load함수
    $(document).ready(function(){
      $('#header').load("../header-sub.html");
      $('#footer').load("../footer-sub.html");
      $('#sidebar').load("../tool/sidebar.html");
    });
    
  </script>
  

</head>
<body>
    <div class="mybody">
        <div id="header" class="sticky-top"></div>
        <div class="row cont">
            <div class="user">
                <div class="userImg text-center">
                    <img src="../img/cat.jpg" alt="" >
                </div><br>
                <div class="userList ">
                    <ul class="list-group">
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="//mypage/mypage">My page</a>
                        </li>
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="/mypage/order_list">주문/배송조회</a>
                        </li>
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="/mypage/product_qna">상품문의</a>
                        </li>
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="/mypage/product_review">상품리뷰</a>
                        </li>
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="/mypage/cart">장바구니</a>
                        </li>
                        <li class="list-group-item myli" style="padding-top: 13px; padding-bottom: 7px;">
                            <a href="/mypage/qna">문의내역</a>
                        </li>
                        <!-- <li>
                            <a href="">회원정보변경</a>
                        </li> -->
                    </ul>
                </div>
            </div>
            <div class="cart">
                <div class="container cartTitle">
                    <h2>주문/배송조회</h2>
                </div>
                <div class="member_data">
                    <table class="UserInfoTable">
                        <tr>
                            <th>주문번호</th>
                            <td><span>0000</span></td>
                        </tr>
                        <tr>
                            <th>주문일자</th>
                            <td><span>0000</span></td>
                        </tr>
                        <tr>
                            <th>주문자 성명</th>
                            <td><span>0000</span></td>
                        </tr>
                        <tr>
                            <th>배송지</th>
                            <td><span>0000</span></td>
                        </tr>
                        <tr>
                            <th>전화번호</th>
                            <td><span>0000</span></td>
                        </tr>
                        <tr>
                            <th>배송상태</th>
                            <td><span>0000</span></td>
                        </tr>
                    </table>
                </div>
                <br>

                <div class="container product_list" style="padding-left: 0;">
                        <table>
                            <tr>
                                <th>상품</th>
                                <th>상품이름</th>
                                <th>수량</th>
                                <th>가격</th>
                                <th>리뷰작성</th>
                            </tr>
                            
                            <tr class="item">
                                <td class="product_img">
                                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                                </td>
                                <td>커피</td>
                                <td>2</td>
                                <td>0000원</td>
                                <td><input class="bt" type="button" value="리뷰작성" onclick="location.href='/member/product_review_in.html'"></td>
                            </tr>
                            <tr class="item">
                                <td class="product_img">
                                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                                </td>
                                <td>홍차</td>
                                <td>1</td>
                                <td>0000원</td>
                                <td><input class="bt" type="button" value="리뷰작성" onclick="location.href='/member/product_review_in.html'"></td>
                            </tr>
                            <tr class="item">
                                <td class="product_img">
                                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                                </td>
                                <td>녹차</td>
                                <td>3</td>
                                <td>0000원</td>
                                <td><input class="bt" type="button" value="리뷰작성" onclick="location.href='/member/product_review_in.html'"></td>
                            </tr>
                            <tr class="item">
                                <td class="product_img">
                                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                                </td>
                                <td>맥심</td>
                                <td>5</td>
                                <td>0000원</td>
                                <td><input class="bt" type="button" value="리뷰작성" onclick="location.href='/member/product_review_in.html'"></td>
                            </tr>
                            <tr class="item">
                                <td class="product_img">
                                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                                </td>
                                <td>라떼</td>
                                <td>1</td>
                                <td>0000원</td>
                                <td><input class="bt" type="button" value="리뷰작성" onclick="location.href='/member/product_review_in.html'"></td>
                            </tr>
                        </table>
            </div>
        </div>
        <div class="">
            <input type="button" onclick="location.href='.//mypage/order_list'" value="리스트" class="backbt bt">
        </div>
        
    </div>
    <div id="sidebar"></div>
    <div id="footer"></div>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>