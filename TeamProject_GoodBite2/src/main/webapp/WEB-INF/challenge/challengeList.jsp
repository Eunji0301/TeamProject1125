<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>챌린지 리스트</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #F9F9FF;
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
    }

    /* 헤더와 푸터 높이만큼 여백 추가 */
    .content {
      margin-top: 110px; /* 헤더 높이 */
      margin-bottom: 100px; /* 푸터 높이 */
      padding: 20px;
    }

    .header {
      background-color: #CDC6E7;
      color: #7A5FBB; /* 진한 보라색 글씨 */
      padding: 10px;
      text-align: center;
      font-size: 1.5em;
      font-weight: bold;
      border-radius: 10px 10px 0 0;
    }

    .separator {
      border-top: 3px solid #CDC6E7;
      margin: 20px 0;
    }

    .challenge-container {
      border: 2px solid #CDC6E7;
      border-radius: 10px;
      margin: 20px auto;
      background-color: white;
      max-width: 800px;
      padding: 20px;
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

    /* Hover 효과 */
    .card:hover {
      background-color: #AED7ED; /* 마우스 올릴 때 배경색 변경 */
    }

    .card img {
      width: 100%;
      height: 150px;
      border-radius: 10px;
    }

    .card-title {
      margin-top: 10px;
      color: #7A5FBB; /* 진한 보라색 */
    }

    .more-button {
      background-color: #CDC6E7;
      color: #7A5FBB;
      border: none;
      padding: 10px 20px;
      font-size: 1em;
      font-weight: bold;
      border-radius: 10px;
      cursor: pointer;
      margin: 10px auto;
      display: block;
    }

    .more-button:hover {
      background-color: #7A5FBB;
      color: white;
    }
  </style>
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
  <div class="content">
    <!-- 관리자 챌린지 리스트 -->
    <div class="challenge-container">
      <div class="header">챌린지 리스트 (관리자)</div>
      <div class="separator"></div>
      <div class="d-flex flex-wrap justify-content-center">
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">챌린지 1</div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">챌린지 2</div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">챌린지 3</div>
        </div>
      </div>
      <div class="separator"></div>
      <button class="more-button">더보기</button>
    </div>

    <!-- 유저 챌린지 리스트 -->
    <div class="challenge-container">
      <div class="header">챌린지 리스트 (유저)</div>
      <div class="separator"></div>
      <div class="d-flex flex-wrap justify-content-center">
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">작성하기</div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">챌린지 1</div>
        </div>
        <div class="card" style="width: 18rem;">
          <img src="https://via.placeholder.com/150" alt="챌린지 이미지">
          <div class="card-title">챌린지 2</div>
        </div>
      </div>
      <div class="separator"></div>
      <button class="more-button">더보기</button>
    </div>
  </div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>





