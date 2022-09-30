package com.study.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class productDetailsDto {
   private int PD_IDX; // 리뷰 인덱스
   private int P_IDX; // 상품 인덱스 FK
   private int PD_P_PRICE; // 상품 가격
   private String PD_P_NAME; // 상품 이름
   private String PD_P_CODE; // 상품 코드
   private String PD_P_FILENAME1; // 상품 사진이름1
   private String PD_P_FILEPATH; // 상품 사진경로
   private int P_CATEGORY; // 상품 카테고리
   private String PD_FILENAME1; // 상품설명 사진이름1
   private String PD_FILEPATH; // 상품설명 사진경로
   private String PD_CONTENT; // 상품설명 글
}
	
