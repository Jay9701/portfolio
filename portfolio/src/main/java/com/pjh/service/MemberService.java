package com.pjh.service;

import com.pjh.domain.MemberDTO;

public interface MemberService {
	// 회원가입(계정등록)
	public void createAccount(MemberDTO member);
	// 로그인
	public Integer memberCheck(MemberDTO member);
	// 로그인 정보 저장
	public MemberDTO memberInfo(MemberDTO member);
}
