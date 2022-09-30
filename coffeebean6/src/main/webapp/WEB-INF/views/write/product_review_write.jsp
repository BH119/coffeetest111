<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>order_in</title>
    <link rel="stylesheet" href="../css/member/order.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/member/product_review_in.css">
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
  <div id="header" class="sticky-top"></div>
    <div class="mybody">
        
            <div class="review">
                      <div class="review_title">
                        <h2>review</h2>
                      </div>
                      <div class="review_table">
                          <table>
                            <tr>
                                <div class="prdBox row">
                                    <div class="prdimg"><a href="../item/itemDetail.html"><img src="../img/원두.jpg" alt="" ></a></div>
                                    <div class="description">
                                        <strong class="prdName"><a href="../item/itemDetail.html">원두커피</a>    </strong>
                                        <ul class="info">
                                        <li class="price">135,000원 <span id="sPrdTaxText"></span></li>
                                        </ul>
                                        <a href="../item/itemDetail.html" class="btnDetail">상품상세보기</a>
                                    </div>
                              </div>
                            </tr>
                            <tr>
                              <td>제목</td>
                              <td colspan="3"><input type="text"class="review_index " name="" id=""></td>
                            </tr>

                            <tr>
                              <td>내용</td>
                              <td colspan="3"><textarea class="revarea content review_index" name="one2one_content" id="one2one_content"></textarea></td>
                            </tr>
                          </table>
                          <br><br>
                        </div>
                  </div>
                  <div class="btn">
                    <span><input type="button" id="submit" class="submit_button" name="submit" value="등록하기"></span>
                    <span><input type="button" id="cancel" class="submit_button" name="" value="목록보기"></span>
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