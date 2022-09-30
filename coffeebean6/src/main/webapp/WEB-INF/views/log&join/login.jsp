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
  
  
  <title>로그인</title>

  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="/css/main.css">
  <link rel="stylesheet" href="/css/header.css">
  <link rel="stylesheet" href="/css/log&join/login.css">
  <link rel="stylesheet" href="/css/footer.css">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
  <!-- Bootstarp JS -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

  <script>
    $(document).ready(function(){
      $('#headerTop').load("/headerTop.html");
      $('#header').load("/header-sub.html");  
      // $('#header-sub').load("/header-sub.html");     
      $('#footer').load("/footer-sub.html");
    });
  </script>

  <!-- jquery를 이용하여 아이디저장 기능 구현 -->
  <!-- 출처 : https://chobopark.tistory.com/203 -->
  <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript">
       $(function() {
           
             fnInit();
           
       });
       
       function frm_check(){
           saveid();
       }
   
      function fnInit(){
          var cookieid = getCookie("saveid");
          console.log(cookieid);
          if(cookieid !=""){
              $("input:checkbox[id='saveId']").prop("checked", true);
              $('#logId').val(cookieid);
          }
          
      }    
   
      function setCookie(name, value, expiredays) {
          var todayDate = new Date();
          todayDate.setTime(todayDate.getTime() + 0);
          if(todayDate > expiredays){
              document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
          }else if(todayDate < expiredays){
              todayDate.setDate(todayDate.getDate() + expiredays);
              document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
          }
          
          
          console.log(document.cookie);
      }
   
      function getCookie(Name) {
          var search = Name + "=";
          console.log("search : " + search);
          
          if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
              offset = document.cookie.indexOf(search);
              console.log("offset : " + offset);
              if (offset != -1) { // 쿠키가 존재하면 
                  offset += search.length;
                  // set index of beginning of value
                  end = document.cookie.indexOf(";", offset);
                  console.log("end : " + end);
                  // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                  if (end == -1)
                      end = document.cookie.length;
                  console.log("end위치  : " + end);
                  
                  return unescape(document.cookie.substring(offset, end));
              }
          }
          return "";
      }
   
      function saveid() {
          var expdate = new Date();
          if ($("#saveId").is(":checked")){
              expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
              setCookie("saveid", $("#logId").val(), expdate);
              }else{
             expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
              setCookie("saveid", $("#logId").val(), expdate);
               
          }
      }
  </script>

</head>
<body>

  <!-- 메인 -->
  <div class="loginForm container text-center">
    <div class="loginSection1">
      <h2>로그인</h2>
    </div>
    <div class="loginMain">
            <input type="text" class="id_box" name="loginID" placeholder="아이디"><br>
            <input type="password" class="pw_box" name="loginPW" placeholder="비밀번호"><br>
            <div class="input-wrap">
              <input type="checkbox" id="checkId" name="checkId">
              <label for="checkId"><span></span></label>
              아이디 저장
            </div>
            <div>
              <input type="button" class="button_box" value="로그인">
            </div>
            
      <!-- 아이디찾기 비번찾기 -->
      <div class="loginFindbox">
        <span><input type="button" class="find_box" value="아이디찾기"
              onclick="window.open('/log&join/id_find', '아이디찾기', 'width=500,height=440')" >
            </span>
        <span><input type="button" class="find_box" value="비밀번호찾기"
              onclick="window.open('/log&join/pw_find', '비밀번호찾기', 'width=500,height=440')" >
            </span>
            <span></span>
        <span>
          <a href="join" style="color:#9a6c45; font-weight: bold;">회원가입</a>
        </span>

        
      </div>
    </div>
  </div>

</body>
</html>