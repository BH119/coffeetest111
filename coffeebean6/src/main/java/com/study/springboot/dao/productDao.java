package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productDto;

@Mapper
public interface productDao {
	
	//전체출력
		public List<productDto> productList();


		//상품관리 저장
		public int productWriteAction(String P_NAME , String P_CODE , String P_FILENAME1,
				String P_FILEPATH, int P_CATEGORY, int P_PRICE, int P_STOCK );
		
		//공지사항 수정
		public int productUpdateAction(int P_IDX , String P_NAME , String P_CODE,
				String P_FILENAME1,String P_FILEPATH, int P_CATEGORY, int P_PRICE, int P_STOCK );
		//상품 단건조회
		public productDto productModifyView(int P_IDX);
		
		//상품게시물 삭제
		public int productDeleteAction (int P_IDX);
		//이미지 경로 이름 삭제
		public int imgDelNamePath(int P_IDX );
		
		//페이징당 게시글 출력
		public List<productDto> betweenList(int startList, int endList);
		public int productCount();
		//제목검색 액션
		public List<productDto> betweenListName(int startList, int endList, String keyword);
		public int nameCount(String keyword);
		
		//카테고리별 정렬(전체)
		public List<productDto> betweenListCategory(int startList, int endList, String category);
		//카테고리별 정렬(콜드브루)
		public List<productDto> categoryType1Count(int startList, int endList, String category);
		public int categoryType1Count(String category);
		//카테고리별 정렬(원두)
		public List<productDto> categoryType2Count(int startList, int endList, String category);
		public int categoryType2Count(String category);
		//카테고리별 정렬(스틱)
		public List<productDto> categoryType3Count(int startList, int endList, String category);
		public int categoryType3Count(String category);
	
	
	
}
