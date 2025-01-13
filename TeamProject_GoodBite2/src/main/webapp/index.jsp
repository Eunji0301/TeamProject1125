<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>팀프로젝트</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/index.css">

<style>
html, body, div, span, iframe, h1, h2, h3, h4, h5, h6, p, pre, a, address, img, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, footer, header, nav, section, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
}
a{
	display:inline-block;
	text-decoration: none;
	color : black;
}
#header, #footer{
    position: relative;
    z-index: 2;
    background: #CDC8E7;
}
.inner {
	
width:1180px; 
margin:0 auto; 
position:relative;
 }
@media (max-width: 1180px){
	.inner {width:100%;}
}
@media (max-width: 768px) {
  .d-flex.flex-column.align-items-start {
    max-width: 100%;
    margin-top: 10px;
  }
}
</style>
</head>


<script>
//버튼 클릭 시 해당 주차 내용만 보이게 처리하는 함수
function showContent(challengeType, week) {
  // 모든 주차 내용 숨기기
  const allWeeks = document.querySelectorAll(`#week-${challengeType} .photo-wrapper`);
  allWeeks.forEach((weekDiv) => {
    weekDiv.style.display = 'none';
  });

  // 선택된 주차 내용만 보이기
  document.getElementById(`week-${challengeType}-${week}`).style.display = 'block';
}

// 페이지가 로드될 때 1주 내용을 기본으로 보여주기
window.onload = function() {
  showContent(1, 1); // 처음에 최다 도전 챌린지 1주 보이도록
  showContent(2, 1); // 최다 성공 챌린지 1주 보이도록
};

// JavaScript로 버튼 클릭 시 스타일 변경하기
const buttons = document.querySelectorAll('.btn-option');

buttons.forEach(button => {
  button.addEventListener('click', () => {
    // 모든 버튼의 스타일 초기화
    buttons.forEach(btn => btn.style.backgroundColor = '#8475BC');

    // 클릭한 버튼만 강조
    button.style.backgroundColor = '#5D4F99';
  });
});

</script>



<body>
<%@ include file="WEB-INF/common/headerBefore.jsp"%>

 	<a href="<%=request.getContextPath()%>/challenge/challengeContent.do">challengeContent</a><br>
	<a href="<%=request.getContextPath()%>/challenge/challengeList.do">challengeList</a><br>
	<a href="<%=request.getContextPath()%>/challenge/challengeWrite.do">challengeWrite</a><br>
	<a href="<%=request.getContextPath()%>/challenge/challengeModify.do">challengeModify</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/common/footer.do">footer</a><br>
	<a href="<%=request.getContextPath()%>/common/headerAfter.do">headerAfter</a><br>
	<a href="<%=request.getContextPath()%>/common/headerBefore.do">headerBefore</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/foodTracker/foodTrackerFoodDetail.do">foodTrackerFoodDetail</a><br>
	<a href="<%=request.getContextPath()%>/foodTracker/foodTrackerFoodList.do">foodTrackerFoodList</a><br>
	<a href="<%=request.getContextPath()%>/foodTracker/foodTrackerMain.do">foodTrackerMain</a><br>
	<a href="<%=request.getContextPath()%>/foodTracker/foodTrackerMealLog.do">foodTrackerMealLog</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/infoCardNews/cardNewsContents.do">cardNewsContents</a><br>
	<a href="<%=request.getContextPath()%>/infoCardNews/cardNewsList.do">cardNewsList</a><br>
	<a href="<%=request.getContextPath()%>/infoCardNews/cardNewsWrite.do">cardNewsWrite</a><br>
	<a href="<%=request.getContextPath()%>/infoCardNews/cardNewsModify.do">cardNewsModify</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/mealReport/dietaryQuestionnaire.do">dietaryQuestionnaire</a><br>
	<a href="<%=request.getContextPath()%>/mealReport/mealreportResult.do">mealreportResult</a><br>
	<a href="<%=request.getContextPath()%>/myFridge/fridge.do">myFridge</a><br>
	<a href="<%=request.getContextPath()%>/mealReport/mealreport.do">mealReport</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/myChallenge/myChallengeCertificationList.do">myChallengeCertificationList</a><br>
	<a href="<%=request.getContextPath()%>/myChallenge/myChallengeContents.do">myChallengeContents</a><br>
	<a href="<%=request.getContextPath()%>/myChallenge/myChallengeList.do">myChallengeList</a><br>
	<a href="<%=request.getContextPath()%>/myChallenge/myChallengeModify.do">myChallengeModify</a><br>
	<a href="<%=request.getContextPath()%>/myChallenge/myChallengeWrite.do">myChallengeWrite</a><br>
	<br><br><br>
	<a href="<%=request.getContextPath()%>/recipe/recipeContents.do">recipeContents</a><br>
	<a href="<%=request.getContextPath()%>/recipe/recipeList.do">recipeList</a><br>
	<br><br><br>

	<a href="<%=request.getContextPath()%>/user/changePwd.do">changePwd</a><br>
	<a href="<%=request.getContextPath()%>/user/foundId.do">foundId</a><br>
	<a href="<%=request.getContextPath()%>/user/foundPwd.do">foundPwd</a><br>
	<a href="<%=request.getContextPath()%>/user/join.do">join</a><br>
	<a href="<%=request.getContextPath()%>/user/login.do">login</a><br>
	<a href="<%=request.getContextPath()%>/user/searchId.do">searchId</a><br>
	<a href="<%=request.getContextPath()%>/user/searchPwd.do">searchPwd</a><br>
	<br><br><br> 

	<a href="<%=request.getContextPath()%>/user/userChangePwd.do">changePwd</a><br>
	<a href="<%=request.getContextPath()%>/user/userFoundId.do">foundId</a><br>
	<a href="<%=request.getContextPath()%>/user/userFoundPwd.do">foundPwd</a><br>
	<a href="<%=request.getContextPath()%>/user/userJoin.do">join</a><br>
	<a href="<%=request.getContextPath()%>/user/userLogin.do">login</a><br>
	<a href="<%=request.getContextPath()%>/user/userSearchId.do">searchId</a><br>
	<a href="<%=request.getContextPath()%>/user/userSearchPwd.do">searchPwd</a><br>
	<br><br><br>

<main id="container">
  <div class="inner">
	<div class="row mb-2" style="margin-top: 30px; display: flex; gap: 10px; flex-wrap: nowrap; align-items: stretch;">
	  <!-- 첫 번째 썸네일 -->
	  <div class="thumbnail-box flex-grow-1" style="flex: 1 1 55%;">
	    <div class="row g-0 border rounded overflow-hidden shadow-sm position-relative h-100">
	      <div class="col-auto d-flex justify-content-center align-items-center w-100 h-100">
	        <img src="/resources/img/indexSO/profile.png" alt="광고 이미지" class="img-fluid" style="object-fit: cover; height: 100%; width: auto;">
	      </div>
	    </div>
	  </div>
	
	  <!-- 두 번째 썸네일 -->
	  <div class="thumbnail-box flex-grow-1" style="flex: 1 1 40%;">
	    <div class="row g-0 border rounded overflow-hidden shadow-sm position-relative h-100">
	      <div class="col-auto d-flex justify-content-center align-items-center w-100 h-100">
	        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
			  <div class="carousel-indicators">
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/resources/img/indexSO/pon1.png" class="d-block w-100" alt="사진 1">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/indexSO/pon2.png" class="d-block w-100" alt="사진 2">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/indexSO/pon3.png" class="d-block w-100" alt="사진 3">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div>
	      </div>
	    </div>
	  </div>
	</div>


<div class="container mt-3">
  <div class="d-flex flex-wrap justify-content-between" style="">

<div class="d-flex justify-content-between w-100" style="margin-top: 10px; gap: 0px;">
  <!-- 왼쪽: 최강 챌린저 섹션 -->
  <div class="border-5 rounded w-60" style="margin-bottom: 30px; margin-left:-10px; margin-right:10px;">
    <div class="rounded p-4" style="border: 5px solid #CDC8E7;">
      <!-- 상단 제목: 보드 처리 및 색상 변경 -->
      <div class="border-bottom mb-4 p-2" style="background-color: #CDC8E7; border-bottom: 5px solid #8475BC;">
        <h5 class="text-center mb-1" style="color: #8475BC;">최강 챌린저</h5>
      </div>

      <!-- 사진과 이름 나열 -->
      <div class="row mb-4">
        <div class="row justify-content-center mt-4 mb-4">
          <div class=" col-md-2 text-center">
            <img src="/resources/img/indexSO/profile.png" alt="사진 1" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
            <p>1.홍길동</p>
          </div>
          <div class=" col-md-2 text-center">
            <img src="/resources/img/indexSO/profile.png" alt="사진 2" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
            <p>2.홍길동</p>
          </div>
          <div class=" col-md-2 text-center">
            <img src="/resources/img/indexSO/profile.png" alt="사진 3" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
            <p>3.홍길동</p>
          </div>
          <div class=" col-md-2 text-center">
            <img src="/resources/img/indexSO/profile.png" alt="사진 4" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
            <p>4.홍길동</p>
          </div>
          <div class=" col-md-2 text-center">
            <img src="/resources/img/indexSO/profile.png" alt="사진 5" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
            <p>5.홍길동</p>
          </div>
        </div>
      </div>
	<div class="line" style="height: 5px; width: auto; margin-bottom:25px; border-top: 5px solid #8475BC;"></div>
      <!-- 완료 메시지 나열 -->
      <div class="mb-2">
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
      </div>
    </div>
  </div>

  <!-- 오른쪽: 챌린지와 라디오 박스 -->
  <div class="d-flex justify-content-between w-60" style="margin-bottom: 30px; gap: 0px; margin-left:10px; margin-right:-10px;">
    <!-- 챌린지들 -->
    <div class="d-flex w-50" style="height: 100%; flex-grow: 1;">
      <div class="board" style="border: 5px solid #CDC8E7; border-radius: 5px; background-color: #FFFFFF;">
      <div class="d-flex">
      <div id="box-1">
          <!-- 최다 도전 챌린지 -->
          <div class="challenge-box mb-4" id="challenge-1" style="padding: 5px; flex-grow: 1;">
            <div class="challenge-header" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; margin-top: 10px; width: 100%; margin-bottom: 10px; text-align: center; font-size: 17px;">
              최다 도전 챌린지
            </div>
            <div id="week-2-1" class="photo-wrapper">
			<div class="d-flex justify-content-between align-items-center">
			  <div class="d-flex align-items-center" style="padding: 5px;">
			    <img src="/resources/img/indexSO/profile.png" alt="사진 4" class="photo-wrapper-zone" style="margin-right: 10px;">
			  </div>
			  <div class="chall-text">
			    <p>배달음식 없는 하루 챌린지</p>
			  </div>
			</div>
            </div>
            
            <!-- 페이지 버튼 -->
            <div class="pagination d-flex justify-content-center">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 1)"></a>
                </li>
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 2)"></a>
                </li>
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 3)"></a>
                </li>
              </ul>
            </div>
          </div>
        
        <div style="height: auto; width: auto; border-top: 5px solid #8475BC;"></div>

          <!-- 최다 성공 챌린지 -->
          <div class="challenge-box" id="challenge-2" style="padding: 5px;">
            <div class="challenge-header" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; width: 100%;  margin-top: 10px; margin-bottom: 10px; text-align: center; font-size: 17px;">
              최다 성공 챌린지
            </div>
            <div id="week-2-1" class="photo-wrapper">
			<div class="d-flex justify-content-between align-items-center">
			  <div class="d-flex align-items-center" style="padding: 5px;">
			    <img src="/resources/img/indexSO/profile.png" alt="사진 4" class="photo-wrapper-zone" style="margin-right: 10px;">
			  </div>
			  <div class="chall-text">
			    <p>하루 음식 메뉴 인증 챌린지</p>
			  </div>
			</div>
            </div>
          </div>
          <!-- 페이지 버튼 -->
          <div class="pagination d-flex justify-content-center">
            <ul class="pagination">
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 1)"></a>
              </li>
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 2)"></a>
              </li>
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 3)"></a>
              </li>
            </ul>
          </div>
        </div>

	        <div id="box-2" style="display: flex; flex-direction: column; height: auto; width: 30%">
			  <button id="op-btn" class="list-group-item align-items-center btn-option" 
			          style="background-color: #8475BC; color: #CDC8E7; font-size: 30px; display: flex; justify-content: center; align-items: center; flex-grow: 1; width: 100%;">
			    <span>1주</span>
			  </button>
			  <button id="op-btn" class="list-group-item align-items-center btn-option" 
			          style="background-color: #8475BC; color: #CDC8E7; font-size: 30px; display: flex; justify-content: center; align-items: center; flex-grow: 1; width: 100%;">
			    <span>2주</span>
			  </button>
			  <button id="op-btn" class="list-group-item align-items-center btn-option" 
			          style="background-color: #8475BC; color: #CDC8E7; font-size: 30px; display: flex; justify-content: center; align-items: center; flex-grow: 1; width: 100%;">
			    <span>한달</span>
			  </button>
			</div>

	      </div>
 	     </div>
        </div>
       </div>
      </div>
     </div>
    </div>

<!--    -->
  <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <div class="row text-center">
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 1" class="img-fluid" style="border-radius: 1000px; width: 50%; border: 5px solid #CDC8E7;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">엄은지</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 2" class="img-fluid" style="border-radius: 1000px; width: 50%; border: 5px solid #CDC8E7;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김건주</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 3" class="img-fluid" style="border-radius: 1000px; width: 50%; border: 5px solid #CDC8E7;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김세옥</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 4" class="img-fluid" style="border-radius: 1000px; width: 50%; border: 5px solid #CDC8E7;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김시연</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
    </div>
</div>

<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <!-- 제목을 담은 보드 -->
    <div class="border-bottom mb-5 p-3" style="background-color: #8475BC; text-align: center; width: 400px; margin: 0 auto;">
        <h2 class="text-center mb-0" style="color: #FFFFFF;">굿바이트란?</h2>
    </div>
    
    <!-- 원형들 나열 -->
    <div class="row justify-content-center">
        <!-- 첫 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 150px; height: 150px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">건강 데이터 분석</p>
            </div>
        </div>

        <!-- 두 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 150px; height: 150px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">질병예방</p>
            </div>
        </div>

        <!-- 세 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 150px; height: 150px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">건강 관리 리스트</p>
            </div>
        </div>

        <!-- 네 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 150px; height: 150px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">식습관 형성</p>
            </div>
        </div>
        
        <!-- 다섯 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 150px; height: 150px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">챌린지 동기부여</p>
            </div>
        </div>
    </div>

    <!-- 텍스트 가운데 정렬 -->
    <p class="text-center" style="font-size: 1.7em; margin-top: 30px;">"굿바이트는 질병을 예방하고 개인의 건강을 관리하는 혁신적인 플랫폼입니다."</p>

</div>
</div>

</main>




<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
<%@ include file="WEB-INF/common/footer.jsp"%>
</body>
</html>
