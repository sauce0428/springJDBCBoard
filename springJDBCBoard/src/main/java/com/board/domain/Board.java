package com.board.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board {
<<<<<<< HEAD
	private int boardNo;
=======
	
	private int no;
>>>>>>> feature/board
	private String title;
	private String content;
	private String writer;
	private Date regDate;
<<<<<<< HEAD
=======
	
	//검색에 필요한 항목
>>>>>>> feature/board
	private String searchType;
	private String keyword;
}
