<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>회사홈페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/css/header.css">
     <script src="main.js"> </script>

 
    <!-- Bootstrap 4.6.x JS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   </head>
<body>
   
   <div class="header">     
        <div class="headerTop">
            <span><a href="/member/login.html">로그인</a></span>
            <span><a href="/member/join.html">회원가입</a></span>
            <span><a href="/member/mypage/cart">장바구니</a></span>
            <span><a href="javascript:sea()" style="margin-right: 25px;">검색</a></span>
            <div id="search" class="search2">
            	<input type="text">
            	<a href="#">
                <img src="/img/search.png" alt="">
            	</a>
            </div>
        </div>
        <div class="container-fruid herderMain">
            <div class="row">
                <div class="headerTopLogo">
                    <a href="/index">
                        <img src="/img/logo.png" alt="logo">
                    </a>
                </div>

            </div>
        </div>
        <div class="container-fruid headerNav">
            <nav class="navbar navbar-expand-sm navbar-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/about/about" role="button" aria-expanded="false" style="color: #7F552E;">
                            ABOUT
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/item/best.html" role="button" aria-expanded="false" style="color: #7F552E;">
                            BEST
                        </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/item/new.html" role="button" aria-expanded="false" style="color: #7F552E;">
                            NEW
                      </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="/item/item.html" role="button" aria-expanded="false" style="color: #7F552E;">
                            COFFEE
                        </a>
                        <div class="dropdown-menu" style="margin: -3px; opacity: 0.8;">
                            <a class="dropdown-item" href="/item/item.html">원두커피</a>
                            <a class="dropdown-item" href="/item/item2.html">드립커피</a>
                            <a class="dropdown-item" href="/item/item3.html">콜드브루</a>
                            <a class="dropdown-item" href="/item/item4.html">스틱커피</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="notice.html" role="button" aria-expanded="false" style="color: #7F552E;">
                            COMMUNITY
                        </a>
                        <div class="dropdown-menu" style="margin: -3px; opacity: 0.8;">
                            <a class="dropdown-item" href="notice.html">공지사항</a>
                            <a class="dropdown-item" href="one2oneList.html">1:1문의</a>
                            <a class="dropdown-item" href="faq.html">자주 묻는 질문</a>
                        </div>
                    </li>
                  </ul>              
                </div>
              </nav>
        </div>
    </div>


