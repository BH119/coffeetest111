<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>
    
    <link rel="stylesheet" href="/css/item/item.css">

    <div class="item">
        <div class="itemTop">
            <a href="">
                HOME
            </a>
            <span> > </span>
            <a href="">
                COFFEE
            </a>
        </div><br>
        <div class="itemTitle">
            <div class="itemTitleM">
                <h2>스틱커피</h2><br>
            </div>
        </div><br>
        <div class="itemList">
            <br>
            <div>
                <ul class="itemMenuUl">
                    <li><a href="/item/coffee_stick?orderHit=1">인기순</a></li>
                    <li><a href="/item/coffee_stick?orderNew=1">최근등록순</a></li>
                    <li><a href="/item/coffee_stick?orderLow=1">낮은가격순</a></li>
                    <li><a href="/item/coffee_stick?orderHigh=1">높은가격순</a></li>
                </ul>
            </div>
        </div>
           <div class="itemList">
        	<div class="row row-cols-1 row-cols-md-4">
        		<c:forEach var="dto" items="${Type3List}">
			            <ul class="itemListUl">
					        <div class="itemImg">
					            <a href="/view/item_view?P_IDX=${dto.p_IDX }" class="itemImgBox">
					                <div class="overlay">
					                    <p>${dto.p_NAME }</p>
					                </div>
					                <img src="/${dto.p_FILEPATH }${dto.p_FILENAME1 }" alt="">
					            </a>
					        </div>
					        <div class="itemName">
					            <span>${dto.p_NAME }</span>
					        </div>
					        <div class="itemPrice">
					            <span>${dto.p_PRICE } </span>
					        </div>
			            </ul>
        		</c:forEach> 
       		</div>
			            <br><br><br>
        </div><br>
        <div class="itemPage">
            <ul class="pagination my">
               <c:choose>
						<c:when test="${page > 1}">
							<a onclick='location.href="/item/coffee_stick?page=${page-1}&orderHigh=${orderHigh}&orderLow=${orderLow}&orderNew=${orderNew}&orderHit=${orderHit}"'>이전</a>
						</c:when>
						<c:otherwise>
						<style>#disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/item/coffee_stick?page=${page-1}&orderHigh=${orderHigh}&orderLow=${orderLow}&orderNew=${orderNew}&orderHit=${orderHit}"' >이전</a>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${ startPage}" end="${ endPage}">
						<a href="/item/coffee_stick?page=${i}&orderHigh=${orderHigh}&orderLow=${orderLow}&orderNew=${orderNew}&orderHit=${orderHit}">${i}</a>
					</c:forEach>

					<c:choose>
						<c:when test="${page < totalPage}">
							<a onclick='location.href="/item/coffee_stick?page=${page+1}&orderHigh=${orderHigh}&orderLow=${orderLow}&orderNew=${orderNew}&orderHit=${orderHit}"'>다음</a>
						</c:when>
						<c:otherwise>
						<style> #disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/item/coffee_stick?page=${page+1}&orderHigh=${orderHigh}&orderLow=${orderLow}&orderNew=${orderNew}&orderHit=${orderHit}"'>다음</a>
						</c:otherwise>
					</c:choose>
              </ul>
        </div>
    </div><br>