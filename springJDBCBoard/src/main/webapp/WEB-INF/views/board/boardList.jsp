<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        overflow: hidden;
        background: linear-gradient(45deg, #ff9a9e, #fad0c4, #fbc2eb, #a6c1ee);
        background-size: 400% 400%;
        animation: gradientBG 15s ease infinite;
    }

    @keyframes gradientBG {
        0%{background-position:0% 50%}
        50%{background-position:100% 50%}
        100%{background-position:0% 50%}
    }

    h1 {
        text-align: center;
        color: #fff;
        margin-top: 20px;
        text-shadow: 2px 2px 4px #000;
    }

    table {
        width: 80%;
        margin: 30px auto;
        border-collapse: collapse;
        background: rgba(255,255,255,0.15);
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0 0 20px rgba(0,0,0,0.2);
        backdrop-filter: blur(5px);
    }

    th, td {
        padding: 15px;
        text-align: center;
        color: #fff;
        border-bottom: 1px solid rgba(255,255,255,0.2);
    }

    th {
        background: rgba(255,255,255,0.25);
        font-size: 18px;
    }

    td a {
        color: #fff;
        text-decoration: none;
    }

    td a:hover {
        text-decoration: underline;
    }

    .btn-container {
        text-align: center;
        margin-top: 20px;
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
    <h1>게시판 목록</h1>
    <table>
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="board" items="${boardList}">
                <tr>
                    <td><a href="/board/detail/${board.boardNo}">${board.boardNo}</a></td>
                    <td><a href="/board/detail/${board.boardNo}">${board.title}</a></td>
                    <td>${board.writer}</td>
                    <td>${board.regDate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="btn-container">
        <a href="/board/insert"><button class="btn">글쓰기</button></a>
    </div>
</body>
</html>