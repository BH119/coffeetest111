package com.study.springboot;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.noticeDao;
import com.study.springboot.dao.productDao;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productDto;
import com.study.springboot.service.fileDeleteService;
import com.study.springboot.service.modifyService;
import com.study.springboot.service.noticePageService;
import com.study.springboot.service.noticeSearchService;
import com.study.springboot.service.productPageService;
import com.study.springboot.service.productSearchService;
import com.study.springboot.service.writeService;

@Controller
public class BhController {
	
	@Autowired
	noticeDao iNoticeDao;
	@Autowired
	noticePageService iNoticePageService;
	@Autowired
	noticeSearchService iNoticeSearchService;
	@Autowired
	productPageService iProductPageService;
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
	
	
	//-------------네비바---------------
	//공지사항 클릭
		@RequestMapping("/adminadmin_notice")
		public String NAV_admin_notice( Model model) {
			return "redirect:admin_notice"; 
		}
		//회원관리 클릭
		@RequestMapping("/adminadmin_member")
		public String NAV_admin_member( Model model) {
			return "redirect:admin_member"; 
		}
		//상품관리 클릭
		@RequestMapping("/adminadmin_productManagement")
		public String NAV_admin_puroductManagement( Model model) {
			return "redirect:admin_productManagement"; 
		}
		//1:1문의 클릭
		@RequestMapping("/adminadmin_one2one")
		public String NAV_admin_one2one( Model model) {
			return "redirect:admin_one2one"; 
		}
		//리뷰관리 클릭
		@RequestMapping("/adminadmin_review")
		public String NAV_admin_review( Model model) {
			return "redirect:admin_review"; 
		}
		//주문관리 클릭
		@RequestMapping("/adminadmin_orderManagement")
		public String NAV_admin_orderManagement( Model model) {
			return "redirect:admin_orderManagement"; 
		}
		//상품문의 클릭
		@RequestMapping("/adminadmin_productAsk")
		public String NAV_admin_productAsk( Model model) {
			return "redirect:admin_productAsk"; 
		}
	
	
	
		
		
	
	//공지사항 루트 초기값 나중에 없애야함.
	@RequestMapping("/")
	public String root( Model model) {
		return "redirect:admin_notice"; 
	}
	
	//공지사항 (첫페이지)
	@RequestMapping("admin_notice")
	public String admin_notice(
			@RequestParam(defaultValue = "1") String page, // null값이면 page 디폴트 값이 "1"이다 페이지초기값 설정
			@RequestParam(value="selectList",required=false) String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			Model model) {
		
		if(selectList == null) {
			//글 개수
			int listCount = iNoticeDao.noticeCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iNoticePageService.PagingList
			(page ,model);
		}else if(selectList.equals("N_TITLE")) {	
			int type = 1;
			//제목 검색글 개수
			int listCount = iNoticeDao.titleCount(keyword);
			model.addAttribute("listCount" , listCount);
			//제목 검색
			iNoticeSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}else if(selectList.equals("N_WRITER")) {
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
		return "redirect:noticeModify"; 
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
			@RequestParam(value="selectList",required=false) String selectList,
			@RequestParam(value="keyword",required=false) String keyword,
			@RequestParam(value="category",required=false) String category,
			Model model) {
		if(category == null) {
			category = "0";
		}
		model.addAttribute("category", category);
		
		
		System.out.println("category:"+category);
		if(selectList == null || category.equals("0")) {
			//글 개수
			int listCount = iProductDao.productCount();
			model.addAttribute("listCount" , listCount);
			//페이징
			iProductPageService.PagingList
			(selectList,page ,model);
		}else if(selectList.equals("P_NAME")) {	
			int type = 1;
			//상품이름 검색글 개수
			int listCount = iProductDao.nameCount(keyword);
			model.addAttribute("listCount" , listCount);
			//상품이름 검색
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
			Model model) {
		iProductDao.imgDelNamePath(P_IDX);
		
		iFileDeleteService.fileDelete(P_FILENAME1);
		
		return "redirect:/productView?P_IDX="+P_IDX; 
	}
	
	
	
	
	
	//상품등록
	@RequestMapping("/admin/write/productWriteAction")
	public String productWrite(
			@RequestParam("P_NAME") String P_NAME,
			@RequestParam("P_CODE") String P_CODE,
			@RequestParam("P_PRICE") int P_PRICE ,
			@RequestParam("P_STOCK") int P_STOCK ,
			@RequestParam("P_CATEGORY") int P_CATEGORY ,
			//여러 값은 배열형태로
			@RequestParam("filename") MultipartFile[] filelist ,
			Model model) throws IllegalStateException, IOException 
	{
		
		List<String> files =iWriteService.productWriteAction(filelist);
		
		 int result =iProductDao.productWriteAction
				 (P_NAME, P_CODE,files.get(0),files.get(1),P_CATEGORY, P_PRICE, P_STOCK);
		 System.out.println(result);
		 
		
		return "redirect:/admin_productManagement"; 
	}
	//상품조회
	@RequestMapping("/productView")
	public String productView(
			@RequestParam("P_IDX") int P_IDX,
			Model model) {
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
			@RequestParam("filename") MultipartFile[] filelist) throws IllegalStateException, IOException
	{
		
		iModifyService.updateAction(P_IDX, P_NAME, P_CODE, P_PRICE, 
				P_STOCK, P_CATEGORY, filelist, P_FILENAME1 );
		return "";

	}
	
	//게시글 삭제하기
	@RequestMapping("productDeleteAction")
	public String productDeleteAction(
			@RequestParam("P_IDX") int P_IDX,
			@RequestParam("P_FILENAME1") String P_FILENAME1)
	{
		System.out.println("ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ아ㅏㅏ");
		//업로드파일 삭제
		iFileDeleteService.fileDelete(P_FILENAME1);
		
		//글 삭제
		iProductDao.productDeleteAction(P_IDX);
		System.out.println("ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ");
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
	@RequestMapping("admin_productAsk")
	public String productAsk( Model model) {
		model.addAttribute("mainPage" , "admin/admin_productAsk.jsp");
		return "index"; 
	}
	//상품문의조회
	@RequestMapping("admin/view/productAskView")
	public String productAskView( Model model) {
		model.addAttribute("mainPage" , "admin/view/productAskView.jsp");
		return "index"; 
	}
}
