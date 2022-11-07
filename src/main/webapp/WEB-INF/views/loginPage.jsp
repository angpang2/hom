<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-04
  Time: 오후 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginPage.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="/resources/js/jqury.js"></script>
</head>
<style>
    #login-form{
        width:300px;
        margin-left:auto;
        margin-right:auto;
        text-align:center;
    }
    body{
        background-image: url("/resources/img/main_image06.jpg");
    }
</style>

<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>

<div class="container" id="login-form">
    <input type="text" name="memberEmail" placeholder="이메일입력" class="form-control" id="memberEmail">
    <input type="password" name="memberPassword" placeholder="비밀번호입력" class="form-control" id="memberPassword">
    <br>
    <br>
    <input type="button" onclick="loginCheck()" value="로그인">
</div>

</body>
<script>
    const loginCheck = () => {
        const memberEmail = document.getElementById("memberEmail").value
        const memberPassword = document.getElementById("memberPassword").value
        $.ajax({
            type:"post",
            url:"/loginCheck",
            data:{
                memberEmail : memberEmail,
                memberPassword : memberPassword
            },
            dataType: "text",

            success : function (result){
                if(result == "ok"){
                    alert("로그인성공")
                    location.href = "/";
                }else {
                    alert("아이디 또는 비밀번호를 다시확인해주세요")
                }

            },
            error : function (){
                alert("아이디 또는 비밀번호를 다시확인해주세요")
            }

        })

    }
</script>
</html>
