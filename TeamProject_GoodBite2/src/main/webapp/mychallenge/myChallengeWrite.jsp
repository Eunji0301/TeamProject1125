<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>GoodBite | 마이챌린지인증 작성</title>
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
@media (max-width: 1299px) {
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
    height: 100vh;
    background-color: white;
    padding-top: 4cm;
}

.auth-container {
    width: 100%;
    max-width: 800px;
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    text-align: center;
    border: 5px solid #CDC8E7;
}

h2 {
    background-color: #CDC8E7;
    color: white;
    padding: 10px;
    border-radius: 4px;
    font-size: 18px;
    text-align: center;
    margin-bottom: 20px;
    width: 100%; /* auth-container 안에서 박스 너비와 일치 */
}

.form-section label {
    font-size: 14px;
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
    text-align: center;
}

.form-section input, 
.form-section textarea {
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

.button-group {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.button-group button {
    width: 48%;
    padding: 10px 0;
    font-size: 14px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.button-group .btn-submit {
    background-color: #CDC8E7;
    color: white;
}

.button-group .btn-submit:hover {
    background-color: #8475BC;
    color: white;
}

.button-group .btn-cancel {
    background-color: #CDC8E7;
    color: white;
}

.button-group .btn-cancel:hover {
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
    <div class="auth-container">
        <!-- 제목을 auth-container 내부로 이동 -->
        <h2>챌린지 인증</h2> 

        <form action="challengeCertificationAction.jsp" method="post" enctype="multipart/form-data">
            <!-- 챌린지명 -->
            <div class="form-section">
                <label for="challengeName"></label>
                <input type="text" id="challengeName" name="challengeName" placeholder="챌린지명 입력되는 부분">
            </div>
            <hr>
            <!-- 제목 -->
            <div class="form-section">
                <label for="title"></label>
                <input type="text" id="title" name="title" placeholder="제목을 입력하세요">
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
                <textarea id="content" name="content" rows="4" placeholder="내용을 입력하세요"></textarea>
            </div>
            <!-- 버튼 -->
            <div class="button-group">
                <button type="submit" class="btn-submit">등록</button>
                <button type="reset" class="btn-cancel">취소</button>
            </div>
        </form>
    </div>
</body>
</html>