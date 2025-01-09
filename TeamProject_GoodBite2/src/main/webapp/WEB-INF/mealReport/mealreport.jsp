<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GOODBITE - 건강 진단</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../resources/css/modalcss/mealReport.css">
<style>

</style>
</head>
<body>
	<%@ include file="../common/headerBefore.jsp"%>
	<main>
	<!-- 메인 컨테이너 -->
	<div class="diagnosis-container ">
		<div class="text-center">
			<!-- 진단 시작 버튼 -->
			<button id="startButton" class="btn btn-custom">진단 시작 버튼</button>
		</div>

		<!-- 숨겨진 폼 섹션 -->
		<div id="formSection" class="form-section">
			<div class="mb-3">
				<label for="height" class="form-label">키 (cm)</label> <input
					type="number" class="form-control" id="height"
					placeholder="키를 입력하세요">
			</div>
			<div class="mb-3">
				<label for="weight" class="form-label">몸무게 (kg)</label> <input
					type="number" class="form-control" id="weight"
					placeholder="몸무게를 입력하세요">
			</div>

			<!-- 의심질환 선택 -->
			<div class="mb-3">
				<label for="opinion" class="form-label">의심되는 질환을 선택하세요 (선택
					사항)</label> <select id="opinion" class="form-select">
					<option value="" selected>선택하세요</option>
					<option value="고혈압">고혈압</option>
					<option value="당뇨병">당뇨병</option>
					<option value="고지혈증">고지혈증</option>
					<option value="비만">비만</option>
					<option value="갑상선질환">갑상선 질환</option>
					<option value="심장질환">심장 질환</option>
					<option value="호흡기질환">호흡기 질환</option>
					<option value="소화기질환">소화기 질환</option>
					<option value="관절염">관절염</option>
				</select>
			</div>

			<!-- 활동량 선택 -->
			<div class="mb-3">
				<h3 class="mb-3">평소 활동량을 알려주세요</h3>
				<div class="d-grid gap-2">
					<button class="btn btn-custom">하루의 대부분을 앉아서 생활해요</button>
					<button class="btn btn-custom">산책, 집안일 등 가벼운 활동을 해요</button>
					<button class="btn btn-custom">자전거나 조깅 등 약간 가벼운 운동을 해요</button>
					<button class="btn btn-custom">등산이나 축구 같은 격렬한 운동을 해요</button>
				</div>
			</div>

			<!-- 다음 버튼 -->
			<div class="text-center">
				<button class="btn btn-custom">다음</button>
			</div>
		</div>
	</div>
</main>


	<!-- 푸터 공간 -->
	<%@ include file="../common/footer.jsp"%>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
  // 진단 시작 버튼 클릭 시 폼 표시
  document.getElementById("startButton").addEventListener("click", function () {
    const formSection = document.getElementById("formSection");
    formSection.style.display = "block";
    this.style.display = "none"; // 진단 시작 버튼 숨기기
  });
</script>

</body>
</html>










