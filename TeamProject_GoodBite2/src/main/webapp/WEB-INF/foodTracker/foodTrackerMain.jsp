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

<main id = "foodTrackerMealLog">
<div class = "inner pb-5">
	<div class="d-flex justify-content-center"><div class = "frameCircle"></div></div>
	<div class="d-flex justify-content-center"><div class = "frameSquare"></div></div>
	<div class="frameMain p-5">
		<div class="top d-flex align-items-center">
			<div class="profile">
				<img src="">
				<button>내 프로필</button>
			</div>
			<div>
				<div class="d-flex align-items-center">
					<div class="d-flex align-items-center"><div>*</div><strong>키</strong><span> : 175 CM</span></div>
					<div class="d-flex align-items-center"><div>*</div><strong>체중</strong><span> : 80 KG</span></div>
					<div class="d-flex align-items-center"><div>*</div><strong>체지방량</strong><span> : 14 KG</span></div>
				</div>
				<div class="d-flex align-items-center">
				<div>
					<div class="d-flex align-items-center"><div>*</div><strong>의심질환</strong></div>
					<div>고혈압</div>
				</div>
				<div>
					<div class="d-flex align-items-center"><div>*</div><strong>현재 식사 상태</strong></div>
					<div>양호해요 이상태로 유지해보아요!</div>
				</div>
				</div>
			</div>
		</div>
		<div class="calendar">
			<div id='calendar' class="" style="width: 600px;height: 600px;"></div>
		</div>
		<div class="graph">
			<div class="d-flex align-items-center">
				<div class="proteinCircle"></div>
				<strong>탄수화물</strong>
				<span>: 위험</span>
				<div class="proteinCircle"></div>
				<strong>단백질</strong>
				<span>: 양호</span>
				<div class="proteinCircle"></div>
				<strong>지방</strong>
				<span>: 양호</span>
				<div class="proteinCircle"></div>
				<strong>당류</strong>
				<span>: 양호</span>
				<div class="proteinCircle"></div>
				<strong>나트륨</strong>
				<span>: 양호</span>
				<div class="proteinCircle"></div>
				<strong>총열량</strong>
				<span>: 양호</span>
			</div>
			<div>
				<div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					<div >
					    <div class="graph-container">
					        <div class="fatGraphBar" style="--percent: 30%; "></div>
					    </div>
					    <div class="proteinCircle"></div>
					</div>
					</div>
				</div>
				<div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>탄수화물</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>단백질</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>지방</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>당류</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>나트륨</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
					<div>
						<div>
							<div class="proteinCircle"></div>
							<strong>총열량</strong>
						</div>
						<div>권장량 : <span>371</span>G</div>
						<div>총 섭취량 : <span>76.8</span>G</div>
					</div>
				</div>
			
		</div>
		<div class="mealLogButtonGroup">
			<div><div>식사기록</div></div>
			<div>
				<div>
					<div>+</div>
					<div>아침</div>
				</div>
				<div>
					<div>+</div>
					<div>점심</div>
				</div>
				<div>
					<div>+</div>
					<div>저녁</div>
				</div>
				<div>
					<div>+</div>
					<div>간식</div>
				</div>
				<div>
					<div>+</div>
					<div>야 1식</div>
				</div>
			</div>
		</div>	
		</div>
	</div>
</main>


</body>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>