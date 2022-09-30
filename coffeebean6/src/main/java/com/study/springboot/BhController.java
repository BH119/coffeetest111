package com.study.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.springboot.dao.noticeDao;
import com.study.springboot.service.pageService;
import com.study.springboot.service.searchService;

@Controller
public class BhController {
	
	@Autowired
	noticeDao iNoticeDao;
	@Autowired
	pageService iPageService;
	@Autowired
	searchService iSearchService;

	
	
	
	//-------------네비바---------------
	//공지사항 클릭
		@RequestMapping("NAV_admin_notice")
		public String NAV_admin_notice( Model model) {
			return "redirect:admin_notice"; 
		}
		//회원관리 클릭
		@RequestMapping("NAV_admin_member")
		public String NAV_admin_member( Model model) {
			return "redirect:admin_member"; 
		}
		//상품관리 클릭
		@RequestMapping("NAV_admin_puroductManagement")
		public String NAV_admin_puroductManagement( Model model) {
			return "redirect:admin_puroductManagement"; 
		}
		//1:1문의 클릭
		@RequestMapping("NAV_admin_one2one")
		public String NAV_admin_one2one( Model model) {
			return "redirect:admin_one2one"; 
		}
		//리뷰관리 클릭
		@RequestMapping("NAV_admin_review")
		public String NAV_admin_review( Model model) {
			return "redirect:admin_review"; 
		}
		//주문관리 클릭
		@RequestMapping("/NAV_admin_orderManagement")
		public String NAV_admin_orderManagement( Model model) {
			return "redirect:admin_orderManagement"; 
		}
		//상품문의 클릭
		@RequestMapping("/NAV_admin_productAsk")
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
			System.out.println("ddddddddxxxx"+page);
			iPageService.PagingList
			(page ,model);
			System.out.println("ddddddddddddddddddddddddddddddddddddddd");
		}else if(selectList.equals("title")) {	
			int type = 1;
			//제목 검색글 개수
			int listCount = iNoticeDao.titleCount(keyword);
			model.addAttribute("listCount" , listCount);
			//제목 검색
			iSearchService.betweenList
			(type,keyword,selectList,page,model);
			
		}else if(selectList.equals("write")) {
			int type = 2;
			//글쓴이 게시물 및 개수
			int listCount = iNoticeDao.writeCount(keyword);
			model.addAttribute("listCount" , listCount);
			iSearchService.betweenList
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
		iNoticeDao.noticeModifyView(N_IDX);
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
	@RequestMapping("admin_puroductManagement")
	public String admin_puroductManagement( Model model) {
		model.addAttribute("mainPage" , "admin/admin_puroductManagement.jsp");
		
		return "index"; 
	}
	//상품등록
	@RequestMapping("admin/write/productWrite")
	public String productWrite( Model model) {
		model.addAttribute("mainPage" , "admin/write/productWrite.jsp");	
		return "index"; 
	}
	//상품조회
	@RequestMapping("admin/view/productView")
	public String productView( Model model) {
		model.addAttribute("mainPage" , "admin/view/productView.jsp");	
		return "index"; 
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
