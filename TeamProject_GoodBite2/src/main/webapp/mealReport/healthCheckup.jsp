<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Health Checkup</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/sycss/healthCheckup1.css">

<style>

</style>


</head>
<body>
<main id="checkUp">
    <div class="inner container">
        <div id="toggleButton" class="diagnosisButton my-3">
            <button type="button" class="diagnosisStartButton">진단 시작하기</button>
        </div>
        <form id="hiddenContent" class="diagnosisBody p-5 my-3 hidden-content">
			<div class="diagnosisTop text-center">
				<h1 class="pb-3 fw-bold">건강검진결과 불러오기 본인인증</h1>
				<div class="pb-3 mt-2">
					굿바이트는 건강정보 서비스를 원할하게 사용하기 위해<br>
					본인인증 절차를 거치도록 하고 있습니다.<br>
					간편인증, 모바일 인증, 공동인증서 인증로 본인확인을 진행해 주십시오.
				</div>
				<div class="koreanSSN p-3 px-5 mt-2">
					<p  class="pb-2">주민등록번호를 입력 후 인증하기 버튼을 눌러주세요.</p>
					<div class="d-flex align-items-center">
					<input type="text" placeholder="주민번호 앞자리 6자리" maxlength="6" required>
					<span class="w-25">-</span>
					<input type="password" placeholder="주민번호 뒷자리" maxlength="6" required>		            	
					</div>
				</div>
				<div class="py-2 text-start my-2">
					원하는 인증 방법을 선택하여 진행하세요.
				</div>
			</div>
			<div class="diagnosisBottom d-flex align-items-center">
				<div class="authenticateBox p-3  text-center">
					<h3>간편인증</h3>
					<img src="../resources/headerImage/syimg/CertificateSimple.png">
					<button type="button" class="authenticateButton">인증하기</button>
				</div>
				<div class="authenticateBox mx-2 p-3  text-center">
					<h3>공동인증서</h3>
					<img src="../resources/headerImage/syimg/CertificateJoint.png">
					<button type="button" class="authenticateButton">인증하기</button>
				</div>
				<div class="authenticateBox p-3  text-center">
					<h3>금융인증서</h3>
					<img src="../resources/headerImage/syimg/CertificateFinancial.png">
					<button type="button" class="authenticateButton">인증하기</button>
				</div>
			</div>
		</form>
	</div>
</main>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const button = document.getElementById('toggleButton');
        const content = document.getElementById('hiddenContent');

        button.addEventListener('click', function() {
            button.classList.add('moved');
            content.classList.add('visible'); // 'visible' 클래스를 추가하여 콘텐츠 표시
            setTimeout(() => {
                content.style.display = 'block'; // display를 block으로 설정
            }, 200); // 클래스 추가 후 잠시 대기
        });
    });
</script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</body>
</html>