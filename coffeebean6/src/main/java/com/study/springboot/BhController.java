package com.study.springboot;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.noticeDao;
import com.study.springboot.dao.productAskAnswerDao;
import com.study.springboot.dao.productAskDao;
import com.study.springboot.dao.productDao;
import com.study.springboot.dto.answerDto;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productAskDto;
import com.study.springboot.dto.productDto;
import com.study.springboot.service.bestPageService;
import com.study.springboot.service.categoryTypePageService;
import com.study.springboot.service.fileDeleteService;
import com.study.springboot.service.mainPageService;
import com.study.springboot.service.modifyService;
import com.study.springboot.service.newPageService;
import com.study.springboot.service.noticeMainService;
import com.study.springboot.service.noticeSearchService;
import com.study.springboot.service.productAskSearchService;
import com.study.springboot.service.productAskSearchService2;
import com.study.springboot.service.productSearchService;
import com.study.springboot.service.writeService;

@Controller
public class BhController {
	
	@Autowired
	noticeDao iNoticeDao;
	@Autowired
	noticeSearchService iNoticeSearchService;
	@Autowired
	productSearchService iProductSearchService;
	@Autowired
	productDao iProductDao;
	@Autowired
	writeService iWriteService;
	@Autowired
	modifyService iModifyService;
	@Autowired
	fileDeleteService iFileDeleteService;
	@Autowired
	productAskDao iProductAskDao;
	@Autowired
	productAskSearchService iProductAskSearchService;
	@Autowired
	productAskSearchService2 iProductAskSearchService2;
	@Autowired
	productAskAnswerDao iProductAskAnswerDao;
	@Autowired
	mainPageService iMainPageService;
	@Autowired
	bestPageService iBestPageService;
	@Autowired
	newPageService iNewPageService;
	@Autowired
	noticeMainService iNoticeMainService;
	@Autowired
	categoryTypePageService iCategoryTypePageService;

	
	
	//-------------네비바---------------
	//공지사항 클릭
		@RequestMapping("/admin/admin_notice")
		@ResponseBody
		public String NAV_admin_notice( Model model) {
			return "<script>location.href='/admin_notice';</script>"; 
		}
		//회원관리 클릭
		@RequestMapping("/admin/admin_member")
		@ResponseBody
		public String NAV_admin_member( Model model) {
			return "<script>location.href='/admin_member';</script>"; 
		}
		//상품관리 클릭
		@RequestMapping("/admin/admin_productManagement")
		@ResponseBody
		public String NAV_admin_puroductManagement( Model model) {
			return "<script>location.href='/admin_productManagement';</script>"; 
		}
		//1:1문의 클릭
		@RequestMapping("/admin/admin_one2one")
		@ResponseBody
		public String NAV_admin_one2one( Model model) {
			return "<script>location.href='/admin_one2one';</script>"; 
			
		}
		//리뷰관리 클릭
		@RequestMapping("/admin/admin_review")
		@ResponseBody
		public String NAV_admin_review( Model model) {
			return "<script>location.href='/admin_review';</script>"; 
		}
		//주문관리 클릭
		@RequestMapping("/admin/admin_orderManagement")
		@ResponseBody
		public String NAV_admin_orderManagement( Model model) {
			return "<script>location.href='/admin_orderManagement';</script>";
		}
		//상품문의 클릭
		@RequestMapping("/admin/admin_productAsk")
		@ResponseBody
		public String NAV_admin_productAsk( Model model) {
			return "<script>location.href='/admin_productAsk';</script>";
		}
	
	
	
		
		
	//메인페이지(첫화면출력)
	@RequestMapping("/")
	public String root(
			@RequestParam(defaultValue = "1") String page,
			Model model) {
		
		iMainPageService.PagingList(null, null, model);
		iNoticeMainService.PagingList(page, model);
		
		model.addAttribute("mainPage" , "main.jsp");
		return "index";
	}
	
	
	
	
	
	//관리자 공지사항 
	@RequestMapping("admin_notice")
	public String admin_notice(
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			@RequestParam(defaultValue = "0") String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			Model model) {
		
		if(selectList.equals("0")) {
			//글 개수
			int type = 3;
			int listCount = iNoticeDao.noticeCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
		}
		else if(selectList.equals("N_TITLE")) {	
			int type = 1;
			//제목 검색글 개수
			int listCount = iNoticeDao.titleCount(keyword);
			model.addAttribute("listCount" , listCount);
			//제목 검색
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}
		else if(selectList.equals("N_WRITER")) {
			int type = 2;
			//글쓴이 게시물 및 개수
			int listCount = iNoticeDao.writeCount(keyword);
			model.addAttribute("listCount" , listCount);
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}
		
		model.addAttribute("mainPage" , "admin/admin_notice.jsp");
		return "index";
	}
	
		
		
		
		
		
		
	//공지사항 글쓰기폼
	@RequestMapping("noticeWrite")
	public String noticeWrite( Model model) {
		model.addAttribute("mainPage" , "admin/write/noticeWrite.jsp");
		return "index"; 
	}
	
	//공지사항(글쓰기)
	@RequestMapping("noticeWriteAction")
	public String noticeWriteAction(
			@RequestParam("N_TITLE") String N_TITLE,
			@RequestParam("N_CONTENT") String N_CONTENT,
			@RequestParam("N_WRITER") String N_WRITER,
			Model model) {
		iNoticeDao.noticeWriteAction(N_TITLE, N_CONTENT, N_WRITER);
		model.addAttribute("mainPage" , "admin/write/admin_notice.jsp");
		
		return "redirect:admin_notice"; 
	}
	
	//수정 폼으로 
	@RequestMapping("noticeModify")
	public String noticeModify(
			@RequestParam("N_IDX") int N_IDX,
			Model model) {
		noticeDto result = iNoticeDao.noticeModifyView(N_IDX);
		model.addAttribute("dto", result);
		model.addAttribute("mainPage" , "admin/view/noticeModify.jsp");
		return "index"; 
	}
	
	//공지사항(수정)
	@RequestMapping("noticeModifyAction")
	public String noticeModifyAction(
			@RequestParam("N_TITLE") String N_TITLE,
			@RequestParam("N_CONTENT") String N_CONTENT,
			@RequestParam("N_WRITER") String N_WRITER,
			@RequestParam("N_IDX") int N_IDX,
			Model model) {
		iNoticeDao.noticeUpdateAction(N_TITLE, N_CONTENT, N_WRITER, N_IDX);
		return "redirect:noticeModify?N_IDX="+N_IDX; 
	}
	
	//공지사항 삭제
	@RequestMapping("noticeDeleteAction")
	public String noticeDeleteAction(
			@RequestParam("N_IDX") int N_IDX,
			Model model) {
		
		iNoticeDao.noticeDeleteAction(N_IDX);
		model.addAttribute("mainPage" , "admin/write/admin_notice.jsp");
		return "redirect:admin_notice"; 
	}
	
	
	
	
	//회원탭
	@RequestMapping("admin_member")
	public String admin_member( Model model) {
		model.addAttribute("mainPage" , "admin/admin_member.jsp");
		return "index"; 
	}

	
	//회원 조회
	@RequestMapping("admin/view/memberView")
	public String memberView( Model model) {
		model.addAttribute("mainPage" , "admin/view/memberView.jsp");
		return "index"; 
	}
	
	
	
	
	
	//상품관리
	@RequestMapping("admin_productManagement")
	public String admin_puroductManagement(
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			@RequestParam(defaultValue = "0") String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			@RequestParam(defaultValue = "0") String category,
			Model model) {
		
		System.out.println(selectList);
	
		
		
		model.addAttribute("category", category);
		
		
		System.out.println("category:"+category);
		if (selectList.equals("P_NAME")) {	
			int type = 1;
			//상품이름 검색글 개수
			System.out.println("selectList:"+selectList);
			int listCount = iProductDao.nameCount(keyword);
			model.addAttribute("listCount" , listCount);
			//상품이름 검색
			System.out.println();
			iProductSearchService.betweenList
			(type,keyword,selectList,page,category,model);
		}
		else if(selectList.equals("0") || category.equals("0")) {
			int type = 5;
			//글 개수
			int listCount = iProductDao.productCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iProductSearchService.betweenList
			(type,keyword,selectList,page,category,model);
		}
		if(category.equals("1")) {	
			int type = 2;
			int listCount = iProductDao.categoryType1Count(category);
			model.addAttribute("listCount" , listCount);
			//카테고리 콜드브루 정렬
			iProductSearchService.betweenList
			(type,keyword,selectList,page,category,model);
		}
		else if(category.equals("2")) {	
			int type = 3;
			int listCount = iProductDao.categoryType1Count(category);
			model.addAttribute("listCount" , listCount);
			//카테고리 원두 정렬
			iProductSearchService.betweenList
			(type,keyword,selectList,page,category,model);
		}
		else if(category.equals("3")) {	
			int type = 4;
			int listCount = iProductDao.categoryType1Count(category);
			model.addAttribute("listCount" , listCount);
			//카테고리 원두 정렬
			iProductSearchService.betweenList
			(type,keyword,selectList,page,category,model);
		}
		
		model.addAttribute("mainPage" , "admin/admin_productManagement.jsp");
		
		return "index"; 
	}
	
	//상품등록폼
	@RequestMapping("admin/write/productWrite")
	public String productWrite( Model model) {
		model.addAttribute("mainPage" , "admin/write/productWrite.jsp");
		return "index"; 
	}
	
	
	
	//이미지 개별삭제
	@RequestMapping("imgDelNamePath")
	public String imgDelNamePath(
			@RequestParam("P_IDX") int P_IDX,
			@RequestParam("P_FILENAME1") String P_FILENAME1,
			@RequestParam("P_FILENAME2") String P_FILENAME2,
			@RequestParam("P_FILENAME3") String P_FILENAME3,
			Model model) {
		iProductDao.imgDelNamePath(P_IDX);
		
		iFileDeleteService.fileDelete(P_FILENAME1,P_FILENAME2,P_FILENAME3);
		
		return "redirect:/productView?P_IDX="+P_IDX; 
	}
	
	
	
	
	
	//상품등록
	@RequestMapping("/productWriteAction")
	public String productWrite(
			@RequestParam("P_NAME") String P_NAME,
			@RequestParam("P_CODE") String P_CODE,
			@RequestParam("P_PRICE") int P_PRICE ,
			@RequestParam("P_STOCK") int P_STOCK ,
			@RequestParam("P_CATEGORY") int P_CATEGORY ,
			@RequestParam("P_CONTENT") String P_CONTENT ,
			//여러 값은 배열형태로
			@RequestParam("filename") MultipartFile[] filelist ,
			Model model) throws IllegalStateException, IOException 
	{
		List<String> files =iWriteService.productWriteAction(filelist);
		
//		System.out.println("0번째:"+files.get(0));
//		System.out.println("1번째:"+files.get(1));
//		System.out.println("2번째:"+files.get(2));
//		System.out.println("3번째:"+files.get(0));
		
		 int result =iProductDao.productWriteAction
				 (P_NAME, P_CODE,files.get(0),files.get(1),P_CATEGORY, P_PRICE, P_STOCK,
						 files.get(2),files.get(3),P_CONTENT);
		 System.out.println(result);
		 
		
		return "redirect:/admin_productManagement"; 
	}
	//상품조회
	@RequestMapping("/productView")
	public String productView(
			@RequestParam("P_IDX") int P_IDX,
			Model model) {
		iProductDao.updateHit(P_IDX);
		productDto result = iProductDao.productModifyView(P_IDX);
		model.addAttribute("dto", result);
		model.addAttribute("mainPage" , "admin/view/productView.jsp");	
		return "index"; 
	}
	
	
	//수정하기 액션
	@RequestMapping("modifyAction")
	public String modifyAction(
			@RequestParam("P_IDX") int P_IDX,
			@RequestParam("P_NAME") String P_NAME,
			@RequestParam("P_CODE") String P_CODE,
			@RequestParam("P_FILENAME1") String P_FILENAME1,
			@RequestParam("P_FILEPATH") String P_FILEPATH,
			@RequestParam("P_CATEGORY") int P_CATEGORY,
			@RequestParam("P_PRICE") int P_PRICE,
			@RequestParam("P_STOCK") int P_STOCK,
			@RequestParam("P_CONTETN") String P_CONTETN,
			@RequestParam("P_FILENAME2") String P_FILENAME2,
			@RequestParam("P_FILENAME3") String P_FILENAME3,
			@RequestParam("filename") MultipartFile[] filelist) throws IllegalStateException, IOException
	{
		iModifyService.updateAction(P_IDX, P_NAME, P_CODE, P_PRICE, 
				P_STOCK,P_CONTETN, P_CATEGORY, filelist, P_FILENAME1,P_FILENAME2,P_FILENAME3 );
		return "redirect:/productView?P_IDX="+P_IDX;

	}
	
	//상품 삭제하기
	@RequestMapping("productDeleteAction")
	public String productDeleteAction(
			@RequestParam("P_IDX") int P_IDX,
			@RequestParam("P_FILENAME1") String P_FILENAME1,
			@RequestParam("P_FILENAME2") String P_FILENAME2,
			@RequestParam("P_FILENAME3") String P_FILENAME3
			)
	{
		//업로드파일 삭제
		iFileDeleteService.fileDelete(P_FILENAME1,P_FILENAME2,P_FILENAME3);
		
		//글 삭제
		iProductDao.productDeleteAction(P_IDX);
		return "redirect:/admin_productManagement"; 
	
	}
	
	
	//1:1문의
	@RequestMapping("admin_one2one")
	public String admin_one2one( Model model) {
		model.addAttribute("mainPage" , "admin/admin_one2one.jsp");
		return "index"; 
	}
	//1:1문의(조회)
	@RequestMapping("admin/view/one2oneView")
	public String askView( Model model) {
		model.addAttribute("mainPage" , "admin/view/one2oneView.jsp");
		return "index";
	}
	
	//리뷰관리
	@RequestMapping("admin_review")
	public String admin_review( Model model) {
		model.addAttribute("mainPage" , "admin/admin_review.jsp");
		return "index";
	}
	
	//리뷰조회
	@RequestMapping("admin/view/reviewView")
	public String reviewView( Model model) {
		model.addAttribute("mainPage" , "admin/view/reviewView.jsp");
		return "index";
	}
	
	//주문관리
	@RequestMapping("admin_orderManagement")
	public String orderManagement( Model model) {
		model.addAttribute("mainPage" , "admin/admin_orderManagement.jsp");
		return "index"; 
	}
	//상품문의
	@RequestMapping("/admin_productAsk")
	public String productAsk(
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			@RequestParam(defaultValue="0") String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			Model model) {
		
		if(selectList.equals("0")) {
			//글 개수
			int type = 3;
			int listCount = iProductAskDao.productAskCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iProductAskSearchService.betweenList
			(type,keyword,selectList,page,model);
		}
		if(selectList.equals("PA_TITLE")) {	
			int type = 1;
			//상품제목 검색글 개수
			int listCount = iProductAskDao.titleCount(keyword);
			model.addAttribute("listCount" , listCount);
			//상품제목 검색
			iProductAskSearchService.betweenList
			(type,keyword,selectList,page,model);
		}
		else if(selectList.equals("PA_M_NAME")) {	
			int type = 2;
			//상품문의 작성자 게시물 개수
			int listCount = iProductAskDao.writeCount(keyword);
			model.addAttribute("listCount" , listCount);
			//상품문의 작성자 검색
			iProductAskSearchService.betweenList
			(type,keyword,selectList,page,model);
		}
		
		
		
		model.addAttribute("mainPage" , "admin/admin_productAsk.jsp");
		return "index"; 
	}
	//상품문의 글쓰기
//	@RequestMapping("/productAskWriteAction")
//	public String productAskWriteAction(
//			@RequestParam("P_NAME") String P_NAME,
//			@RequestParam("P_CODE") String P_CODE,
//			@RequestParam("P_PRICE") int P_PRICE ,
//			@RequestParam("P_STOCK") int P_STOCK ,
//			@RequestParam("P_CATEGORY") int P_CATEGORY ,
//			@RequestParam("P_CONTENT") String P_CONTENT ,
//			//여러 값은 배열형태로
//			@RequestParam("filename") MultipartFile[] filelist ,
//			Model model) throws IllegalStateException, IOException 
//	{
//		List<String> files =iWriteService.productWriteAction(filelist);
//		
////		System.out.println("0번째:"+files.get(0));
////		System.out.println("1번째:"+files.get(1));
////		System.out.println("2번째:"+files.get(2));
////		System.out.println("3번째:"+files.get(0));
//		
//		 int result =iProductDao.productWriteAction
//				 (P_NAME, P_CODE,files.get(0),files.get(1),P_CATEGORY, P_PRICE, P_STOCK,
//						 files.get(2),files.get(3),P_CONTENT);
//		 System.out.println(result);
//		 
//		
//		return "redirect:/admin_productManagement"; 
	
	
	//상품문의조회
	@RequestMapping("admin/view/productAskView")
	public String productAskView(
			@RequestParam("PA_IDX") int PA_IDX,
			Model model) {
		
		productAskDto result = iProductAskDao.productAskModifyView(PA_IDX);
		model.addAttribute("dto" , result);
		List<answerDto> list = iProductAskAnswerDao.answerList(PA_IDX);
		model.addAttribute("list" , list);
		
		
		
		model.addAttribute("mainPage" , "admin/view/productAskView.jsp");
		return "index"; 
	}
	
	//상품문의 답글달기 액션
	
	@RequestMapping("/admin/view/answerWriteAction")
	public String answerWriteAction(
			@RequestParam("PA_STATE") String PA_STATE,
			@RequestParam("AS_PA_IDX") int AS_PA_IDX,
			@RequestParam("AS_NAME") String AS_NAME,
			@RequestParam("AS_CONTENT") String AS_CONTENT,
			Model model) {
		System.out.println(PA_STATE + AS_PA_IDX);
		System.out.println(AS_PA_IDX + AS_NAME + AS_CONTENT);
		iProductAskAnswerDao.answerWriteAction(AS_NAME, AS_CONTENT, AS_PA_IDX); 
		iProductAskDao.answerState(PA_STATE, AS_PA_IDX);
		return "redirect:/admin/view/productAskView?PA_IDX="+AS_PA_IDX; 
	}
	
	//상품문의 글 삭제하기 액션
		@RequestMapping("/admin/view/productAskDeleteAction")
		public String productAskDelete(
				@RequestParam("PA_IDX") int PA_IDX,
				Model model) {
			
			
			iProductAskDao.productDeleteAction(PA_IDX);
			iProductAskAnswerDao.answerDeleteByProductAsk(PA_IDX); 
			
			return "redirect:/admin_productAsk"; 
		}
	
	//상품문의 답글 삭제하기 액션
	@RequestMapping("/admin/view/answerDeleteAction")
	public String answerDeleteAction(
			@RequestParam("AS_IDX") int AS_IDX,
			@RequestParam("AS_PA_IDX") int AS_PA_IDX,
			Model model) {
		iProductAskAnswerDao.answerDeleteAction(AS_IDX); 
		
		return "redirect:/admin/view/productAskView?PA_IDX="+AS_PA_IDX; 
	}
	//-----------------------------관리자페이지 END -----------------------------
	
	
	
	// 베스트 목록으로
	@RequestMapping("/item/best")
	public String bestList(
			@RequestParam(defaultValue = "1") String page,
			Model model) {
		
		iBestPageService.PagingList(page, model);
		model.addAttribute("mainPage" , "item/best.jsp");
		return "index"; 
	}
	
	//NEW(최신순)목록으로
	@RequestMapping("/item/new")
	public String newList(
			@RequestParam(defaultValue = "1") String page,
			Model model) {
		
		iNewPageService.PagingList(page, model);
		model.addAttribute("mainPage" , "item/new.jsp");
		return "index"; 
	}
	
	
	//-----------------메인페이지 END---------------------------------
	
	//카테고리아이탬 타입1(원두)
	@RequestMapping("/item/coffee_bean")
	public String coffee_bean(
			@RequestParam(defaultValue = "1") String page,
			@RequestParam(defaultValue = "0") String orderHigh,
			@RequestParam(defaultValue = "0") String orderLow,
			@RequestParam(defaultValue = "0") String orderNew,
			@RequestParam(defaultValue = "0") String orderHit,
			Model model) {
		iCategoryTypePageService.categoryType1Page
		(page,orderHigh,orderLow,orderNew,orderHit, model);
		
		model.addAttribute("mainPage" , "item/coffee_bean.jsp");
		return "index"; 
	}
	
	//카테고리아이탬 타입2(콜드브루)
	@RequestMapping("/item/coffee_coldbrew")
	public String coffee_coldbrew(
			@RequestParam(defaultValue = "1") String page,
			@RequestParam(defaultValue = "0") String orderHigh,
			@RequestParam(defaultValue = "0") String orderLow,
			@RequestParam(defaultValue = "0") String orderNew,
			@RequestParam(defaultValue = "0") String orderHit,
			Model model) {
		iCategoryTypePageService.categoryType2Page
		(page,orderHigh,orderLow,orderNew,orderHit, model);
		model.addAttribute("mainPage" , "item/coffee_coldbrew.jsp");
		return "index"; 
	}
	
	//카테고리아이탬 타입3(스틱)
	@RequestMapping("/item/coffee_stick")
	public String coffee_stick(
			@RequestParam(defaultValue = "1") String page,
			@RequestParam(defaultValue = "0") String orderHigh,
			@RequestParam(defaultValue = "0") String orderLow,
			@RequestParam(defaultValue = "0") String orderNew,
			@RequestParam(defaultValue = "0") String orderHit,
			Model model) {
		
		iCategoryTypePageService.categoryType3Page
		(page,orderHigh,orderLow,orderNew,orderHit, model);
		
		model.addAttribute("mainPage" , "item/coffee_stick.jsp");
		return "index"; 
	}
	
	//---------------------아이탬페이지 END -------------------------------
	
	//상세조회페이지
	@RequestMapping("/view/item_view")
	public String item_view(
			@RequestParam("P_IDX") int PA_P_IDX,
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			Model model) {
		iProductDao.updateHit(PA_P_IDX);
		productDto result = iProductDao.productModifyView(PA_P_IDX);
		model.addAttribute("dto", result);
		
		//상품문의
			iProductAskSearchService2.betweenList2(PA_P_IDX, page, model);
			
		
		model.addAttribute("mainPage" , "view/item_view.jsp");
		return "index"; 
	}
	//상품문의 글쓰기 폼
	@RequestMapping("/write/product_qna_write")
	public String product_qna_write(
			@RequestParam("P_IDX") int PA_P_IDX,
			Model model) {
		
		productDto result = iProductDao.productModifyView(PA_P_IDX);
		model.addAttribute("dto", result);
		
		model.addAttribute("mainPage" , "write/product_qna_write.jsp");
		return "index"; 
	}
	
	//상품문의 글쓰기 액션
	@RequestMapping("/write/product_qna_writeAction")
	public String product_qna_writeAction(
			@RequestParam("P_IDX") int PA_P_IDX,
			@RequestParam("PA_P_FILEPATH") String PA_P_FILEPATH,
			@RequestParam("PA_P_FILENAME1") String PA_P_FILENAME1,
			@RequestParam("PA_TITLE") String PA_TITLE,
			@RequestParam("PA_LOCK") String PA_LOCK,
			@RequestParam("PA_CONTENT") String PA_CONTENT,
			@RequestParam("PA_P_NAME") String PA_P_NAME,
			@RequestParam("PA_P_PRICE") String PA_P_PRICE,
			@RequestParam("PA_STATE") String PA_STATE,
			Model model) {
		System.out.println(PA_STATE);
		iProductAskDao.productAskWriteAction
		(PA_TITLE, PA_LOCK, PA_CONTENT,PA_P_NAME,PA_P_FILEPATH,PA_P_FILENAME1,PA_P_PRICE,PA_P_IDX, PA_STATE);
		
		
		return "redirect:/view/item_view?P_IDX="+PA_P_IDX; 
	}
	
	//상품 문의 단건조회
	@RequestMapping("/view/product_qna_view")
	public String product_qna_view(
			@RequestParam("PA_IDX") int PA_IDX,
			Model model) {
		
		productAskDto result = iProductAskDao.productAskModifyView(PA_IDX);
		model.addAttribute("dto", result);
		List<answerDto> list = iProductAskAnswerDao.answerList(PA_IDX);
		model.addAttribute("list" , list);
		
		model.addAttribute("mainPage" , "view/product_qna_view.jsp");
		return "index";
	}
	
	// 상품문의글 비밀번호 확인폼
	@RequestMapping("/view/product_qna_pw")
	public String product_qna_pw(
			@RequestParam("PA_IDX") String PA_IDX,
			Model model) {
		model.addAttribute("PA_IDX",PA_IDX );
		return "/view/product_qna_pw";
	}
	
	//비밀번호 확인액션
	@RequestMapping("/view/product_qna_pw_Action")
	@ResponseBody
	public String product_qna_pw(
			@RequestParam("PA_IDX") String PA_IDX,
			@RequestParam("qna_PW") String qna_PW) {
		System.out.println(qna_PW);	
		int result = iProductAskDao.AjaxQnaPWcheek(qna_PW , PA_IDX);
		System.out.println("리절트값:" +result);
		if( result == 1) {
			return "1";
		}
		else {
			return "0";
		}
		
	}
	
	//----------------상품상세 페이지 END------------------------
	
	
	//공지사항 게시판으로
	
	@RequestMapping("/community/notice_list")
	public String notice_list(
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			@RequestParam(defaultValue = "0") String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			Model model) {
		
		if(selectList.equals("0")) {
			//글 개수
			int type = 3;
			int listCount = iNoticeDao.noticeCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
		}
		else if(selectList.equals("N_TITLE")) {	
			int type = 1;
			//제목 검색글 개수
			int listCount = iNoticeDao.titleCount(keyword);
			model.addAttribute("listCount" , listCount);
			//제목 검색
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}
		else if(selectList.equals("N_WRITER")) {
			int type = 2;
			//글쓴이 게시물 및 개수
			int listCount = iNoticeDao.writeCount(keyword);
			model.addAttribute("listCount" , listCount);
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}
		
		model.addAttribute("mainPage" , "community/notice_list.jsp");
		return "index";
	}
	
	//공지사항 상세보기
	@RequestMapping("/view/notice_view")
	public String notice_view(
			@RequestParam("N_IDX") int N_IDX,
			Model model) {
		noticeDto result = iNoticeDao.noticeModifyView(N_IDX);
		model.addAttribute("dto", result);
		model.addAttribute("mainPage" , "view/notice_view.jsp");
		return "index"; 
	}
	
	
	
	
	
	
}
