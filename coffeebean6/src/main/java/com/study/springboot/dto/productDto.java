package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class productDto {
   private int P_IDX; // 상품 인덱스
   private String P_NAME; // 상품 이름 
   private String P_CODE; // 상품 코드
   private String P_FILENAME1; // 상품 사진 파일이름1
   private String P_FILEPATH; // 상품 경로
   private int P_CATEGORY; // 상품 카테고리
   private int P_PRICE; // 상품 가격
   private int P_STOCK; //상품재고
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date P_DATE; //상품등록일
   private int  P_HIT; //조회수
}
	
