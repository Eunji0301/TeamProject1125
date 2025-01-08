<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>챌린지 상세보기</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #F9F9FF;
      font-family: 'Arial', sans-serif;
      color: #7A5FBB; /* 기본 글씨 색상 */
    }

    .container {
      border: 2px solid #CDC6E7;
      border-radius: 15px;
      padding: 20px;
      background-color: white;
      max-width: 800px;
      margin: 30px auto;
      margin-top: 110px; /* 헤더 높이 */
      margin-bottom: 100px; /* 푸터 높이 */
    }

    .header {
      background-color: #CDC6E7;
      color: white; /* 헤더는 흰색 유지 */
      text-align: center;
      padding: 10px;
      border-radius: 10px;
      font-size: 1.5em;
      font-weight: bold;
    }

    .photo-container {
      border: 2px solid #CDC6E7;
      height: 250px;
      margin-bottom: 20px;
      margin-top: 20px;
      border-radius: 10px;
      text-align: center;
      line-height: 250px;
      font-size: 1.2em;
      color: #7A5FBB; /* 사진 컨테이너 텍스트 색상 */
    }
    
    .card {
      border: 1px solid #CDC6E7;
      border-radius: 10px;
      padding: 10px;
      background-color: white;
      text-align: center;
      font-size: 1em;
      font-weight: bold;
      margin: 10px;
      transition: background-color 0.3s ease; /* 부드러운 전환 효과 */
    }
    
    .card img {
      width: 100%;
      height: 100%;
      border-radius: 10px;
    }

    .form-group {
      display: flex;
      align-items: center;
      margin-bottom: 15px;
    }

    .label {
      width: 100px;
      text-align: center;
      background-color: #CDC6E7;
      color: white; /* 라벨은 흰색 유지 */
      padding: 5px;
      border-radius: 10px;
      font-weight: bold;
    }

    .content {
      flex: 1;
      margin-left: 10px;
      color: #7A5FBB; /* 컨텐츠 색상 */
    }

    .separator {
      border-top: 3px solid #CDC6E7;
      margin: 15px 0;
    }

    .period-button-group {
      display: flex;
      gap: 10px;
    }

    .period-button {
      border: 1px solid #DBD1E9;
      background-color: white;
      color: #7A5FBB; /* 버튼 텍스트 색상 */
      padding: 5px 15px;
      border-radius: 10px;
      cursor: pointer;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    .period-button:hover {
      background-color: #AED7ED;
      color: white;
    }

    .period-button.active {
      background-color: #AED7ED;
      color: white;
    }

    .textarea-group {
      display: flex;
      margin-bottom: 20px;
    }

    .label-large {
      width: 100px;
      text-align: center;
      background-color: #CDC6E7;
      color: white; /* 라벨은 흰색 유지 */
      padding: 5px;
      border-radius: 10px;
      font-weight: bold;
      margin-right: 10px;
    }

    .textarea-content {
      flex: 1;
      border: 1px solid #CDC6E7;
      border-radius: 10px;
      padding: 10px;
      font-size: 1em;
      color: #7A5FBB; /* 텍스트 색상 */
    }

    .button-group {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-top: 20px;
    }

    .left-buttons {
      display: flex;
      gap: 15px; /* 수정과 삭제 버튼 사이의 간격 */
    }

    .btn-custom {
      background-color: #CDC6E7;
      color: white; /* 버튼 텍스트는 흰색 유지 */
      border: none;
      padding: 10px 20px;
      border-radius: 10px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .btn-custom:hover {
      background-color: #7A5FBB;
      color: white;
    }
  </style>
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
  <div class="container">
    <div class="header">사진</div>
    <div class="card">
    	<img src="/resources/img/indexSO/profile.png" alt="챌린지 이미지">
    </div>
    <div class="separator"></div>

    <div class="form-group">
      <div class="label">제목</div>
      <div class="content">챌린지 제목</div>
    </div>
    <div class="separator"></div>

    <div class="form-group">
      <div class="label">기간</div>
      <div class="content period-button-group">
        <div class="period-button active">7일</div>
        <div class="period-button">14일</div>
        <div class="period-button">30일</div>
      </div>
    </div>
    <div class="separator"></div>

    <div class="form-group">
      <div class="label">작성자</div>
      <div class="content">홍길동</div>
    </div>
    <div class="separator"></div>

    <div class="form-group">
      <div class="label">인증 방법</div>
      <div class="content">사진 인증</div>
    </div>
    <div class="separator"></div>

    <div class="form-group">
      <div class="label">인증 횟수</div>
      <div class="content">5회</div>
    </div>
    <div class="separator"></div>

    <div class="textarea-group">
      <div class="label-large">내용</div>
      <div class="textarea-content">챌린지에 대한 자세한 설명이 들어갑니다.</div>
    </div>

    <div class="button-group">
      <div class="left-buttons">
        <button class="btn-custom">수정</button>
        <button class="btn-custom">삭제</button>
      </div>
      <button class="btn-custom">마이 챌린지로 저장</button>
    </div>
  </div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>



