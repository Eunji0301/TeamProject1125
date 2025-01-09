<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite User Login</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
<script>
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('tabUser').addEventListener('click', function() {
        document.getElementById('tabUser').classList.add('tabSelected');
        document.getElementById('tabAdmin').classList.remove('tabSelected');
    });

    document.getElementById('tabAdmin').addEventListener('click', function() {
        document.getElementById('tabAdmin').classList.add('tabSelected');
        document.getElementById('tabUser').classList.remove('tabSelected');
    });
});

function showLogin(contentId) {

    const allContents = document.querySelectorAll('.loginContent');
    allContents.forEach(content => content.classList.remove('loginVisible'));


    const selectedContent = document.getElementById(contentId);
    if (selectedContent) {
        selectedContent.classList.add('loginVisible');
    }
}
</script>
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
    <main id="login">
        <div class="loginInner">
            <h1 class="title">로그인</h1>
            <div class="loginSelected">
            
	            <div class="login-tabs d-flex pb-3">
	                <button id="tabUser" class="tabSelected" onclick="showLogin('userLogin')">회원 로그인</button>
	                <button id="tabAdmin" class="" onclick="showLogin('adminLogin')">관리자 로그인</button>
	            </div>
	            <div id="userLogin" class="loginContent loginVisible">
	            <form class="login-form">
	                <input type="text" placeholder="아이디" required>
	                <input type="password" placeholder="비밀번호" required>
	                <div class="login-options">
	                    <a href="#">아이디 찾기</a>
	                    <span>|</span>
	                    <a href="#">비밀번호 찾기</a>
	                </div>
	                <button type="button" class="loginButton">로그인</button>
	                <button type="button" class="signupButton">회원가입</button>
	            </form>
	            </div>
	            <div id="adminLogin" class="loginContent ">
	            <form class="login-form">
	                <input type="text" placeholder="아이디" required>
	                <input type="password" placeholder="비밀번호" required>
	                  <input type="password" placeholder="회사 비밀번호" required>
	                <div class="login-options">
	                    <a href="#">아이디 찾기</a>
	                    <span>|</span>
	                    <a href="#">비밀번호 찾기</a>
	                </div>
	                <button type="button" class="loginButton">로그인</button>
	                <button type="button" class="signupButton">회원가입</button>
	            </form>
	            </div>	            
            </div>
        </div>
    </main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>

</html>