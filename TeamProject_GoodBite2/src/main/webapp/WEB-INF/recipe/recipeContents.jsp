<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>레시피 상세보기</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
}

/* 공통 CSS */
.inner {
	position: static;
	width: auto;
	max-width: 1000px;
	padding: 0 10px;
	margin: 0 auto;
}

.Inner {
	width: 1180px;
	margin: 0 auto;
	position: relative;
}

@media ( max-width : 1299px) {
	.inner {
		padding-left: 16px;
		padding-right: 16px;
	}
}

header {
	background-color: #333;
	color: #fff;
	padding: 40px 20px;
	text-align: center;
	font-size: 24px;
}

/* 레시피 상세보기 */
.container {
	width: 800px;
	margin: 80px auto;
	padding: 20px;
	background-color: #ffffff;
	border: 3px solid #CDC8E7;
	border-radius: 8px;
}

.header {
	font-size: 24px;
	font-weight: bold;
	color: #8475BC;
	background-color: #CDC8E7;
	padding: 15px;
	border-radius: 8px;
	margin-bottom: 20px;
	border: 2px solid #CDC8E7;
	box-sizing: border-box;
	text-align: center;
}

.recipe-details {
	text-align: center;
}

.recipe-details img {
	width: 100%;
	height: auto;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
	margin-bottom: 20px;
}

.recipe-details .section {
	margin-bottom: 20px;
	text-align: left;
	background-color: #F2F1F7;
	padding: 10px;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
}

.recipe-details .section h3 {
	font-size: 18px;
	font-weight: bold;
	color: #8475BC;
	margin-bottom: 10px;
}

.recipe-details .section p {
	font-size: 16px;
	line-height: 1.5;
	margin: 0;
}

.steps {
	margin-top: 20px;
}

.step {
	display: flex;
	align-items: flex-start;
	margin-bottom: 20px;
}

.step img {
	width: 200px;
	height: auto;
	border-radius: 8px;
	border: 1px solid #CDC8E7;
	margin-right: 20px;
}

.step p {
	font-size: 16px;
	margin: 0;
	text-align: left;
}
</style>
</head>
<body>
	<header>헤더</header>
	
	<div class="container">
		<div class="header">라따뚜이</div>
		<div class="recipe-details">
			<img src="data:image/jpeg;base64,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" alt="라따뚜이 메인 이미지">
			<div class="section">
				<h3>[재료]</h3>
				<p>호박 2개, 가지 2개, 토마토 4개, 스파게티소스 1/2병, 녹말가루 1/2큰술, 올리브유 2큰술, 바질 조금, 양파 1개</p>
			</div>
			<div class="section">
				<h3>[조리법]</h3>
				<p>찌기</p>
			</div>
			<div class="steps">
				<div class="step">
					<img src="https://static.wtable.co.kr/image/production/service/recipe/645/04b416b5-37e0-4366-997c-7a16be9ea8c7.jpg" alt="단계 1 이미지">
					<p>1. 야채들은 모두 비슷한 두께로 잘라서 준비해주세요.</p>
				</div>
				<div class="step">
					<img src="https://static.wtable.co.kr/image/production/service/recipe/645/557eb116-813b-4889-ab15-3fd1962445db.jpg?size=800x800" alt="단계 2 이미지">
					<p>2. 올리브유를 두르고 다진양파와 다진마늘 1큰술을 넣어주세요.</p>
				</div>
				<div class="step">
					<img src="https://static.wtable.co.kr/image/production/service/recipe/645/24fcccb1-6e35-4e9d-be85-349340e4ecc0.jpg?size=800x800" alt="단계 3 이미지">
					<p>3. 양파를 중불에서 볶아주시고 양파가 익으면 후추를 조금 넣어주세요.</p>
				</div>
				<div class="step">
					<img src="https://static.wtable.co.kr/image/production/service/recipe/645/0344825f-b4d1-46f7-940f-9d42d9565433.jpg?size=800x800" alt="단계 4 이미지">
					<p>4. 오븐에서 노릇하게 익힌다면 꺼내고 취향대로 치즈가루와 파슬리가루를 뿌려주세요.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>