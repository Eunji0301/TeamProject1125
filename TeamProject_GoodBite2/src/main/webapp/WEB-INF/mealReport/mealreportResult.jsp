<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>영양진단 결과</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #F9F9FF;
      color: #333;
      margin: 0;
      padding: 20px;
    }
 
    .container {
      max-width: 900px;
      margin: 0 auto;
      padding: 20px;
      border: 2px solid #CDC6E7;
      border-radius: 15px;
      background-color: white;
      margin-top: 110px; /* 헤더 높이 */
      margin-bottom: 100px; /* 푸터 높이 */
    }

    .header {
      text-align: center;
      color: #7A5FBB;
      font-size: 1.8em;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .user-info {
      display: flex;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .user-info div {
      font-size: 1.1em;
      color: #7A5FBB;
    }

    .section-title {
      color: #7A5FBB;
      font-weight: bold;
      margin-top: 30px;
      margin-bottom: 10px;
    }

    .score-bar {
      height: 20px;
      border-radius: 10px;
      background: linear-gradient(to right, red 0%, yellow 50%, green 100%);
      position: relative;
    }

    .score-pointer {
      position: absolute;
      top: -10px;
      left: 67%;
      transform: translateX(-50%);
      font-size: 0.9em;
      font-weight: bold;
      color: white;
      background-color: #7A5FBB;
      padding: 2px 6px;
      border-radius: 10px;
    }

    .nutrition-section {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      margin-bottom: 20px;
    }

    .nutrition-item {
      width: 48%;
      margin-bottom: 20px;
    }

    .nutrition-item .bar {
      position: relative;
      height: 20px;
      background: linear-gradient(to right, yellow 30%, green 60%, red 100%);
      border-radius: 10px;
      margin-top: 5px;
    }

    .nutrition-item .bar .pointer {
      position: absolute;
      top: -10px;
      left: 75%;
      transform: translateX(-50%);
      font-size: 0.8em;
      font-weight: bold;
      color: white;
      background-color: #7A5FBB;
      padding: 2px 6px;
      border-radius: 10px;
    }

    .highlight {
      color: red;
      font-weight: bold;
    }

    .alert-message {
      margin-top: 30px;
      text-align: center;
      font-size: 1.2em;
      color: black;
      font-weight: bold;
    }

    .alert-message .highlight {
      color: red;
      font-weight: bold;
    }

    .alert-button {
      display: block;
      width: 100%;
      max-width: 300px;
      margin: 20px auto;
      background-color: #7A5FBB;
      color: white;
      text-align: center;
      padding: 10px 20px;
      font-size: 1.1em;
      font-weight: bold;
      border-radius: 10px;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }

    .alert-button:hover {
      background-color: #5C479A;
    }

    .alert-detail {
      text-align: center;
      font-size: 0.9em;
      color: #666;
    }
  </style>
</head>
<body>
 <!-- Header -->
    <%@ include file="../common/headerBefore.jsp"%>

  <div class="container">
   
    <!-- User Info -->
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
      회원님은 현재 <span class="highlight">“지방간”</span>과 <span class="highlight">“간질환”</span>의 위험이 있습니다.<br>
      식단에 주의가 필요합니다!
    </div>
    <a href="#" class="alert-button">나의 처방전으로 가기</a>
    <div class="alert-detail">
      자세한 사항은 "나의 처방전"에서 확인할 수 있습니다.
    </div>
  </div>
  <%@ include file="../common/footer.jsp"%>
</body>
</html>




