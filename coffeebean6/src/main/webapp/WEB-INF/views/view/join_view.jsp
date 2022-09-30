<!DOCTYPE html>
<html lang="en">
<head>
    <title>정보수정</title>

      <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/member/change.css">
<link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">

<script>
    $(document).ready(function(){
      $('#headerTop').load("../headerTop.html");
      $('#header').load("../header-sub.html");
      $('#footer').load("../footer-sub.html");
    });
  </script>

<script>

    $(document).ready(function () {
      setDateBox();
    });
    

    // select box 연도 , 월 표시
    function setDateBox() {
      var dt = new Date();
      var year = "";
      var com_year = dt.getFullYear();

      // 발행 뿌려주기
      $("#member_birth_date_year").append("<option value=''>년도</option>");

      // 올해 기준으로 -50년부터 +1년을 보여준다.
      for (var y = (com_year - 50); y <= (com_year + 1); y++) {
        $("#member_birth_date_year").append("<option value='" + y + "'>" + y + " 년" + "</option>");
      }

      // 월 뿌려주기(1월부터 12월)
      var month;
      $("#member_birth_date_month").append("<option value=''>월</option>");
      for (var i = 1; i <= 12; i++) {
        $("#member_birth_date_month").append("<option value='" + i + "'>" + i + " 월" + "</option>");
      }

      // 일 뿌려주기(1일부터 31일)
      var day;
      $("#member_birth_date_day").append("<option value=''>일</option>");
      for (var i = 1; i <= 31; i++) {
        $("#member_birth_date_day").append("<option value='" + i + "'>" + i + " 일" + "</option>");
      }

    }
    
  </script>

</head>
<body>
    <!-- 헤더 -->
    <div id="headerTop"></div>
    <div id="header" class="sticky-top"></div>

    <!-- 메인 -->
    
  <form action="" class="joinForm" name="joinForm" method="" target="" >
    <h2 class="topic">정보수정</h1>
    <div class="ec-base-table typeWrite">
        <!-- style="border:'1'" summary -->
        <table  >
            <!-- <caption>회원 기본정보</caption> -->
            <colgroup>
                <col style="width:150px;">
                <col style="width:auto;">
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">
                        아이디
                    </th>
                    <td>
                        <input type="text" disabled id="member_id" fw-label="아이디" fw-msg fw-filter="isFill&isFill&isMin[4]&isMax[16]&isIdentity" class="inputTypeText">
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        비밀번호
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <input type="password" id="passwd" name="passwd" fw-filter="isFill&isMin[[4]&isMax[16]" fw-label="비밀번호" fw-msg autocomplete="off" maxlength="16">
                        <span>(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 8자~16자)</span>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        비밀번호 확인
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <input type="password" id="user_passwd_confirm" name="user_passwd_confirm" fw-filter="isFill&isMatch[passwd]" fw-label="비밀번호 확인" 
                        fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16">
                        <span id="pwConfirmMsg"></span>
                    </td>
                </tr>
                <tr class="displaynone">
                    <th scope="row">
                        비밀번호 확인 질문
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <select name="hint" id="hint" fw-filter fw-label="hint" fw-msg>
                            <option value="hint_01">기억에 남는 추억의 장소는?</option>
                            <option value="hint_02">자신의 인생 좌우명은?</option>
                            <option value="hint_03">자신의 보물 제1호는?</option>
                            <option value="hint_04">받았던 선물 중 기억에 남는 독특한 선물은?</option>
                            <option value="hint_05">인상 깊게 읽은 책 이름은?</option>
                            <option value="hint_06">다시 태어나면 되고 싶은 것은?</option>
                            <option value="hint_07">내가 좋아하는 캐릭터는?</option>
                        </select>
                    </td>
                </tr>
                <tr class="displaynone">
                    <th scope="row">
                        비밀번호 확인 답변
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <input type="text" id="hint_answer" name="hint_answer" fw-filter fw-label="비밀번호 확인시 답변" fw-msg
                        class="inputTypeText">
                    </td>
                </tr>
                <tr>
                    <th scope="row" id="nameTitle">
                        이름
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <span id="nameContents">
                            <input type="text" name="name" id="name" maxlength="20">
                        </span>
                    </td>
                </tr>
                <tr>
                    <th scope="row" id="nameTitle">
                        성별
                    </th>
                    <td class="displaynone">
                        <div class="select">
                            <input type="radio" name="gender" id="woman" value="woman" checked />  
                            <label for="woman">여자</label>
                            <input type="radio" name="gender" id="man" value="man" />
                            <label for="man">남자</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        생년월일
                    </th>
                    <td>
                        <select title="select" name="birthdayY">
                            <option value="">선택</option>
                            <option value="1980">1980</option>
                            <option value="1981">1981</option>
                            <option value="1982">1982</option>
                            <option value="1983">1983</option>
                            <option value="1984">1984</option>
                            <option value="1985">1985</option>
                            <option value="1986">1986</option>
                            <option value="1987">1987</option>
                            <option value="1988">1988</option>
                            <option value="1989">1989</option>
                            <option value="1990">1990</option>
                            <option value="1991">1991</option>
                            <option value="1992">1992</option>
                            <option value="1993">1993</option>
                            <option value="1994">1994</option>
                            <option value="1995">1995</option>
                            <option value="1996">1996</option>
                            <option value="1997">1997</option>
                            <option value="1998">1998</option>
                            <option value="1999">1999</option>
                            <option value="2000">2000</option>
                        </select>
                        <select title="select" name="birthdayM">
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <select title="select" name="birthdayD">
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                            <option value="05">05</option>
                            <option value="06">06</option>
                            <option value="07">07</option>
                            <option value="08">08</option>
                            <option value="09">09</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        주소
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <input type="text" id="sample6_postcode" placeholder="우편번호">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                        <br>
                        <input type="text" id="sample6_address" class="addr" placeholder="주소">
                        <br>
                        <input type="text" id="sample6_detailAddress" class="addr" placeholder="상세주소">
                        <input type="text" id="sample6_extraAddress" placeholder="참고항목">
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        휴대전화
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <select name="mobile[]" id="mobile1" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg>
                            <option value="number1">010</option>
                            <option value="number1">011</option>
                            <option value="number1">016</option>
                            <option value="number1">017</option>
                            <option value="number1">018</option>
                            <option value="number1">019</option>
                        </select>
                         - 
                        <input type="text" id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg>
                         - 
                        <input type="text" id="mobile2" name="mobile[]" maxlength="4" fw-filter="isNumber&isFill" fw-label="휴대전화" fw-alone="N" fw-msg>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        이메일
                        <img src="/img/ico_required.gif" alt="필수">
                    </th>
                    <td>
                        <input type="text" id="email1" name="email1" fw-filter="isFill&isEmail" fw-label="이메일" fw-alone="N" fw-msg>
                        <span id="emailMsg"></span>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        프로필사진
                    </th>
                    <td>
                        <input type="file" id="profil" name="profil" >
                    </td>
                </tr>
                
            </tbody>
        </table>
    </div>
    <br><br>
    <!-- 이용약관 -->
    <div id="joinbtn">
       <input class="joinbtn" type="submit" value="수정" />
    </div> 
  </form>  
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>  

    <!-- 푸터 -->
    <div id="footer"></div>
</body>
</html>