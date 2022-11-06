<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-04
  Time: 오후 1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="/resources/css/bootstrap.css">
  <script src="/resources/js/jqury.js"></script>
  <title>회원가입 화면</title>

  <style>
    body{
      background-image: url("/resources/img/main_image06.jpg");
    }
    #wrap{
      width:530px;
      margin-left:auto;
      margin-right:auto;
      text-align:center;
    }
    table{
      border:3px solid skyblue
    }
    td{
      border:1px solid skyblue
    }
    #title{
      background-color:skyblue
    }
  </style>
</head>
<body>
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<!-- 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
<div id="wrap" class="container">
  <br><br>
  <div style='font-size:30px';>
    <b style="color: #25cff2">회원가입</b>
  </div>
  <br><br><br>

  <form enctype="multipart/form-data" method="post" action="/save">
    <table>
      <tr>
        <td>이메일</td>
        <td>
          <div class="input-group-sm mb-3">
          <input type="text" name="memberEmail" maxlength="20"  id="memberEmail">
            <input type="button" value="중복확인" onclick="emailCheck()">
          </div>
        </td>
      </tr>
      <tr>
        <td id="memberFile">프로필</td>
        <td>
          <input type="file" class="form-control" name="memberFile">
        </td>
      </tr>

      <tr>
        <td id="memberPassword">비밀번호</td>
        <td>
          <input type="password" name="memberPassword" maxlength="15" class="form-control">
        </td>
      </tr>


      <tr>
        <td id="memberName">이름</td>
        <td>
          <input type="text" name="memberName" maxlength="40" class="form-control">
        </td>
      </tr>

      <tr>
        <td id="memberGender">성별</td>
        <td>
          <input type="radio" name="memberGender" value="남" checked>남
          <input type="radio" name="memberGender" value="여" checked>여
        </td>
      </tr>

      <tr>
        <td id="memberMobile">휴대전화</td>
        <td>
          <input type="text" name="memberMobile" class="form-control">
        </td>
      </tr>
      <tr>
        <td id="memberAddress">주소</td>
        <td>
          <input type="text" size="50" name="memberAddress" class="form-control">
        </td>
      </tr>
    </table>
    <br>
    <input type="submit" value="가입"/>  <input type="button" value="취소">
  </form>
</div>
</body>
<script>
  const emailCheck = () => {
    const memberEmail = document.getElementById("memberEmail").value;
    $.ajax({
      type: "get",
      url: "/emailCheck",
      data: {
        value1: memberEmail
      },
      dataType: "text",
      success: function (result) {
        console.log("성공");
        console.log(result);
        if (result == "yes") {
              alert("회원가입가능")
        } else {
              alert("이미존재하는 이메일 입니다.")
        }

      },
      error: function () {
        console.log("실패")
      }

    })

  }
</script>
</html>