<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Found Pwd</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">

</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
    <main id="found">
        <div class="foundInner">
            <h1 class="title">비밀번호 찾기 결과</h1>
            <div class="foundBorder p-4">
            	<div class="text-center my-3">
            		<div class=" foundSubTitle">고객님의 비밀번호 찾기가<br>완료되었습니다.</div>
            		<hr>
            	</div>
            	
	            <div class="foundInBorder p-2 p-4">
		            <div class="foundInfo ps-1" >
		            	<div><strong>아이디 : </strong><span>test1</span></div>
		            	<div><strong>이메일 : </strong><span>test1@gmail.com</span></div>
		            </div>
	            	<hr>
	            	 <div class=" ps-1 d-flex align-items-center">
	            	 	<div class="foundCircle me-1"></div>
	            	 	<span class="foundPwdResult"><span>test1@gmail.com</span>로 링크를 발송했습니다.<br>로그인 후 비밀번호를 변경해주시기 바랍니다.</span></div>
	            	</div>
                <div class=" d-flex mt-3">
	                <button type="button" class="loginButton me-1">로그인</button>
                </div>
            </div>
        </div>
    </main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>

</html>