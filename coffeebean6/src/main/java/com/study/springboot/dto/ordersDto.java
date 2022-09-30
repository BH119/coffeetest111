package com.study.springboot.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //@Data는 기본생성자/Getter/Setter 등을 생성
@NoArgsConstructor  //기본생성자
@AllArgsConstructor //필드가 있는 생성자
public class ordersDto {
   private int O_IDX; // 주문관리
   private int O_M_IDX; // 맴버 인덱스
   private int O_P_IDX; // 상품 인덱스
   private String O_P_NAME; // 상품 이름
   private String O_P_CODE; //상품 코드
   private String O_M_NAME; // 맴버 이름
   private int O_COUNT; // 주문 상품 수량
   private String O_ADDRESS; // 주소지(입력가능)
   private String O_PHNUM; // 전화번호
   private String O_TOTAL_PRICE; // 주문 총가격
   @DateTimeFormat(pattern = "yyyy-MM-dd")
   private Date O_REGDATE; // 주문등록일
   private int O_STATE; // 주문 상태
}
	
