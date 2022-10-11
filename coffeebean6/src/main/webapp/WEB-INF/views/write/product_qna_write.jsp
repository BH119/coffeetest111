<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>
    
    <link rel="stylesheet" href="/css/item/writeQnA.css">

	<div class="writeQnA">
        <div class="writeQnATitle">
            <h3>상품문의</h3>
        </div><br>
        <div class="writeQnAItem">
            <div class="writeQnAItemImg">
                <a href="/item/itemDetail">
                    <img src="/${dto.p_FILEPATH }${dto.p_FILENAME1}" alt="">
                </a>
            </div>
            <div class="writeQnAItemInfo">
                <ul>
                    <li><strong>${dto.p_NAME }</strong></li>
                    <li><span>${dto.p_PRICE}</span></li><br>
                    <li><a href="/item/item_Detail">상품상세</a></li>
                </ul>
            </div>
        </div><br>
        <form action="/write/product_qna_writeAction">
        <input type="hidden" name="P_IDX" value="${dto.p_IDX }">
        <input type="hidden" name="PA_P_NAME" value="${dto.p_NAME }">
        <input type="hidden" name="PA_P_FILEPATH" value="${dto.p_FILEPATH }">
        <input type="hidden" name="PA_P_FILENAME1" value="${dto.p_FILENAME1}">
        <input type="hidden" name="PA_P_PRICE" value="${dto.p_PRICE}">
        <input type="hidden" name="PA_STATE" value="답변대기">
	        <div class="writeQnATable">
	            <table>
	                <tr>
	                    <td>제목</td>
	                    <td>
	                        <input name="PA_TITLE" type="text">
	                    </td>
	                </tr>
	                <tr>
	                    <td>비밀번호</td>
	                    <td>
	                        <input name="PA_LOCK" style="font-family: 'Courier New', Courier, monospace" type="password">
	                    </td>
	                </tr>
	                <tr>
	                    <td>내용</td>
	                    <td>
	                        <textarea name="PA_CONTENT" id="" cols="63" rows="10"></textarea>
	                    </td>
	                </tr>
	            </table>
	        </div><br>
	        <div class="writeQnABtn">
	            <input type="submit" value="문의하기">
	            <input type="button" value="돌아가기" onClick="historyBack()">
	        </div>
        </form>
    </div><br><br>
    
    <script>
    	function historyBack(){
    		history.back();
    	}
    </script>