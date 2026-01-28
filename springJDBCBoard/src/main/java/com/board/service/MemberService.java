package com.board.service;

import com.board.domain.Member;

public interface MemberService {
	public int insertMember(Member member) throws Exception;
	public Member selectNo(Member member) throws Exception;
	public String insertId(Member member) throws Exception;
	public String insertPassword(Member member) throws Exception;
	public String insertName(Member member) throws Exception;
}