<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Change Pwd</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
<script>
    function changePwdAlert() {
        alert("비밀번호 변경이 완료되었습니다!");
    }
</script>
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
    <main id="change">
        <div class="changeInner">
            <h1 class="title">비밀번호 변경</h1>
            <div class="changeBorder p-4">
            	<div class="text-center my-3">
            		<img src="../resources/img/common/titlelogoimg.png">
            		<div class=" mt-2">* 아래에 변경하실 비밀번호를 입력해 주세요. *</div>
            	</div>
	            <form class="change-form">
	                <input type="password" placeholder="새 비밀번호 변경" required>
	                <input type="password" placeholder="새 비밀번호 확인" required>
	                <button type="button" class="changePwdButton mt-3 " onclick="changePwdAlert();">비밀번호 변경</button>
	                <hr>
	                <div class=" mt-4 ">
		                <div>비밀번호를 기억하셨다면? <a href="#">로그인 하기</a></div>
	                </div>
	            </form>
            </div>
        </div>
    </main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>

</html>