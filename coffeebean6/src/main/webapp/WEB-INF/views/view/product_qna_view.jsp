<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품문의</title>
    <!-- Main CSS : Header, Main, Footer -->
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/writeQnA.css">
    <link rel="stylesheet" href="../css/footer.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <!-- Bootstarp JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){
          $('#header').load("../header-sub.html");     
          $('#footer').load("../footer-sub.html");
        });
    </script>
</head>
<body>
    <div id="header"></div>
    <div class="writeQnA" class="sticky-top">
        <div class="writeQnATitle">
            <h3>상품문의</h3>
        </div><br>
        <div class="writeQnAItem">
            <div class="writeQnAItemImg">
                <a href="../item/itemDetail.html">
                    <img src="../img/free-icon-coffee-cup-3361135.png" alt="">
                </a>
            </div>
            <div class="writeQnAItemInfo">
                <ul>
                    <li><strong>원두커피111</strong></li>
                    <li><span>12345원</span></li><br>
                    <li><a href="../item/itemDetail.html">상품상세</a></li>
                </ul>
            </div>
        </div><br>
        <div class="writeQnATable">
            <table>
                <tr>
                    <td>분류</td>
                    <td>
                        <select name="QnAType" id="QnAType">
                            <option value="">상품문의</option>
                            <option value="">배송문의</option>
                            <option value="">기타문의</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td>
                        <input type="text" value="이건제목이고">
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="QnA" id="" cols="63" rows="10">이건내용이야</textarea>
                    </td>
                </tr>
            </table>
        </div><br>
        <div class="writeQnABtn">
            <input type="button" value="수정하기">
            <input type="button" value="돌아가기">
        </div>
    </div><br><br>
    <div id="footer"></div>
</body>
</html>