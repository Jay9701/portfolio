package com.pjh.mapper;

import java.util.ArrayList;

import com.pjh.domain.ReplyDTO;

public interface ReplyMapper {
	public ArrayList<ReplyDTO> getList(int bno);
	public int addReply(ReplyDTO dto);
}
