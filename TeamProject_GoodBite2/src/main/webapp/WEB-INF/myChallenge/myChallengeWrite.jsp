<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이챌린지 인증글 작성</title>
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
    position: relative;
    z-index: 2;
}

.recipe-details {
    text-align: center;
}

.notice {
    background-color: #fffacd;
    border: 3px solid #ffd700;
    padding: 10px;
    border-radius: 8px;
    margin-bottom: 20px;
}

.notice h3 {
    color: #b8860b;
}

.challenge-image {
    width: 100%;
    max-width: 800px;
    margin-top: 20px; 
    border-radius: 8px;
    border: 2px solid #CDC8E7;
}

.recipe-images {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.recipe-images .section {
    width: 48%;
    margin-bottom: 20px;
    text-align: center;
    padding: 10px;
    border-radius: 8px;
    border: 2px solid #CDC8E7;
    box-sizing: border-box;
}

.recipe-images .section img {
    width: 100%;
    height: auto;
    border-radius: 8px;
    border: 2px solid #CDC8E7;
}

h2 {
    background-color: #CDC8E7;
    color: white;
    padding: 10px;
    border-radius: 4px;
    font-size: 18px;
    text-align: center;
    margin-bottom: 20px;
    width: 100%;
}

.form-section label {
    font-size: 16px;
    font-weight: bold;
    display: block;
    margin-top: 5px;
    margin-bottom: 5px;
    text-align: center;
    color: #8475BC
}

.form-section input, 
.form-section textarea {
    width: 100%;
    padding: 8px;
    font-size: 14px;
    border: 2px solid #CDC8E7;
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

.button-group {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.button-group button {
    width: 48%;
    padding: 10px 0;
    font-size: 16px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.button-group .btn-submit, .button-group .btn-cancel {
    background-color: #CDC8E7;
    color: #8475BC;
    font-weight: bold;
}

.button-group .btn-submit:hover, .button-group .btn-cancel:hover {
    background-color: #8475BC;
    color: white;
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

hr {
    border: 0;
    border-top: 3px solid #8475BC;
    margin: 10px 0;
}

.read-only-box {
	border: 2px solid #CDC8E7;
	padding: 8px;
	border-radius: 4px;
	height: auto;
	display: inline-block;
	width: 100%;
	margin-top: 5px;
	text-align: center;
	font-size: 17px;
	font-weight: bold;
	color: #8475BC;
}


</style>
<script>
    // 썸네일 미리보기
    function previewImage(event) {
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function(e) {
            const thumbnail = document.getElementById('thumbnail');
            thumbnail.src = e.target.result;
            thumbnail.style.display = 'block';
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    }
</script>
</head>
<body>
    <%@ include file="../common/headerBefore.jsp"%>
    <div class="container">
        <div class="header">챌린지 인증</div>
        <form action="challengeCertificationAction.jsp" method="post" enctype="multipart/form-data">
            <!-- 챌린지명 -->
            <div class="form-section">
                <!-- 읽기 전용 제목 -->
				<div class="read-only-box" id="title-box">배달음식 없는 하루 챌린지</div>
            </div>
            <hr>
            <!-- 제목 -->
            <div class="form-section">
                <label for="title"></label>
                <input type="text" id="title" name="title" placeholder="제목을 입력하세요.">
            </div>
            <hr>
            <!-- 사진 추가 -->
            <div class="form-section">
                <div class="form-section-box">
                    <label for="photo">사진 추가</label>
                </div>
                <input type="file" id="photo" name="photo" accept="image/*" onchange="previewImage(event)">
            </div>
            <div class="thumbnail-container">
                <img id="thumbnail" alt="썸네일 미리보기">
            </div>
            <hr>
            <!-- 내용 -->
            <div class="form-section">
                <div class="form-section-box">
                    <label for="content">내용</label>
                </div>
                <textarea id="content" name="content" rows="4" placeholder="내용을 입력하세요."></textarea>
            </div>
            <!-- 버튼 -->
            <div class="button-group">
                <button type="submit" class="btn-submit">등록</button>
                <button type="reset" class="btn-cancel">취소</button>
            </div>
        </form>
    </div>
    <%@ include file="../common/footer.jsp"%>
</body>
</html>