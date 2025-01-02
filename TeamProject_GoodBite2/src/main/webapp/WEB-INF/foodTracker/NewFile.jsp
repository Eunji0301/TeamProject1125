<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSS 그래프 바</title>
    <style>
        .graph-container {
            --percent: 30%; /* 여기서 퍼센트 값을 변경할 수 있습니다 */
            width: 300px;
            height: 30px;
            background-color: #ccc;
            border-radius: 15px;
            overflow: hidden;
        }

        .graph-bar {
            width: 100%;
            height: 100%;
            background: linear-gradient(to right, red var(--percent), transparent var(--percent));
        }
    </style>
</head>
<body>
    <div class="graph-container">
        <div class="graph-bar" style="--percent: 50%; "></div>
    </div>
</body>
</html>
