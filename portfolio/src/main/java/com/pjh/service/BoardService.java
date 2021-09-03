package com.pjh.service;

import java.util.ArrayList;

import com.pjh.domain.BoardDTO;

public interface BoardService {
	public void insert(BoardDTO board);
	public ArrayList<BoardDTO> selectList(String category);
}
