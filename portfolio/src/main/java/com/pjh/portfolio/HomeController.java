package com.pjh.portfolio;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home(Locale locale) {
		logger.info("home");
		
		return "pages/home";
	}

	@GetMapping("/freeB")
	public String freeBoard() {
		logger.info("free");
		
		return "pages/freeB";
	}

	@GetMapping("/issueB")
	public String issueBoard() {
		logger.info("issue");
		
		return "pages/issueB";
	}
}
