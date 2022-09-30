<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>
    
    <link rel="stylesheet" href="/css/buy/buyOk.css">

    <div class="buyOk">
        <div class="buyOkTitle">
            <h2>주문이 완료되었습니다.</h2>
        </div><br>
        <div class="buyOkItem">
            <table>
                <tr>
                    <td rowspan="3">
                        <img src="img/free-icon-coffee-cup-3361135.png" alt="">
                    </td>
                    <td>
                        <ul>
                            <li id="buyItemName">커피이름1234</li>
                            <li id="buyItemPrice">12345원</li>
                            <li>구매수량</li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div><br>
        <div class="buyOkInfo">
            <table class="UserInfoTable">
                <tr>
                    <th>주문번호</th>
                    <td><span>0000</span></td>
                </tr>
                <tr>
                    <th>주문일자</th>
                    <td><span>0000</span></td>
                </tr>
                <tr>
                    <th>결제수단</th>
                    <td><span>0000</span></td>
                </tr>
                <tr>
                    <th>결제금액</th>
                    <td><span>0000</span></td>
                </tr>
                <tr>
                    <th>결제상태</th>
                    <td><span>0000</span></td>
                </tr>
            </table>
        </div><br>
        <div class="buyOkBtn">
            <div>
                <input type="button" value="쇼핑 계속하기" onClick="goback()">
                <input type="button" value="홈으로" onClick="location.href='/main'">           
            </div>    
        </div>
    </div><br><br>
    
    <script>
    	function goback(){
    		history.go(-3);
    	}
    </script>