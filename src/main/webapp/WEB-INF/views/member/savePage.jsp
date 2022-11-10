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
      width:600px;
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

  <form enctype="multipart/form-data" method="post" action="/save" name="saveForm">
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
        <td>비밀번호</td>
        <td>
          <input type="password" name="memberPassword" maxlength="20" class="form-control" id="memberPassword" onblur="passCheck2()">
          <span id="pass_result2"></span>
        </td>
      </tr>

      <tr>
        <td>비밀번호 확인</td>
        <td>
          <input type="password" name="memberPassword2" maxlength="20" class="form-control" onblur="passCheck()" id="memberPassword2"  disabled="">
          <span id="pass_result"></span>
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
    <input type="button" value="가입" disabled id="submit1" onclick="save()">  <input type="button" value="취소" onclick="back()">
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
          $("#submit1").removeAttr("disabled");
              alert("회원가입가능")

        } else {
          $("#submit1").attr("disabled", "disabled");
              alert("이미존재하는 이메일 입니다.")

        }

      },
      error: function () {
        console.log("실패")
      }

    })

  }
  const passCheck = () => {
    const pass1 = document.getElementById("memberPassword").value;
    const pass2 = document.getElementById("memberPassword2").value;
    const pass_result = document.getElementById("pass_result");
    console.log(pass2)
    console.log(pass1)
    if(pass1 == pass2){
      pass_result.innerHTML = "비밀번호가 일치합니다."
      pass_result.style.color = "green";
      $("#submit1").removeAttr("disabled");
    }else{
      pass_result.innerHTML = "비밀번호를 확인해주세요"
      pass_result.style.color = "red";
      $("#submit1").attr("disabled", "disabled");

    }




  }

  const passCheck2 = () => {
    const pass1 = document.getElementById("memberPassword").value;
    const regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g;
    const pass_result2 = document.getElementById("pass_result2");
    if (pass1.match(regExp)){
      pass_result2.innerHTML = "사용할수있는 비밀번호 입니다."
      pass_result2.style.color = "green";
      $("#memberPassword2").attr("disabled",false);
      $("#submit1").removeAttr("disabled");

    }else {
      pass_result2.innerHTML = "특수문자가를 포함해 주세요"
      pass_result2.style.color = "red";
      $("#submit1").attr("disabled", "disabled");
      $("#memberPassword2").attr("disabled",true);
    }

  }

  const back = () => {
    location.href="/"
  }


  const save = () => {
    const pass1 = document.getElementById("memberPassword").value;
    const pass2 = document.getElementById("memberPassword2").value;
    if(document.saveForm.memberEmail.value==""){
      alert("이메일을 입력해 주세요")
    }else if(document.saveForm.memberPassword.value==""){
      alert("비밀번호를 입력해 주세요")
    }else if(document.saveForm.memberName.value==""){
      alert("이름을 입력해주세요")
    }else if(document.saveForm.memberAddress.value==""){
      alert("주소를 입력해 주세요")
    }else if(document.saveForm.memberMobile.value==""){
      alert("번화번호를 입력해 주세요")
    }else if(pass1 != pass2){
      alert("비밀번호를 확인해 주세요")
    }
   document.saveForm.submit();
  }








</script>
</html>