<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MemberSave.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
    <style>
        #save-form{
            width: 800px;
        }
    </style>
</head>
<body>
<div class="container" id="save-form">
    <form action="/save" method="post" name="saveForm"  class="form-control" enctype="multipart/form-data">
        <input type="text" name="memberEmail" placeholder="이메일" class="form-control" id="email">
        <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control">
        <input type="text" name="memberName" placeholder="이름" class="form-control">
        <input type="text" name="memberAge" placeholder="나이" class="form-control">
        <input type="file" class="form-control" name="memberFile">
        <input type="submit"value="가입하기">
    </form>
</div>

</body>

