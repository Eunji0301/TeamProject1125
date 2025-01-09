<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="foodSearchModal.jsp"%>
<!-- 검색 모달 JSP 포함 -->
<!DOCTYPE html>
<link rel="stylesheet" type="text/css"
	href="../resources/css/modalcss/fridgemodal.css">
<div class="modal fade" id="itemModal" tabindex="-1"
	aria-labelledby="itemModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="itemModalLabel">식재료 추가</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- 이미 선택된 재료 목록 -->
				<div class="selected-ingredients mb-3">
					<h6>선택된 재료</h6>
					<ul class="list-group" id="selectedIngredients">
						<li
							class="list-group-item d-flex align-items-center justify-content-between">
							<div class="d-flex align-items-center">
								 <span>쌀</span>
							</div>
							<div>
								<button class="btn btn-sm btn-outline-primary"
									onclick="decreaseQuantity(this)">-</button>
								<span class="mx-2 quantity">200g</span>
								<button class="btn btn-sm btn-outline-primary"
									onclick="increaseQuantity(this)">+</button>
								<button class="btn btn-sm btn-outline-danger ms-3"
									onclick="deleteIngredient(this)">삭제</button>
							</div>
						</li>
						<li
							class="list-group-item d-flex align-items-center justify-content-between">
							<div class="d-flex align-items-center">
								<span>두부</span>
							</div>
							<div>
								<button class="btn btn-sm btn-outline-primary"
									onclick="decreaseQuantity(this)">-</button>
								<span class="mx-2 quantity">3개</span>
								<button class="btn btn-sm btn-outline-primary"
									onclick="increaseQuantity(this)">+</button>
								<button class="btn btn-sm btn-outline-danger ms-3"
									onclick="deleteIngredient(this)">삭제</button>
							</div>
						</li>
					</ul>
				</div>
				<div class="row align-items-center mb-3">
					<div class="col-6">
						<input type="text" class="form-control" id="ingredientName"
							placeholder="식재료 이름">
					</div>
					<div class="col-4">
						<input type="number" class="form-control" id="ingredientQuantity"
							placeholder="수량">
					</div>
					<div class="col-2">
						<button class="btn btn-primary" data-bs-toggle="modal"
							data-bs-target="#searchModal">검색</button>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary" id="saveIngredient">저장</button>
			</div>
		</div>
	</div>
</div>

<script>
document.addEventListener("DOMContentLoaded", () => {
	  const searchResults = document.getElementById("searchResults");
	  const searchInput = document.getElementById("searchInput");

	  const ingredients = ["대파", "쪽파", "양파", "마늘", "생강"];

	  searchInput.addEventListener("input", () => {
	    const query = searchInput.value.toLowerCase();
	    searchResults.innerHTML = "";

	    if (query) {
	      const filtered = ingredients.filter(item => item.includes(query));
	      filtered.forEach(item => {
	        const li = document.createElement("li");
	        li.classList.add("list-group-item", "list-group-item-action");
	        li.textContent = item;
	        li.addEventListener("click", () => selectIngredient(item));
	        searchResults.appendChild(li);
	      });
	    }
	  });

	  const selectIngredient = (ingredient) => {
	    document.getElementById("ingredientName").value = ingredient;
	    const searchModal = bootstrap.Modal.getInstance(document.getElementById("foodSearchModal"));
	    searchModal.hide();
	  };

	  window.increaseQuantity = (button) => {
	    const quantityElement = button.closest("div").querySelector(".quantity");
	    if (!quantityElement) return;

	    const currentQuantity = extractQuantity(quantityElement.textContent);
	    const updatedQuantity = currentQuantity + 1;
	    quantityElement.textContent = formatQuantity(updatedQuantity);
	  };

	  window.decreaseQuantity = (button) => {
	    const quantityElement = button.closest("div").querySelector(".quantity");
	    if (!quantityElement) return;

	    const currentQuantity = extractQuantity(quantityElement.textContent);
	    if (currentQuantity > 1) {
	      const updatedQuantity = currentQuantity - 1;
	      quantityElement.textContent = formatQuantity(updatedQuantity);
	    }
	  };

	  window.deleteIngredient = (button) => {
	    const ingredientItem = button.closest("li");
	    ingredientItem.remove();
	  };

	  const extractQuantity = (quantityText) => {
	    return parseInt(quantityText.replace(/[^\d]/g, ""), 10) || 0;
	  };

	  const formatQuantity = (quantity, unit = "g") => {
	    return `${quantity}${unit}`;
	  };
	});

</script>



