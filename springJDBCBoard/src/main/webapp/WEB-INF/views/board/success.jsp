<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 완료</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
body {
    min-height: 100vh;
    background: linear-gradient(270deg, #00c6ff, #0072ff);
    background-size: 400% 400%;
    animation: bgMove 12s ease infinite;
    display: flex;
    align-items: center;
    justify-content: center;
}

@keyframes bgMove {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

.card-box {
    background: rgba(255,255,255,0.18);
    backdrop-filter: blur(16px);
    border-radius: 20px;
    padding: 45px;
    text-align: center;
    color: #fff;
    box-shadow: 0 30px 70px rgba(0,0,0,.3);
    animation: pop 0.6s ease;
}

@keyframes pop {
    from { transform: scale(0.9); opacity: 0; }
    to { transform: scale(1); opacity: 1; }
}

.icon-success {
    font-size: 4rem;
    color: #a6ffcb;
}

.btn-main {
    background: linear-gradient(135deg, #43e97b, #38f9d7);
    border: none;
    color: #000;
    font-weight: 700;
    padding: 12px 36px;
    border-radius: 30px;
    transition: .3s;
}

.btn-main:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(56,249,215,.5);
}
</style>
</head>

<body>

<div class="card-box">
    <div class="icon-success mb-3">
        <i class="bi bi-check-circle-fill"></i>
    </div>

    <h2 class="fw-bold mb-3">게시글 등록 완료!</h2>
    <p class="mb-4">게시글이 정상적으로 저장되었습니다.</p>

    <!-- 🔥 버튼 스타일 통일 -->
    <div class="d-flex justify-content-center gap-3">
        <a href="/board/insertForm" class="btn btn-main">목록으로</a>
        <a href="/board/write" class="btn btn-main">글 더 쓰기</a>
    </div>
</div>

</body>
</html>