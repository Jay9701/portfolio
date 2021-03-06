package com.pjh.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.domain.MemberDTO;
import com.pjh.mapper.MemberMapper;
import com.pjh.portfolio.MemberController;

@Service
public class MemberServiceImpl implements MemberService{
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberMapper mapper;
	
	// 회원가입(계정등록) 구현부
	public void createAccount(MemberDTO member) {
		logger.info("createAccount : " + member);
		mapper.insert(member);
	}
	// 로그인 구현부
	public Integer memberCheck(MemberDTO member) {
		logger.info("LoginAccount : " + member);
		return mapper.login(member);
	}
	// 로그인 정보 저장
	public MemberDTO memberInfo(MemberDTO member) {
		return mapper.memberInfo(member);
	}
}
