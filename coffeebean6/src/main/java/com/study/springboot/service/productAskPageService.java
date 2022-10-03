package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.noticeDao;
import com.study.springboot.dao.productAskDao;
import com.study.springboot.dto.noticeDto;
import com.study.springboot.dto.productAskDto;



@Component
public class productAskPageService {
	@Autowired
	productAskDao iProductAskDao;
	
	public List<productAskDto> PagingList(
			String page,Model model) {
		
	
		
		model.addAttribute("page",page); 
		int curPage = Integer.parseInt(page); 
		int listSize =10;
		int startList = (curPage - 1) * listSize + 1;  
		int endList =  (curPage * listSize);
		
		int endPage = (int)(Math.ceil((double)curPage / 5)) * 5; 
		int startPage = endPage - 4; 
		int totalList = iProductAskDao.productAskCount();
		int totalPage = (int)Math.ceil((double)totalList/listSize); 
		 if(endPage > totalPage){ 
	            endPage = totalPage; 
	        }
		model.addAttribute("totalPage", totalPage); 
		model.addAttribute("endPage", endPage); 
		model.addAttribute("startPage", startPage); 
		
		List<productAskDto> list = iProductAskDao.betweenList(startList,endList);
		model.addAttribute("list", list);
		model.addAttribute("selectList", "PA_TITLE"); 
		return list;
		
	
	
	}
}
