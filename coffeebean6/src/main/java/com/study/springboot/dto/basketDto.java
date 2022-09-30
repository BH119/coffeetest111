package com.study.springboot.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class basketDto {
   private int B_IDX; //장바구니 인덱스 PK
   private int B_M_IDX; //맴버 인덱스 FK
   private int B_P_IDX; //상품 인덱스 FK
   private String B_P_NAME; //상품 이름
   private String B_P_FILENAME1; //상품 파일이름
   private String B_P_FILEPATH; //상품 파일경로
   private int B_COUNT; //개수
   private int B_P_PRICE; //가격
}
	
