package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class memberDto {
   private int M_IDX; // 맴버 인덱스 PK
   private String M_ID; // ID
   private String M_PW; // PW
   private String M_NAME; // 이름
   private String M_GENDER; // 성별
   private String M_EMAIL; // 이메일
   private String M_PHNUM; // 전화번호
   private String M_PROFILNAME1; // 프로필사진이름1
   private String M_FILEPATH; // 사진경로
   private String M_PW_QUESTION; // 질문
   private String M_PW_ANSWER; // 답변
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date M_BIRTHDATE; // 생일
   private String M_ADDRESS; // 주소
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date M_JOINDATE; // 가입일
}
	
