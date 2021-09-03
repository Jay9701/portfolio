package com.pjh.mapper;

import java.util.ArrayList;

import com.pjh.domain.BoardDTO;

public interface BoardMapper {
	public void insert(BoardDTO board);
	public ArrayList<BoardDTO> selectList(String category);
}
