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


</head>
<body>
<a href="#" id="top"><img src="/resources/img/top_btn.png" alt="top_btn"></a> <!--top버튼-->

<div id="wrap">
    <!--s:header-->
    <div id="header_bg"> <!--#1366bf-->
        <header><!--1400px-->
            <div id="my_menu"><a href="#"><img src="/resources/img/my_icon.png" alt="my_menu"></a></div>
            <ul><!--언어영역-->
                <li><a href="/login">로그인</a></li>
                <li><a href="/save">회원가입</a></li>
                <li><a href="#">회원목록조회</a></li>
                <li><a href="#">장바구니</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
            <div id="h_btm"> <!--로고부분헤더-->
                <h1><a href="#"><img src="/resources/img/mainlogo1.png" alt="도그쿡"></a></h1>
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
                        <li><a href="#">ACC</a></li>

                        <li id="search_icon2">
                            <a href="#">
                                <img src="/resources/img/icon_search.png" alt=""></a>
                        </li>

                        <li>
                            <form action="#" method="post" id="search_form">
                                <fieldset>
                                    <legend>검색창</legend>
                                    <p><input type="text" value="검색어를 입력하세요" name="search"></p>
                                    <p><input type="submit" value="검색" name="search_click"></p>

                                </fieldset>
                            </form>
                        </li>

                    </ul>

                </nav>

            </div>

        </header>
    </div>
</div>

</body>

</html>