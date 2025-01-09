<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Change FoodTracker Log</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/foodTracker.css">
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
<main id = "foodTrackerMealLog">
<div class = "inner pb-5">
	<div class="d-flex justify-content-center"><div class = "frameCircle"></div></div>
	<div class="d-flex justify-content-center"><div class = "frameSquare"></div></div>
	<div class="frameMain p-5">
		<div class="mealTitle py-3">
			<div class="d-flex justify-content-between"><span>아침식사</span><span>뒤로▶</span></div>
			<hr>
		</div>
		<div class="mealSearch d-flex align-items-center">
				<input type="text" placeholder="먹은 음식을 입력하세요">
				<button class="mealSearchButton">검색</button>
		</div>
		<div class="mealTable py-3">
        <table>
            <colgroup>
                <col style="width: 5%; height: 30px;"> <!-- 첫 번째 열: "*" -->
                <col style="width: 25%; height: 30px;"> <!-- 두 번째 열: 음식 이름 -->
                <col style="width: 15%; height: 30px;"> <!-- 세 번째 열: 수량 -->
                <col style="width: 15%; height: 30px;"> <!-- 네 번째 열: 분량 -->
                <col style="width: 15%; height: 30px;"> <!-- 다섯 번째 열: 칼로리 -->
                <col style="width: 5%; height: 30px;"> <!-- 여섯 번째 열: 버튼 -->
            </colgroup>
            <thead>
                <tr>
                    <th></th>
                    <th>먹은음식</th>
                    <th>수량</th>
                    <th>분량</th>
                    <th>칼로리</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                </tr>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                </tr>
                                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                </tr>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>삭제</button></td>
                </tr>
            </tbody>
        </table>
		</div>
		<div class="text-end">
			<div class="totalKcal">총칼로리 : 600kcal</div>
		</div>
		<div class="text-center mt-4">
			<button class="mealInfoSaveButton">저장하기</button>
		</div>
	</div>
</div>
</main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resources/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>