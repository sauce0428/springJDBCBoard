<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
/* 배경 그라데이션 애니메이션 */
body {
    margin: 0;
    font-family: 'Arial', sans-serif;
    overflow: hidden;
    background: linear-gradient(45deg, #ff9a9e, #fad0c4, #a1c4fd, #fbc2eb, #a6c1ee);
    background-size: 400% 400%;
    animation: gradientBG 15s ease infinite;
}

@keyframes gradientBG {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* 폼 컨테이너 */
.form-container {
    width: 400px;
    margin: 80px auto;
    padding: 40px;
    background: rgba(255, 255, 255, 0.15);
    border-radius: 20px;
    box-shadow: 0 0 30px rgba(0,0,0,0.3);
    backdrop-filter: blur(8px);
    color: #fff;
}

/* 제목 */
h1 {
    text-align: center;
    margin-bottom: 30px;
    text-shadow: 2px 2px 6px rgba(0,0,0,0.6);
}

/* 입력 필드 */
input[type="text"], input[type="password"] {
    width: 100%;
    padding: 12px 15px;
    margin: 10px 0;
    border: none;
    border-radius: 12px;
    background: rgba(255,255,255,0.25);
    color: #fff;
    font-size: 16px;
    outline: none;
    transition: 0.3s;
}

input[type="text"]:focus, input[type="password"]:focus {
    background: rgba(255,255,255,0.5);
}

/* 버튼 */
button {
    width: 100%;
    padding: 12px 0;
    margin-top: 20px;
    border: none;
    border-radius: 12px;
    background: rgba(255,255,255,0.3);
    color: #fff;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    background: rgba(255,255,255,0.6);
}

/* 링크 */
.links {
    text-align: center;
    margin-top: 15px;
}

.links a {
    color: #fff;
    text-decoration: none;
    margin: 0 10px;
    font-weight: bold;
}

.links a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
    <div class="form-container">
        <h1>회원가입</h1>
        <form action="/board/insertm" method="post">
            <input type="text" name="id" placeholder="아이디" required>
            <input type="password" name="password" placeholder="비밀번호" required>
            <input type="text" name="name" placeholder="이름" required>
            <button type="submit">가입하기</button>
        </form>
        <div class="links">
            <a href="loginForm">로그인</a>
            <a href="board/boardList">게시판 목록</a>
        </div>
    </div>
</body>
</html>