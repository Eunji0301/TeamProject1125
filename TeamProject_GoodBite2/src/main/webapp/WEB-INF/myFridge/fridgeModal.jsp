<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="foodSearchModal.jsp" %> <!-- 검색 모달 JSP 포함 -->
<!DOCTYPE html>
<div class="modal fade" id="itemModal" tabindex="-1" aria-labelledby="itemModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="itemModalLabel">식재료 추가</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="row align-items-center mb-3">
          <div class="col-6">
            <input type="text" class="form-control" id="ingredientName" placeholder="식재료 이름">
          </div>
          <div class="col-4">
            <input type="number" class="form-control" id="ingredientQuantity" placeholder="수량">
          </div>
          <div class="col-2">
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#searchModal">검색</button>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" id="saveIngredient">저장</button>
      </div>
    </div>
  </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", () => {
  const searchResults = document.getElementById("searchResults");
  const searchInput = document.getElementById("searchInput");

  // 가상 데이터 (실제로는 API를 통해 가져올 데이터)
  const ingredients = ["대파", "쪽파", "양파", "마늘", "생강"];

  // 검색 기능
  searchInput.addEventListener("input", () => {
    const query = searchInput.value.toLowerCase();
    searchResults.innerHTML = ""; // 기존 결과 초기화

    if (query) {
      const filtered = ingredients.filter(item => item.includes(query));
      filtered.forEach(item => {
        const li = document.createElement("li");
        li.classList.add("list-group-item", "list-group-item-action");
        li.textContent = item;
        li.addEventListener("click", () => selectIngredient(item)); // 클릭 시 선택
        searchResults.appendChild(li);
      });
    }
  });

  // 선택된 데이터를 부모 모달로 전달
  const selectIngredient = (ingredient) => {
    document.getElementById("ingredientName").value = ingredient;

    // 검색 모달 닫기
    const searchModal = bootstrap.Modal.getInstance(document.getElementById("searchModal"));
    searchModal.hide();
  };

  // 저장 버튼 클릭
  document.getElementById("saveIngredient").addEventListener("click", () => {
    const name = document.getElementById("ingredientName").value;
    const quantity = document.getElementById("ingredientQuantity").value;

    if (name && quantity) {
      alert(`식재료 저장: ${name} (${quantity})`);
    } else {
      alert("식재료 이름과 수량을 입력하세요!");
    }
  });
});
</script>



