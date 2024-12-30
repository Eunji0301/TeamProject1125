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
</head>
<body>
<main>
<div>
	<div></div>
	<div></div>
	<div>
		<div>
			<div>
				<img src="">
				<button>내 프로필</button>
			</div>
			<div>
				<div>
					<div><div>*</div><strong>키</strong><span> : 175 CM</span></div>
					<div><div>*</div><strong>체중</strong><span> : 80 KG</span></div>
					<div><div>*</div><strong>체지방량</strong><span> : 14 KG</span></div>
				</div>
				<div>
					<div><div>*</div><strong>현재 식사 상태</strong></div>
					<div>양호해요 이상태로 유지해보아요!</div>
				</div>
			</div>
		</div>
		<div>
			<div>
				<div><span>◀</span><span>2024.12</span><span>▶</span></div>
				<div>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2" viewBox="0 0 16 16">
					  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1z"/>
					  <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5z"/>
					</svg>
				</div>
				<div class="dropdown-menu d-block position-static p-2 mx-0 shadow rounded-3 w-340px" data-bs-theme="light">
				    <div class="d-grid gap-1">
				      <div class="cal">
				        <div class="cal-month">
				          <button class="btn cal-btn" type="button">
				            <svg class="bi" width="16" height="16"><use xlink:href="#arrow-left-short"></use></svg>
				          </button>
				          <strong class="cal-month-name">June</strong>
				          <select class="form-select cal-month-name d-none">
				            <option value="January">January</option>
				            <option value="February">February</option>
				            <option value="March">March</option>
				            <option value="April">April</option>
				            <option value="May">May</option>
				            <option selected="" value="June">June</option>
				            <option value="July">July</option>
				            <option value="August">August</option>
				            <option value="September">September</option>
				            <option value="October">October</option>
				            <option value="November">November</option>
				            <option value="December">December</option>
				          </select>
				          <button class="btn cal-btn" type="button">
				            <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-short"></use></svg>
				          </button>
				        </div>
				        <div class="cal-weekdays text-body-secondary">
				          <div class="cal-weekday">Sun</div>
				          <div class="cal-weekday">Mon</div>
				          <div class="cal-weekday">Tue</div>
				          <div class="cal-weekday">Wed</div>
				          <div class="cal-weekday">Thu</div>
				          <div class="cal-weekday">Fri</div>
				          <div class="cal-weekday">Sat</div>
				        </div>
				        <div class="cal-days">
				          <button class="btn cal-btn" disabled="" type="button">30</button>
				          <button class="btn cal-btn" disabled="" type="button">31</button>
				
				          <button class="btn cal-btn" type="button">1</button>
				          <button class="btn cal-btn" type="button">2</button>
				          <button class="btn cal-btn" type="button">3</button>
				          <button class="btn cal-btn" type="button">4</button>
				          <button class="btn cal-btn" type="button">5</button>
				          <button class="btn cal-btn" type="button">6</button>
				          <button class="btn cal-btn" type="button">7</button>
				
				          <button class="btn cal-btn" type="button">8</button>
				          <button class="btn cal-btn" type="button">9</button>
				          <button class="btn cal-btn" type="button">10</button>
				          <button class="btn cal-btn" type="button">11</button>
				          <button class="btn cal-btn" type="button">12</button>
				          <button class="btn cal-btn" type="button">13</button>
				          <button class="btn cal-btn" type="button">14</button>
				
				          <button class="btn cal-btn" type="button">15</button>
				          <button class="btn cal-btn" type="button">16</button>
				          <button class="btn cal-btn" type="button">17</button>
				          <button class="btn cal-btn" type="button">18</button>
				          <button class="btn cal-btn" type="button">19</button>
				          <button class="btn cal-btn" type="button">20</button>
				          <button class="btn cal-btn" type="button">21</button>
				
				          <button class="btn cal-btn" type="button">22</button>
				          <button class="btn cal-btn" type="button">23</button>
				          <button class="btn cal-btn" type="button">24</button>
				          <button class="btn cal-btn" type="button">25</button>
				          <button class="btn cal-btn" type="button">26</button>
				          <button class="btn cal-btn" type="button">27</button>
				          <button class="btn cal-btn" type="button">28</button>
				
				          <button class="btn cal-btn" type="button">29</button>
				          <button class="btn cal-btn" type="button">30</button>
				          <button class="btn cal-btn" type="button">31</button>
				        </div>
				      </div>
				    </div>
				  </div>
				  </div>
			</div>
			<div>
				<div>
					<div><div>*</div><strong>키</strong><span> : 175 CM</span></div>
					<div><div>*</div><strong>체중</strong><span> : 80 KG</span></div>
					<div><div>*</div><strong>체지방량</strong><span> : 14 KG</span></div>
				</div>
				<div>
					<div><div>*</div><strong>현재 식사 상태</strong></div>
					<div>양호해요 이상태로 유지해보아요!</div>
				</div>
			</div>			
		</div>
		<div>
		
		</div>
		<div>
		
		</div>	
	</div>
</div>
</main>


</body>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>