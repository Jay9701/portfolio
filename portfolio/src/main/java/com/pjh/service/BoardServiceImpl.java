package com.pjh.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.mapper.BoardMapper;
import com.pjh.domain.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
	@Autowired
	private BoardMapper mapper;
	
	public void insert(BoardDTO board) {
		logger.info("insert success!");
		mapper.insert(board);
	}

	public ArrayList<BoardDTO> selectList(String category) {
		logger.info("select List");
		return mapper.selectList(category);
	}
}
