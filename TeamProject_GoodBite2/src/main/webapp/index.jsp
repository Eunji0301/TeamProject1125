<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>팀프로젝트</title>

</head>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/blog/">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
    
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
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
	        <img src="/resources/img/indexSO/profile.png" alt="카드 뉴스" class="img-fluid" style="object-fit: cover; height: 100%; width: auto;">
	      </div>
	    </div>
	  </div>
	</div>


<div class="container mt-3">
  <div class="d-flex flex-wrap justify-content-between" style="">

<div class="d-flex justify-content-between w-100" style="margin-bottom: 30px; gap: 40px;">
  <!-- 왼쪽: 최강 챌린저 섹션 -->
  <div class="border-5 rounded w-60" style="margin-bottom: 30px; margin-left:-10px;">
    <div class="rounded p-4" style="border: 5px solid #CDC8E7;">
      <!-- 상단 제목: 보드 처리 및 색상 변경 -->
      <div class="border-bottom mb-4 p-2" style="background-color: #CDC8E7; border-bottom: 5px solid #8475BC;">
        <h5 class="text-center mb-1" style="color: #8475BC;">최강 챌린저</h5>
      </div>

      <!-- 사진과 이름 나열 -->
      <div class="row mb-4">
        <div class="row justify-content-center mb-2">
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
	<div class="line" style="height: 5px; width: auto; margin-bottom:10px; border-top: 5px solid #8475BC;"></div>
      <!-- 완료 메시지 나열 -->
      <div class="mb-2">
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
        <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
      </div>
    </div>
  </div>

  <!-- 오른쪽: 챌린지와 라디오 박스 -->
  <div class="d-flex justify-content-between w-50" style="margin-bottom: 30px; gap: 0px; margin-left:10px; margin-right:-10px;">
    <!-- 챌린지들 -->
    <div class="d-flex w-100" style="height: 100%; flex-grow: 1;">
      <div class="board" style="border: 5px solid #CDC8E7; border-radius: 5px; background-color: #FFFFFF;">
      <div class="d-flex">
      <div id="box-1">
          <!-- 최다 도전 챌린지 -->
          <div class="challenge-box mb-4" id="challenge-1" style="padding: 5px; flex-grow: 1;">
            <div class="challenge-header" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; margin-top: 10px; width: 100%; margin-bottom: 10px; text-align: center; font-size: 17px;">
              최다 도전 챌린지
            </div>
            <div id="week-2-1" class="photo-wrapper" style="border: 5px solid #CDC8E7; margin-bottom: 10px; background-color: #F9F9F9;">
              <div class="d-flex align-items-center" style="padding: 5px;">
                <img src="/resources/img/indexSO/profile.png" alt="사진 4" style="width: 100px; height: 95px; margin-right: 10px; border-radius: 8px; border: 5px solid #CDC8E7;">
                <p>배달음식 없는 하루 챌린지</p>
              </div>
            </div>
            <!-- 페이지 버튼 -->
            <div class="pagination d-flex justify-content-center">
              <ul class="pagination">
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 1)">1</a>
                </li>
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 2)">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link custom-btn" href="#" onclick="showContent(1, 3)">3</a>
                </li>
              </ul>
            </div>
          </div>
        
        <div style="padding: 5px;">
        <div class="line" style="height: auto; width: auto; border-top: 5px solid #8475BC; padding: 0px;"></div>
        </div>
        
          <!-- 최다 성공 챌린지 -->
          <div class="challenge-box" id="challenge-2" style="padding: 5px;">
            <div class="challenge-header" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; width: 100%; margin-bottom: 10px; text-align: center; font-size: 17px;">
              최다 성공 챌린지
            </div>
            <div id="week-2-1" class="photo-wrapper" style="border: 5px solid #CDC8E7; margin-bottom: 10px; background-color: #F9F9F9;">
              <div class="d-flex align-items-center" style="padding: 5px;">
                <img src="/resources/img/indexSO/profile.png" alt="사진 4" style="width: 100px; height: 95px; margin-right: 10px; border-radius: 8px; border: 5px solid #CDC8E7;">
                <p>하루 음식 메뉴 인증 챌린지</p>
              </div>
            </div>
          </div>
          <!-- 페이지 버튼 -->
          <div class="pagination d-flex justify-content-center">
            <ul class="pagination">
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 1)">1</a>
              </li>
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 2)">2</a>
              </li>
              <li class="page-item">
                <a class="page-link custom-btn" href="#" onclick="showContent(1, 3)">3</a>
              </li>
            </ul>
          </div>
        </div>

	        <div id="box-2" style="flex-grow: 1;">
	          <!-- 옵션 버튼들 -->
	          <div class="flex-column align-items-start w-100" style="display: flex; flex-direction: column; gap: 0px; height: 100%; width: 100%; ">
	            <button class="list-group-item align-items-center btn-option" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; font-size: 20px; display: block; justify-content: center; align-items: center; flex-grow: 1; min-width:180px; width: 100%;">
	              <span>1주</span>
	            </button>
	            <button class="list-group-item align-items-center btn-option" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; font-size: 20px; display: block; justify-content: center; align-items: center; flex-grow: 1; min-width:180px; width: 100%;">
	              <span>2주</span>
	            </button>
	            <button class="list-group-item align-items-center btn-option" style="border: 5px solid #CDC8E7; background-color: #CDC8E7; color: #8475BC; font-size: 20px; display: block; justify-content: center; align-items: center; flex-grow: 1; min-width:180px; width: 100%;">
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
    </div>

<!--    -->
  <div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <div class="row text-center">
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 1" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">엄은지</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 2" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김건주</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 3" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김세옥</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
        <div class="col-lg-3 px-0">
            <img src="/resources/img/indexSO/profile.png" alt="사진 4" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">김시연</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
    </div>
</div>

<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <!-- 제목을 담은 보드 -->
    <div class="border-bottom mb-4 p-3" style="background-color: #8475BC; margin-left:170px; margin-right:170px;"> 
        <h2 class="text-center mb-0" style="color: #FFFFFF;">굿바이트란?</h2>
    </div>
    
    <!-- 원형들 나열 -->
    <div class="row justify-content-center">
        <!-- 첫 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 100px; height: 100px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">건강 데이터 분석</p>
            </div>
        </div>

        <!-- 두 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 100px; height: 100px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">질병예방</p>
            </div>
        </div>

        <!-- 세 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 100px; height: 100px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">건강 관리 리스트</p>
            </div>
        </div>

        <!-- 네 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 100px; height: 100px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">식습관 형성</p>
            </div>
        </div>
        
        <!-- 다섯 번째 항목: 원형 배경 텍스트 -->
        <div class="col-lg-2 px-0 d-flex justify-content-center">
            <div class="d-flex justify-content-center align-items-center" style="width: 100px; height: 100px; border-radius: 50%; background-color: #CDC8E7; color: black; text-align: center;">
                <p class="lead my-3 fw-bold" style="font-size: 1.2em; margin: 0;">챌린지 동기부여</p>
            </div>
        </div>
    </div>

    <!-- 텍스트 가운데 정렬 -->
    <p class="text-center" style="font-size: 1.2em; margin-top: 30px;">"굿바이트는 질병을 예방하고 개인의 건강을 관리하는 혁신적인 플랫폼입니다."</p>

</div>
</div>

</main>




<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>



	
<%@ include file="WEB-INF/common/footer.jsp"%>
</body>
</html>
