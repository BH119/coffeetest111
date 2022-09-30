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
    
    
    <title>자주묻는질문(FAQ)</title>
    
  <!-- Main CSS : Header, Main, Footer -->
  <link rel="stylesheet" href="../css/main.css">
  <link rel="stylesheet" href="../css/community/faq.css">
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
      $('#header').load("/header-sub.html");  
      $('#sidebar').load("./tool/sidebar.html");   
      $('#footer').load("/footer-sub.html");
    });
  </script>
</head>
<body>

  <!-- 메인 -->
  <div id="container">
  <span id="faq-title">자주 묻는 질문(FAQ)</span>
    <div class="faq-content">
    <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>[주문결제] 상품권(문화상품권,도서상품권 등)으로 결제할 수 있나요?</span></button>
      <div class="answer" id="ans-1">죄송합니다 이전까지 진행되었던 컬쳐랜드 문화상품권 결제 서비스가<br>
      2016년 9월 19일 이후로 종료되었습니다.<br>
      앞으로 더욱 나은 서비스로 찾아뵐 수 있도록 노력하겠습니다.</div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-2"><span id="que-2-toggle">+</span><span>[배송] 주문하면 얼마 만에 받아볼 수 있나요?</span></button>
      <div class="answer" id="ans-2">출고예정일은 상품 및 업체에 따라 준비기간이 다르며 배송 시간은 지역에 따라 약간씩 다르나 보통 1~3일정도 소요됩니다.<br>
          (도서산간지역은 최대 7일 소요)<br>
          상품 상세페이지에 예상 출고 예정일이 표기 되어 있습니다.<br>
          * 수령예정일은 영업일 기준으로 산정되며, 일요일과 공휴일 및 기타 휴무일에는 배송되지 않습니다.<br>
          * 주문한 상품의 당사에 재고가 없을 때는 거래처로 다시 주문요청한후 발송이 되므로 3∼7일내외 정도 더 소요됩니다.<br>
          * 천재지변 등의 불가항력적 사유로 인한 배송 지연은 그 해당기간 동안의 배송소요 기간에서 제외됩니다.</div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-3"><span id="que-3-toggle">+</span><span>[배송] 주문한 상품이 아직 안 왔어요.</span></button>
      <div class="answer" id="ans-3">주문하신 상품을 아직 못받아 보셨다면 다음 사항을 확인해 주십시오.<br><br>
          1. 주문 및 발송확인에서 상품의 처리상태가 상품출고로 되어 있는 경우<br>
          이 상품은 해당 배송처에서 발송처리를 한 것입니다.<br>
          배송처에서 발송처리가 되었으나 2~3일 이내에 받아보시지 못한 경우는 다음을 확인하시기 바랍니다.<br>
          * 배송조회를 확인하셔서 주문하신 상품이 받아보실 주소의 근처 취급소에 있다고 조회되면, 택배사 직원이 방문했음에도 불구하고<br>
          부재중이셔서 배송받지 못하신 경우가 많습니다.<br>
            이 경우 고객센터의 SOS 문의 상담이나 전화(국번없이)1661-1112을 이용하시면 신속히 처리해 드립니다.<br><br>
          2. 주문 및 발송 확인에서 상품의 처리상태가 품절이라고 되어 있는 경우<br>
          상품이 품절인 경우에는 해당 업체에 재고가 없으며, 거래처에서 상품을 더 이상 취급하지 않기 때문에 보내드릴 수 없습니다.<br>            
          이 경우 메일로 별도 안내해 드리고 있습니다.<br>
          만약 메일을 받아 보지 못하셨다면, 네트워크의 오류나 메일주소의 오기 또는 메일주소가 없기 때문입니다.<br>
          <a href="#">[마이페이지]</a>에서 메일주소의 등록 또는 수정을 하십시오.<br>
           </div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>[반품/교환/환불] 배송받은 상품을 교환하고 싶습니다.</span></button>
      <div class="answer" id="ans-4">반품이 가능한 기간은 배송받은 날로부터 7일 이내입니다.<br>
          다른 상품으로 맞교환이 안되므로 이점 양해해 주시길 바랍니다<br>
          고객센터의 SOS 상담으로 반품하실 상품명과 주문번호, 반송내용 등을 알려주시면 고객센터에서 고객님께<br>
          연락을 드린 후 처리해 드립니다. 고객변심으로 인한 반품시 반송료는 고객 부담입니다.<br>
          신용카드 결제 등 현금 결제를 제외한 기타 결제의 경우 환불이 불가능하고 재결제를 해주셔야 하는 상황이 발생할 수 있습니다. 참조 부탁 드립니다.</div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>[반품/교환/환불] 파손/훼손/오발송된 상품을 교환하고 싶습니다. 어떻게 해야하나요?</span></button>
      <div class="answer" id="ans-5">배송받으신 상품에 하자가 있는 경우, 고객센터의 SOS 상담에 주문번호와 내용을 기재하여 주십시오.<br>
          담당자 확인 후 요청 내용에 따라 택배기사가 반품회수 하도록 조치해드립니다.<br>
          회수된 파손상품은 발송업체에서 확인후 정상 제품으로 재발송 됩니다.<br>
          </div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>[배송] 주문한 상품의 배송추적을 할 수 있나요?</span></button>
      <div class="answer" id="ans-6">고객님이 주문하신 상품은 온라인몰 상단의 [주문/배송조회]를 통해 확인하실 수 있습니다.<br>
    </div>
    </div>
    <div class="faq-content">
      <button class="question" id="que-7"><span id="que-7-toggle">+</span><span>[영업점] 상품의 재고를 알고 싶은데 어떻게 하면 되나요?</span></button>
      <div class="answer" id="ans-7">
          상품의 재고는 실시간으로 변동되므로, 정확한 재고유무를 알고 싶으시면,<br>
          방문하고자 하시는 영업점에 전화하셔서 확인하시는 편이 좋습니다.<br>
          지점별 연락처는 홈페이지의 회사소개 또는 영업점 안내 페이지를 통해 확인하실 수 있습니다.</div>
    </div>
  </div>
  
  <!-- 질문 접었다 펼치는 기능 JS -->
  <script>
    const items = document.querySelectorAll('.question');
  
    function openCloseAnswer() {
      const answerId = this.id.replace('que', 'ans');
  
      if(document.getElementById(answerId).style.display === 'block') {
        document.getElementById(answerId).style.display = 'none';
        document.getElementById(this.id + '-toggle').textContent = '+';
      } else {
        document.getElementById(answerId).style.display = 'block';
        document.getElementById(this.id + '-toggle').textContent = '-';
      }
    }
  
    items.forEach(item => item.addEventListener('click', openCloseAnswer));
  </script>

</body>
</html>