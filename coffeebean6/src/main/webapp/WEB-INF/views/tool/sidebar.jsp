<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>
<link rel="stylesheet" href="/css/tool/sidebar.css">
 <script src="/js/tool/sidebar.js" defer></script>
<script>
    // $(window).on("scroll", function(){ });
    $( '.quickButton2' ).click( function() {
  $( 'html, body' ).animate( { scrollTop : 0 }, 1000 );
  return false;
});

$( '.quickButton3' ).click( function() {
  $( 'html, body' ).animate( { scrollTop : 5000 }, 2000 );
  return false;
});
</script>
<div id="sidebar" class="quick-side-bar">
    <ul>
        <li>
            <a href="one2oneList.html" class="quickButton"><img src="/img/icon/question.png" style="width: 30px;"></a>
        </li>
        <li>
            <a href="/member//mypage/cart" class="quickButton"><img src="/img/icon/cart.png"  style="width: 40px;"> </a>
        </li>
        <li>
            <span class="quick-arrow-top">
                <a href="javascript:;" class="quickButton2"><img src="/img/icon/up.png"  style="width: 20px; margin-top: 10px;"></a>
            </span>
        </li>
        <li>
            <span class="quick-arrow-bottom">
            <a href="javascript:;" class="quickButton3"><img src="/img/icon/down.png"  style="width: 20px;"></a>
            </span>
        </li>
    </ul>

</div>
