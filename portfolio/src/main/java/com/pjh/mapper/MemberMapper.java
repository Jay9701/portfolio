package com.pjh.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.pjh.domain.MemberDTO;

@Mapper
public interface MemberMapper {
	public void insert(MemberDTO member);
	public Integer login(MemberDTO member);
	public MemberDTO memberInfo(MemberDTO member);
}
