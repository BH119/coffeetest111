<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />    
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<!-- Bootstarp JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/item/itemDetail.css">
<body>
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
                            <img src="/${dto.p_FILEPATH }${dto.p_FILENAME1 }" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/${dto.p_FILEPATH }${dto.p_FILENAME2 }" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                            <img src="/${dto.p_FILEPATH }${dto.p_FILENAME3 }" class="d-block w-100" alt="...">
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
                	<form action="/totalprice" method="get">
	                    <table>
	                        <tr>
	                            <th>상품이름</th>
	                            <td>${dto.p_NAME }</td>
	                        </tr>
	                        <tr>
	                            <td>상품가격</td>
	                            <td>${dto.p_PRICE }</td>
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
	                                <button type="button" id="del" >-</button>
	                                <span id="amount">1</span>
	                                <button type="button" id="add" >+</button>
	                            </td>
	                        </tr>
	                        <tr>
	                            <td>총 상품금액</td>
	                            <td> <span  class="price1" id="price1">${dto.p_PRICE }</span>원 </td>
	                        </tr>
	                    </table>
	                    <br>
		                <div class="itemTableBtn">
	                        <input type="submit" value="장바구니" id="cartBtn">
	                        <input type="submit" value="구매하기" id="buyBtn">
	                    </div>
	                </form>
                    
                    <script type="text/javascript">
                    var amount = document.getElementById("amount");
                    var add = document.getElementById("add");
                    var del = document.getElementById("del");
                    var price1 = document.getElementById("price1");
                    add.onclick = () => {
                    	var current = parseInt(amount.innerText, 10);
                    	var price2 = parseInt(price1.innerText, 10);
                    	amount.innerText = current + 1;
                    	
                    	price2 = price2/current;//기본값유지시키기
                    	price1.innerText = (current+1) * price2
                    	
                    };
                   	del.onclick = () => {
                   		var current = parseInt(amount.innerText, 10);
                    	var price2 = parseInt(price1.innerText, 10);
                    	amount.innerText = current - 1;
                    	
                    	price2 = price2/current;
                    	price1.innerText = (current-1) * price2
                    	
                    	if(current < 2){
                    	   amount.innerText=1;
                    	   
                    	   price2 = price2/current;
                       	price1.innerText = (current) * price2
                       	
                    	   
                    	}
                  	};
                    </script>
                    
                    
                    
                    
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
                <img src="/${dto.p_FILEPATH }${dto.p_FILENAME1 }" alt="">
                <img src="/${dto.p_FILEPATH }${dto.p_FILENAME2 }" alt="">
                <img src="/${dto.p_FILEPATH }${dto.p_FILENAME3 }" alt=""> <br>
                ${dto.p_CONTENT }
                
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
            		<th>번호</th>
            		<th>제목</th>
            		<th>작성자</th>
            		<th>등록일</th>
            		<th>${ dto2.PA_TITLE }</th>
            	</tr>	
               <c:forEach var="dto1" items="${ list }">
                									
                			<tr  onclick="window.open('/view/product_qna_pw?PA_IDX=${dto1.PA_IDX}', '팝업창 이름', 'width=500px, height=300px , left=700px,top=200px')">
<%-- 							<tr onclick="parent.location.href='/view/product_qna_pw?PA_IDX=${dto1.PA_IDX}'"> --%>
							<td>${ dto1.PA_IDX }</td>
							<td>${ dto1.PA_TITLE }</td>
							<td>${ dto1.PA_M_NAME }</td>
							<td><fmt:formatDate value="${ dto1.PA_REGDATE }"
									pattern="yyyy-MM-dd" /></td>
							<td></td>
						</tr>
					</c:forEach>
            </table>
            <div style="display: flex; justify-content: center;">
				<div style="width: 200px;" class="pagination">
					<c:choose>
						<c:when test="${page > 1}">
							<a onclick='location.href="/view/item_view?page=${page-1}&P_IDX=${dto.p_IDX } }"'>이전</a>
						</c:when>
						<c:otherwise>
						<style>#disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/view/item_view?page=${page-1}&P_IDX=${dto.p_IDX }"' >이전</a>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${ startPage}" end="${ endPage}">
						<a href="/view/item_view?page=${i}&P_IDX=${dto.p_IDX }">${i}</a>
					</c:forEach>

					<c:choose>
						<c:when test="${page < totalPage}">
							<a onclick='location.href="/view/item_view?page=${page+1}&P_IDX=${dto.p_IDX }"'>다음</a>
						</c:when>
						<c:otherwise>
						<style> #disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/view/item_view?page=${page+1}&P_IDX=${dto.p_IDX }"'>다음</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
					<button style="background-color: #ffffff; border-color: #000000;"
					type="button" onclick='location.href="/write/product_qna_write?P_IDX=${dto.p_IDX}"'
					class="btn btn-warning">글쓰기</button>
		</div>
	</div>
    <br>

</body>

<script type="text/javascript">


</script>






