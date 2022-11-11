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
                <c:if test="${board.boardC == 1}">  <td>Y</td></c:if>
                <c:if test="${board.boardC == 0}">  <td>N</td></c:if>

            </tr>


        </c:forEach>
    </table>
</div>
<div class="container">
    <ul class="pagination justify-content-center">
        <c:choose>
            <%-- 현재 페이지가 1페이지면 이전 글자만 보여줌 --%>
        <c:when test="${paging.page<=1}">
        <li class="page-item disabled">
            <a class="page-link">[이전]</a>
        </li>
        </c:when>
            <%-- 1페이지가 아닌 경우에는 [이전]을 클릭하면 현재 페이지보다 1 작은 페이지 요청 --%>
        <c:otherwise>
        <li class="page-item">
            <a class="page-link" onclick="Prev()">[이전]</a>
        </li>
        </c:otherwise>
        </c:choose>

        <%--  for(int i=startPage; i<=endPage; i++)      --%>
        <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i" step="1">
        <c:choose>
            <%-- 요청한 페이지에 있는 경우 현재 페이지 번호는 텍스트만 보이게 --%>
        <c:when test="${i eq paging.page}">
        <li class="page-item active">
            <a class="page-link">${i}</a>
        </li>
        </c:when>

        <c:otherwise>
        <li class="page-item">
            <a class="page-link" onclick="numberClick(${i})">${i}</a>
        </li>
        </c:otherwise>
        </c:choose>
        </c:forEach>

        <c:choose>
        <c:when test="${paging.page>=paging.maxPage}">
        <li class="page-item disabled">
            <a class="page-link">[다음]</a>
        </li>
        </c:when>
        <c:otherwise>
        <li class="page-item">
            <a class="page-link" onclick="next()">[다음]</a>
        </li>
        </c:otherwise>
        </c:choose>
            <div>
                <select name="pageSelect" onchange="pageView()" id="pageSelect">
                    <option value="5" <c:if test="${pageLimit == '5'}">selected="selected"</c:if>>게시물보기</option>
                    <option value="1" <c:if test="${pageLimit == '1'}">selected="selected"</c:if>>1개</option>
                    <option value="2" <c:if test="${pageLimit == '2'}">selected="selected"</c:if>>2개</option>
                    <option value="3" <c:if test="${pageLimit == '3'}">selected="selected"</c:if>>3개</option>
                    <option value="4" <c:if test="${pageLimit == '4'}">selected="selected"</c:if>>4개</option>
                    <option value="5" <c:if test="${pageLimit == '5'}">selected="selected"</c:if>>5개</option>
                </select>
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
    
    const pageChange = () => {
        const sel = document.getElementById("pageSelect");
        const selectValue = sel.options[sel.selectedIndex].value;
        location.href = "/page?page="+selectValue;
      
    }

    const pageView = () => {
        const sel = document.getElementById("pageSelect");
        const selectValue = sel.options[sel.selectedIndex].value;
        location.href = "/pageView?PAGE_LIMIT="+selectValue;

    }

    const next = () => {
        const sel = document.getElementById("pageSelect");
        const selectValue = sel.options[sel.selectedIndex].value;
        location.href= "/pageView?page="+'${paging.page+1}'+"&PAGE_LIMIT="+selectValue;
    }

    const Prev = () => {
        const sel = document.getElementById("pageSelect");
        const selectValue = sel.options[sel.selectedIndex].value;
        location.href= "/pageView?page="+'${paging.page-1}'+"&PAGE_LIMIT="+selectValue;
    }

    const numberClick = (i) => {
        let num = i;
        const sel = document.getElementById("pageSelect");
        const selectValue = sel.options[sel.selectedIndex].value;
        location.href= "/pageView?page="+num+"&PAGE_LIMIT="+selectValue;




    }




</script>
</html>