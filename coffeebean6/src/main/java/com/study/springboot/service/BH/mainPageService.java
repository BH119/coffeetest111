package com.study.springboot.service.BH;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.productDao;
import com.study.springboot.dto.productDto;



@Component
public class mainPageService {
	@Autowired
	productDao iProductDao;
	
	public List<productDto> PagingList(
			String selectList,
			String page,Model model) {
		
	
		if(page == null) {
			page = "1";
		}
		model.addAttribute("page",page); 
		int curPage = Integer.parseInt(page); 
		int listSize =8;
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
		
		List<productDto> orderHitList = iProductDao.orderHit(startList,endList);
		List<productDto> newList = iProductDao.betweenList(startList,endList);
		model.addAttribute("orderHitList", orderHitList);
		model.addAttribute("newList", newList);
		return orderHitList;
		
	
	
	}
}
