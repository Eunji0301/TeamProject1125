<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Dietary Questionnaire(DQ)</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/mealReportSY.css">
</head>
<body>
	<!-- Header include -->
	<div class="header-wrapper">
		<%@ include file="../common/headerBefore.jsp"%>
	</div>
	<main id="DQ">
		<div class="container">
			<div class="inner my-3">
				<form class="DQBody p-5  my-4">
					<div class="DQTop text-center">
						<h1 class="py-3 fw-bold">식사 문진표</h1>
						<div class="p-2 my-4 text-start">
							아래 표시된 음식들을 일주일에 얼마나 섭취를 하는지 체크를 해주세요. <br>
							<br> ※ 섭취 기준은 일주일(7일) 기준입니다.
						</div>
					</div>
					<div class="DQBottom">
						<hr>
						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/bread.png"> <strong>빵</strong>
								</div>
								<select name="">
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/rice.png"> <strong>밥</strong>
								</div>
								<select name="rice">
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/noodles.png"> <strong>면</strong>
								</div>
								<select name="noodles">
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>

						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/stew.png"> <strong>찌개</strong>
								</div>
								<select name="stew">
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/soup.png"> <strong>국</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/clearSoup.png"> <strong>탕</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>

						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/seafood.png"> <strong>해산물</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/tofu.png"> <strong>두부</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/meat.png"> <strong>고기</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>

						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/dairyProducts.png"> <strong>유제품</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/egg.png"> <strong>달걀</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/vegetables.png"> <strong>채소</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>

						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/dessert.png"> <strong>디저트</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/nuts.png"> <strong>견과류</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/fruit.png"> <strong>과일</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>

						<div class="d-flex align-items-center text-center pe-2">
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/friedFoods.png"> <strong>전/튀김</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/dishOverRice.png"> <strong>볶음/덮밥</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
							<div class="d-flex align-items-center">
								<div class="mx-3">
									<img src="../resources/img/dQimg/seaweed.png"> <strong>해조류</strong>
								</div>
								<select>
									<option value="0회" selected>0회</option>
									<option value="일주일에 1-2번">일주일에 1-2번</option>
									<option value="일주일에 3-4번">일주일에 3-4번</option>
									<option value="일주일에 5-6번">일주일에 5-6번</option>
								</select>
							</div>
						</div>
						<hr>
					</div>
					<div class="text-center mt-5">
						<button type="button" class="DQButton">진단결과 확인하기</button>
					</div>
				</form>
			</div>
		</div>
	</main>
	<!-- Footer include -->
	<div class="footer-wrapper">
		<%@ include file="../common/footer.jsp"%>
	</div>
	<script type="text/javascript"
		src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</body>
</html>