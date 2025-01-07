<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>영양진단 결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../resources/css/modalcss/mealreportResult.css">
  <style>
   
  </style>
</head>
<body>
 <!-- Header -->
    <%@ include file="../common/headerBefore.jsp"%>

  <div class="container">
   
    <!-- User Info -->
    <div class="inner">
    <div class="user-info">
      <div>
        <strong>김건주님</strong><br>
        고객정보: 남성/30세<br>
        질병: 지방간<br>
        키/몸무게: 172/76kg
      </div>
      <div>
        검진일자: 2024-12-18
      </div>
    </div>

    <!-- EAT SCORE -->
    <div>
      <div class="section-title">EAT SCORE</div>
      <p>적정 섭취량과 비교한 나의 실제 섭취 점수?</p>
      <p><span class="highlight">탄수화물, 콜레스테롤, 나트륨, 지방, 포화지방, 당류</span> 과다하여 점수가 감점되었어요.</p>
      <div class="score-bar">
        <div class="score-pointer">67점</div>
      </div>
    </div>

    <!-- Daily Calories -->
    <div>
      <div class="section-title">나의 하루 칼로리</div>
      <p>김건주님 하루 섭취 열량(kcal)이 권장 열량 대비 <span class="highlight">과다해요</span>.</p>
      <div class="nutrition-section">
        <div class="nutrition-item">
          <strong>탄수화물: 303.2g</strong>
          <div class="bar">
            <div class="pointer">303.2g</div>
          </div>
        </div>
        <div class="nutrition-item">
          <strong>단백질: 124.8g</strong>
          <div class="bar">
            <div class="pointer">124.8g</div>
          </div>
        </div>
        <div class="nutrition-item">
          <strong>지방: 93.8g</strong>
          <div class="bar">
            <div class="pointer">93.8g</div>
          </div>
        </div>
      </div>
    </div>

    <!-- Other Nutrition -->
    <div>
      <div class="section-title">기타 영양소 섭취량</div>
      <div class="nutrition-section">
        <div class="nutrition-item">
          <strong>식이섬유: 30.8g</strong>
          <div class="bar">
            <div class="pointer">30.8g</div>
          </div>
        </div>
        <div class="nutrition-item">
          <strong>당류: 52.5g</strong>
          <div class="bar">
            <div class="pointer">52.5g</div>
          </div>
        </div>
        <div class="nutrition-item">
          <strong>포화지방: 17.9g</strong>
          <div class="bar">
            <div class="pointer">17.9g</div>
          </div>
        </div>
        <div class="nutrition-item">
          <strong>콜레스테롤: 536.8mg</strong>
          <div class="bar">
            <div class="pointer">536.8mg</div>
          </div>
        </div>
      </div>
    </div>

    <!-- Alert Message -->
    <div class="alert-message">
      회원님은 현재 <span class="highlight">“지방간”</span>과 <span class="highlight">“간질환”</span>의 의심질환 대비<br>
      콜레스테롤 섭취량이 많이 높습니다.
    </div>
    <a href="#" class="alert-button">홈으로 돌아가기</a>
    <div class="alert-detail">
      자세한 사항은 "나의 처방전"에서 확인할 수 있습니다.
    </div>
  </div>
  </div>
  <%@ include file="../common/footer.jsp"%>
</body>
</html>




