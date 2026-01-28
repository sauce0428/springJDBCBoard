package com.board.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.board.domain.Member;

@Repository
public class MemberDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

//	public int insertBoard(Board board) {
//		String query = "insert into jdbcBoard values(jdbcBoard_seq.nextval, ?, ?, ?, sysdate)";
//		int count = jdbcTemplate.update(query, board.getTitle(), board.getContent(), board.getWriter());
//		return count;
//	}
//
//	public List<Board> boardList() {
//		String query = "select * from jdbcBoard where no > 0 order by no desc, regdate desc";
//
//		List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
//			@Override
//			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
//				Board board = new Board();
//				board.setBoardNo(rs.getInt("no"));
//				board.setTitle(rs.getString("title"));
//				board.setContent(rs.getString("content"));
//				board.setWriter(rs.getString("writer"));
//				board.setRegDate(rs.getDate("regdate"));
//				return board;
//			}
//		});
//		return boardList;
//	}
//
//	public Board selectByNo(Board board) {
//		String query = "select * from jdbcBoard where no = ?";
//
//		List<Board> boardList = jdbcTemplate.query(query, new RowMapper<Board>() {
//			@Override
//			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
//				Board board = new Board();
//				board.setBoardNo(rs.getInt("no"));
//				board.setTitle(rs.getString("title"));
//				board.setContent(rs.getString("content"));
//				board.setWriter(rs.getString("writer"));
//				board.setRegDate(rs.getDate("regdate"));
//				return board;
//			}
//		}, board.getBoardNo());
//		return boardList.isEmpty() ? null : boardList.get(0);
//	}

	public int insertMember(Member member) {
		String query = "INSERT INTO MEMBER VALUES (Member_seq.NEXTVAL, ?, ?, ?)";
		int count = jdbcTemplate.update(query, member.getId(), member.getPassword(), member.getName());
		return count;
	}
}
