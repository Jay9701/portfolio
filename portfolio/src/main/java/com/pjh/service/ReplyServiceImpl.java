package com.pjh.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pjh.domain.ReplyDTO;
import com.pjh.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService {
	private static final Logger logger = LoggerFactory.getLogger(ReplyServiceImpl.class);
	
	@Autowired
	private ReplyMapper rmapper;
	
	public ArrayList<ReplyDTO> getList(int bno) {
		logger.info("get Reply List of a Board : " + bno);
		return rmapper.getList(bno);
	}
}
