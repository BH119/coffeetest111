<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>    
    
    <link rel="stylesheet" href="/css/item/itemDetail.css">

    <div class="itemDetail">
        <div class="container item">
            <div class="itemRoad">
                <a href="/"><span>HOME</span></a>
                <span> > </span>
                <a href="/item/item"><span>COFFEE</span></a>
                <span> > </span>
                <a href="#"><span>원두커피</span></a>
            </div>
            <div class="row">
                <div class="col imgbox">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img src="/img/원두.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/img/원두2.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/img/원두.jpg" class="d-block w-100" alt="...">
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
                <div class="col itemTable"> 
                    <table>
                        <tr>
                            <th colspan="2">
                                상품이름
                            </th>
                        </tr>
                        <tr>
                            <td>상품가격</td>
                            <td>0000</td>
                        </tr>
                        <tr>
                            <td>제조사</td>
                            <td>제조회사</td>
                        </tr>
                        <tr>
                            <td>배송비</td>
                            <td>무료</td>
                        </tr>
                        <tr>
                            <td>배송기간</td>
                            <td>
                                <span>오후 2:00 이전 주문 시 당일출고</span><br>
                                <span>오후 2:00 이후 주문 시 익일출고</span>
                            </td>
                        </tr>
                        <tr>
                            <td>주문수량</td>
                            <td>
                                <input type="button" value="-" onclick="count('minus')" class="countBtn">
                                <span id="itemCount">1</span>
                                <input type="button" value="+" onclick="count('plus')" class="countBtn">
                            </td>
                        </tr>
                        <tr>
                            <td>총 상품금액</td>
                            <td id="totalPrice">12345원</td>
                        </tr>
                    </table><br>
                    <div class="itemTableBtn">
                        <a href="/cart"><input type="button" value="장바구니" id="cartBtn"></a>
                        <a href="/buy"><input type="button" value="구매하기" id="buyBtn"></a>
                    </div>
                </div>
            </div>
        </div><br><br>
        <div id="goDetail">
            <ul class="itemMenu">
                <li></li>
                <li class="active itemMenus ">
                    <a href="#goDetail">상품상세설명</a>
                </li>
                <li class="itemMenus">
                    <a href="#goReview" >상품후기</a>
                </li>
                <li class="itemMenus">
                    <a href="#goitemQnA">상품문의</a>
                </li>
                <li></li>
            </ul>
        </div><br>
        <div class="container detailTap">
            <div class="detailImg">
                <img src="/img/item임시.PNG" alt="">
            </div>
        </div><br><br><br>
        <div id="goReview">
            <ul class="itemMenu">
                <li></li>
                <li class="itemMenus">
                    <a href="#goDetail">상품상세설명</a>
                </li>
                <li class="active itemMenus">
                    <a href="#goReview" >상품후기</a>
                </li>
                <li class="itemMenus">
                    <a href="#goitemQnA">상품문의</a>
                </li> 
                <li></li>
            </ul>
        </div><br>
        <div class="container review">  
            <table class="reviewTable">
                <tr>
                    <th colspan="3"><h5>상품후기</h5></th>
                    <th>
                        <!-- <a href="#" class="writeQnAA">
                            <div class="writeQnA">
                                글쓰기
                            </div>
                        </a> -->
                    </th>
                </tr>
                <tr>
                    <td>#</td>
                    <td>
                        <div class="accordionBoard" id="accordion" role="tablist" aria-multiselectable="true">      
                            <div class="accordionBoard accordionBoardDefault">        
                                <div class="accordionBoardHeading" role="tab">          
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">           
                                        상품후기1111         
                                    </a>        
                                </div>        
                                <div id="collapse1" class="accordionBoardCollapse collapse" role="tabpanel">          
                                    <div class="accordionBoardBody">            
                                        <span>이 후기는 영국에서 시작되어...</span><br>
                                        <span>111111111111111111111</span><br>
                                        <span>111111111111111111111</span><br>
                                        <span>111111111111111111111</span><br>
                                        <span>111111111111111111111</span><br>
                                        <span>111111111111111111111</span><br>
                                    </div>        
                                </div>      
                            </div>
                        </div>
                    </td>
                    <td>이름1111</td>
                    <td>####.##.##</td>
                </tr>
                <tr>
                    <td>#</td>
                    <td>
                        <div class="accordionBoard" id="accordion" role="tablist" aria-multiselectable="true">      
                            <div class="accordionBoard accordionBoardDefault">        
                                <div class="accordionBoardHeading" role="tab">          
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false">           
                                        상품후기2222         
                                    </a>        
                                </div>        
                                <div id="collapse2" class="accordionBoardCollapse collapse" role="tabpanel">          
                                    <div class="accordionBoardBody">            
                                        <p>후기2</p>          
                                        <p>사지마세요</p>
                                        <p>1234</p>
                                        <p>5678</p>
                                        <p>1111</p>
                                    </div>       
                                </div> 
                            </div>
                        </div>
                    </td>
                    <td>이름2222</td>
                    <td>####.##.##</td>
                </tr>
            </table>
            <nav aria-label="Page navigation reviewNav">
                <ul class="pagination my">
                  <li class="page-item" style="border: 0;"><a class="page-link" href="#">이전</a></li>
                  <li class="page-item active"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">다음</a></li>
                </ul>
            </nav>
        </div><br><br><br>
        <div id="goitemQnA">
            <ul class="itemMenu">
                <li></li>
                <li class="itemMenus">
                    <a href="#goDetail">상품상세설명</a>
                </li>
                <li class="itemMenus">
                    <a href="#goReview" >상품후기</a>
                </li>
                <li class="active itemMenus">
                    <a href="#goitemQnA">상품문의</a>
                </li>
                <li></li>
            </ul>
        </div><br>
        <div class="container itemQnA">
            <table class="QnATable">
                <tr>
                    <th colspan="4"><h5>상품문의</h5></th>
                    <th>
                        <a href="./writeQnA" class="writeQnAA">
                            <div class="writeQnA">
                                글쓰기
                            </div>
                        </a>
                    </th>
                </tr>
                <tr>
                    <td>#</td>
                    <td>
                        <div class="accordionBoard" id="accordion1" role="tablist" aria-multiselectable="true">      
                            <div class="accordionBoard accordionBoardDefault">        
                                <div class="accordionBoardHeading" role="tab">          
                                    <a role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapse3" aria-expanded="false">           
                                        상품문의1111
                                    </a>        
                                </div>        
                                <div id="collapse3" class="accordionBoardCollapse collapse" role="tabpanel">          
                                    <div class="accordionBoardBody">            
                                        <span>상품문의111122223333</span>
                                    </div>        
                                </div>      
                            </div>
                        </div>
                    </td>
                    <td>이름1111</td>
                    <td>####.##.##</td>
                    <td>답변대기</td>
                </tr>
                <tr>
                    <td>#</td>
                    <td>
                        <div class="accordionBoard" id="accordion" role="tablist" aria-multiselectable="true">      
                            <div class="accordionBoard accordionBoardDefault">        
                                <div class="accordionBoardHeading" role="tab">          
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false">           
                                        상품문의2222        
                                    </a>        
                                </div>        
                                <div id="collapse4" class="accordionBoardCollapse collapse" role="tabpanel">          
                                    <div class="accordionBoardBody">            
                                        <p>문의2</p>          
                                        <p>상품문의</p>
                                        <p>1111</p>
                                        <p>2222</p>
                                        <span>1111</span>
                                    </div>        
                                </div>      
                            </div>
                        </div>
                    </td>
                    <td>이름2222</td>
                    <td>####.##.##</td>
                    <td>답변완료</td>
                </tr>
            </table>
            <nav aria-label="Page navigation itemQnANav">
                <ul class="pagination my">
                  <li class="page-item"><a class="page-link" href="#">이전</a></li>
                  <li class="page-item active"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="page-link" href="#">4</a></li>
                  <li class="page-item"><a class="page-link" href="#">5</a></li>
                  <li class="page-item"><a class="page-link" href="#">다음</a></li>
                </ul>
            </nav>
        </div>
    </div><br>
    
    <script>
        function count(type)  {
        // 결과를 표시할 element
        const resultElement = document.getElementById('itemCount');

        // 현재 화면에 표시된 값
        let number = resultElement.innerText;

        if(type == 'plus') {
          number = parseInt(number) + 1;
        }else if(type == 'minus')  {
            if( number <= 1 ){
                return 1;
            }
          number = parseInt(number) - 1;
        }

        resultElement.innerText = number;
        }
    </script>