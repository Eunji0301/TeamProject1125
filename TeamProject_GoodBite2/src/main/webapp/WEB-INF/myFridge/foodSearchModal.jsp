<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="searchModalLabel">식재료 검색</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- 검색 창 -->
        <div class="mb-3">
          <input type="text" class="form-control" id="searchInput" placeholder="검색할 식재료를 입력하세요">
        </div>
        <!-- 검색 결과 -->
        <ul class="list-group" id="searchResults">
          <!-- 검색된 식재료가 여기에 추가됩니다 -->
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="confirmSelection">확인</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", () => {
  const searchResults = document.getElementById("searchResults");
  const searchInput = document.getElementById("searchInput");

  // 가상 데이터 (검색에 사용할 예제 데이터)
  const ingredients = ["대파", "쪽파", "양파", "마늘", "생강"];
  let selectedIngredients = []; // 선택된 재료 목록

  // 검색 기능
  searchInput.addEventListener("input", () => {
    const query = searchInput.value.toLowerCase();
    searchResults.innerHTML = ""; // 기존 결과 초기화

    if (query) {
      const filtered = ingredients.filter(item => item.includes(query));
      filtered.forEach(item => {
        const li = document.createElement("li");
        li.classList.add("list-group-item");
        li.innerHTML = `
          <input type="checkbox" class="form-check-input me-2" value="${item}">
          ${item}
        `;
        searchResults.appendChild(li);
      });
    }
  });

//확인 버튼 클릭 시
  document.getElementById("confirmSelection").addEventListener("click", () => {
    // 체크된 항목 가져오기
    const checkboxes = document.querySelectorAll("#searchResults input[type='checkbox']:checked");
    const selectedIngredients = Array.from(checkboxes).map(checkbox => checkbox.value);

    // 선택된 항목을 부모 모달로 전달
    const ingredientList = document.getElementById("ingredientList");
    ingredientList.innerHTML = ""; // 기존 목록 초기화

    selectedIngredients.forEach(ingredient => {
      const row = `
        <tr>
          <td>${ingredient}</td>
          <td><input type="number" class="form-control" placeholder="수량 입력"></td>
        </tr>
      `;
      ingredientList.insertAdjacentHTML("beforeend", row);
    });

    // 검색 모달 닫기
    const searchModal = bootstrap.Modal.getInstance(document.getElementById("foodSearchModal"));
    searchModal.hide();

    // 부모 모달 다시 열기
    const itemModal = new bootstrap.Modal(document.getElementById("fridgeModal"));
    itemModal.show();
  });
</script>

