<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오후 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
</head>
<body>
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
<div class="container">
<table style="border: solid">
    <tr>
        <th>번호</th>
        <th>이메일</th>
        <th>비밀번호</th>
        <th>이름</th>
        <th>나이</th>
        <th>핸드폰번호</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${memberList}" var="member">
        <tr>
            <td> ${member.id} </td>
            <td>${member.memberEmail}</td>
            <td> ${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberAge}</td>
            <td>${member.memberMobile}</td>
            <td>
                <button class="btn btn-danger" onclick="deleteMember('${member.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
<div id="detail_result">

</div>
</body>
<script>
    const deleteMember = (clickedId) => {
        if(confirm("정말삭제하시겠습니까?"))
         location.href = "/memberDelete?id="+clickedId;
    }


</script>
</html>