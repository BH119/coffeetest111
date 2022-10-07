package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.productDao;
import com.study.springboot.dto.productDto;



@Component
public class bestPageService {
	@Autowired
	productDao iProductDao;
	
	public List<productDto> PagingList(
			String page,Model model) {
		
	
		
		model.addAttribute("page",page); 
		int curPage = Integer.parseInt(page); 
		int listSize =16;
		int startList = (curPage - 1) * listSize + 1;  
		int endList =  (curPage * listSize);
		
		int endPage = (int)(Math.ceil((double)curPage / 5)) * 5; 
		int startPage = endPage - 4; 
		int totalList = iProductDao.productCount();
		int totalPage = (int)Math.ceil((double)totalList/listSize); 
		 if(endPage > totalPage){ 
	            endPage = totalPage; 
	        }
		model.addAttribute("totalPage", totalPage); 
		model.addAttribute("endPage", endPage); 
		model.addAttribute("startPage", startPage); 
		
		List<productDto> list = iProductDao.orderHit(startList,endList);
		model.addAttribute("bestList", list);
		return list;
		
	
	
	}
}
