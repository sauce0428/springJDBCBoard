package com.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.Board;

@Repository
public class BoardDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 🔹 공용 RowMapper
    private RowMapper<Board> boardRowMapper = (ResultSet rs, int rowNum) -> {
        Board board = new Board();
        board.setBoardNo(rs.getInt("no"));
        board.setTitle(rs.getString("title"));
        board.setContent(rs.getString("content"));
        board.setWriter(rs.getString("writer"));
        board.setRegDate(rs.getDate("regdate"));
        return board;
    };

    // 🔹 게시글 등록
    public int insertBoard(Board board) {
        String query = "INSERT INTO jdbcBoard VALUES (jdbcBoard_seq.nextval, ?, ?, ?, sysdate)";
        return jdbcTemplate.update(query, board.getTitle(), board.getContent(), board.getWriter());
    }

    // 🔹 전체 게시글 조회
    public List<Board> boardList() {
        String query = "SELECT * FROM jdbcBoard WHERE no > 0 ORDER BY no DESC, regdate DESC";
        return jdbcTemplate.query(query, boardRowMapper);
    }

    // 🔹 게시글 번호로 조회
    public Board selectByNo(Board board) {
        String query = "SELECT * FROM jdbcBoard WHERE no = ?";
        List<Board> list = jdbcTemplate.query(query, boardRowMapper, board.getBoardNo());
        return list.isEmpty() ? null : list.get(0);
    }

    // 🔹 게시글 삭제
    public int deleteBoard(Board board) {
        String query = "DELETE FROM jdbcBoard WHERE no = ?";
        return jdbcTemplate.update(query, board.getBoardNo());
    }

    // 🔹 게시글 수정
    public int updateBoard(Board board) {
        String query = "UPDATE jdbcBoard SET writer = ?, title = ?, content = ? WHERE no = ?";
        return jdbcTemplate.update(query, board.getWriter(), board.getTitle(), board.getContent(), board.getBoardNo());
    }

    public List<Board> boardSerch(Board board) {
        String callName = board.getSearchType();

        String query = "SELECT * FROM JDBCBOARD WHERE " +callName+" LIKE ? ORDER BY NO DESC, REGDATE DESC";

        List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
            @Override
            public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
                Board board = new Board();

                board.setBoardNo(rs.getInt("NO"));
                board.setTitle(rs.getString("TITLE"));
                board.setContent(rs.getString("CONTENT"));
                board.setWriter(rs.getString("WRITER"));
                board.setRegDate(rs.getDate("REGDATE"));

                return board;
            }
        }, "%"+board.getKeyword()+"%");

        return boardList;
    }
}
