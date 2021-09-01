package com.pjh.mapper;

import com.pjh.domain.MemberDTO;

public interface MemberMapper {
	public void insert(MemberDTO member);
	public Integer login(MemberDTO member);
	public MemberDTO memberInfo(MemberDTO member);
}
