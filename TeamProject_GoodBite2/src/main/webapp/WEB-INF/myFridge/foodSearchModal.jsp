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

	  // 재료 선택
	  const selectIngredient = (ingredient) => {
	    // 원래 모달의 입력 필드에 선택한 재료를 반영
	    document.getElementById("ingredientName").value = ingredient;

	    // 검색 모달 닫기
	    const searchModal = bootstrap.Modal.getInstance(document.getElementById("searchModal"));
	    searchModal.hide();

	    // 원래 모달 열기
	    const itemModal = new bootstrap.Modal(document.getElementById("itemModal"));
	    itemModal.show();
	  };
	});

</script>

