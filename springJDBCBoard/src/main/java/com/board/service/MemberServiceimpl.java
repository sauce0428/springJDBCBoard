package com.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
import com.board.domain.Member;

@Service
public class MemberServiceimpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public int insertMember(Member member) throws Exception {
		int count = memberDAO.insertMember(member);
		return count;
	}

	@Override
	public Member selectNo(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertId(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertPassword(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String insertName(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

//	@Override
//	public Member selectNo(Member member) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public String insertId(Member member) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public String insertPassword(Member member) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public String insertName(Member member) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
