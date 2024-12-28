<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>GoodBite | 마이챌린지인증 작성</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
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

body {
	font-family: Arial, sans-serif;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	height: auto;
	background-color: white;
	padding-top: 4cm;
}

h2 {
	background-color: #CDC8E7;
	padding: 10px;
	border-radius: 4px;
	font-size: 18px;
	text-align: center;
	width: 800px;
	margin-bottom: 20px;
	color: white;
}

.auth-container {
	width: 100%;
	max-width: 800px;
	background-color: white;
	padding: 20px;
	border-radius: 8px;
	text-align: center;
	border: 5px solid #CDC8E7;
	margin-top: 30px;
}

.form-section {
	margin-bottom: 20px;
	width: 100%;
}

.form-section label {
	font-size: 14px;
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
	text-align: center;
}

.form-section input, .form-section textarea {
	width: 100%;
	padding: 8px;
	font-size: 14px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	margin-bottom: 10px;
	background-color: white;
}

.form-section hr {
	border: 0;
	border-top: 1px solid #CDC8E7;
	margin: 10px 0;
}

.thumbnail-container {
	text-align: center;
	margin-top: 10px;
}

.thumbnail-container img {
	max-width: 100%;
	max-height: 150px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	display: none;
	margin-top: 10px;
}

.form-section-box {
	background-color: #CDC8E7;
	padding: 5px;
	border-radius: 4px;
	margin-bottom: 5px;
	text-align: left;
	color: white;
	font-weight: bold;
}

.title-group {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	width: 100%;
}

.input-group {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	gap: 20px;
}

.input-group textarea {
	width: 70%;
}

.input-group input[type="file"] {
	width: 25%;
}

.user-info {
	padding: 15px;
	margin-top: 30px;
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.user-info img {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	object-fit: cover;
	margin-right: 15px;
	border: 2px solid #CDC8E7;
}

.user-info .user-details {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	justify-content: center;
}

.user-info .user-details span {
	font-size: 25px;
	color: #CDC8E7;
	margin-bottom: 5px;
}

.form-section-box-title {
	background-color: #CDC8E7;
	padding: 5px;
	border-radius: 4px;
	margin-bottom: 5px;
	text-align: left;
	color: white;
	font-weight: bold;
	width: 100%;
	box-sizing: border-box;
}

.form-section-box-title textarea {
	width: 100%;
	padding: 8px;
	font-size: 14px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	margin-top: 10px;
	background-color: white;
	resize: vertical; /* 크기 조절 가능하도록 */
}

/* 댓글 리스트 스타일 */
.comment-list {
	margin-top: 20px;
	padding: 10px;
}

/* 각 댓글 항목 스타일 */
.comment-item {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	background-color: #fff;
	padding: 10px;
	margin-bottom: 10px;
	width: 100%;
}

.comment-contents {
	width: 100%;
	margin-top: 10px;
}

/* 유저 정보 (사진, 닉네임, 작성 날짜) */
.user-info {
	display: flex;
	flex-direction: row; /* 세로로 정렬 */
	align-items: center;
	margin-right: 20px; /* 댓글 내용과 간격을 두기 위한 margin */
}

.comment-contents textarea {
	width: 100%;
	padding: 8px;
	font-size: 14px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	background-color: white;
	resize: vertical;
}

/* 댓글 작성 폼 스타일 */
.auth-container .form-section textarea {
	width: 100%;
	padding: 8px;
	font-size: 14px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	background-color: white;
}

.user-info .user-photo {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	object-fit: cover;
	margin-bottom: 10px; /* 사진과 이름 간격 */
}

.user-info .user-details {
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

.user-info .username {
	font-weight: bold;
	font-size: 14px;
	color: #333;
}

.user-info .comment-date {
	font-size: 12px;
	color: #888;
}

/* 댓글 작성 부분 */
.comment-input-group {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px; /* 댓글 입력란과 버튼 사이 간격 */
}

.comment-input-group textarea {
    width: 85%; /* 입력 칸 넓이 */
    padding: 8px;
    font-size: 14px;
    border: 1px solid #CDC8E7;
    border-radius: 4px;
    resize: none; /* 크기 조절 비활성화 */
}

.comment-input-group .btn-submit {
    padding: 8px 16px;
    font-size: 14px;
    color: white;
    background-color: #CDC8E7;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.comment-input-group .btn-submit:hover {
    background-color: #B0A9D6; /* 버튼 hover 색상 */
}

</style>
</head>
<body>
	<h2>챌린지 상세보기</h2>
	<!-- 드롭다운 메뉴 -->
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">페이지 이동</button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><a class="dropdown-item" href="myChallengeWrite.jsp">수정</a></li>
            <li><a class="dropdown-item" href="deletePage.jsp">삭제</a></li>
        </ul>

    <!-- 부트스트랩 JS 및 Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
	<div class="user-info">
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWa_mc313dCFVWI_au-D-LreEypG2j-ZyxGA&s" alt="유저 사진">
		<div class="user-details">
			<span>김철수</span> <span>2024-12-24 등록</span>
		</div>
	</div>
	<div class="auth-container">
		<form action="challengeCertificationAction.jsp" method="post"
			enctype="multipart/form-data">
			<!-- 챌린지명 -->
			<div class="form-section">
				<div class="form-section-box">
					<label for="challengeName">챌린지명 불러와지는 부분</label>
				</div>
			</div>
			<div class="title-group">
				<div class="form-section">
					<div class="form-section-box-title">
						<label for="title">제목</label>
					</div>
					<textarea id="title" name="title" readonly="readonly"></textarea>
				</div>
			</div>
			<div class="input-group">
				<div class="form-section">
					<div class="form-section-box">
						<label for="photo">인증사진</label>
					</div>
					<textarea id="photo" name="photo" readonly="readonly"></textarea>
				</div>
				<div class="form-section">
					<div class="form-section-box">
						<label for="content">내용</label>
					</div>
					<textarea id="content" name="content" readonly="readonly"></textarea>
				</div>
			</div>
		</form>
	</div>

	<!-- 댓글 리스트 -->
	<div class="auth-container">
		<div class="form-section">
			<div class="form-section-box">
				<label for="comment">댓글 리스트</label>
			</div>
		</div>
		<div class="comment-list">
			<div class="comment-item">
				<!-- 유저 정보 (사진, 닉네임, 날짜) -->
				<div class="user-info">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkzda-rJ_6HJq6sNvOYyVjOh48GjQFHJ83Wg&s" alt="유저 사진" class="user-photo">
					<div class="user-details">
                    	<span class="username">김철수</span>
                    	<span class="comment-date">2024-12-24</span>
                	</div>
				</div>
				<div class="comment-contents">
					<textarea placeholder="댓글 리스트입니다." readonly="readonly"></textarea>
				</div>
			</div>
		</div>
	</div>

	<!-- 댓글 작성 폼 -->
	<div class="auth-container">
        <div class="comment-input-group">
            <textarea id="comment" name="comment" placeholder="댓글을 입력해주세요."></textarea>
            <button type="submit" class="btn-submit">등록</button>
		</div>
	</div>
</body>
</html>
