<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>챌린지 작성</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #F9F9FF;
      font-family: 'Arial', sans-serif;
    }
    .theme-color {
      color: white;
      background-color: #CDC6E7;
      border-radius: 10px;
      padding: 5px 10px;
      font-weight: bold;
      text-align: center;
    }
    .text-color {
      color: #7A5FBB; /* 글자 색상을 진한 보라색으로 변경 */
    }
    .form-container {
      border: 2px solid #CDC6E7;
      border-radius: 15px;
      padding: 20px;
      background-color: white;
      max-width: 800px;
      margin: 30px auto;
      margin-top: 110px; /* 헤더 높이 */
      margin-bottom: 100px; /* 푸터 높이 */
    }
    .form-header {
      background-color: #CDC6E7;
      color: #7A5FBB; /* 글자 색상을 진한 보라색으로 변경 */
      padding: 10px;
      border-radius: 10px;
      text-align: center;
      font-weight: bold;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
      display: flex;
      align-items: center;
    }
    .form-group-label-top {
      flex-direction: column;
      align-items: center;
    }
    .form-group-label-top label {
      width: 100%;
      background-color: #CDC6E7;
      color: #7A5FBB; /* 글자 색상을 진한 보라색으로 변경 */
      border-radius: 10px;
      padding: 5px 15px; /* 높이를 줄이기 위해 위아래 padding을 줄임 */
      font-size: 1.1em;
      text-align: center;
      margin-bottom: 10px;
    }
    .form-group label {
      flex: 0 0 100px;
      margin-right: 10px;
      color: #7A5FBB; /* 글자 색상을 진한 보라색으로 변경 */
    }
    .form-control {
      border: 2px solid #CDC6E7;
      border-radius: 5px;
      flex: 1;
    }
    .form-control:focus {
      box-shadow: 0 0 5px #CDC6E7;
      border-color: #CDC6E7;
    }
    .btn-theme {
      background-color: #DBD1E9;
      color: white;
    }
    .btn-theme:hover {
      background-color: #989BBE; /* 저장 버튼의 호버 색상을 #989BBE로 설정 */
      color: white;
    }
    .btn-outline-theme {
      border-color: #DBD1E9;
      color: #DBD1E9;
    }
    .btn-outline-theme:hover {
      background-color: #3681AB; /* 기간 선택 버튼의 호버 색상을 #3681AB로 설정 */
      border-color: #3681AB;
      color: white;
    }
    .separator {
      border-top: 3px solid #CDC6E7;
      margin: 20px 0;
    }
  </style>
</head>
<body>

  <!-- 챌린지 작성 Form -->
  <div class="form-container">
    <div class="form-header text-color">챌린지 작성</div>
    <form>
      <!-- 제목 -->
      <div class="form-group">
        <label for="title" class="theme-color text-color">제목</label>
        <input type="text" id="title" class="form-control" placeholder="챌린지 제목을 입력하세요">
      </div>
      <div class="separator"></div>

      <!-- 기간 -->
      <div class="form-group">
        <label class="theme-color text-color">기간</label>
        <div class="d-flex">
          <button type="button" class="btn btn-outline-theme me-2">7일</button>
          <button type="button" class="btn btn-outline-theme me-2">14일</button>
          <button type="button" class="btn btn-outline-theme">30일</button>
        </div>
      </div>
      <div class="separator"></div>

      <!-- 인증 방법 -->
      <div class="form-group">
        <label for="method" class="theme-color text-color">인증 방법</label>
        <input type="text" id="method" class="form-control" placeholder="인증 방법을 입력하세요">
      </div>
      <div class="separator"></div>

      <!-- 썸네일 -->
      <div class="form-group">
        <label for="thumbnail" class="theme-color text-color">썸네일</label>
        <input type="file" id="thumbnail" class="form-control">
      </div>
      <div class="separator"></div>

      <!-- 내용 -->
      <div class="form-group form-group-label-top">
        <label for="content" class="theme-color text-color">내용</label>
        <textarea id="content" class="form-control" rows="10" placeholder="챌린지 내용을 입력하세요"></textarea>
      </div>
      <div class="text-end">
        <button type="submit" class="btn btn-theme">저장</button>
      </div>
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
