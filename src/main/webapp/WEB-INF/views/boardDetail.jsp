<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-08
  Time: 오후 1:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>게시판</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <style>
        #comment-write{
            width: 600px;
            height: 100px;
        }
    </style>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div class="container">
<table>
    <tr>
        <td>
            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr style="text-align:center;">
                    <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
                    <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">제목</td>
                    <td><input name="boardTitle" size="50" maxlength="100" value="${board.boardTitle}"type="text" readonly></td>
                    <td>&nbsp;</td>
                </tr>
                <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">작성자</td>
                    <td><input name="boardWriter" size="50" maxlength="50" value="${board.boardWriter}"type="text" readonly></td>
                    <td></td>
                </tr>
                <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
                <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="center">내용</td>
                    <td><textarea name="boardContents" cols="50" rows="13" type="text" readonly>${board.boardContents}</textarea></td>
                    <td>&nbsp;</td>
                </tr>
                <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
                <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
                <tr align="center">
                    <td>&nbsp;</td>
<c:if test="${sessionScope.member.memberEmail !=null}">
    <c:if test="${sessionScope.member.memberEmail eq board.boardWriter}">
    <td><a href="/update?id=${board.id}">글수정하기</a></td>
    </c:if>
</c:if>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <c:if test="${board.storedFileName != null}">
        <tr>
            <td>
                <img src="${pageContext.request.contextPath}/upload/${board.storedFileName}"
                     alt="" width="100" height="100">
            </td>
        </tr>
    </c:if>
</table>
</div>
<div class="container mt-5">
    <div id="comment-write" class="input-group mb-3">
        <div class="form-floating">
            <input type="text" id="commentWriter" class="form-control" placeholder="작성자">
            <label for="commentWriter">작성자</label>
        </div>
        <div class="form-floating">
            <input type="text" id="commentContents" class="form-control" placeholder="댓글내용">
            <label for="commentContents">댓글내용</label>
        </div>
        <button id="comment-write-btn" class="btn btn-secondary" onclick="commentWrite()">댓글작성</button>

    </div>
</div>
</body>
<div class="container mt-5" id="comment-list">
    <table class="table">
        <tr>
            <th>댓글번호</th>
            <th>작성자</th>
            <th>내용</th>
            <th>작성시간</th>
        </tr>
        <c:forEach items="${commentList}" var="comment">
            <tr>
                <td>${comment.id}</td>
                <td>${comment.commentWriter}</td>
                <td>${comment.commentContents}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${comment.commentCreatedDate}"></fmt:formatDate></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
