package com.pjh.service;

import com.pjh.domain.MemberDTO;

public interface MemberService {
	// 회원가입(계정등록)
	public void createAccount(MemberDTO member);
}
