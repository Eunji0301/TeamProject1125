<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Search Pwd</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
    <main id="search">
        <div class="searchInner">
            <h1 class="title">비밀번호 찾기</h1>
            <div class="searchBorder p-4">
            	<div class="text-center my-3">
            		<img src="../resources/img/common/titlelogoimg.png">
            		<div class=" mt-2">* 아래에 정보를 입력해 주세요. *</div>
            	</div>
	            <form class="search-form">
	                <input type="text" placeholder="아이디" required>
	                <input type="text" placeholder="이메일 주소" required>
	                <button type="button" class="searchIdButton mt-3 ">비밀번호 찾기</button>
	                <hr>
	                <div class=" mt-4 ">
		                <div>아이디를 찾고싶다면? <a href="#">아이디 찾기</a></div>
		                <div>비밀번호를 기억하셨다면? <a href="#">로그인 하기</a></div>
	                </div>
	            </form>
            </div>
        </div>
    </main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>

</html>