<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="fridgeModal.jsp" %> <!-- 모달 JSP 삽입 -->
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MY 냉장고</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: white;
      font-family: Arial, sans-serif;
    }

    .header,
    .footer {
      background-color: #CDC6E7; /* 테마색 */
      color: #333;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 20px;
      font-weight: bold;
    }

    .header {
      height: 110px;
    }

    .footer {
      height: 100px;
    }

    .container {
      max-width: 800px;
      margin: 30px auto;
    }

    .section-title {
      background-color: #CDC6E7;
      color: #333;
      font-size: 18px;
      font-weight: bold;
      text-align: center;
      padding: 10px;
      margin-bottom: 10px;
      border-radius: 5px;
    }

    .fridge-container {
      border: 2px solid #CDC6E7; /* 테마색 테두리 */
      border-radius: 10px;
      background-color: white;
      padding: 20px;
      position: relative;
    }

    .fridge {
      height: 400px; /* 냉장고 칸 */
      margin-bottom: 20px;
      border: 2px solid #CDC6E7;
      border-radius: 10px;
      overflow-y: auto;
      padding: 10px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #F9F9F9;
    }

    .freezer {
      height: 150px; /* 냉동고 칸 */
      border: 2px solid #CDC6E7;
      border-radius: 10px;
      overflow-y: auto;
      padding: 10px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #F1F1F1;
    }

    .btn-custom {
      background-color: #CDC6E7; /* 버튼 배경 테마색 */
      color: #333;
      border: none;
      font-weight: bold;
      border-radius: 5px;
    }

    .btn-custom:hover {
      background-color: #989BBE; /* 버튼 hover 색상 */
    }
  </style>
</head>
<body>

<div class="header">
  MY 냉장고
</div>

<div class="container">
  <div class="section-title">MY 냉장고</div>

  <!-- 냉장고 -->
  <div class="fridge-container">
    <h5>냉장고</h5>
    <div class="fridge" id="fridgeItems">
      <p class="text-muted">냉장고에 식재료를 추가하세요</p>
    </div>
    <div class="d-flex justify-content-end">
      <button class="btn btn-custom btn-sm me-2" id="addFridge" data-bs-toggle="modal" data-bs-target="#itemModal">+</button>
    </div>
  </div>

  <!-- 냉동고 -->
  <div class="fridge-container mt-4">
    <h5>냉동고</h5>
    <div class="freezer" id="freezerItems">
      <p class="text-muted">냉동고에 식재료를 추가하세요</p>
    </div>
    <div class="d-flex justify-content-end">
      <button class="btn btn-custom btn-sm me-2" id="addFreezer" data-bs-toggle="modal" data-bs-target="#itemModal">+</button>
    </div>
  </div>
</div>

<div class="footer">
  HelloHealthy.company
</div>

<script>
  let currentSection = "";

  // 냉장고와 냉동고 구분
  document.querySelectorAll('[data-bs-target="#itemModal"]').forEach(button => {
    button.addEventListener("click", (event) => {
      currentSection = event.target.closest(".fridge-container").querySelector("h5").innerText;
    });
  });

  // 추가 버튼 클릭
  document.getElementById("addNewIngredient").addEventListener("click", () => {
    const name = document.getElementById("ingredientName").value;
    const quantity = document.getElementById("ingredientQuantity").value;

    if (name && quantity) {
      const item = document.createElement("p");
      item.textContent = `${name} (${quantity})`;

      if (currentSection === "냉장고") {
        document.getElementById("fridgeItems").appendChild(item);
      } else if (currentSection === "냉동고") {
        document.getElementById("freezerItems").appendChild(item);
      }

      // 모달 닫기
      const modal = bootstrap.Modal.getInstance(document.getElementById("itemModal"));
      modal.hide();
    } else {
      alert("식재료 이름과 수량을 입력하세요!");
    }
  });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


