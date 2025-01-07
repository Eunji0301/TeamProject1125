<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Join</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/user.css">
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
    <main id="join">
        <div class="inner my-5">
                <h1 class="title">회원가입</h1>
	            <form class="join-form mt-3">
		            <div class="writeTitle">
		            	<strong >아이디</strong>
		            	<div class="d-flex align-items-center">
			            	<input type="text" placeholder="아이디" required>
			            	<button type="button" class="joinCheckButton">중복체크<br>확인</button>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >비밀번호</strong>
		            	<div>
		            	<input type="password" placeholder="비밀번호" required>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >비밀번호 확인</strong>
		            	<div>
		            	<input type="password" placeholder="비밀번호 확인" required>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >이름</strong>
		            	<div>
		            	<input type="text" placeholder="실명 입력" required>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >휴대폰 번호</strong>
		            	<div>
		            	<input type="text" placeholder="‘-’ 구분없이 입력" required>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >생년월일</strong>
		            	<div>
		            	<input type="text" placeholder="8자리 입력" required>
		            	</div>
					</div>
		            <div class="writeTitle">
		            	<strong >이메일</strong>
		            	<div class="d-flex align-items-center">
		            	<input type="email" placeholder="이메일 입력" required>
		            	<button type="button" class="joinCheckButton">중복체크<br>확인</button>
		            	</div>
					</div>
		            <div  class="writeTitle">
		            	<strong >닉네임</strong>
		            	<div class="d-flex align-items-center">
			            	<input type="text" placeholder="닉네임 입력" required>
			            	<button type="button" class="joinCheckButton">중복체크<br>확인</button>
		            	</div>
					</div>
					<div  class="writeTitle">
		            	<strong >성별</strong>
		            	<div class="d-flex align-items-center">
						<input type = "radio" name = "membergender" value = "M" style="transform: scale(0.5);"><div>남성</div>
						<input type = "radio" name = "membergender" value = "F" style="transform: scale(0.5);"><div >여성</div>
						</div>
					</div>
					<div>
		            	<div class="writeTitle"><strong >서비스 이용약관</strong></div>
						<div class="d-flex align-items-center">
						    <input type="checkbox" id="male1" name="membergender" value="M" style="transform: scale(0.5);">
						    <label for="male1">이용 약관 동의   ></label>
						</div>
						<div class="joinConditionBox" tabindex="0">
						<div class="joinConditionBoxInBox">
						  <h4>굿바이트 서비스 이용 약관</h4>
						  <p>안녕하세요! 굿바이트 서비스 이용을 환영합니다. 아래의 서비스 이용 약관을 읽고 동의해 주시면, 서비스를 이용하실 수 있습니다.</p>
						
						  <h5>제1조. 목적</h5>
						  <p>이 약관은 <strong>굿바이트</strong> 제공자가 제공하는 서비스와 관련하여 이용자의 권리, 의무 및 책임 사항을 규정합니다. 본 약관은 이용자가 서비스에 가입 및 사용함으로써 적용되며, 모든 서비스 이용자는 본 약관에 동의한 것으로 간주됩니다.</p>
						
						  <h5>제2조. 정의</h5>
						  <ul>
						    <li>서비스: <strong>굿바이트</strong>는 다양한 콘텐츠 제공 및 관리 서비스를 제공합니다.</li>
						    <li>이용자: <strong>굿바이트</strong>의 서비스를 이용하는 모든 사용자.</li>
						    <li>가입날자: 서비스 가입 시점의 날짜.</li>
						  </ul>
						
						  <h5>제3조. 약관의 동의</h5>
						  <p>이용자는 본 약관의 내용을 충분히 이해하고, 이에 동의함으로써 서비스 이용이 가능합니다. 서비스 이용을 위해서는 약관에 동의하는 것이 필수입니다.</p>
						
						  <h5>제4조. 서비스 이용</h5>
						  <ul>
						    <li><strong>굿바이트</strong>는 사용자의 정보를 안전하게 보호하며, 개인 정보 보호 정책을 준수합니다.</li>
						    <li>이용자는 서비스 이용에 있어 법률 및 본 약관을 준수해야 합니다.</li>
						  </ul>
						
						  <h5>제5조. 이용 제한 및 해지</h5>
						  <ul>
						    <li>제공자는 이용자가 본 약관을 위반할 경우, 서비스 이용을 제한할 수 있습니다.</li>
						    <li>이용자는 언제든지 본 약관에 따라 서비스 이용을 해지할 수 있습니다.</li>
						  </ul>
						
						  <h5>제6조. 책임 제한</h5>
						  <ul>
						    <li>제공자는 서비스의 제공에 있어 최대한의 노력을 다하지만, 기술적 장애 등으로 인한 손해에 대해 책임을 지지 않습니다.</li>
						    <li>서비스 이용자는 본인의 책임 하에 서비스를 이용하며, 서비스 사용으로 인한 모든 결과에 대해 제공자는 책임을 지지 않습니다.</li>
						  </ul>
						
						  <h5>제7조. 개인정보 보호</h5>
						  <p>이용자의 개인정보는 [개인정보 처리방침]에 따라 관리되며, 동의하지 않을 시 서비스 사용이 제한될 수 있습니다.</p>
						
						  <h5>제8조. 기타</h5>
						  <p>이 약관은 <strong>가입날</strong>부터 적용되며, 법적 효력을 가집니다.</p>
						</div>
						</div>

						<div class="d-flex align-items-center">
					    <input type="checkbox" id="female1" name="membergender" value="F" style="transform: scale(0.5);">
					    <label for="female1">개인 정보 수집·이용 동의 ></label>
					    </div>
						<div class="joinConditionBox" tabindex="0">	
						<div class="joinConditionBoxInBox">
							<h5>1. 수집하는 개인정보 항목</h5>
							<p >굿바이트는 이용자 참여와 이용통계 분석 등의 서비스를 위해 회원 가입시 아래의 개인정보를 수집하고 있습니다.</p>
							<ul >
								<li>가. 필수정보: 아이디, 이름, 성별, 출생년도, 비밀번호, 이메일</li>
								<li>나. 서비스 이용 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>(접속로그, 접속IP정보, 쿠키, 방문 일시, 서비스 이용기록, 불량 이용 기록)</li>
							</ul>
							<h5 >2. 굿바이트는 이용자 회원가입 시 직접 개인정보를 입력 및 수정하여 개인정보를 수집합니다.</h5>
							<h5 >3. 수집 개인정보의 이용목적</h5>
							<ul>
								<li>회원가입, 회원활동 실적 관리, 회원탈퇴 의사 확인 등 회원관리</li>
								<li>제공되는 서비스 이용에 관한 인구통계학적 분석, 서비스 방문 및 이용기록 분석, 관심사에 기반한 맞춤형 서비스 등 제공</li>
								<li>신규 서비스 개발 및 활성화, 홍보 및 이벤트, 전자우편 서비스 등 정보 전달</li>
								<li>향후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등</li>
							</ul>
							
							<h5>4. 개인정보의 보유 및 이용기간</h5>
							
							<p >이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 <strong>지체 없이</strong> 파기합니다. <br>따라서 문화체육관광부 대표누리집은 최종 로그인 후 <strong >2년</strong>이 경과하였거나 정보주체의 회원 <strong>탈퇴 신청 시</strong> 회원의 개인정보를 지체 없이 파기합니다.</p>
						
							<h5>동의 거부 권리 사실 및 불이익 내용</h5>
							<p>이용자는 동의를 거부할 권리가 있습니다. 동의를 거부할 경우에는 서비스 이용에 제한됨을 알려드립니다.</p>
						</div>
					</div>
					</div>
					<button type="button" class="joinButton mt-5 ">굿바이트 시작하기</button>
	            </form>
            		</div>
    </main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>

</html>