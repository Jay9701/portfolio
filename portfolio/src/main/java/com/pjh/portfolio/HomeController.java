package com.pjh.portfolio;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pjh.service.BoardService;


@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/")
	public String home(Model model) {
		logger.info("home");

		model.addAttribute("freeList", service.selectList("freeBoard"));
		model.addAttribute("issueList", service.selectList("issueBoard"));
		
		return "pages/home";
	}
}
