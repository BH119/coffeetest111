package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.productAskDto;

@Mapper
public interface productAskDao {
	
	//상품문의단건조회
	public productAskDto productAskModifyView(int PA_IDX);
	
	//상품문의게시글 삭제 
	public int productDeleteAction (int PA_IDX);
	
	//글 갯수 출력
	public int productAskCount();
	
	//페이징당 게시글 출력
	public List<productAskDto> betweenList(int startList, int endList);
	//페이징당 게시글 출력
	public List<productAskDto> betweenList2(int startList, int endList, int PA_P_IDX);
	
	//제목검색 액션
	public List<productAskDto> betweenListTitle(int startList, int endList, String keyword);
	public int titleCount(String keyword);
	
	//글쓴이검색
	public List<productAskDto> betweenListWrite(int startList, int endList, String keyword);
	public int writeCount(String keyword);
	
	//상품문의 저장
	public int productAskWriteAction(String PA_TITLE , String PA_LOCK , String PA_CONTENT 
			,String PA_P_NAME,String PA_P_FILEPATH,String PA_P_FILENAME1, String PA_P_PRICE 
			,int PA_P_IDX ,String PA_STATE);
	//상품문의 조회시 비밀번호 체크
	public int AjaxQnaPWcheek(String qna_PW, String PA_IDX);
	
	//답변상태
	public int answerState(String PA_STATE, int PA_IDX);
	
}
