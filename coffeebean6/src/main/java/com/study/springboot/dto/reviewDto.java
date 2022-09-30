package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class reviewDto {
   private int R_IDX; // 리뷰 인덱스
   private int R_P_IDX; // 상품 인덱스 FK
   private int R_M_IDX; // 상품 인덱스 FK
   private String R_P_NAME; // 상품 이름
   private String R_P_FILENAME1; // 상품 이미지파일이름1
   private String R_P_FILEPATH; // 상품 이미지경로
   private int R_P_PRICE; // 상품 가격
   private String R_TITLE; // 제목
   private String R_CONTENT; // 내용
   private String R_WRITER; // 작성자
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date R_DATE; // 작성일
}
	
