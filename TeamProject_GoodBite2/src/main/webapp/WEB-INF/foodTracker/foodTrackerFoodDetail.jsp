<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Change FoodTracker Detail</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/foodTracker.css">
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
<main id = "foodTrackerDetail">
<div class = "inner pb-5">
	<div class="d-flex justify-content-center"><div class = "frameCircle"></div></div>
	<div class="d-flex justify-content-center"><div class = "frameSquare"></div></div>
	<div class="frameMain p-5">
		<div class="title py-3">
			<div class="d-flex justify-content-between"><span>잡곡밥</span><span>뒤로▶</span></div>
			<hr>
		</div>
		<div class="foodQuantityInfo d-flex align-items-center p-4 mb-4 justify-content-around">
			<div class="text-center">
				<div class="mb-2">수량(회분)</div>
				<select id="quantitySelect" name="quantity" onchange="checkCustomOption(this)" >
					<option value = "1/2"  > 1/2 </option>
					<option value = "1/3"  > 1/3 </option>
					<option value = "2/3"  > 2/3 </option>
					<option value = "1/4" > 1/4 </option>
					<option value = "2/4" > 2/4 </option>
					<option value = "3/4" > 3/4 </option>
					<option value = "1" > 1 </option>
					<option value = "2" > 2 </option>
					<option value = "3" > 3 </option>
					<option value = "4" > 4 </option>
					<option value = "5" > 5 </option>
					<option value = "6" > 6 </option>
					<option value = "7" > 7 </option>
					<option value = "8" > 8 </option>
					<option value = "9" > 9 </option>
					<option value = "10" > 10 </option>
				</select>
			</div>
			<div class="text-center">
				<div class="mb-2">분량(G)</div>
				<div class="num">145</div>
			</div>
			<div class="text-center">
				<div class="mb-2">칼로리(kcal)</div>
				<div class="num">420</div>
			</div>
		</div>
		<div class=" foodNutritionPercent p-4  my-4 px-5">
			<div class="d-flex align-items-center">
				<div class="carbCircle"></div>
				<strong>탄수화물 (g)</strong>
				<span> : 61.0(19%)</span>
			    <div class="graph-container">
			        <div class="carbGraphBar" style="--percent: 19%; "></div>
			    </div>
			</div>
			<div class="d-flex align-items-center ">
				<div class="proteinCircle"></div>
				<strong>단백질 (g)</strong>
				<span> : 8.0(15%)</span>
			    <div class="graph-container">
			        <div class="proteinGraphBar" style="--percent: 15%; "></div>
			    </div>
			</div>
			<div class="d-flex align-items-center">
				<div class="fatCircle"></div>
				<strong>지방 (g)</strong>
				<span> : 16.0(30%) </span>
			    <div class="graph-container">
			        <div class="fatGraphBar" style="--percent: 30%; "></div>
			    </div>
			</div>
			<div class="d-flex align-items-center ">
				<div class="sugarCircle"></div>
				<strong>당류 (g)</strong>
				<span> : 100.0(100%) </span>
			    <div class="graph-container">
			        <div class="sugarGraphBar" style="--percent: 100%; "></div>
			    </div>
			</div>
			<div class="d-flex align-items-center">
				<div class="sodiumCircle"></div>
				<strong>나트륨 (mg)</strong>
				<span> : 200(10%) </span>
			    <div class="graph-container">
			        <div class="sodiumGraphBar" style="--percent: 10%; "></div>
			    </div>
			</div>
		</div>
		<div class="text-center">
			<button class="foodSaveButton">저장하기</button>
		</div>
	</div>
</div>
</main>
<%@ include file="../common/footer.jsp"%>
</body>

<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>