<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>1:1문의하기</title>

  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/one2one.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/sidebar.css">
  <link rel="stylesheet" href="./css/footer.css">

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
  <!-- 헤더 -->
  <div id="header" class="sticky-top"></div>

  <!-- 사이드바 -->
  <div id="sidebar"></div>

  <!-- 메인 -->
  <div class="mas">
  <form action="#" method="get" name="one2one" onsubmit="return checkValue()">
    <div class="one2one_title">
      <h2>1:1 문의하기</h2>
    </div>
    <div class="one2one_table">
        <table>
          <tr>
            <td>이름</td>
            <td><input type="text" class="one2one name" name="" id="" value="내는이름"></td>
            <td>비밀번호</td>
            <td><input type="password" class="one2one password" name="" id="" value="내는비번"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td colspan="3"><input type="text"class="one2one phonenumber" name="" id="" value="내는번호"></td>
          </tr>
          <tr>
            <td>이메일</td>
            <td colspan="3"><input type="text" class="one2one email" name="" id="" value="내는메일"></td>
          </tr>
          <tr>
            <td>구분</td>
            <td colspan="3" class="choice">
              <select name="" id="">
                <option value="">배송문의</option>
                <option value="">교환/반품문의</option>
                <option value="">기타문의</option>
              </select>
            </td>
          </tr>
          <tr>
            <td>제목</td>
            <td colspan="3"><input type="text" class="one2one title" name="one2one_title" id="one2one_title" value="내는제목"></td>
          </tr>
          <tr>
            <td>내용</td>
            <td colspan="3"><textarea class="one2one content" name="one2one_content" id="one2one_content">내는내용</textarea></td>
          </tr>
        </table>
        <br><br>
        <div class="btn">
          <span><input type="submit" id="submit" class="submit_button" name="submit" value="수정하기"></span>
          <span><input type="submit" id="cancel" class="submit_button" name="" value="목록보기"></span>
        </div>
      </div>
  </form>  
</div>

  <!-- 푸터 -->
  <div id="footer"></div>

</body>
</html>