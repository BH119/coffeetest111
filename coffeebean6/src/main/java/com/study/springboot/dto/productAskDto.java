package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class productAskDto {
   private int PA_IDX; // 상품문의 인덱스
   private int PA_M_IDX; // 맴버 인덱스 FK
   private int PA_P_IDX; // 상품 인덱스 FK
   private String PA_TITLE; // 상품문의 제목
   private String PA_P_NAME; // 상품 이름
   private String PA_P_FILENAME1; // 상품 이름
   private String PA_P_FILEPATH; // 상품 경로
   private int PA_P_PRICE; // 상품 가격
   private String PA_CONTENT; // 내용
   private String PA_M_NAME; // 작성자
   private int PA_LOCK; // 상품문의글 비밀번호
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date PA_REGDATE; // 작성일
}
	
