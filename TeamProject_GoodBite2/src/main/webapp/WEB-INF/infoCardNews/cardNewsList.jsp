<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카드 뉴스</title>
    <link href="/resources/css/cardNewsList.css" rel="stylesheet"> <!-- 제공된 CSS 스타일 시트 링크 -->
</head>
<body>
<%@ include file="../common/headerBefore.jsp"%>
<div class="tap">
<main>
	<header>
	<div class="fix">
		<h1 class="mainTitle">카드 뉴스</h1>
	</div>
	</header>
	<div style="height: 5px; width: 1300px; margin: 0 auto; border-top: 5px solid #8475BC;"></div>
  <div class="fix">
  	<h4 class="page-now" style="margin-left:-300px; margin-top:30px;">현재 5건, 현재 페이지 1/1</h4>
  </div>
  <div class="album py-5 bg-body-tertiary">
    <div class="container">
      <div class="row row-cols-2 row-cols-sm-2 row-cols-md-2 g-3">
        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>
        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>
        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>

        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>
        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>
        <div class="col">
        <div class="fix">
          <div class="card">
            <svg class="bd-placeholder-img card-img-top" width="50%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="45%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
            <div class="inner">
              <p class="card-text"> 제목 </p>
            </div>  
            </div>
          </div>
        </div>
        </div>
      </div>
    </div>
  </div>
  
<!-- 페이지 네비게이션 버튼 추가 --> <!-- 수정사항 -->
<div class="container text-center mt-3 mb-4">
    <nav>
        <ul class="pagination justify-content-center m-0">
            <!-- Previous 버튼(◀) -->
            <li class="page-item">
            <div class="fix">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">◀</span>
                </a>
            </div>
            </li>
            <!-- 페이지 번호 버튼들 -->
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">6</a></li>
            <!-- Next 버튼(▶) -->
            <li class="page-item">
            <div class="fix">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">▶</span>
                </a>
            </div>
            </li>
        </ul>
    </nav>
</div>

</main>
</div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
