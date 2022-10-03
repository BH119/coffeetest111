package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productAskDto;

@Mapper
public interface productAskDao {
	
	//공지사항 단건조회
	public productAskDto productModifyView(int N_IDX);
	
	//공지사항 삭제
	public int productDeleteAction (int N_IDX);
	
	//글 갯수 출력
	public int productAskCount();
	
	//페이징당 게시글 출력
	public List<productAskDto> betweenList(int startList, int endList);

	//제목검색 액션
	public List<productAskDto> betweenListTitle(int startList, int endList, String keyword);
	public int titleCount(String keyword);
	
	//글쓴이검색
	public List<productAskDto> betweenListWrite(int startList, int endList, String keyword);
	public int writeCount(String keyword);
	
}
