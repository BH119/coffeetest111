package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.noticeDao;
import com.study.springboot.dao.productDao;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productDto;

@Component
public class productSearchService {
	@Autowired
	productDao iProductDao;
	
	//type   0 hit
	//       1 title
	//       2 writer
	public List<productDto> betweenList(
			int type, 
			String keyword, 
			String selectList,
			String page, 
			Model model) {
		
		model.addAttribute("page",page); //현재페이지 반환 (초기값은 1페이지로 설정했음)
		int curPage = Integer.parseInt(page); //현재페이지
		int listSize =10; //한페이지당 게시글 개수
		int startList = (curPage - 1) * listSize + 1;  //쿼리문 시작 게시물번호
		int endList =  (curPage * listSize); // 쿼리문 끝 게시물번호
		
		int endPage = (int)(Math.ceil((double)curPage / 5)) * 5;
		int startPage = endPage - 4;
		
		
		//분기점
		int totalList = 0;
		if( type == 1 ) {
			totalList = iProductDao.nameCount(keyword); //제목 게시글 개수
		}
		int totalPage = (int)Math.ceil((double)totalList/listSize); //전체페이지수
		 if(endPage > totalPage){
	            endPage = totalPage;
	        }
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("startPage", startPage);
		
		
		List<productDto> list = null;
		if( type == 1 ) {
			list = iProductDao.betweenListName(startList, endList, keyword);

			model.addAttribute("list", list);
			model.addAttribute("selectList", selectList);
			model.addAttribute("keyword", keyword);
		}
		return list;
	}
}
