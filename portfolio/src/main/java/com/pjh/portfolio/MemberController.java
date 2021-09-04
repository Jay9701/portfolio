package com.pjh.portfolio;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pjh.domain.MemberDTO;
import com.pjh.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService service;

	
	@GetMapping("register")
	public void register() {
		logger.info("register");
	}

	@PostMapping("createAccount")
	public String insertMember(MemberDTO member) {
		logger.info("creating..." + member);
		service.createAccount(member);
		return "redirect:/member/login";
	}
	
	@GetMapping("login")
	public void login() {
		logger.info("login page");
	}
	
	@PostMapping("memberCheck")
	public String memberCheck(MemberDTO member,HttpSession session) {
		logger.info("logging in...");
		MemberDTO memberInfo = service.memberInfo(member);
		session.setAttribute("memberInfo", memberInfo);
		if(memberInfo != null) {
			logger.info("success!");
			return "redirect:/";
		}else {
			return "redirect:/member/login?msg=fail";
		}
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		logger.info("logout");
		session.invalidate();
		return "redirect:/";
	}
}
