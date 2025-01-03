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
  const allWeeks = document.querySelectorAll(`#challenge-${challengeType} .photo-wrapper`);
  allWeeks.forEach((weekDiv) => {
    weekDiv.style.display = 'none';
  });

  // 선택된 주차 내용만 보이기
  const weekId = `week-${challengeType}-${week}`;
  const selectedWeek = document.getElementById(weekId);
  if (selectedWeek) {
    selectedWeek.style.display = 'block';
  }
}

// 페이지가 로드될 때 1주 내용을 기본으로 보여주기
window.onload = function() {
  // 각 챌린지 타입과 주차별로 기본값을 설정
  showContent(1, 1); // 최다 도전 챌린지 1주 보이도록
  showContent(2, 1); // 최다 성공 챌린지 1주 보이도록
};

</script>


<body>
	<a href="<%=request.getContextPath()%>/challenge/challengeContent.do">challengeContent</a><br>
	<a href="<%=request.getContextPath()%>/challenge/challengeList.do">challengeList</a><br>
	<a href="<%=request.getContextPath()%>/challenge/challengeWrite.do">challengeWrite</a><br>
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
	<br><br><br>
	<a href="<%=request.getContextPath()%>/mealReport/dietaryQuestionnaire.do">dietaryQuestionnaire</a><br>
	<a href="<%=request.getContextPath()%>/mealReport/healthCheckup.do">healthCheckup</a><br>
	<a href="<%=request.getContextPath()%>/mealReport/mealreportResult.do">mealreportResult</a><br>
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
<main class="container">
<div class="inner">
<div class="row mb-2">
  <div class="col-md-7">
    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-400 position-relative">
      <div class="col-auto d-none d-lg-block">
        <!-- 첫 번째 썸네일 (높이와 넓이 확장) -->
        <svg class="bd-placeholder-img" width="250%" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
          <title>Placeholder</title>
          <rect width="100%" height="100%" fill="#55595c"/>
          <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
        </svg>
      </div>
    </div>
  </div>

  <div class="col-md-5">
    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-400 position-relative">
      <div class="col-auto d-none d-lg-block">
        <!-- 두 번째 썸네일 (높이와 넓이 확장) -->
        <svg class="bd-placeholder-img" width="175%" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false">
          <title>Placeholder</title>
          <rect width="100%" height="100%" fill="#55595c"/>
          <text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
        </svg>
      </div>
    </div>
  </div>
</div>

<div class="container mt-5">
<div class="inner">
<!-- 최강 챌린저 섹션 -->
<div class="border rounded p-4 shadow-sm">
  <!-- 상단 제목: 보드 처리 및 색상 변경 -->
  <div class="border-bottom mb-4 pb-2" style="background-color: #CDC8E7; border-bottom: 5px solid #8475BC;">
    <h2 class="text-center mb-0" style="color: #8475BC;">최강 챌린저</h2>
  </div>
  
  <!-- 사진과 이름 나열 -->
  <div class="row mb-4">
    <div class="row justify-content-center mb-4">
      <div class="col-md-2 text-center">
        <img src="/resources/image/cat.jpg" alt="사진 1" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
        <p>1.홍길동</p>
      </div>
      <div class="col-md-2 text-center">
        <img src="/resources/image/cat.jpg" alt="사진 2" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
        <p>2.홍길동</p>
      </div>
      <div class="col-md-2 text-center">
        <img src="/resources/image/cat.jpg" alt="사진 3" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
        <p>3.홍길동</p>
      </div>
      <div class="col-md-2 text-center">
        <img src="/resources/image/cat.jpg" alt="사진 4" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
        <p>4.홍길동</p>
      </div>
      <div class="col-md-2 text-center">
        <img src="/resources/image/cat.jpg" alt="사진 5" class="img-fluid rounded-circle" style="width: 100px; height: 100px;">
        <p>5.홍길동</p>
      </div>
    </div>
  </div>

  <!-- 완료 메시지 나열 -->
  <div class="mb-4">
    <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
    <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
    <p class="border p-3 mb-2" style="background-color: #FFFFFF; color: #8475BC; border: 5px solid #8475BC;">홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
  </div>
</div>
</div>

<div class="container mt-5">
  <div class="d-flex justify-content-between">
    <!-- 챌린지와 라디오 박스를 세로로 정렬 -->
    <div class="d-flex flex-column" style="width: 70%;">

	<!-- 최다 도전 챌린지 -->
	<div class="challenge-box mb-4" id="challenge-1">
	  <div class="challenge-header">최다 도전 챌린지</div>
	  <div class="challenge-subheader">주차 선택</div>
	
	  <!-- 1주 -->
	  <div id="week-1-1" class="photo-wrapper">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 1" style="width: 100px; height: 100px;">
	      <p>1주: 홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 2주 -->
	  <div id="week-1-2" class="photo-wrapper" style="display: none;">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 2" style="width: 100px; height: 100px;">
	      <p>2주: 홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 3주 -->
	  <div id="week-1-3" class="photo-wrapper" style="display: none;">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 3" style="width: 100px; height: 100px;">
	      <p>3주: 박지민님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 페이지 버튼 -->
	  <div class="pagination">
	    <ul class="pagination">
	      <li class="page-item active"><a class="page-link" href="#" onclick="showContent(1, 1)">1</a></li>
	      <li class="page-item"><a class="page-link" href="#" onclick="showContent(1, 2)">2</a></li>
	      <li class="page-item"><a class="page-link" href="#" onclick="showContent(1, 3)">3</a></li>
	    </ul>
	  </div>
	</div>
	
	<!-- 최다 성공 챌린지 -->
	<div class="challenge-box" id="challenge-2">
	  <div class="challenge-header">최다 성공 챌린지</div>
	  <div class="challenge-subheader">주차 선택</div>
	
	  <!-- 1주 -->
	  <div id="week-2-1" class="photo-wrapper">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 4" style="width: 100px; height: 100px;">
	      <p>1주: 홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 2주 -->
	  <div id="week-2-2" class="photo-wrapper" style="display: none;">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 5" style="width: 100px; height: 100px;">
	      <p>2주: 홍길동님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 3주 -->
	  <div id="week-2-3" class="photo-wrapper" style="display: none;">
	    <div>
	      <img src="/resources/image/cat.jpg" alt="사진 6" style="width: 100px; height: 100px;">
	      <p>3주: 박지민님이 ㅇㅇㅇ 챌린지를 완료했습니다!</p>
	    </div>
	  </div>
	
	  <!-- 페이지 버튼 -->
	  <div class="pagination">
	    <ul class="pagination">
	      <li class="page-item active"><a class="page-link" href="#" onclick="showContent(2, 1)">1</a></li>
	      <li class="page-item"><a class="page-link" href="#" onclick="showContent(2, 2)">2</a></li>
	      <li class="page-item"><a class="page-link" href="#" onclick="showContent(2, 3)">3</a></li>
	    </ul>
	  </div>
	</div>


    <!-- 라디오 박스 -->
    <div class="list-group" style="width: 25%; height: 100%;">
      <label class="list-group-item d-flex gap-2">
        <input class="form-check-input flex-shrink-0" style="height: 300;" type="radio" name="listGroupRadios" id="listGroupRadios1" value="" checked>
        <span>1주</span>
      </label>
      <label class="list-group-item d-flex gap-2">
        <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios2" value="">
        <span>2주</span>
      </label>
      <label class="list-group-item d-flex gap-2">
        <input class="form-check-input flex-shrink-0" type="radio" name="listGroupRadios" id="listGroupRadios3" value="">
        <span>3주</span>
      </label>
    </div>
  </div>
</div>
</div>

<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <div class="row">
        <!-- 첫 번째 사진 -->
        <div class="col-lg-3 px-0">
            <img src="/resourcesSO/image/cat.jpg" alt="사진 1" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">팀장</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>

        <!-- 두 번째 사진 -->
        <div class="col-lg-3 px-0">
            <img src="/resourcesSO/image/cat.jpg" alt="사진 2" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">팀원</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>

        <!-- 세 번째 사진 -->
        <div class="col-lg-3 px-0">
            <img src="/resourcesSO/image/cat.jpg" alt="사진 3" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">팀원</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>

        <!-- 네 번째 사진 -->
        <div class="col-lg-3 px-0">
            <img src="/resourcesSO/image/cat.jpg" alt="사진 4" class="img-fluid" style="border-radius: 15px; width: 50%;">
            <p class="lead my-3 fw-bold" style="font-size: 1.2em;">팀원</p>
            <p class="lead mb-0"><a href="#" class="text-body-emphasis fw-bold">챌린지 기능</a></p>
        </div>
    </div>
</div>


  
<div class="p-4 p-md-5 mb-4 rounded text-body-emphasis" style="background-color: #FFFFFF; border: 5px solid #CDC8E7;">
    <!-- 제목을 담은 보드 -->
    <div class="border-bottom mb-4 pb-2" style="background-color: #8475BC;">
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

</body>
</html>
