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
    <!--e:header-->


    <!--s:visual-->
    <div id="visual_bg">
        <div id="visual_txt">
            <p></p>
            <p>건강하고 맛있게 <br> <em>100%수제간식!</em></p>
        </div>
    </div>
    <!--e:visual-->

    <!--s:section-->
    <div id="contents">
        <article>
            <div id="what">
                <h2>WHAT WE DO</h2>
                <p>사랑하는 아가들을 위한 건강한 수제간식 사료 도그쿡! <br>
                    안녕하세요 애견들의 행복한 입맛과 건강을 생각하는 “도그쿡”입니다. <br>
                    항상 최선의 재료로 정성을 다하여 건강한 사료와 간식을
                    만들도록 노력하겠습니다. <br>  무방부제,무첨가제! 수제간식이 더욱 보편화 되어 모든 반려견들이 건강한 간식을 먹도록<br>
                    하는게 도그쿡의 목표입니다. <br>
                    정직한재료,깨끗한조리시설로  인정받을 수 있는 수제간식 쇼핑몰이 되겠습니다.
                </p>
            </div>

            <video autoplay controls loop>
                <source src="/resources/video/video.mp4" type="video/mp4">
            </video>
        </article>


        <div id="bnr_bg">
            <div>
                <section>
                    <ul>
                        <li><a href="#"><img src="/resources/img/prd1.png" alt="매일만드는 수제사">
                            <p>매일만드는 수제사료<br>
                                <span>FEED A DOG</span>
                            </p>
                        </a>
                        </li>

                        <li><a href="#"><img src="/resources/img/prd2.png" alt="매일만드는 수제사"> <p>씹고 뜯고 천연껌<br>
                            <span>GUM</span>
                        </p></a>

                        </li>
                        <li><a href="#"><img src="/resources/img/prd3.png" alt="매일만드는 수제사"> <p>천연 그대로 건조육포<br>
                            <span>BEEF JERKY</span>
                        </p></a>

                        </li>
                        <li><a href="#"><img src="/resources/img/prd4.png" alt="매일만드는 수제사"> <p>정성가득 별미간식<br>
                            <span>SPECIAL FOOD</span>
                        </p></a>

                        </li>
                    </ul>
                </section> <!--px-->

            </div>
        </div>

        <div id="intro_bg">
            <section>
                <h2>DOGCOOK PRODUCT</h2>
                <div id="pdt">
                    <ul>
                        <li><a href="#"><img src="/resources/img/product/1.jpg" alt="소고기사료">
                            <p><img src="/resources/img/new.png" alt="new">
                                글루텐프리 소고기 생생사료 <br>
                                <em>8,800원</em>
                            </p>

                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/2.jpg" alt="베리베리 굿 껌 100g">
                            <p><img src="/resources/img/new.png" alt="new">베리베리 굿 껌 100g <br>
                                <em>5,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/3.jpg" alt="쌀쭉이 껌 100g">
                            <p>쌀쭉이 껌 100g <br>
                                <em>5,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/4.jpg" alt="강냉이 칭찬볼 치즈맛 70g">
                            <p><img src="/resources/img/new.png" alt="new">강냉이 칭찬볼 치즈맛 70g <br>
                                <em>5,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/5.jpg" alt="오리날개뼈 껌 (4ea)">
                            <p><img src="/resources/img/md_icon.png" alt="추천">오리날개뼈 껌 (4ea)<br>
                                <em>4,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/6.jpg" alt="오리 울대 바삭이껌 20g">
                            <p><img src="/resources/img/md_icon.png" alt="추천">오리 울대 바삭이껌 20g <br>
                                <em>5,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/7.jpg" alt="글루텐프리 단호박 사과 파이">
                            <p>글루텐프리 단호박 사과 파이<br>
                                <em>9,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/8.jpg" alt="콤비네이션 피자">
                            <p><img src="/resources/img/new.png" alt="new">콤비네이션 피자<br>
                                <em>11,900원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/9.jpg" alt="건조한 사과 크런치">
                            <p>[글루텐프리간식] 바삭하고 맛있게
                                건조한 사과 크런치<br>
                                <em>7,000원</em>
                            </p>
                        </a>
                        </li>
                        <li><a href="#"><img src="/resources/img/product/10.jpg" alt="(오븐)닭 안심구이100g">
                            <p>(오븐)닭 안심구이100g <br>
                                <em>9,900원</em>
                            </p>
                        </a>
                        </li>

                    </ul>
                </div>
            </section><!--px-->
        </div>
    </div>
    <!--e:section-->

    <!--s:footer-->
    <footer>
        <div id="f_top">
            <a href="#"><img src="/resources/img/logo_footer.png" alt="logo"></a>

            <div id="left">
                <p>주소 : 05796 서울특별시 송파구 송이로 196 (문정동) 대양빌딩4F <br>
                    통신판매 : 2010-서울송파-1442 <br>
                    사업자 등록번호 : 215-22-35665 <br>
                    개인정보관리책임자 : 강현국(momo7311@naver.com) 대표자(성명) : 지향희 <br>
                    법인명(상호) : 도그쿡  [사업자정보확인] </p>
                <address>전화 : 02-2281-6674 팩스 : 02-2281-6675</address>
                <p>Contact momo7311@naver.com for more information.</p>



            </div>

            <div id="tle_right">
                <div id="right">
                    <p><em>고객센터</em> <br>
                        <span>02-2281-6673~4</span><br>
                        평일 09:00-18:00, 점심 12:00-13:00<br>
                        주말, 공휴일 휴무</p>
                </div>

                <div id="right2">
                    <p><em>은행계좌</em> <br>
                        <span>농협356-0381-7667-43</span><br>
                        <b>국민499401-01-255772</b> <br>
                        예금주 : 지항희</p>
                </div>
            </div>


        </div>



        <div id="f_btm_bg"></div>
        <div></div>
    </footer>
    <!--e:footer-->

</div>

</body>

</html>