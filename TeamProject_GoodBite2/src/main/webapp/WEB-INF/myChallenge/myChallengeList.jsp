<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이챌린지 리스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 20px 0;
	padding-top: 6cm;
}

.container {
    width: 800px;
    margin: 80px auto;
    padding: 20px;
    background-color: #ffffff;
    border: 3px solid #CDC8E7;
    border-radius: 8px;
}

/* 챌린지 제목 */
.challenge-title {
	text-align: center;
	background-color: #CDC8E7;
	color: #8475BC;
	padding: 20px;
	border-radius: 10px;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 40px;
}

/* 챌린지 배너 */
.challenge-banner img {
	width: 100%;
	height: auto;
	object-fit: cover;
	border-radius: 8px;
}

.challenge-status p {
	margin: 5px 0;
	font-size: 16px;
	color: #8475BC !important;
	text-align: center;
}

/* 챌린지 진행 상태 */
.challenge-status {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
	margin-top: 20px;
}

.smile img {
	width: 40px;
	height: 40px;
	object-fit: contain;
	vertical-align: middle;
	margin-right: 5px;
}

/* 챌린지 목록 */
.challenge-row {
	display: flex;
	flex-wrap: wrap;
	gap: 30px;
	margin-top: 40px;
}

/* 챌린지 섹션 */
.challenge-section {
	flex: 1 1 calc(50% - 15px);
	min-width: 280px;
}

/* 슬라이드 이미지 */
.carousel img {
	height: 300px;
	object-fit: cover;
	border-radius: 8px;
	border: 2px solid #CDC8E7;
}

/* 챌린지 섹션 제목 */
.challenge-section h3 {
	text-align: center;
	background-color: #CDC8E7;
	color: #8475BC;
	padding: 16px 0;
	border-radius: 10px;
	font-size: 20px;
	margin-bottom: 20px;
}

/* 슬라이드 내 텍스트 */
.carousel-caption h5 {
	font-size: 20px;
	color: #8475BC;
	font-weight: bold;
}

.carousel-caption p {
	font-size: 16px;
	color: #666;
}

/* Carousel controls */
.carousel-control-prev, .carousel-control-next {
	background-color: rgba(0, 0, 0, 0.5);
	border-radius: 50%;
	width: 40px;
	height: 40px;
}

/* Challenge status container */
.challenge-status {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	border: 1px solid #CDC8E7;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/headerAfter.jsp" />
		<div class="container">
			<h2 class="challenge-title">MY CHALLENGE</h2>

			<div class="challenge-banner">
				<img src="" alt="챌린지 배너 이미지">
				<div class="challenge-status">
					<p>1일차 챌린지 진행 중</p>
					<p>20명이 챌린지를 진행중입니다.</p>
					<p>인증 횟수:
						<%
					int count = 5; // 예시로 5번 반복
					for (int i = 0; i < count; i++) {
					%>
						<span class="smile"> <img src="https://cdn-icons-png.flaticon.com/128/10335/10335885.png" alt="smile">
						</span>
						<%
						}
						%>
					</p>
				</div>
			</div>

			<div class="challenge-row">
				<div class="challenge-section">
					<h3>완료된 챌린지</h3>
					<div id="completedChallenges" class="carousel slide"
						data-bs-ride="carousel">
						<!-- Indicators -->
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#completedChallenges"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Completed 1"></button>
							<button type="button" data-bs-target="#completedChallenges"
								data-bs-slide-to="1" aria-label="Completed 2"></button>
							<button type="button" data-bs-target="#completedChallenges"
								data-bs-slide-to="2" aria-label="Completed 3"></button>
						</div>

						<!-- Slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지1</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지2</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>완료챌린지3</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
						</div>

						<!-- Navigation controls -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#completedChallenges" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">이전</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#completedChallenges" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">다음</span>
						</button>
					</div>
				</div>

				<div class="challenge-section">
					<h3>미완료된 챌린지</h3>
					<div id="incompleteChallenges" class="carousel slide"
						data-bs-ride="carousel">
						<!-- Indicators -->
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#incompleteChallenges"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Incomplete 1"></button>
							<button type="button" data-bs-target="#incompleteChallenges"
								data-bs-slide-to="1" aria-label="Incomplete 2"></button>
							<button type="button" data-bs-target="#incompleteChallenges"
								data-bs-slide-to="2" aria-label="Incomplete 3"></button>
						</div>

						<!-- Slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지1</h5>
									<p>아주 잘하고 있어요 !!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지2</h5>
									<p>끝까지 화이팅 !!!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>미완료챌린지3</h5>
									<p>끝까지 화이팅 !!!!!</p>
								</div>
							</div>
						</div>

						<!-- Navigation controls -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#incompleteChallenges" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">이전</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#incompleteChallenges" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">다음</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	<jsp:include page="/WEB-INF/common/footer.jsp" />
</body>
</html>
