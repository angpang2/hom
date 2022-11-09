<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width; initial-scale=1.0"/>
    <title>도그쿡 | dogcook</title>
    <link rel="stylesheet" href="/resources/style/reset.css" type="text/css">
    <link rel="stylesheet" href="/resources/style/style2.css" type="text/css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet" type="text/css"><!--폰트-->
    <script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
    #profile{
        margin-left: 850px;
    }
</style>


</head>
<body>
<a href="#" id="top"><img src="/resources/img/top_btn.png" alt="top_btn"></a> <!--top버튼-->

<div id="wrap">
    <!--s:header-->
    <div id="header_bg"> <!--#1366bf-->
        <header><!--1400px-->
            <div id="my_menu"><a href="#"><img src="/resources/img/my_icon.png" alt="my_menu"></a></div>
            <span id="profile">
                <c:if test="${sessionScope.member.storedFileName != null}">

                            <img src="${pageContext.request.contextPath}/upload/${sessionScope.member.storedFileName}"
                                 alt="" width="50" height="50">
                </c:if>
                </span>
            <ul><!--언어영역-->


                 <c:choose>
                        <c:when test="${sessionScope.member.memberEmail != null}">
                            <span>${sessionScope.member.memberEmail}님</span>
                            <c:if test="${sessionScope.member.memberType == 1}">
                                <li><a href="/memberList">관리자 메뉴</a> </li>
                            </c:if>

                            <li><a href="#"  onclick="con()">로그아웃</a> </li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="/login">로그인</a></li>
                            <li><a href="/save">회원가입</a></li>
                        </c:otherwise>
                    </c:choose>
                <c:if test="${sessionScope.member.memberEmail != null}">
                    <li><a href="/mypage">마이페이지</a></li>
                </c:if>
                <li><a href="#">장바구니</a></li>
                <li><a href="/boardList">Q&A</a></li>
            </ul>
            <div id="h_btm"> <!--로고부분헤더-->
                <h1><a href="/"><img src="/resources/img/mainlogo1.png" alt="도그쿡"></a></h1>
                <nav>
                    <div id="all_menu">
                        <a href="#"><img src="/resources/img/allmenu_icon.png" alt="menu"></a>
                    </div>

                    <ul>
                        <li><a href="#">수제사료</a></li>
                        <li><a href="#">뼈껌</a></li>
                        <li><a href="#">육포&amp;말이</a></li>
                        <li><a href="#">고품격영양식</a></li>
                        <li><a href="#">간식&amp;케이크</a></li>




                    </ul>

                </nav>

            </div>

        </header>
    </div>
</div>

</body>
<script>
    const con = () => {

            if (!confirm("정말로 로그아웃 하기겠습니까?")) {

        } else {
            location.href = "/logout"
        }
    }
</script>

</html>