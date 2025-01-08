<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="fridgeModal.jsp"%>
<!-- 모달 JSP 삽입 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY 냉장고</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../resources/css/modalcss/myFridge.css">
<style>

</style>
</head>
<body>

	<%@ include file="../common/headerBefore.jsp"%>

	<div class="container">
		<div class="section-title">MY 냉장고</div>

		<!-- 냉장고 -->
		<div class="fridge-container">
			<h5>냉장고</h5>
			<div class="fridge" id="fridgeItems">
				<!-- 기본 재료 추가 -->
				<div class="d-flex     align-items-center">
					<div class="ingredient-item">
						<img src="../resources/img/mealReportSY/Milk_glass.jpg" alt="우유"
							class="ingredient-img">
						<p>우유 (1L)</p>
					</div>
					<div class="ingredient-item">
						<img src="../resources/img/mealReportSY/egg.jpg" alt="달걀"
							class="ingredient-img">
						<p>달걀 (12개)</p>
					</div>
					<div class="ingredient-item">
						<img src="../resources/img/mealReportSY/bacon.jpg" alt="베이컨"
							class="ingredient-img">
						<p>베이컨 (3개)</p>
					</div>
				</div>
				<p class="text-muted">냉장고에 식재료를 추가하세요</p>
			</div>
			<div class="d-flex justify-content-end">
				<button class="btn btn-custom btn-sm me-2" id="addFridge"
					data-bs-toggle="modal" data-bs-target="#itemModal">+</button>
			</div>
		</div>

		<!-- 냉동고 -->
		<div class="fridge-container mt-4">
			<h5>냉동고</h5>
			<div class="freezer" id="freezerItems">
				<div class="ingredient-item">
					<img src="../resources/img/mealReportSY/meat.png" alt="돼지고기"
						class="ingredient-img">
					<p>닭고기 (1kg)</p>
				</div>
				<p class="text-muted">냉동고에 식재료를 추가하세요</p>
			</div>
			<div class="d-flex justify-content-end">
				<button class="btn btn-custom btn-sm me-2" id="addFreezer"
					data-bs-toggle="modal" data-bs-target="#itemModal">+</button>
			</div>
		</div>

		<!-- 추천 레시피 -->
		<div class="fridge-container mt-4">
			<h5>추천 레시피</h5>
			<div class="recipes" id="recipeItems">
				<!-- 하드코딩된 레시피 -->
				<div class="recipe-item">
					<img src="../resources/img/mealReportSY/scramble.jpg" alt="스크램블" class="recipe-img">
					<div class="recipe-info">
						<h6>잉글리쉬 브랙퍼스트</h6>
						<p>아침을 깨우는 든든한 한끼</p>
					</div>
				</div>
				<p class="text-muted">추천 레시피를 확인하세요</p>
			</div>
		</div>
	</div>

	<%@ include file="../common/footer.jsp"%>

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
      const modal = bootstrap.Modal.getInstance(document.getElementById("fridgeModal"));
      modal.hide();
    } else {
      alert("식재료 이름과 수량을 입력하세요!");
    }
  });
</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


