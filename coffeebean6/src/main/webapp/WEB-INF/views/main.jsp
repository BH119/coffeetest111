<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>

 <script src="/js/main.js" defer></script>
    <link rel="stylesheet" href="/css/main.css">
<!--       <title>커피콩 :: 신선함을 즐기는 최선의 선택</title> -->
        <div class="main">
        <div class="container mainBanner" style="padding: 0;">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators" >
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" >
                  <div class="carousel-item active c_item">
                    <img src="img/메인배너.png" alt="...">
                  </div>
                  <div class="carousel-item c_item">
                    <img src="img/메인배너2.png" alt="...">
                  </div>
                  <div class="carousel-item c_item">
                    <img src="img/메인배너3.png" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </button>
              </div>
        </div>
        
        <!-- 관리자 페이지로 이동 -->
        <div class="admin_page">
        <input type="button" value="관리자 페이지로" onclick="location.href='/admin/admin_notice';">
        </div>
        
        <div class="container mainBest">
            <div class="mainBestTitle">
                <h2>BEST</h2>
                <span>BEST ITEM</span><br><br>
            </div>
		<div class="row row-cols-1 row-cols-md-4">
            <c:forEach var="dto" items="${orderHitList}">
            <div class="row mainNewItem">
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href="/view/item_view?P_IDX=${dto.p_IDX }"><img src="${dto.p_FILEPATH }${dto.p_FILENAME1 }" alt=""></a></li>
                        <li class="bestnew1"><a href="/view/item_view?P_IDX=${dto.p_IDX }">${dto.p_NAME}</a></li>
                        <li class="bestnew2"><a href="/view/item_view?P_IDX=${dto.p_IDX }">${dto.p_PRICE}</a></li>
                    </ul>
                </div>
            </div><br>
            </c:forEach>
        </div>
            <div class="BestPlus" >
                <a href="/item/best" class="plustap"><div class="blank">더보기</div></a>
            </div>
        </div>
        <div class="container mainNew">
            <div class="mainNewTitle">
                <h2>NEW</h2>
                <span>NEW ITEM</span><br><br>
            </div>
        <div class="row row-cols-1 row-cols-md-4">
            <c:forEach var="dto" items="${newList}">
            <div class="row mainNewItem">
                <div class="col-3">
                    <ul>
   						<li class="newbestimg"><a href="/view/item_view?P_IDX=${dto.p_IDX }"><img src="${dto.p_FILEPATH }${dto.p_FILENAME1 }" alt=""></a></li>
                        <li class="bestnew1"><a href="/view/item_view?P_IDX=${dto.p_IDX }">${dto.p_NAME}</a></li>
                        <li class="bestnew2"><a href="/view/item_view?P_IDX=${dto.p_IDX }">${dto.p_PRICE}</a></li>
                    </ul>
                </div>
            </div><br>
            </c:forEach>
        </div>
        </div>
            <div class="NewPlus">
                <a href="/item/new"><div class="blank">더보기</div></a>
            </div>
        </div>
        <div class="container mainAd" style="padding: 0;">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active c_item2">
                      <a href="#"><img src="img/광고배너.png" class="d-block w-100" alt="..."></a>
                  </div>
                  <div class="carousel-item c_item2">
                    <a href="#"><img src="img/광고배너2.png" class="d-block w-100" alt="..."></a>
                  </div>
                  <div class="carousel-item c_item2">
                    <a href="#"><img src="img/광고배너3.png" class="d-block w-100" alt="..."></a>
                  </div>
                </div>
              </div>
        </div><br><br>
        <div class="container mainInfo">
            <div class="row">
                <div class="mainInfo1 col">
                    <ul>
                        <li>고객센터</li>
                        <li>1234-1234</li>
                        <li>09:00 ~ 18:00</li>
                        <li>(점심시간 12:00 ~ 13:00)</li>
                        <li>토/일/공휴일 휴무</li>
                        <li><a href="">실시간 상담하기 >></a></li>
                    </ul>
                </div>
                <div class="mainInfo2 col">
                    <ul>
                        <li>공지사항</li>
                        <c:forEach var="dto" items="${noticeList}">
                        <li style="margin-top:10px ;"><a href='/view/notice_view?N_IDX=${dto.n_IDX}'>·${dto.n_TITLE }</a></li>
                        </c:forEach>
                        <li><a href="/community/notice_list">공지사항 더보기 >></a></li>
                    </ul>
                </div>
            </div>
        </div><br>
    </div>

    