package com.study.springboot.dao.BH;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.noticeDto;

@Mapper
public interface noticeDao {

	//공지사항 전체출력
	public List<noticeDto> noticeList();
	
	//공지사항 저장
	public int noticeWriteAction(String N_TITLE , String N_CONTENT , String N_WRITE );
	
	//공지사항 수정
	public int noticeUpdateAction(String N_TITLE , String N_CONTENT , String N_WRITER, int N_IDX);
	
	//공지사항 단건조회
	public noticeDto noticeModifyView(int N_IDX);
	
	//공지사항 삭제
	public int noticeDeleteAction (int N_IDX);
}
