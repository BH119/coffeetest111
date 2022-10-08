package com.study.springboot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.study.springboot.dto.productAskDto;
import com.study.springboot.dto.productDto;

@Mapper
public interface productDao {
	
	//전체출력
		public List<productDto> productList();


		//상품관리 저장
		public int productWriteAction(String P_NAME , String P_CODE , String P_FILENAME1,
				String P_FILEPATH, int P_CATEGORY, int P_PRICE, int P_STOCK 
				, String P_FILENAME2, String P_FILENAME3 , String P_CONTENT);
		
		//상품관리 수정
		public int productUpdateAction(int P_IDX , String P_NAME , String P_CODE,
				String P_FILENAME1,String P_FILEPATH, int P_CATEGORY, int P_PRICE, int P_STOCK,String P_FILENAME2,String P_FILENAME3 );
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
		//조회수 올리기
		public int updateHit(int P_IDX);
		//조회수순
		public List<productDto> orderHit(int startList,int endList);
	
		
		//카테고리페이지 출력 (타입1)
		public List<productDto> productType1List(int startList, int endList);
		//카테고리 타입1(총개수)
		public int categoryType1BindCount();
		//높은가격순(타입1)
		public List<productDto> productType1_P_HighList(int startList, int endList);
		//낮은가격순(타입1)
		public List<productDto> productType1_P_LowList(int startList, int endList);
		//조회수순(인기순)(타입1)
		public List<productDto> productType1_P_HitList(int startList, int endList);
				
		
		//카테고리페이지 출력 (타입2)
		public List<productDto> productType2List(int startList, int endList);
		//카테고리 타입2(총개수)
		public int categoryType2BindCount();
		//높은가격순(타입2)
		public List<productDto> productType2_P_HighList(int startList, int endList);
		//낮은가격순(타입2)
		public List<productDto> productType2_P_LowList(int startList, int endList);
		//조회수순(인기순)(타입2)
		public List<productDto> productType2_P_HitList(int startList, int endList);
						
			
		//카테고리페이지 출력 (타입3)
		public List<productDto> productType3List(int startList, int endList);
		//카테고리 타입3(총개수)
		public int categoryType3BindCount();
		//높은가격순(타입3)
		public List<productDto> productType3_P_HighList(int startList, int endList);
		//낮은가격순(타입3)
		public List<productDto> productType3_P_LowList(int startList, int endList);
		//조회수순(인기순)(타입3)
		public List<productDto> productType3_P_HitList(int startList, int endList);
				
		
}
