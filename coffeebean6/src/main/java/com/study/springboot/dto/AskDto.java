package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class AskDto {
   private int A_IDX;// 1:1문의 인덱스 PK
   private int A_M_IDX;// 맴버 인덱스 FK
   private String A_M_NAME;// 작성자
   private int A_CATEGORY;// 1:1문의 카테고리
   private String A_TITLE;// 1:1문의 제목
   private String A_CONTENT;// 내용
   private int A_LOCK;// 1:1문의글 비밀번호
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date A_REGDATE;// 작성일
}
	
