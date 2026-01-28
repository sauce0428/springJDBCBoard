package com.board.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Board {
	private int boardNo;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private String searchType;
	private String keyword;
}
