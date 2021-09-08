package com.pjh.service;

import java.util.ArrayList;

import com.pjh.domain.ReplyDTO;

public interface ReplyService {
	public ArrayList<ReplyDTO> getList(int bno);
	public int addReply(ReplyDTO dto);
}
