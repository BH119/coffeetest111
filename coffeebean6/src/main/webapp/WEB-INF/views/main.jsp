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
            <div class="row mainBestItem">
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(콜드브루) 이디오피아 예가체프.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">이디오피아 예가체프 1000ml</a></li>
                        <li class="bestnew2"><a href="">11,700</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(콜드브루) 골드브라운.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">콜드브루 골드브라운 1000ml</a></li>
                        <li class="bestnew2"><a href="">12,800</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(스틱) 예가체프 블렌드.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">예가체프 블렌드 스틱 100개입</a></li>
                        <li class="bestnew2"><a href="">15,800</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(스틱) 모카 블랙.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">모카 블랙 스틱 100개입</a></li>
                        <li class="bestnew2"><a href="">15,800</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(분쇄) 도시의 아침 블렌드.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">도시의 아침 블렌드 200g</a></li>
                        <li class="bestnew2"><a href="">8,300</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(분쇄) 설레는밤 블렌드 디카페인.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">설레는밤 블렌드 디카페인 200g</a></li>
                        <li class="bestnew2"><a href="">8,300</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(분쇄) 오후의 일상 블렌드 다크.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">오후의 일상 블렌드 다크 200g</a></li>
                        <li class="bestnew2"><a href="">8,300</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="bestnewimg"><a href=""><img src="img/product/(분쇄) 오후의 일상 블렌드 다크.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">오후의 일상 블렌드 다크 200g</a></li>
                        <li class="bestnew2"><a href="">8,300</a></li>
                    </ul>
                </div>
            </div>
            <div class="BestPlus" >
                <a href="./item/best.html" class="plustap"><div class="blank">더보기</div></a>
            </div>
        </div>
        <div class="container mainNew">
            <div class="mainNewTitle">
                <h2>NEW</h2>
                <span>NEW ITEM</span><br><br>
            </div>
            <div class="row mainNewItem">
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) G블렌딩-먼로화이트-스페셜티.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">G블렌딩 먼로화이트 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 과테말라 안티구아.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">과테말라 안티구아 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 아라비카 블렌딩 딥블랙.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">아라비카 블렌딩 딥블랙 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 디카페인_콜롬비아.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">콜롬비아 디카페인 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 에티오피아 코케허니 예가체프.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">에티오피아 코케허니 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 예멘 모카 마타리.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">예멘 모카 마타리 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 인도네시아 만델링.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">인도네시아 만델링 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
                <div class="col-3">
                    <ul>
                        <li class="newbestimg"><a href=""><img src="img/product/(원두) 케냐 AA 키암부 프리미엄.jpg" alt=""></a></li>
                        <li class="bestnew1"><a href="">케냐 AA 키암부 프리미엄 200g</a></li>
                        <li class="bestnew2"><a href="">10,000</a></li>
                    </ul>
                </div>
            </div><br>
            <div class="NewPlus">
                <a href="/item/new.html"><div class="blank">더보기</div></a>
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
                        <li style="margin-top:10px ;"><a href="">· 배송 관련 공지</a></li>
                        <li><a href="">· 원두 가격 인상 관련 안내</a></li>
                        <li><a href="">· 택배사 변경 안내</a></li>
                        <li><a href="/notice.html">공지사항 더보기 >></a></li>
                    </ul>
                </div>
            </div>
        </div><br>
    </div>

    