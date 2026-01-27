<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    overflow: hidden;
    background: linear-gradient(45deg, #fbd3e9, #bbf7d0, #a1c4fd, #fbc2eb);
    background-size: 400% 400%;
    animation: gradientBG 15s ease infinite;
}

@keyframes gradientBG {
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
}

.detail-container {
    width: 60%;
    margin: 50px auto;
    background: rgba(255,255,255,0.15);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
    backdrop-filter: blur(5px);
    color: #fff;
}

h2 {
    text-align: center;
    text-shadow: 2px 2px 4px #000;
}

.info {
    margin: 20px 0;
    display: flex;
    justify-content: space-between;
}

.content {
    margin-top: 30px;
    line-height: 1.6;
    white-space: pre-wrap;
    font-size: 18px;
}

.btn-container {
    text-align: center;
    margin-top: 30px;
}

.btn {
    background: rgba(255,255,255,0.3);
    border: none;
    padding: 10px 25px;
    border-radius: 10px;
    cursor: pointer;
    color: #fff;
    font-weight: bold;
    margin: 0 5px;
    transition: 0.3s;
}

.btn:hover {
    background: rgba(255,255,255,0.6);
}
</style>
</head>
<body>
    <div class="detail-container">
        <h2>${board.title}</h2>
        <div class="info">
            <span>작성자: ${board.writer}</span>
            <span>작성일: ${board.regDate}</span>
        </div>
        <div class="content">
            ${board.content}
        </div>
        <div class="btn-container">
            <a href="/board/boardList"><button class="btn">목록으로</button></a>
            <a href="/insertForm"><button class="btn">글쓰기</button></a>
        </div>
    </div>
</body>
</html>