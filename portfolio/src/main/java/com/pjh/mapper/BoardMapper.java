package com.pjh.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pjh.domain.Criteria;
import com.pjh.domain.BoardDTO;

@Mapper
public interface BoardMapper {
	public void insert(BoardDTO board);
	public int getTotalCount(Criteria cri, @Param("category") String categoty);
	public int getConfirmCount(Criteria cri, @Param("category") String categoty);
	public int getRecommendCount(Criteria cri, @Param("category") String categoty);
	public int getSubCount(Criteria cri, @Param("category") String categoty, @Param("sub_category") String sub_category);
	public ArrayList<BoardDTO> selectList(String category);
	public ArrayList<BoardDTO> selectListSub(@Param("sub_category") String sub_category, @Param("category") String categoty);
	public ArrayList<BoardDTO> selectListConfirm(String category);
	public ArrayList<BoardDTO> selectListRecommend(String category);
	public BoardDTO detail(int bno);
	public void updateView(int bno);
	public void updateRecommend(int bno);
	public void updateReplycnt(int bno);
}
