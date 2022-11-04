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

    <form>
        <table>
            <tr>
                <td id="memberEmail">이메일</td>
                <td>
                    <input type="text" name="memberEmail" maxlength="20">
                    <input type="button" value="중복확인" >
                </td>
            </tr>
            <tr>
                <td id="memberProfile">프로필사진</td>
                <td>
                    <input type="file" class="form-control" name="memberProfile">
                </td>
            </tr>

            <tr>
                <td id="memberPassword">비밀번호</td>
                <td>
                    <input type="password" name="memberPassword" maxlength="15" class="form-control">
                </td>
            </tr>

            <tr>
                <td id="memberPasswordCheck">비밀번호 확인</td>
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
</html>

