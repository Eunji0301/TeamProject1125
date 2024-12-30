<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relative Overlapping</title>
    <style>
        .container {
            position: relative;
            width: 300px;
            height: 300px;
        }
        .box1 {
            position: relative;
            width: 200px;
            height: 200px;
            background-color: red;
            margin-top: -50px; /* 위로 밀어서 겹치게 */
        }
        .box2 {
            position: relative;
            width: 200px;
            height: 200px;
            background-color: blue;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="box1"></div>
        <div class="box2"></div>
    </div>
</body>
</html>
