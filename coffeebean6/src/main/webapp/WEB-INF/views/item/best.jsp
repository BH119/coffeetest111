<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>
    
    <link rel="stylesheet" href="/css/item/item.css">

	<div class="item">
        <div class="itemTop">
            <a href="/">
                HOME
            </a>
            <span> > </span>
            <a href="/item/best">
                BEST
            </a>
        </div><br>
        <div class="itemTitle">
            <div class="itemTitleM">
                <h2>BEST</h2>
                <span style="font-size: 18px;">Best Items</span>
            </div>
        </div><br><br><br>
		<div class="itemList">
        	<div class="row row-cols-1 row-cols-md-4">
        		<c:forEach var="dto" items="${bestList}">
			            <ul class="itemListUl">
					        <div class="itemImg">
					            <a href="/item/item_Detail" class="itemImgBox">
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
							<a onclick='location.href="/item/best?page=${page-1}"'>이전</a>
						</c:when>
						<c:otherwise>
						<style>#disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/item/best?page=${page-1}"' >이전</a>
						</c:otherwise>
					</c:choose>

					<c:forEach var="i" begin="${ startPage}" end="${ endPage}">
						<a href="/item/best?page=${i}">${i}</a>
					</c:forEach>

					<c:choose>
						<c:when test="${page < totalPage}">
							<a onclick='location.href="/item/best?page=${page+1}"'>다음</a>
						</c:when>
						<c:otherwise>
						<style> #disableLink{pointer-events: none; cursor: default;}</style>
							<a id="disableLink" onclick='location.href="/item/best?page=${page+1}"'>다음</a>
						</c:otherwise>
					</c:choose>
              </ul>
        </div>
    </div><br>