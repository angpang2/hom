<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-08
  Time: 오전 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <jsp:include page="layout/header.jsp" flush="false"></jsp:include>
    <title>memberList.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <style>
        #list-form{
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container" id="list-form">
    <table class="table table-striped">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>작성시간</th>
            <th>답변여부</th>

        </tr>
        <c:forEach items="${BoardList}" var="board">
            <tr>
                <td> ${board.id} </td>
                <td>
                    <a href="/board?id=${board.id}">${board.boardTitle}</a>
                </td>
                <td> ${board.boardWriter}</td>
                <td> ${board.boardHits}</td>
                <td><fmt:formatDate value="${board.boardCreatedDate}" pattern="yyyy-MM-dd hh:mm:ss"></fmt:formatDate>
                </td>
            </tr>


        </c:forEach>
    </table>
</div>
<div style="float: right">
    <a href="#" onclick="check()">글쓰기</a>
</div>
</body>
<script>
    const check = () => {
        if(${sessionScope.member.memberEmail != null}){
            location.href = "/boardSave"
        }else {
            alert("로그인후 이용 바랍니다")
            location.href = "/login"
        }
    }


</script>
</html>