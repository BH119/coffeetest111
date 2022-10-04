package com.study.springboot.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface answerDao {

	//공지사항 저장
		public int answerWriteAction(String AS_NAME , String AS_CONTENT , int AS_PA_IDX);
		
	
}
