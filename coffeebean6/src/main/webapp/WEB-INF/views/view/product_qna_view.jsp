<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true" %>
    
    <link rel="stylesheet" href="/css/item/writeQnA.css">

	<div class="writeQnA">
        <div class="writeQnATitle">
            <h3>상품문의</h3>
        </div><br>
        <div class="writeQnAItem">
            <div class="writeQnAItemImg">
                <a href="/item/itemDetail">
                    <img src="/${dto.PA_P_FILEPATH }${dto.PA_P_FILENAME1}" alt="">
                </a>
            </div>
            <div class="writeQnAItemInfo">
                <ul>
                    <li><strong>${dto.PA_P_NAME }</strong></li>
                    <li><span>${dto.PA_P_PRICE}</span></li><br>
                </ul>
            </div>
        </div><br>
        <form action="/write/product_qna_writeAction">
	        <div class="writeQnATable">
	            <table>
	                <tr>
	                    <td>제목</td>
	                    <td>
	                        ${dto.PA_TITLE }
	                    </td>
	                </tr>
	                <tr>
	                    <td>내용</td>
	                    <td>
	                        ${dto.PA_CONTENT }
	                    </td>
	                </tr>
	            </table>
	        </div><br>
	        <div class="writeQnABtn">
	            <input type="button" value="돌아가기" onClick="historyBack()">
	        </div>
        </form>
    </div><br><br>
    
    <table width="1000" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>작성자</th>
			<th width="70%">내용</th>
			<th>날짜</th>
		</tr>
		<c:forEach var="answerDto" items="${ list }">
			<tr>
				<td>${ answerDto.AS_NAME }</td>
				<td>${ answerDto.AS_CONTENT }</td>
				<td>
					<fmt:formatDate value="${ answerDto.AS_DATE }" pattern="yyyy-MM-dd" />
				</td>
			</tr>
		</c:forEach>
	</table>
    
    
    
    
    
    
    
    
    <script>
    	function historyBack(){
    		history.back();
    	}
    </script>