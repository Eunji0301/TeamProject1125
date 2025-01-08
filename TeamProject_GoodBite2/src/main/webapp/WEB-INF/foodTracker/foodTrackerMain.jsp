<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Change FoodTracker</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/foodTracker.css">
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth'
    });
    calendar.render();
  });
</script>
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
<main id = "foodTrackerMain">
<div class = "inner pb-5">
	<div class="d-flex justify-content-center"><div class = "frameCircle"></div></div>
	<div class="d-flex justify-content-center"><div class = "frameSquare"></div></div>
	<div class="frameMain p-5">
		<!-- 유저의 현재 몸상태와 건강상태를 출력할 수 있음 -->
		<div class="top d-flex align-items-center p-3">
			<div class="profile mx-4 text-center">
				<img src="../resources/img/common/themnailSample2.png" class="  d-block">
				<button class="profileButton d-block mt-1">내 프로필</button>
			</div>
			<div class="profileAll mt-2">
				<div class="d-flex align-items-center flex-wrap  basicProfile">
					<div class="d-flex align-items-center"><div class="profileCircle"></div><strong>키</strong><span> : 175 CM</span></div>
					<div class="d-flex align-items-center"><div class="profileCircle"></div><strong>체중</strong><span> : 80 KG</span></div>
					<div class="d-flex align-items-center"><div class="profileCircle"></div><strong>체지방량</strong><span> : 14 KG</span></div>
				</div>
				<div class="d-flex align-items-center mt-2 ">
					<div class="w-50" >
						<div class="d-flex align-items-center"><div class="profileCircle"></div><strong>의심질환</strong></div>
						<div class="healthProfile d-flex align-items-center justify-content-center">고혈압</div>
					</div>
					<div class="w-50">
						<div class="d-flex align-items-center"><div class="profileCircle"></div><strong>현재 식사 상태</strong></div>
						<div class="healthProfile d-flex align-items-center justify-content-center">양호</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 현재 날짜 다른 날짜를 선택할 수 있으며 기록하면 기록했다는 동그라미 표시가 되고 다른 날을 클릭하면 그날의 데이터가 뜸 -->
		<div class="calendar mt-3 p-3 d-flex justify-content-center">
			<div id='calendar' class="" style="width: 600px;height: 600px;"></div>
		</div>
		
		<!-- 현재 총 먹은 음식 열량의 총집계 -->
		<div class="graph mt-3 p-3">
			<div class="totalResult d-flex align-items-center flex-wrap justify-content-center ">
				<div class="result">
					<div class="carbCircle"></div>
					<strong>탄수화물</strong>
					<span>: 위험</span>
				</div>
				<div class="result">
					<div class="proteinCircle"></div>
					<strong>단백질</strong>
					<span>: 양호</span>
				</div>
				<div class="result">
					<div class="fatCircle"></div>
					<strong>지방</strong>
					<span>: 양호</span>
				</div>
				<div class="result">
					<div class="sugarCircle"></div>
					<strong>당류</strong>
					<span>: 양호</span>
				</div>
				<div class="result">
					<div class="sodiumCircle"></div>
					<strong>나트륨</strong>
					<span>: 양호</span>
				</div>
				<div class="result">
					<div class="calorieCircle"></div>
					<strong>총열량</strong>
					<span>: 양호</span>
				</div>
			</div>
			<div class="totalResultBottom d-flex flex-wrap align-items-center mt-3 mx-5 ">
				<div class="totalResultGraphBar d-flex align-items-center  w-70 justify-content-around ">
					<div >
					    <div class="graph-container">
					        <div class="carbGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="carbCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="proteinGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="fatCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="sugarGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="sugarCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="sodiumGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="sodiumCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="calorieGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="calorieCircle"></div>
					</div>
				</div>
				<div class="totalResultContent flex-wrap w-30">
					<div>
						<div class="d-flex align-items-baseline">
							<div class="carbCircle"></div>
							<div>
								<strong>탄수화물</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
						<div class="d-flex align-items-baseline">
							<div class="proteinCircle"></div>
							<div>
								<strong>단백질</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
						<div class="d-flex align-items-baseline">
							<div class="fatCircle"></div>
							<div>
								<strong>지방</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
					</div>
					<div>
						<div class="d-flex align-items-baseline">
							<div class="sugarCircle"></div>
							<div>
								<strong>당류</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
						<div class="d-flex align-items-baseline">
							<div class="sodiumCircle"></div>
							<div>
								<strong>나트륨</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
						<div class="d-flex align-items-baseline">
							<div class=" calorieCircle"></div>
							<div>
								<strong>총열량</strong>
								<div>권장량 : <span>371</span>G</div>
								<div>총 섭취량 : <span>76.8</span>G</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
		
		<!-- 식사 버튼을 이용하여 각 식사때 먹은 음식들에 대해서 기록할 수 있음 -->
		<div class="mealLogButtonGroup mt-3  p-3 ">
			<div class="text-center my-1"><div class="d-inline-block title w-100">식사기록</div></div>
			<div class="d-flex flex-wrap align-items-center justify-content-around mt-3 w-100">
			    <div class="meal-item m-2">
			        <button class="btn btn-primary">+</button>
			        <div>아침</div>
			    </div>
			    <div class="meal-item m-2">
			        <button class="btn btn-primary">+</button>
			        <div>점심</div>
			    </div>
			    <div class="meal-item m-2">
			        <button class="btn btn-primary">+</button>
			        <div>저녁</div>
			    </div>
			    <div class="meal-item m-2">
			        <button class="btn btn-primary">+</button>
			        <div>간식</div>
			    </div>
			    <div class="meal-item m-2">
			        <button class="btn btn-primary">+</button>
			        <div>야식</div>
			    </div>
			</div>
			</div>	
		</div>
	</div>
</main>
<%@ include file="../common/footer.jsp"%>

</body>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>