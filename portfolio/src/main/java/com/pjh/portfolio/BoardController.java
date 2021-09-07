package com.pjh.portfolio;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pjh.domain.PageDTO;
import com.pjh.domain.BoardDTO;
import com.pjh.domain.Criteria;
import com.pjh.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	@GetMapping("")
	public String Board(Model model,HttpServletRequest request, Criteria cri) {
		
		
		String category = request.getParameter("category");
		String sub_category = request.getParameter("sub");
		String fillter = request.getParameter("fillter");
		int count = 0;
		
		
		logger.info("boardList");
		logger.info(category);
		
		logger.info(cri+"");
		
		
		
		if(sub_category==null) {
			if(fillter==null) {
				count = service.getTotalCount(cri,category);
				model.addAttribute("list", service.selectList(category));
			}else if(fillter.equals("confirm")) {
				count = service.getConfirmCount(cri,category);
				logger.info(fillter);
				model.addAttribute("list", service.selectListConfirm(category));
			}else if(fillter.equals("recommend")) {
				count = service.getRecommendCount(cri,category);
				logger.info(fillter);
				model.addAttribute("list", service.selectListRecommend(category));
			}
		}else {
			count = service.getSubCount(cri,category,sub_category);
			logger.info(sub_category);
			model.addAttribute("list", service.selectListSub(sub_category, category));
		}

		if(request.getParameter("p")==null) {
			model.addAttribute("page", cri.getAmount());
		}else {
			int page = Integer.parseInt(request.getParameter("p"))*cri.getAmount();
			model.addAttribute("page", page);
		}

		model.addAttribute("pageMaker", new PageDTO(cri,count));
		return "pages/board";
	}
	
	@GetMapping("write")
	public String write(HttpSession session) {
		logger.info("write");
		if(session.getAttribute("memberInfo")==null) {
			return "board/none_access";
		}
		return "board/write";
	}
	
	@PostMapping("insert")
	public String insert(BoardDTO board, HttpServletRequest request) {
		logger.info("insert" + board);
		
		String contents = ((String)board.getContent().replace("\r\n","<br>"));
        board.setContent(contents);
		
		service.insert(board);

		return "redirect:/board?category="+request.getParameter("category");
	}
	
	@GetMapping("detail")
	public void detail(@RequestParam("bno") int bno, Model model) {
		logger.info("detail " + bno);
		service.updateView(bno);
		model.addAttribute("board", service.detail(bno));
	}
	
	@GetMapping("recommend")
	public String recommend(@RequestParam("bno") int bno) {
		logger.info("recommend " + bno);
		service.updateRecommend(bno);
		return "redirect:/board/detail?bno=" + bno;
	}
}
