package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.answerDto;

@Mapper
public interface answerDao {

	//답변 저장
	public int answerWriteAction(String AS_NAME , String AS_CONTENT , int AS_PA_IDX);
	
	//답변 출력
	public List<answerDto> answerList(int PA_IDX);
	
	//답변 삭제
	public int answerDeleteAction(int AS_IDX);
	
	//게시글과함께 답글삭제
	public int answerDeleteByProductAsk(int AS_IDX);
	
	
}	
