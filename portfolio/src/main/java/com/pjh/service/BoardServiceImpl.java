package com.pjh.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.mapper.BoardMapper;
import com.pjh.domain.BoardDTO;
import com.pjh.domain.Criteria;

@Service
public class BoardServiceImpl implements BoardService {
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	@Autowired
	private BoardMapper mapper;
	
	public void insert(BoardDTO board) {
		logger.info("mapper : insert");
		mapper.insert(board);
	}
	
	public int getTotalCount(Criteria cri, String category) {
		return mapper.getTotalCount(cri, category);
	}
	
	public int getConfirmCount(Criteria cri, String category) {
		return mapper.getConfirmCount(cri, category);
	}
	
	public int getRecommendCount(Criteria cri, String category) {
		return mapper.getRecommendCount(cri, category);
	}
	
	public int getSubCount(Criteria cri, String category, String sub_category) {
		return mapper.getSubCount(cri, category, sub_category);
	}

	public ArrayList<BoardDTO> selectList(String category) {
		logger.info("mapper : select List");
		return mapper.selectList(category);
	}

	public ArrayList<BoardDTO> selectListSub(String sub_category, String category) {
		logger.info("mapper : select List with sub");
		return mapper.selectListSub(sub_category, category);
	}
	
	public ArrayList<BoardDTO> selectListConfirm(String category) {
		return mapper.selectListConfirm(category);
	}
	
	public ArrayList<BoardDTO> selectListRecommend(String category) {
		return mapper.selectListRecommend(category);
		
	}

	public BoardDTO detail(int bno) {
		logger.info("mapper : detail");
		return mapper.detail(bno);
	}

	public void updateView(int bno) {
		logger.info("mapper : updateView");
		mapper.updateView(bno);
	}

	public void updateRecommend(int bno) {
		mapper.updateRecommend(bno);
	}
}
