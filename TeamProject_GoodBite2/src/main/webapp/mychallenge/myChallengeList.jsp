<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>GoodBite | 마이챌린지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	background-color: #f8f9fa;
	margin: 0;
	padding: 20px 0;
	padding-top: 6cm;
}

.main-section {
	width: 90%;
	max-width: 1180px;
	margin: auto;
}

.challenge-title, .challenge-section h3 {
	text-align: center;
	background-color: #CDC8E7;
	color: #8475BC;
	padding: 16px 0;
	border-radius: 10px;
	font-size: 20px;
	margin-bottom: 20px;
}

.challenge-banner img {
	width: 100%;
	height: auto;
	object-fit: cover;
}

.challenge-status p {
	margin: 5px 0;
	font-size: 16px;
	color: #8475BC !important;
	text-align: center;
}

.challenge-row {
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	margin-top: 30px;
}

.challenge-section {
	flex: 1 1 calc(50% - 10px);
	min-width: 280px;
}

.carousel img {
	height: 300px;
	object-fit: cover;
}

.smile img {
	width: 50px;
	height: 50px;
	object-fit: contain;
	vertical-align: middle;
}
</style>
</head>
<body>
	<section class="main-section">
		<div class="container">
			<h2 class="challenge-title">MY CHALLENGE</h2>

			<div class="challenge-banner">
				<img src="https://via.placeholder.com/1180x300" alt="챌린지 배너 이미지">
				<div class="challenge-status">
					<p>1일차 챌린지 진행 중</p>
					<p>20명이 챌린지를 진행중입니다.</p>
					<p>
						인증 횟수:
						<%
					int count = 5; // 예시로 5번 반복
					for (int i = 0; i < count; i++) {
					%>
						<span class="smile"> <img
							src="https://cdn-icons-png.flaticon.com/128/10335/10335885.png"
							alt="smile">
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
									<h5>1번챌린지</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>2번챌린지</h5>
									<p>챌린지를 성공적으로 완료했습니다!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>3번챌린지</h5>
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
									<h5>4번챌린지</h5>
									<p>아주 잘하고 있어요 !!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>5번챌린지</h5>
									<p>끝까지 화이팅 !!!!!</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="https://via.placeholder.com/1180x300"
									class="d-block w-100" alt="미완료 챌린지">
								<div class="carousel-caption d-none d-md-block">
									<h5>6번챌린지</h5>
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
	</section>
</body>
</html>
