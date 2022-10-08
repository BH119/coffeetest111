package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.productDao;
import com.study.springboot.dto.productDto;



@Component
public class categoryType3PageService {
	@Autowired
	productDao iProductDao;
	
	public List<productDto> PagingList(
			String page,
			String orderHigh,
			String orderLow,
			String orderNew,
			String orderHit,
			Model model) {
		
	
		
		model.addAttribute("page",page); 
		int curPage = Integer.parseInt(page); 
		int listSize =16;
		int startList = (curPage - 1) * listSize + 1;  
		int endList =  (curPage * listSize);
		
		int endPage = (int)(Math.ceil((double)curPage / 5)) * 5; 
		int startPage = endPage - 4; 
		int totalList = iProductDao.categoryType3BindCount();
		int totalPage = (int)Math.ceil((double)totalList/listSize); 
		 if(endPage > totalPage){ 
	            endPage = totalPage; 
	        }
		model.addAttribute("totalPage", totalPage); 
		model.addAttribute("endPage", endPage); 
		model.addAttribute("startPage", startPage); 
		
		System.out.println("dddddddddddd"+totalList);
		System.out.println("dddddddddddd"+totalPage);
		System.out.println("dddddddddddd"+startPage);
		System.out.println("dddddddddddd"+endPage);
		
		
		if(orderHigh.equals("1")) {
			List<productDto> list = iProductDao.productType3_P_HighList(startList, endList);
			model.addAttribute("Type3List", list);
			model.addAttribute("orderHigh", orderHigh);
			return list;
			
		}
		else if(orderLow.equals("1")) {
			List<productDto> list = iProductDao.productType3_P_LowList(startList, endList);
			model.addAttribute("Type3List", list);
			model.addAttribute("orderLow", orderLow);
			return list;
		}
		else if(orderNew.equals("1")){
			
			List<productDto> list = iProductDao.productType3List(startList, endList);
			model.addAttribute("Type3List", list);
			model.addAttribute("orderNew", orderNew);
			return list;
		}
		else if(orderHit.equals("1")){
			
			List<productDto> list = iProductDao.productType3_P_HitList(startList, endList);
			model.addAttribute("Type3List", list);
			model.addAttribute("orderHit", orderHit);
			return list;
		}
		
		else {
		
			List<productDto> list = iProductDao.productType3List(startList, endList);
			model.addAttribute("Type3List", list);
			return list;
		}
		
	
	
	}
}
