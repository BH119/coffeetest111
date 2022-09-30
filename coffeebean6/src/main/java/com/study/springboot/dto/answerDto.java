package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class answerDto {
   private int AS_IDX; //  답변 인덱스 PK
   private int AS_A_IDX;// 1:1문의 인덱스 FK
   private int AS_PA_IDX;// 상품 인덱스 FK
   private int AS_M_IDX;// 맴버 인덱스 FK
   private String AS_M_NAME;// 맴버 이름
   private String AS_NAME;// 답글 작성자(어드민)
   private String AS_CONTENT;//답글 내용
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date AS_DATE;//답변 작성일
}
	
