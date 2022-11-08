<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-07
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>memberUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
</head>
<body>

<div class="container" id="update-form">
    <form action="/update" method="post" name="up">
       <input type="hidden" name="id" value="${sessionScope.member.id}" class="form-control" readonly>
        이메일: <input type="text" name="memberEmail" value="${sessionScope.member.memberEmail}" class="form-control" readonly>
        이름:<input type="text" name="memberName" value="${sessionScope.member.memberName}" class="form-control"  disabled>
        비밀번호:<input type="text" name="memberPassword" class="form-control" placeholder="정보변경을 원하시면 비밀번호를 입력해주세요">
        성별:<input type="text" name="memberGender" value="${sessionScope.member.memberGender}" class="form-control" readonly>
        주소:<input type="text" name="memberAddress" value="${sessionScope.member.memberAddress}" class="form-control"  disabled>
        전화번호:<input type="text" name="memberMobile" value="${sessionScope.member.memberMobile}" class="form-control" disabled>
        <input type="button" value="정보변경하기" class="btn btn-primary" onclick="update()">
        <div id="sub">

        </div>

    </form>


</div>


</body>
<script>
    const update = () => {
        const passwordDB = '${sessionScope.member.memberPassword}';
        if(document.up.memberPassword.value==passwordDB) {
            alert("비밀번호가 일치합니다")
            $('input').removeAttr('disabled');
            const sub = document.getElementById("sub");
            sub.innerHTML = "<input type='button' value='수정완료' class='btn btn-success' onclick='check()'>"

        }else {
            alert("비밀번호가 일치하지 않습니다.")
        }
    }

    const check = () => {
        if (confirm("정말로 변경하시겠습니까?")) {
            alert("변경완료 후 자동으로 로그아웃 되니 다시 로그인 해주시길 바랍니다.")
            document.up.submit();
            if(alert("수정완료")){
                location.href = "/logout";
            }


        } else {

        }

    }




</script>

</html>