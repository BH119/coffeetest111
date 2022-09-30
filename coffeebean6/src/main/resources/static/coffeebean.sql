--답변--

DROP TABLE ANSWER;

CREATE TABLE ANSWER 
(
  AS_IDX NUMBER(4, 0) NOT NULL primary key -- 답변 인덱스 PK
, AS_A_IDX NUMBER(4, 0)  -- 1:1문의 인덱스 FK
, AS_PA_IDX NUMBER(4, 0)  -- 상품 인덱스 FK
, AS_M_IDX NUMBER(4, 0) --맴버 인덱스 FK
, AS_M_NAME VARCHAR2(50 BYTE) -- 맴버 이름 
, AS_NAME VARCHAR2(50 BYTE) -- 답글 작성자(어드민) 
, AS_CONTENT VARCHAR2(300 BYTE) -- 답글 내용 
, AS_DATE DATE default sysdate -- 답변 작성일 
);

drop sequence ANSWER_seq;
create sequence ANSWER_seq;

DROP TABLE ASK;

--1:1문의--
CREATE TABLE ASK 
(
  A_IDX NUMBER(4, 0) NOT NULL primary key  -- 1:1문의 인덱스 PK
, A_M_IDX NUMBER(4, 0) -- 맴버 인덱스 FK
, A_M_NAME VARCHAR2(50 BYTE) -- 작성자
, A_CATEGORY NUMBER(4, 0) -- 1:1문의 카테고리  
, A_TITLE VARCHAR2(50 BYTE) -- 1:1문의 제목
, A_CONTENT VARCHAR2(300 BYTE) -- 내용
, A_LOCK NUMBER(15, 0) -- 1:1문의글 비밀번호
, A_REGDATE DATE DEFAULT sysdate -- 작성일
);

drop sequence ASK_seq;
create sequence ASK_seq;

DROP TABLE BASKET;

--장바구니--
CREATE TABLE BASKET 
(
  B_IDX NUMBER(4, 0) NOT NULL primary key   --장바구니 인덱스 PK
, B_M_IDX NUMBER(4, 0) --맴버 인덱스 FK
, B_P_IDX NUMBER(4, 0) --상품 인덱스 FK
, B_P_NAME VARCHAR2(100 BYTE) -- 상품 이름
, B_P_FILENAME1 VARCHAR2(100 BYTE) -- 상품 파일이름1
, B_P_FILEPATH VARCHAR2(100 BYTE) -- 상품 파일경로
, B_COUNT NUMBER(4, 0) -- 개수
, B_P_PRICE NUMBER(8, 0) -- 가격
);

drop sequence BASKET_seq;
create sequence BASKET_seq;

DROP TABLE MEMBER;

--회원--
CREATE TABLE MEMBER 
(
  M_IDX NUMBER(4, 0) NOT NULL primary key -- 맴버 인덱스 PK
, M_ID VARCHAR2(20 BYTE)  --  ID
, M_PW VARCHAR2(20 BYTE)  --  PW
, M_NAME VARCHAR2(20 BYTE)  -- 이름
, M_GENDER VARCHAR2(10 BYTE)  -- 성별
, M_EMAIL VARCHAR2(100 BYTE)  -- 이메일
, M_PHNUM VARCHAR2(100 BYTE)  -- 전화번호
, M_PROFILNAME1 VARCHAR2(100 BYTE)  -- 프로필사진이름1
, M_FILEPATH VARCHAR2(100 BYTE)  -- 사진경로
, M_PW_QUESTION NUMBER(4, 0)  -- 질문
, M_PW_ANSWER VARCHAR2(100 BYTE) -- 답변
, M_BIRTHDATE DATE  -- 생일
, M_ADDRESS VARCHAR2(100 BYTE) -- 주소
, M_JOINDATE DATE DEFAULT sysdate --가입일
);

drop sequence member_seq;
create sequence member_seq;
insert into MEMBER(M_IDX,M_ID,M_PW,M_NAME,M_GENDER,M_EMAIL,M_PHNUM,M_PROFILNAME1,M_FILEPATH,M_PW_QUESTION,M_PW_ANSWER,M_BIRTHDATE,M_ADDRESS,M_JOINDATE) 
VALUES (member_seq.nextval,'222','222','회원2','M','222@22.2','2222-2222','사진2','/img/cat.jpg',2,'답변2',sysdate,'주소2',sysdate);
DROP TABLE NOTICE;
 
--공지사항--
CREATE TABLE NOTICE 
(
  N_IDX NUMBER(4, 0) NOT NULL primary key  -- 공지사항 인덱스 PK
, N_TITLE VARCHAR2(100 BYTE) -- 제목
, N_CONTENT VARCHAR2(1000 BYTE) -- 내용
, N_WRITER VARCHAR2(50 BYTE) -- 작성자(어드민)
, N_DATE DATE DEFAULT sysdate -- 작성일
);

drop sequence NOTICE_seq;
create sequence NOTICE_seq;



drop table orders;
--주문관리-
CREATE TABLE ORDERS
(
  O_IDX NUMBER(4, 0) NOT NULL primary key   -- 주문관리 인덱스
, O_M_IDX NUMBER(4, 0) -- 맴버 인덱스 FK
, O_P_IDX NUMBER(4, 0) -- 상품 인덱스 FK
, O_P_NAME VARCHAR2(500 BYTE)  --상품 이름
, O_P_CODE VARCHAR2(100 BYTE)  --상품 코드
, O_M_NAME VARCHAR2(20 BYTE)  --맴버 이름
, O_COUNT NUMBER(4, 0) -- 주문 상품 수량
, O_ADDRESS VARCHAR2(100 BYTE) --주소지(입력가능)
, O_PHNUM VARCHAR2(100 BYTE) -- 전화번호
, O_TOTAL_PRICE VARCHAR2(500 BYTE) -- 주문 총가격
, O_REGDATE DATE DEFAULT sysdate -- 주문등록일
, O_STATE NUMBER(4, 0) --주문상태
);
drop sequence ORDERS_seq;
create sequence ORDERS_seq;
insert into ORDERS (O_IDX,O_M_IDX,O_P_IDX,O_P_NAME,O_P_CODE,O_M_NAME,O_COUNT,O_ADDRESS,O_PHNUM,O_TOTAL_PRICE,O_REGDATE,O_STATE) VALUES
(ORDERS_SEQ.nextval,MEMBER_SEQ.nextval, PRODUCT_SEQ.nextval,)

drop table product;

--상품--
CREATE TABLE PRODUCT 
(
  P_IDX NUMBER(4, 0) NOT NULL primary key -- 상품 인덱스
, P_NAME VARCHAR2(100 BYTE) -- 상품 이름
, P_CODE VARCHAR2(100 BYTE) -- 상품 코드
, P_FILENAME1 VARCHAR2(100 BYTE) --상품 사진 파일이름1
, P_FILEPATH VARCHAR2(100 BYTE) --상품 경로
, P_CATEGORY NUMBER(4, 0) --상품 카테고리
, P_PRICE NUMBER(4, 0) --상품 가격
, P_STOCK NUMBER(8, 0) -- 상품재고
, P_DATE DATE DEFAULT sysdate -- 상품등록일
, P_HIT NUMBER(4, 0) -- 조회수
);

drop sequence PRODUCT_seq;
create sequence PRODUCT_seq;
insert into PRODUCT(P_IDX,P_NAME,P_CODE,P_FILENAME1,P_FILEPATH,P_CATEGORY,P_PRICE,P_STOCK,P_DATE,P_HIT) values (PRODUCT_seq.nextval, '상품1',
'11','파일1','/img/원두.jpg',1,10000,1,sysdate,1);

drop table PRODUCT_ASK;

--상품 문의--
CREATE TABLE PRODUCT_ASK 
(
  PA_IDX NUMBER(4, 0) NOT NULL primary key --상품문의 인덱스
, PA_M_IDX NUMBER(4, 0) -- 맴버 인덱스 FK 
, PA_P_IDX NUMBER(4, 0) -- 상품 인덱스 FK 
, PA_TITLE VARCHAR2(100 BYTE)  -- 상품문의 제목
, PA_P_NAME VARCHAR2(100 BYTE) -- 상품 이름
, PA_P_FILENAME1 VARCHAR2(100 BYTE) --상품 사진 파일이름1
, PA_P_FILEPATH VARCHAR2(100 BYTE) --상품 경로
, PA_P_PRICE NUMBER(4, 0) --상품 가격
, PA_CONTENT VARCHAR2(200 BYTE) -- 내용
, PA_M_NAME VARCHAR2(50 BYTE) -- 작성자
, PA_LOCK NUMBER(4, 0) -- 상품문의글 비밀번호 
, PA_REGDATE DATE DEFAULT sysdate -- 작성일
);

drop sequence PRODUCT_ASK_seq;
create sequence PRODUCT_ASK_seq;

drop table REVIEW;

--리뷰관리--
CREATE TABLE REVIEW 
(
  R_IDX NUMBER(4, 0) NOT NULL primary key --리뷰 인덱스
, R_P_IDX NUMBER(4, 0) -- 상품 인덱스 FK
, R_M_IDX NUMBER(4, 0) -- 맴버 인덱스 FK
, R_P_NAME VARCHAR2(100 BYTE) -- 상품 이름
, R_P_FILENAME1 VARCHAR2(100 BYTE) --상품 사진 파일이름1
, R_P_FILEPATH VARCHAR2(100 BYTE) --상품 이미지경로
, R_P_PRICE NUMBER(4, 0) --상품 가격
, R_TITLE VARCHAR2(100 BYTE) -- 제목
, R_CONTENT VARCHAR2(300 BYTE) -- 내용
, R_WRITER VARCHAR2(50 BYTE)  -- 작성자
, R_DATE DATE DEFAULT sysdate -- 작성일
);

drop sequence REVIEW_seq;
create sequence REVIEW_seq;


drop table PRODUCT_DETAILS;

--상품상세--
CREATE TABLE PRODUCT_DETAILS
(
  PD_IDX NUMBER(4, 0) NOT NULL primary key -- 상품상세 인덱스
, P_IDX NUMBER(4, 0)  -- 상품 인덱스
, PD_P_PRICE NUMBER(4, 0) --상품 가격
, PD_P_NAME VARCHAR2(100 BYTE) -- 상품 이름
, PD_P_CODE VARCHAR2(100 BYTE) -- 상품 코드
, PD_P_FILENAME1 VARCHAR2(100 BYTE) --상품 사진 파일이름1
, PD_P_FILEPATH VARCHAR2(100 BYTE) --상품 사진 경로
, P_CATEGORY NUMBER(4, 0) --상품 카테고리
, PD_FILENAME1 VARCHAR2(100 BYTE) --상품설명 사진 파일이름1
, PD_FILEPATH VARCHAR2(100 BYTE) --상품설명 사진 경로
, PD_CONTENT VARCHAR2(300 BYTE) --상품설명 글
);


drop sequence PRODUCT_DETAILS_seq;
create sequence PRODUCT_DETAILS_seq;