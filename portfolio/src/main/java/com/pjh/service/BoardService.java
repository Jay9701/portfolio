package com.pjh.service;

import java.util.ArrayList;

import com.pjh.domain.Criteria;

import com.pjh.domain.BoardDTO;

public interface BoardService {
	public void insert(BoardDTO board);
	public int getTotalCount(Criteria cri, String category);
	public int getConfirmCount(Criteria cri, String category);
	public int getRecommendCount(Criteria cri, String category);
	public int getSubCount(Criteria cri, String category,String sub_category);
	public ArrayList<BoardDTO> selectList(String category);
	public ArrayList<BoardDTO> selectListSub(String sub_category, String category);
	public ArrayList<BoardDTO> selectListConfirm(String category);
	public ArrayList<BoardDTO> selectListRecommend(String category);
	public BoardDTO detail(int bno);
	public void updateView(int bno);
	public void updateRecommend(int bno);
}
