<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-08
  Time: 오전 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>

  <title>boardSave.jsp</title>
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
  <script src="/resources/js/jqury.js"></script>
  <style>
    #save-form{
      width: 800px;
      margin-top: 10px;
    }
  </style>
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>

<div class="container" id="save-form" >
  <form action="/boardSave" method="post" name="saveForm"  class="form-control" enctype="multipart/form-data">
    작성자  <input type="text" name="boardWriter"  class="form-control" value="${sessionScope.member.memberEmail}" readonly >
    글비밀번호 <input type="text" name="boardPass"  class="form-control" >
    제목  <input type="text" name="boardTitle"  class="form-control" >
    내용   <textarea name="boardContents" cols="30" rows="10" class="form-control"></textarea>

    <input type="file" class="form-control" name="boardFile">
    <input type="submit" value="작성하기">

  </form>
</div>

</body>


<script>

</script>
</html>

