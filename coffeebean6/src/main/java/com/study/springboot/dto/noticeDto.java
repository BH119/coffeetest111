package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class noticeDto {
   private int N_IDX; //공지사항 인덱스 PK
   private String N_TITLE; // 제목
   private String N_CONTENT; // 내용
   private String N_WRITER; // 작성자(어드민)
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date N_DATE; // 작성일
}
	
