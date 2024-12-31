<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoodBite Change FoodTracker List</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap-5.3.3-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/foodTracker.css">
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
<main id = "foodTrackerList">
<div class = "inner pb-5">
	<div class="d-flex justify-content-center"><div class = "frameCircle"></div></div>
	<div class="d-flex justify-content-center"><div class = "frameSquare"></div></div>
	<div class="frameMain p-5">
		<div class="title py-3">
			<div class="d-flex justify-content-between"><span>음식 영양소 사전</span><span>뒤로▶</span></div>
			<hr>
		</div>
		<div class="mealSearch d-flex align-items-center">
				<input type="text" placeholder="먹은 음식을 입력하세요">
				<button class="mealSearchButton">검색</button>
		</div>
		<div class="foodListTable pt-3">
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
                    <th>음식명</th>
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
                    <td class = "onPadding"><button>선택</button></td>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>현미잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>선택</button></td>
                </tr>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>발아현미잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>선택</button></td>
                </tr>
                                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>귀리잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>선택</button></td>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>검은콩잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>선택</button></td>
                </tr>
                <tr>
                    <td class = "text-center align-middle"><div class="tableCircle"></div></td>
                    <td>완두콩잡곡밥</td>
                    <td>1</td>
                    <td>100kg</td>
                    <td>100kcal</td>
                    <td class = "onPadding"><button>선택</button></td>
                </tr>
            </tbody>
        </table>
		</div>
		<div class="text-center">
			<button class="foodListMoreButton">더보기</button>
		</div>
	</div>
</div>
</main>
<%@ include file="../common/footer.jsp"%>
</body>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.js"></script>
<script type="text/javascript" src="../resource/css/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
</html>