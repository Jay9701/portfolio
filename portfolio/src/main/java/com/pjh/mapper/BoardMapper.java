package com.pjh.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.pjh.domain.BoardDTO;

@Mapper
public interface BoardMapper {
	public void insert(BoardDTO board);
	public ArrayList<BoardDTO> selectList(String category);
	public ArrayList<BoardDTO> selectListSub(@Param("sub_category") String sub_category, @Param("category") String categoty);
	public BoardDTO detail(int bno);
	public void updateView(int bno);
	public void updateRecomend(int bno);
}
