package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productDto;

@Mapper
public interface productDao {
	
	//공지사항 전체출력
		public List<productDto> productList();
		
		//공지사항 저장
		public int productWriteAction(String P_NAME , String N_CONTENT , String N_WRITE );
		
		//공지사항 수정
		public int productUpdateAction(String N_TITLE , String N_CONTENT , String N_WRITER, int N_IDX);
		
		//공지사항 단건조회
		public productDto productModifyView(int P_IDX);
		
		//공지사항 삭제
		public int productDeleteAction (int P_IDX);
		
		//페이징당 게시글 출력
		public List<productDto> betweenList(int startList, int endList);
		public int productCount();
		//제목검색 액션
		public List<productDto> betweenListName(int startList, int endList, String keyword);
		public int nameCount(String keyword);
		
	
	
	
}
