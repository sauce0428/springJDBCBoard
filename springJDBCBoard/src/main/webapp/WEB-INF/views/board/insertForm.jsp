<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Animated Board Write</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* 🌈 움직이는 배경 */
body {
    margin: 0;
    min-height: 100vh;
    overflow: hidden;
    background: linear-gradient(270deg, #6a11cb, #2575fc, #ff512f, #dd2476);
    background-size: 800% 800%;
    animation: gradientMove 18s ease infinite;
    font-family: 'Pretendard','Noto Sans KR', sans-serif;
}

@keyframes gradientMove {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* ✨ 파티클 캔버스 */
#particle-canvas {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
}

/* 💎 글래스 카드 */
.glass-card {
    position: relative;
    z-index: 2;
    background: rgba(255,255,255,0.18);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
    border-radius: 20px;
    box-shadow: 0 30px 80px rgba(0,0,0,.3);
    padding: 40px;
    max-width: 820px;
    margin: 80px auto;
    animation: fadeUp 0.9s ease;
}

@keyframes fadeUp {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

.title-area {
    text-align: center;
    color: #fff;
    margin-bottom: 35px;
}

.title-area h2 {
    font-weight: 800;
}

.input-group-text,
.form-control {
    background: transparent;
    border-color: rgba(255,255,255,.5);
    color: #fff;
}

.form-control::placeholder {
    color: rgba(255,255,255,.75);
}

.form-control:focus {
    background: transparent;
    color: #fff;
    box-shadow: none;
    border-color: #fff;
}

textarea {
    resize: none;
}

.btn-write {
    background: linear-gradient(135deg, #ff512f, #dd2476);
    border: none;
    color: #fff;
    padding: 12px 40px;
    border-radius: 30px;
    font-weight: 700;
    transition: .3s;
}

.btn-write:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 35px rgba(221,36,118,.6);
}

.btn-cancel {
    border: 1px solid rgba(255,255,255,.6);
    color: #fff;
    border-radius: 30px;
    padding: 12px 34px;
}
</style>
</head>

<body>

<!-- ✨ 파티클 레이어 -->
<canvas id="particle-canvas"></canvas>

<!-- 💎 입력 폼 -->
<div class="glass-card">
    <div class="title-area">
        <h2><i class="bi bi-pencil-square"></i> 게시글 작성</h2>
        <span>생각을 기록하고 공유하세요</span>
    </div>

    <form:form action="/board/insert" method="post" modelAttribute="board">

        <div class="mb-4 input-group">
            <span class="input-group-text"><i class="bi bi-type"></i></span>
            <form:input path="title" cssClass="form-control" placeholder="제목"/>
        </div>

        <div class="mb-4 input-group">
            <span class="input-group-text"><i class="bi bi-person"></i></span>
            <form:input path="writer" cssClass="form-control" placeholder="작성자"/>
        </div>

        <div class="mb-5 input-group">
            <span class="input-group-text"><i class="bi bi-chat-dots"></i></span>
            <form:textarea path="content" cssClass="form-control" rows="7" placeholder="내용"/>
        </div>

        <div class="d-flex justify-content-between">
            <a href="/board/boardList" class="btn btn-cancel">목록</a>
            <button class="btn btn-write">
                <i class="bi bi-check-circle"></i> 등록
            </button>
        </div>

    </form:form>
</div>

<!-- ✨ 파티클 스크립트 -->
<script>
const canvas = document.getElementById('particle-canvas');
const ctx = canvas.getContext('2d');

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

const particles = [];
const PARTICLE_COUNT = 70;

class Particle {
    constructor() {
        this.x = Math.random() * canvas.width;
        this.y = Math.random() * canvas.height;
        this.size = Math.random() * 2 + 1;
        this.speedY = Math.random() * 0.6 + 0.2;
    }

    update() {
        this.y -= this.speedY;
        if (this.y < 0) {
            this.y = canvas.height;
            this.x = Math.random() * canvas.width;
        }
    }

    draw() {
        ctx.fillStyle = "rgba(255,255,255,0.7)";
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
        ctx.fill();
    }
}

for (let i = 0; i < PARTICLE_COUNT; i++) {
    particles.push(new Particle());
}

function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    particles.forEach(p => {
        p.update();
        p.draw();
    });
    requestAnimationFrame(animate);
}

animate();

window.addEventListener('resize', () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
});
</script>

</body>
</html>