<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<div class="container" id="update-form">
    <form action="/boardUpdate" method="post" name="up">
        글번호: <input type="text" name="id" value="${board.id}" class="form-control" readonly>
        작성자: <input type="text" name="boardWriter" value="${board.boardWriter}" class="form-control" readonly>
        글비밀번호:<input type="text" name="boardPass" value="" class="form-control">
        제목:<input type="text" name="boardTitle" value="${board.boardTitle}" class="form-control">
        <textarea name="boardContents" cols="50" rows="13" >${board.boardContents} </textarea>
        <input type="button" value="수정" class="btn btn-primary" onclick="update()">
        <input type="button" value="삭제" class="btn btn-danger" onclick="del(${board.id})">
    </form>

</div>


</body>
<script>
    const update = () => {
        const passwordDB = '${board.boardPass}';
        if(document.up.boardPass.value!=passwordDB) {
            alert("비밀번호가 일치하지 않습니다.")
        }else {
            document.up.submit();
        }
    }

    const del= (clickid) => {
        const passwordDB = ${board.boardPass};
        if(document.up.boardPass.value == passwordDB) {
            if (confirm("정말 삭제 하시겠습니까?") == true){
                location.href = "/boardDel?id=" + clickid;
            }else{
                console.log("취소되었습니다");
            }

        }else {
            alert("비밀번호가 일치하지 않습니다.")
        }
    }





</script>

</html>