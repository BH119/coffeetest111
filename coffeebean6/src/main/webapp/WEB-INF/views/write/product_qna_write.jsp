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
                    <img src="/img/free-icon-coffee-cup-3361135.png" alt="">
                </a>
            </div>
            <div class="writeQnAItemInfo">
                <ul>
                    <li><strong>원두커피111</strong></li>
                    <li><span>12345원</span></li><br>
                    <li><a href="/item/item_Detail">상품상세</a></li>
                </ul>
            </div>
        </div><br>
        <div class="writeQnATable">
            <table>
                <tr>
                    <td>분류</td>
                    <td>
                        <select name="QnAType" id="QnAType">
                            <option value="">상품문의</option>
                            <option value="">배송문의</option>
                            <option value="">기타문의</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td>
                        <input type="text">
                    </td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td>
                        <input type="password">
                    </td>
                </tr>
                <tr>
                    <td>내용</td>
                    <td>
                        <textarea name="QnA" id="" cols="63" rows="10"></textarea>
                    </td>
                </tr>
            </table>
        </div><br>
        <div class="writeQnABtn">
            <input type="button" value="문의하기">
            <input type="button" value="돌아가기" onClick="historyBack()">
        </div>
    </div><br><br>
    
    <script>
    	function historyBack(){
    		history.back();
    	}
    </script>