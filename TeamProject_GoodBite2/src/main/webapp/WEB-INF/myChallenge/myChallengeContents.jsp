<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이챌린지 상세보기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
}

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

@media (max-width: 1299px) {
    .inner {
        padding-left: 16px;
        padding-right: 16px;
    }
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
    position: relative;
    z-index: 2;
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

.container {
    width: 800px;
    margin: 80px auto;
    padding: 20px;
    background-color: #ffffff;
    border: 3px solid #CDC8E7;
    border-radius: 8px;
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
    box-sizing: border-box;
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

.input-group .form-section {
    width: 48%; /* 인증사진과 내용을 50%씩 나누기 */
}

.input-group textarea, .input-group input[type="file"] {
    width: 100%;
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

.user-info .user-details p {
    font-size: 25px;
    color: #8475BC;
    margin-bottom: 5px;
}

.form-section label {
    font-size: 16px;
    font-weight: bold;
    display: block;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    color: #8475BC;
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
    margin-bottom: 10px;
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

.comment-input-group {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px;
}

.comment-input-group textarea {
    width: 85%;
    padding: 8px;
    font-size: 14px;
    border: 2px solid #CDC8E7;
    border-radius: 4px;
    resize: none;
}

.comment-input-group #btn-submit {
    padding: 8px 16px;
    font-size: 16px;
    color: #8475BC;
    background-color: #CDC8E7;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.comment-input-group .btn-submit:hover {
    background-color: #8475BC;
    color: white;
}

/* 인증사진과 내용의 제목 높이 맞추기 */
.input-group .form-section input, .input-group .form-section textarea {
    height: 38px; /* 제목 높이를 맞추기 위해 입력 필드 높이를 조정 */
}

.input-group .form-section textarea {
    height: 250px; /* 내용의 높이를 늘리기 위해 textarea 높이 추가 */
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/common/headerAfter.jsp" />
    <!-- 부트스트랩 JS 및 Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
	<div class="container">
	<!-- 드롭다운 메뉴 -->
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">페이지 이동</button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><a class="dropdown-item" href="myChallengeCertificationWrite.jsp">수정</a></li>
            <li><a class="dropdown-item" href="deletePage.jsp">삭제</a></li>
        </ul>        
        <div class="header">챌린지명</div>
        <div class="user-info">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWa_mc313dCFVWI_au-D-LreEypG2j-ZyxGA&s" alt="유저 사진">
            <div class="user-details">
                <p>김철수</p>
                <p>2024-12-24 등록</p>
            </div>
        </div>

        <form action="challengeCertificationAction.jsp" method="post" enctype="multipart/form-data">
            <!-- 제목 -->
            <div class="form-section">
                <div class="form-section-box">
                    <label for="title">제목</label>
                </div>
                <input type="text" id="title" name="title" placeholder="제목을 입력하세요." readonly="readonly">
            </div>

            <!-- 인증사진과 내용 한 줄에 배치 -->
            <div class="form-section">
                <div class="input-group">
                    <!-- 인증사진 -->
                    <div class="form-section">
                        <div class="form-section-box">
                            <label for="photo">인증사진</label>
                        </div>
                        <textarea id="content" name="content" rows="4" placeholder="인증 사진" readonly="readonly"></textarea>
                    </div>

                    <!-- 내용 -->
                    <div class="form-section">
                        <div class="form-section-box">
                            <label for="content">내용</label>
                        </div>
                        <textarea id="content" name="content" rows="4" placeholder="내용"></textarea>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- 댓글 리스트 -->
    <div class="container">
        <div class="form-section">
            <div class="form-section-box">
                <label for="comment">댓글(댓글수)</label>
            </div>
            <table class="comment-list">
            	<tbody id="commentListView"></tbody>
            </table>
        </div>
    </div>

    <!-- 댓글 작성 폼 -->
    <div class="container">
        <div class="comment-input-group">
            <div class="user-info">
                <img src="" alt="유저 사진">
            </div>
            <textarea id="comment" placeholder="댓글을 입력해주세요."></textarea>
            <button id="btn-submit">댓글 등록</button>
        </div>
    </div>
    <jsp:include page="/WEB-INF/common/footer.jsp" />
</body>
</html>
