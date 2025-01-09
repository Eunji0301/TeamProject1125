<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>마이챌린지 상세보기</title>
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

@media ( max-width : 768px) {
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

/* 댓글 섹션 */
.comment-section {
	margin-top: 30px;
}

.comment-section h4 {
	font-size: 18px;
	font-weight: bold;
	color: #8475BC;
	margin-bottom: 15px;
}

.comment-list {
	list-style: none;
	padding: 0;
	margin: 0;
}

.comment-list li {
	border-bottom: 1px solid #CDC8E7;
	padding: 10px 0;
	display: flex;
	align-items: center;
}

.comment-list img {
	width: 80px;
	height: 80px;
	border-radius: 50%;
	object-fit: cover;
	margin-right: 10px;
}

.comment-list .comment-text {
	font-size: 16px;
	color: #8475BC;
}

/* 댓글 입력창 */
.comment-input-group {
	display: flex;
	align-items: center;
	margin-top: 20px;
}

.user-photo img {
    width: 80px;
    height: 80px;
    border-radius: 50%; /* 원형으로 표시 */
    object-fit: cover;
}

.comment-input-group textarea {
	flex: 1;
	padding: 10px;
	border: 1px solid #CDC8E7;
	border-radius: 4px;
	resize: none;
	font-size: 14px;
}

.comment-input-group button {
	margin-left: 10px;
	padding: 8px 16px;
	background-color: #CDC8E7;
	color: #8475BC;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.comment-input-group button:hover {
	background-color: #8475BC;
	color: white;
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

.form-section {
	margin-bottom: 15px;
}

.form-section-box {
	margin-bottom: 5px;
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

.input-group .read-only-box {
	text-align: left; /* 텍스트 왼쪽 정렬 */
}

.form-section.button-group {
	text-align: right;
}

.button-group .btn {
	padding: 10px 20px;
	font-size: 16px;
	border-radius: 5px;
	cursor: pointer;
	background-color: #CDC8E7;
	color: #8475BC;
}

.button-group .btn:hover {
	background-color: #8475BC;
	color: white;
}
</style>
</head>
<body>
	<%@ include file="../common/headerBefore.jsp"%>
	
	<div class="container">
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
				<!-- 읽기 전용 제목 -->
				<div class="read-only-box" id="title-box">4일차 성공♥ 그릭요거트+연어면 다이어트 할만함</div>
			</div>

			<div class="form-section input-group">
				<!-- 인증사진 -->
				<div class="form-section">
					<div class="form-section-box">
						<label for="photo">인증사진</label>
					</div>
					<div class="read-only-box" id="photo-box">
						<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExIWFhUXGBcaGBgXGBsYGxoaGh4aGh0YGBgdHSggHholHRgYIjEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGyslICYrLy01LTAtLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAQMAwgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAIDBAYBBwj/xAA+EAABAgQEAwYFAgYBAgcAAAABAhEAAyExBBJBUQVhcQYigZGh8BMyscHRQuEHFCNSYvFykqIWNFOCg8LS/8QAGgEAAgMBAQAAAAAAAAAAAAAAAwQAAQIFBv/EACoRAAICAQQCAgEEAgMAAAAAAAABAhEDBBIhMSJBE1FhBRSR8HHBIzJC/9oADAMBAAIRAxEAPwAnKBBiz5xCBEwG3UwIKchPDiIaqIShjUszwit+tDSOTDDDaIWT56w4zIqZuccmThqYyzSK+KxOUPrp1gas71JqTD1qclRtoDFKfMvAJytjeOFIinLcw3LCAhpXGQqOTEkMbvoCKdRpDAuEC/h7/MdVFGmMUuIFLh61Qxo2jDOy3vBKRxOaiyz4l/rFFKId9rxLKpPsO4btGr9aQehaCKOOSlDVPX8iMhUw9f0jam0YlhizbScQlXyqB6RO8efKnEWLHeCGB4pNF1kjnX1vBPk+wL09dM1qo48BEceI+ZIPSnpFiVxqUogElPUfcRNyMvHJBXNHYqDFo/8AUR/1D8wou0Zpl3LHTHQAfAxxZpy1/PWIYEsBi9YYow8AC0QrVEIMmGIiqHK9tESjELGqVFPETcxy6C/4h+Im5RS5pFRa8oZ66wLJKuA+KF8keImRSd45NWXMKXLUQ6Uk8xbztARoatcRqVBHD8Kditbbhqvyr6xdXgZcpTDv0BcgU5NaMOaQeGCTAsuStQJSgkC5APrFaaqNjg8QQa2tAHtDIdSVgVLjqQzeLfaJDJbLy4HFXYIBh8sVhiE+cPOwgoshylaCHg89qxDJWkrEsOVqIFNH1P4iYtzYEhlBlOLgjcVESiKSbpD3Yc4RLRwKf7RFMU55RaLYwy3MW2YNSEmSUgE3UARUGh+hhKLB9YsyRKJaGEtHSuGxZDmflCjuUcoUUWeipLefsx1StojSqEpUHOccmGK0yZ6++sSTDEKlbRCxpPOK8xbO9omUYHYma5bQev8AqMydI3CO50MXM1PgNoG4rEw/FzqGBc1d4X7Y4lSHLnwX7M8QRlUlTkGvgWrUe3gJKkKnnLKQSVUCeewJvSsaXB9kpmHlr+KpJmMMoSSWSBqWDn8RHFtcFxmoySZUx2O+GkmuuV6Atb7QDTx6YVpJIVahoCObWEXeJpBFa7/n6QETw5JNyxrem8YhUQuoU59PhGo7N4skrzLKnJKXNO7QsNKmnQ7RvOCJTkzEslySdSdh0pHknDsQQoMWYUarVFxsXbxg3N4/MCUJQVZczn9Lhy4BFeTHfSkbivKxR5qw1ZtO13EpJQmUqZKcvlz3qCz0oMwF/wC2AvB+Gyp6u5LS4S6lOrIH/tCj3tW6RkhjCueQtiCQASXIBq5VvpXba294VxPKP6UtwABQi+5c/SC7U5eQLG5JNxR53x7hC8HiChSypwFJULlL1z7ENprBnsrjFGYvKqixV93u/R3i5xrAHF4gqWCnKnKBvUkudq+kcl8NXKcBIAuMtRXp9DtrAM807SH9HpWpKUmFJuDlTSy0Mdx3Sdy/+4t8c7IpEoTpFMiHUi5KQSSt3qQGfkOUBUYgghywDk8hrBReNVicKqWkrQCCAohmNCHr8r0Nd4xp5OnfQXWwprZ2Z1UgpqopD276b9HeI1SlqLBJJowSl6Nel+sGpXD8NLDFlKsVEFb8y5KQOSR46wam44CUmXIAyD+1xU/4iCvJFJtAoYMja3cGFxWEmIbOhSXtmDQwhqRrceslJRMDAiu42PgYyUSGTcXlxfGxNChr8o7GwRv0q9mGqVDTN8OsRLNb3g5zxFW8RqVHVG0V50xhFF0R4qcwaxPpFGadNPdIctTdTXpFLETLjMBR60fl1hecrY5jhtRDPm+X+/2gZMUTRIc0tetImnl9TFZXzo1yrTlfkaRImmewdj+FSsPh0zChllKcxUO9muejEsGipjOKSll/iJoSCk0UN3BtBYzCqUxDUH+4xnEuCzTOK0nb9LktprtpWrQVO+jn83bAXaDBmVLJSlJDkZgGJSSWcjwhieArOHBZlOAokt0ArbVR8A9Y0eJOUZVSSAWKQsNUF/luEu14HYnjQVlQn5iajY6u1rwPLNJ9cjeHDKfMnSBPEeCZHmBCjKDBTEUVYOL5ajzvESvhLyIJRLyPmzOSs0P6TQB6D6xtJ2WckImJ7qT8opu2vi3KMt/4V7xSqcrLmT3lM+V9AGDkdWgaypoJLRyRzD4NCJctbOCq57z1IY+fpGlmTpMsEykgUsmoNLkP6wcweFwxR8JADJYM9WDVfc3eKGM4NKlqeWVFw7Kq35GkF3MzBrpqmATxAhRCjlcuxO+3LnBD4jhiklR+Xd9GgJOkJE0qU5SC538D7tBzgHaXByQsGYpSlUcJNGKqJ1e1bWrCUcUnK/R08uqx44fklUEoZcyWPiOXykqJP0bXlAudiXJQSU7PZj6OLeEQ8c46lST8MLSQW7wHUF6sSNDFORIEwFSVZgLvQ+sFnSWwFpskZ+dhqSoBASuUDsu/0tFXCT8kwEOz2s403hvD8FMVmMt3SHYFnHLfpWL3wXIQtOVZAL0HNlDf20YlF7LGlKO5qxmPnBUsrFCHcE86N4xlidAHMGuNJKJa3pQWpqPSM6oGyh5wXD02KanhpIfm5woqGeraFBRY9GeGvHDEa1Ec4Oc86oxQWvMSxokEuSw84fjJ7Bhr6QKmzRo4DWe+tR1gWSXpDGKHs7Mm6wOxCi4zJOp2vahv15w/FTfY/ET8N4cmbMKQoqSACFJtXe7dIF0M1boFLSSxqxoG15DzEXOFyUfFSVB8pcANdPetc2sN6xpl44py5E5VJLghIFTc0FDvu8ZHi2HMovLScpum5SeRvFRyJmsuDIo8Gym9qkqWhKCcrB6lNSKhiNyNdDBGZxmjO3n+Y82wQVNYBBAfvKr7flGp+JmLkklTsBvvGXJp0gWLBcd0l7KnF1rWpWacr/ihkkC7G5+l4m4JhQlioZVFQAVfKCDRq8q3cwNxs4iYlLkaqe55PtTxcwZVNUpgWIDEUDhxuzwHI5Ia06W5otSSSV5lKSWdiGLg89PekMmLLAnat687wSwUlC05lqOZJofX6vFHi+KW9EnQO1TsG18N4AtzY6p80dwuNUkslrD9z5EDyjmKxSwQosb1BPdAcueWj9IoyJbJWqqlfpAJSD1ezfaFwnGqV8qg+UuVUaz6H/RhyDqAjlhuycDcMmXi5mRecS3ck93M2g1JJ1NGG5hvFez0pUzMVqBBF2LNQMG00i1MIMuhYamWcqiR+oEv4fvBAgTES1qRlDJKg/fIOr+UYeVpeJpaWNeauylgez4lTAon4ksiqVC9DYjXbwinj+zf9YSpK3lLZZzGwBqizkEgD28avABBWpKKyqhi9DtW42MWOEJCHcAqSogG9A37+cVjyb5UYljWKD2/2wRLSuQR3VAAgA1YvVgW6+UNxSUKObe7nXaPQ8GsKlkrALmoNqUtA7EcDkrQslOVzmBTRuQFmg09PJrxZjF+oxT81T+0ec9pZRVJQElyVBIG7d5n0YB67RlzLIOTUEinI7/eND27kplzxIRMzoCUqIYUWp6Hc5WOnzQCw6GrFxi4qmXPIpvcuiUS0QotjA84UF+NivzRNMs+3iGbMypf0jqlQFx+LzGltPzBJOkBhDcxs/EuTzufekVJ06go2lya/wBx9KCEeZaIFqgA4SYKQFzEpNipKSxAV3iEul7s8aZGCl4VeWUSV6qW2jsGbnXwil2MwyDMXNUxKACAQ5D/AKgdLNTeOzsZ/WKiLk0O3toxlltQfTQ3zf4ChxMuZ83cNiWdJOx2frA/iWBUdcwvy2p5+9Sk8hSB8MlIP6GBDjXrHJcyplkAhQ/tyuRq2mlBC0p3wPxjt5RS4fKSQZb0NiRUH8copqwayAZag4JLmgI57Ugz/KhKEKuc3kRVgPAxLhJYTLBUyaNUtX/caxctUA1E0oujB8QkzAsFZZaXt+YvcM4qlFJoNwyh/wDYfjbWLnF5sv4iMwcEhzytfaLXGOzsh+4rKpKflHfzK5ur6QWWOUnYGOeFKLQZwkxM9KBL1BLizh7lqW1asVFzVFb5UuQQoXrZ+vpUwC7OzpklSwyqs40B5iC2FCnUpBGU3KwQkaAE7hTQKKt9GstQT5O4hyoNUmhGiQ1CerGK0yYlKFh2UQX1saJH18I0eBwmGUgtOSuYbkrAUWeiUvYVgMrs8FrIzqcmgIGu5jcnxtiBwZIqVyZIhAlpCCzhFiHqb+IOsdwC+8UmoI+gZvL6CIMXOUlSpZOU0Bdjmyu7Prel47hsKoKSehptC9tSOnGpRtsuYSUy2zEMTqYMJxACSf1uC2poBbwiri5GUpUNq/vtRoJYGWlUtDhiAajUEk1pzgmGNSaQrrZJ41IM8HzCWgKDKU6j0q3o0Z7+JPaQSpf8vLV/VmXKSxlpd3p+osw5OY2kmWggEVIAD7eGkeW/xUktjEnKBmlJqNSFKFegYeUdJpxicLElPJyYtIJO5JqSXJOpMXMLLdXIVMQSGYq8IMcNw7Ac6wKCtjeaW2NFhMjlCi5k6ecKGBIo4+fTKKPfpt4wIVE01b9a1inPWCKeELOVs6EIbUdxCSLkMagA6b++cQywVEJSCVKIAA1egiNIAEHOyihJWZ5SpR+RCQ1VK1JOlPrdjESKnLarNDgeDJw8iYl3mLAc7MxyJo4S4PnGdmTXUAddqdH5wbPF1rBLykbOFzAfEFIHRyYfNwM1QZS5ZrpKVp/8hgObFJvkLptSsfa7BkjEMcp/0YmkYzKrvNTevhF7B9l8QsspIAIdK3YEbHUHlFXjfA1yyagqSQCxcF9Qf21hJ4ckeaOrDVYZ8WMxeLTWrMXJ+8VcXikKUlagaMGLkJJ0YOyvDS9IoTuGrJ74IoWGulXFNPWIZ8lalpSKLVZjTmpzUe94c0+OSVvg52szJy2wphyRxWQW+KBlBBBXlATzYl7sLUYwbkrlT5a1JZpiSkqYhwDaz0LwDVwaRJQklIK2qs3dmo5YeEOGN+HKUpiwBYW8hoIai1RzlGT7K/HcQZNAFGozEc2Hn3h5GBnGMcvKl0qlBSQrI5CS1A6TZTCx3ejwX4GVTMQVpcsAyHa4q5F9eVYIdrOHvRYBJSQlSR5itmID7wGWVR9DMtPKVK+TK8MlTll0oATotQLHZgb+Wsa5PEjJYKc5Qnvb2c3rUwD7P4wAhCi5SQSC1Q9a+dNHEHeI4NM2Uoo+YVTT0PhA3kthP26ePcu/9/QuKpTiQVpubtevv1ilwfEpUjKsn4gAAdgD+aeMV8FilypYKgVIAv8AqS2hSenraJOy2LTMmiRMLZhLyvqappzICR/7SYzPG59GcWsWOlM0CsykiWkZlk08BVzsPtGo4PJQhIl5Q5Z218esVp0lMnL8FQJIq7Hx5GLPAUBalh2I1aod2UnxaD4sMov8gtTqlljS6IO0OPl4SUqYskB2Aq5OgTufHrHnXHe168dK+EqVlAWClRU6mAUDmADPUWs1y8Ve0nEMTPmqRiFJX8KauWkpTlSC7FIOxyvWsUMPLYE7U3/aCTn6RnDgS5fYsPKdQAsnxjRYWU1opcNw9LVPuu0G5SIJjVIDmnukMynlCifL/wAvX8Qo2BMbiJoA5+/SKcyaNYcpTmpbmfQRWmKeFEdRhDC4ETZgTLUctS5BGUDd9dIXxlCaiVJWfmUBqElWYHqQkO5r8u0c4V8UIUpBP9qRcE3fk3lB7gvZmUpBWtBKiCCczl1VUaMAXgkVQlnbboE4nDp/mUl8rAM2rAJs9GLDV81qRpsF2jykJlpzzMzGodCXrlegUWoTQOb0Bg/8HpzgqWcn6Ug1H+NAws7vFj+SlIPwgUoDHVnN6nf2IzlmopsrFjc5bUFsJxudN+Is/wBNIFkkMnVio1JpenQRkuN9plElJOZRFdBeh36+EcTisiVhNEnzO1fH6RkuK5lKUt60pWFsU7fJ18mlWx7V/g0EjiWZLBARRlVygsXtZtfF4N9m1oKpi01dKAQVWIKnyPoXGv6Y88GJWQ1hq3lGh4TjMiWdmAtr1ejcucHy5VFcC+n/AE+fcze/ywnJ7qAohVBRxS9eprGd4lglAFuYINuggpwrixRLCXBJqXqK6cjFkstFAASC1KGvukBWdPgN+zlB2ujMcLnLlzX+UhNPCgbqCfWC3EOJTZqggJGShUTpyd/3rArETTmKjorvNqzt9TXnF7DTwwPoIF8ri6G4YlKKk+0R4nhozZ0prQHelj9fODGDwZWApJPzMCDUdSzEMWNGrEyTLASQpioVQxIA3fekWFoAKShwC1bOR/qMNu7RTpqq7MjxcrUgSyCVCZ/VoxJyuUs13INqEpjUcCEmRKYoAnEFRWvL3QpgUg/3BiHGiovcG4CJvxVFTElrPz83JLjltHJPYrDy2K885W6zR+SR93jp4Fa3Hn88FHI1J9EXD+IJmTPhS3WdwKDqbeUH52IlYOQvFTKlIAHVVAkdSwfSAXaHHjh0gKlISZq1BKUt3UBnOYBtrfgx5hisbOnErmzFKzKJyucofZNgLRtyUS4Ynk59EsyYVqKlF1LJUeqi5MXpUjMUp0FT9YH4KTckUGkaHhOGIDmpLwBK5DeSWyIRw0lqn39oupRb37vHJUthTnprEyBR29vSGUc9kZy7p9PzCiVRA0V5Qoso8vnzGGsTyOEYiYpCUSJiipiCEnLUXKrAbvtFvs4nNOYsUAOQagkWfntGr7TcdVLw6vhjvEgd2/eIBbwJtvCyr2dCbl6QMPZ+ZIRl+P3x8zfJzDKt1pBrsz8T4TzQEqzK+U5gQ5Yv0IjDYLi8x1MpZcNuxLmg0cvWCeFmTJSyWYpYqNRmB0INw9yLGI5NcC26+zYTMYSspag10fygPNV8QzksCQzcjVldBAqXNx6pcybmQlKV5UgpbNZzmCu6K7XiSfiFstSRoyiBQBW4+/WFtRJdHR0mO7aBWLxiQ4bx93gRJmpUoJJUXLs1ixB9QImxSVO1uogeMGXdzu2+vSJj21zwF1Hy9w5p/wBouSsMCdgL7nmPSJxRR8IjlkqSEEDqfzB/gPZxU8KWtWUJoAACSpnD8opxcnSGceeKj8kuBmEn0jccOnSzK+IpJS1GVR2DEitqPpGIkSvgzgh3IqTYVBsK+saCROcZXvvUVgWJ/FNpm9TBZYpp8Ec7iKJqSEjMlyASL/8AF7jnF/hMtMqUfiIyrFiCVli1aJcHRm8YGYnszjQRNV8uZLZVAub2yuBSCOExBQlZWoJ7xBewsWPnD8Ip+VHMlPjbF8EMzBpGZIV31Dupez/SCU3Ed9IB+Uew2zCAow+cqmBepfL8xoLdXZxvDOCyphUpSidgC99W9IBkUnBtL2NwcU1bvj+D0Ps1LdEw27wpzYHyrDO1vGBgpPxQlK5hICEqU1SWdrkAV8NIlkrThMLnmFg4UosSA9AKaUA6xjO2naBOKlzJclImJlqlkzAQyb/KLmoYlmZ4bx+OPnujiZf+XO2urMZiuIzpy5qlrKvikFQ0cVASNALQ1EoNClNYB4tYeXVzpAWPJJcIkkS3IS3XrGlw0sAcvdIG8Lw7kqO/v31g5KR7vBcUaVimedyofLTaJGBcEedfQwgIeqzs4Y0b2fBoMLEgSNo5DUqerHzA9HhRRZ5x2dR8yt+7Wnu4gzjyRzoNnch7RzhOBShCUgklyVv3dbMPKCE34ZzAZc5BOZQPdIsEMS5NfOOfKS7O9CHCVHn5wsyUsqlvc2LGNrw3CzJ+HR8XOgoypAUo95P6i71enlEmGlhFkpVV3WASDqRqDQRpMXLSiWlvppFLI3F2DyaSG9fks8F4XKGHMlKTlUPEORvr+YBce4KJIUmW9b8wHtWN1IxyEyUJDuUpqw2gHxmUZmUS2bmC/wC0R4d78ROGeUJv0rPPMBJzLEuZLCnDJJNUithqXbygpi+FCYkEgECha/I+b05w+ZhB8VQSDnQbp5bEkC2kScI4imWShZJWS5CgUnKDrmZh6QWGOo0wmTO5S3ICHgSlTHTUMKmx8d4PcBkqkomBQqVG1bAD8xUxfE0yi6SMlbKBDmoDjk8Qnjqw5SEgXKQDdRcvV6k7bxMcFF2Ynqm1tfQO4uVCe6XBccy46eEbXsxwlJKFzluVgq1DKuNBV28YG4LFlSVrSgIWzKVqDypQVHV4t8O+PlTMMx9wogN4FjcQSOGEnufYSepyPHtjwj0BBSmSCtLh38rfWAnEMFKUgsGfUMTTVL0frBU41M2QmmUmhBoAdvxA3Ey1JACU5g9uXLnGsk3BpJcHMjfLvkyEzCqzpkpJK2KkOBnNnzBPd0oQTz56/gnZp1JmT7pdpbhno6ltQm7B2qbuwEyZEpE5E4ib8RF3Ki7a5SWFCqiWvGqw+MWoAoFFEZVKNCOTRuDXtEnkm1TZT7YcaGFl/EIJJOVAGqmJZ9BQ+RjxzEzguYuaEhBWVEpQMoD3A/xLn1j2jtRh0DBYj4oDfDVcfqbuNW+Zmrdo8WRLjOVUxjSVtY9KQAGFWr1c28GHhF6TLoB59dBFeSlyILcPlOekCSt0MyltjYSwcnKOnr7Ji5LQx8L6/S1Y5KRbbW8WECGkjnNiAs35iRI+kIDy8vtDyD75aRZQsvKFC+MNx5wohDCJxBBAT4C9DpFzFIUGWzDM3jT0NfZilIl0CjTStOvjF7h+NKZbKAygEDTn945SS6kenbfDiW8NJAGeYSQdBcnmbCJ8Tj8ycrZQA4BcigYV3bltAvC8akNlWskFTul1N0A+sTcSMpUp5SSp2ZlMa0p1tpAttmslpNtMIcF4/mlJTk7wUQCdXdkpSDqAaqIFOdDOHnBSQapNilTBQPMAn6x5vxLGAKlgEgIPfCg2oLVDXG+94P4TiyVhJSoMaAUfo2/KHotpdHn505umHcblqWYgX3EY7tHjwUqQHqL7cutI1MqWXL1D0FtNfF4AcdwRWO6Ku8alN7bCYopumYiXPJUJaTVTJCNSTv5iL+HTNlKUgoJXSqXIAFwCKVbWtLRNhOHj4mcJ729q9TrGgwq2DNUwvLNXCQ7DQp8yZBwjDTWKw4Dk2cbV1eNJ2eWUrZQBzatrs+33aBnCMd8Nc6WzKzuARoQkk+saDhyQUMQNO8D9RtzjKm4SX2GhCM8LVcdfwXOIoKly1ImkZVZlIBoqlAvoaxakTFN3uoajcusCZsqbKUSUugmhFj0O7RGsqmDKZiwKnuhlbitQwGjVhxZueTlZMKrxKfGuMpBL5yxOYpZyAHdiQTUpG1ekXuwHG5pmfDMtfwlkFIUGIKi5LWAAqWe7vpF7sj2OkBPxpqfiTStwuZUJS9MqfuQ5NaWjLds+P4kYlcsPICCwAoohj3ioFmU705Vgyair9C0Iym3ELfxO46VTRhkLeWgAzANVuWCjqwYtueVMQ/gIglH3+Yu4eXmOvvlAZPc7Y9CChHai3gpOUPvB3BymAB9kxSw0p1AaCvlaDWFFB4b28rxrFH2B1E//ACSIQ7Uru33icJDO3vm8Ml9Ran3p5ecSIQE8hem9STBhRkib77nnCSGLNS78+kOH1+sJQcM1wafX6xCCCuvvwhQ4g7QohDD4/BKS+V2d2G+4ibBdmlrZU1JANgfmI8bRu5XCkImhS1AZagfb1MEcLKE11EvloBoByhV6fc7fZ0F+oSjGo/yebY7skgL/AKRYMaGrHr5xXw2FKC5HQO9RaNJjlqTOUltWpoNz5wExfEpPxClJJysDaml94x+3SdsK9bklGmwVxLCJV3lFQIq4irhJGU5kKqKJUk5SRetSC1LACDKp0pfdylQq4P2MRyuDp+dObKCWRG1OL4YB4eNwS4BxMzApyO6WLb384KnDpUDmCTtGK4dPTKmzAHAJGZ7OzU8o1GF4onKMtU7vGLSdeinB9oD4lCZai4GUPS3u8WuCTZYSogd8aml7M9h+IhmozLXq8VVSyiiQIGpKHNcnUjB5IqNlDiGAWZip5P6gFEE0Dql03AZB5vGz4HVAqCRRW+YXo/j4wAmAzArdQrs4tSD/AAfCAqC6hTB8poW3BcHbcbwt8jnLkuGmeG2n/k1WCwufuKs7s3VvBotp4FLSolsyCGKSajmDDuFCpYvvuGe34hdpeK/ymGXPIzEd1KXbMSaB9Bc9AY6mGEXHy9HEzyl8lR9gvtt2kRgpSUSwhUxYGVOiUh2WRs/Rz0MePY7FrmrVMmKKlqLkn3QaAaNFnjXFF4maqbMZ2DAOyUiwDm1z1JinhFKStK0llAuPy33ipz3P8B8WL44/kv8ADsdMlo+GFOO8HNSEqY5X2dy3PlF7Ay2GYi8QKUqdMJLOouWDM9YKypTkJFhvT7Rl88BOErL2Akd0PclzSCKE76VhklLemn38ospT16e6wwlSo58pW7OoSzBj7/aJUj6X+xhrel6ej+XlDkF2NbAhw3mPs0aMD8r+/vpDiRy/Hv8AEcI/HhCbnfl7NohBefpChZlbD/q/aFFFkWBMxlFZAVoOW7u0IYwoANjUfWMvhu1ctcsKWtCV5RmSVjuk1YvFzhWOlz0FSF5hmZ9DTQ6wKUEuQkb9kXHMUUy5k03Fta+zHneFxPev9o3fGQVqyD5QKnmdPL6xjcbwsBZy0HIwCU6H8elc0qZqezzrKQCRKcnuixSBUltc28afimBlKAQxDj9JKTXcgxluz61yJYDkZrDYbtGowMpU4h67mFfllv47Ho6VKFSfBj8dgjKByBS1G5NSdHUYrYZayQlWZxbLRutqRscfw8pKvTmIHKQozEslJS4Ch+rr0/MMwnx5IRpdFXAyCklQdVKg3PTnHV4xK3DFB2UznyNfCNWvhKEgqQ6X0P2LeLRje0GGSSACxBuNDG5Y7XJrBnV0i1JRR4OcFmjMAYz/APMiXLGYZtiKKP2gtwmZnAKUqqzAt9QYQ+KUZHUlmjKD5N9wWiVrNHWQH6l/tAT+KCivAvLLgTkhQDGjKHUd7LBFcshCQTz6vrDRhkJIUwpV+nsHwjtQj47TzM5r5N/5PHOI8PVLyCbK+GopBYn5tMzaGlvpEclOvpGq/iPiEzJ0ohu6lQ6ORU+VIzclNki5haUdsqHoScopsJ8OlMCvwDQb4bKoS1TFDDSXISDTWDshNA3sNGsSt2C1EqW0kQmwsHt6xKnoa6e7Q0edwb7XZq1iVKdPNxfT6wcSY43HOvhHUE2Ir7MIioLObC/r+Y7lcWZ6V284hB4Hv34R3L0084Ro/nWvh73jik7gMXB8n8ohBwB39+cKED1jsQh8+TJT1/eNfwHjy/5YSgkD4Zy0u1wa61PlGZnJCSbsCajUAs4huC4j8NSkuQhRcOzg2q2n4EKyTcXR1IpWrNzhcQvIVLQoJJZwL0a5o8Q4PClRKyO6mteUU+GqKyzvz2EEsXOZkJtrz5Qq79nRh9L2TSAZi6HbwEarDYtMtOSWXO50P5jJoX8NLam8WuGYmW4zqYeXrAG3F8dsZpSXPS9GkRiQlJVMSVB3ds3Wg8IKYDHYVTHKhJ/ySEn1EQLxcoS0gEMW503jR8OKLhAA5Ch6DeOnpqrb2cLX976qyhj8UhMhSkAFTsKONLtyjy7FpImgrJYqDm9zHpPabEISiqCM7tkzJJ5kI9HjzKTiSZhSvvJNQDU+epoxBrBptXyI4sm0v8amodJcBCQW96mNT2Ow7hKgCzagVuLbRkVYCXiCmWlRAdJKrhixLDWn16iPTeG4FKUS0SlOKjmw1P8Ap4qMU3YXJm8NqL8zDIZq0NhVvGMZ/EXiZw2STKV31gqV/imwruSFeUE+1PbKTg5wkLlLJYL7oDEHYkjUHQ2jy7jnElYmfMnKDFZsDYCgSDyAEXkmlwuzOnxNvc+ishZUXNTz1gnwyUHKjpaKktZKUpLFqA5Q/J1AOeTwaw0qiUiu7bn9oWY+vsI8KlFszXgtK3bah+kQyJbAUsNPxFpIs2/4hmMaVHOyT3SsUpJDuT41iSWgDr1f66wgNOvpD5Y6l6+Hto0DGixsBvbWpqN/qIk57++kLLduWlDpXyhyaFohDhUHFQDpoafaEGf5fGh1tvDUpdn+YDxG+tqiJGpf6efnEIMJVohJ6k//AJhRIkBreh/EKIUfP85RZtBz82gfPqYJTJcRzMKdoXTo6tBDshxTIsy1EMUnK+4qB9Y0+GmJCs8wsByqTsI8/VhFE2jsqYuW+VTPfaMzgpO0Hx5KVG3xuPQtyqg93gcO0EiWkpC8wOmXMz6g6Rk8RiFrYKL+AiDJEWni/wDsW9TOPET2jstIJVLUC6SQwHPbwj1CTJVLGWigS+bblHkn8JOJy0oSJy0gSisJrmd3yuLi5bkkR6hj+1GEkyDNmT0hLBhmTmJNgz/NQQbT4o401E5eszTyz8hY/DibMICgGpUPblGb4j2HlzDnEzIsAkzAGG5Khr6G1Yzx/iFKE5SxMSXBoAVX2YVPSDPG+28qWlKAgTlKCVKSlTJALKAUttUkUFmrBJbH2L/HN8JEvZ7h6JUtUlSHOYtOlPMAFG7tFixcBLVMP7TcbVgJcvIlKlzc7FyGCcrlXmKMNYBSf4hKz/8Alkol/wCClO22gLxl+P8AFDiJpWScoACBbKkaM5q7vveARe1d2w8MDcvJcFbi/FZuJmfEnKzKACQWAASCWAHUnzhkhEQBPv7mLuHRGLHelSCXC5FSo/p9TtB7hsh3KvpeB2FkkAJo1+ZMaLCSGSA/jt7+0agrkCzSqNfZOlL06ftE7jWzE+EMCajxp9PfOJRDAgxsuaMuardK3aJJSnsCxqGB2F6Rx6i/VvdeXOHrVQ60dn+p26RdFHEIFCbuSCdNxYaR1SHYV8yG8Y6EilKaa87co6gWD8n/AB71MQg4Ctj72jrf7b3pHUvqBHFEE3ao5PFlDVM9/wDuhROBHYhDxNMoXv5Q2YjRovhPnCRLo+sJWdkFzZLaQOn4Umwg/OMVVDcxZVgP+QMTyuHDWL+vvrEqU1beLtkIcGhUtMxCQAmZlzFgSyTRIJqASatdokRgk6JA3pFoJFo6B5Rltkor/BSDQAeEdBiRRrEY1iyh6THVxxNI60UQlkgZCCO/ncFqFLWvStbbQUwEmo91ihJTR4OcNw+VOY3PpE6KCeBkZlilE+w/vSDaUhms9KfmKfDpOVIOpvbWwL8oIoAaug9IYxxpCOae6RwdP9b/AHh6U1s/2hSmIzCrh6nQ/SJBLDgnTeCAGdysKbUFPKE7lrUfpzjpGhb6ekOCRbk3vVosoa9gSK8700jiQCT5/wDFmfz1HWHqS4YgG96/b20dCeTNp61a1D6xCHUP4f7jrBxWoHJ/GGs1AdjWurNyh4Ic79WJ69SIhDjL0CW5j94UMOHQanK+rivjzhRCHm3E5KUTsqQwySy3MoST6kxSmGvQfcj6CFChL2dePRRn36N94jmxyFFkElNYkl69RChRCEiRUx1QpHIUUWMIoekJqQoUWUcX79IdL0jsKIQvgRpZCR3BoSl/+38xyFE+jPpmhQgUDUidKag629iOQoaOYyRCbf8AKET3gNGhQo0ihIuRpT6GHoVfxhQohRJDMWWQoi4ST5AtChRCEjd40Fh946r9vUCFCiyDgYUKFFEP/9k=" />
					</div>
					<input type="hidden" id="photo" name="photo" value="인증 사진 정보">
				</div>

				<!-- 내용 -->
				<div class="form-section">
					<div class="form-section-box">
						<label for="content">내용</label>
					</div>
					<div class="read-only-box" id="content-box">그릭요거트 + 연어 조합 추천합니다. 그릭요거트는 유당 함량이 낮아 다이어트에 도움이 되고 연어는 핵산의 함량이 높아 인체의 노화를 방지하는 역할을 한다고 해요.</div>
				</div>
			</div>

			<!-- 수정 및 삭제 버튼 -->
			<div class="form-section button-group">
				<button type="button" class="btn btn-edit" id="edit-btn">수정</button>
				<button type="button" class="btn btn-delete" id="delete-btn">삭제</button>
			</div>
		</form>
	</div>

	<!-- 댓글 섹션 -->
	<div class="container comment-section">
		<div class="form-section">
			<div class="form-section-box">
				<label for="title">댓글(3)</label>
			</div>
		</div>
		<!-- 댓글 리스트 -->
		<ul class="comment-list" id="commentListView">
			<li>
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo1KfVK6CMjDIZtF3wbcKB6dzmFshqiAcuOQ&s" alt="유저 사진">
				<div class="comment-text">
					<div class="comment-date">2024-01-11</div>
					<br>건강해질것같아요!!
				</div>
				<button class="delete-button" style="background-color: #CDC8E7; color: #8475BC; border: none; padding: 10px 20px; cursor: pointer; margin-left: auto; border-radius: 8px;">삭제</button>
			</li>
			<li>
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo1KfVK6CMjDIZtF3wbcKB6dzmFshqiAcuOQ&s" alt="유저 사진">
				<div class="comment-text">
					<div class="comment-date">2024-01-10</div>
					<br>좋은 챌린지네요! 응원합니다!
				</div>
				<button class="delete-button" style="background-color: #CDC8E7; color: #8475BC; border: none; padding: 10px 20px; cursor: pointer; margin-left: auto; border-radius: 8px;">삭제</button>
			</li>
			<li>
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo1KfVK6CMjDIZtF3wbcKB6dzmFshqiAcuOQ&s" alt="유저 사진">
				<div class="comment-text">
					<div class="comment-date">2024-01-07</div>
					<br>우와아아아!
				</div>
				<button class="delete-button" style="background-color: #CDC8E7; color: #8475BC; border: none; padding: 10px 20px; cursor: pointer; margin-left: auto; border-radius: 8px;">삭제</button>
			</li>
		</ul>

		<!-- 댓글 입력 폼 -->
		<form action="/commentInsert" method="POST">
			<div class="form-section">
				<div class="form-section-box">
					<label for="comment">댓글작성</label>
				</div>
			</div>
			<div class="comment-input-group">
				<div class="user-photo">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXoFMmuTxgt4hCJ2yoh6c-eFQeQtszHhsCug&s" alt="유저 사진">
				</div>
				<textarea id="comment" name="comment" placeholder="댓글을 입력해주세요."></textarea>
				<button type="submit" id="btn-submit">댓글 등록</button>
			</div>
		</form>
	</div>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>
