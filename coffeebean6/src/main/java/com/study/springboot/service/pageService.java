package com.study.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.study.springboot.dao.BH.noticeDao;
import com.study.springboot.dto.noticeDto;



@Component
public class pageService {
	@Autowired
	noticeDao iNoticeDao;
	
	public List<noticeDto> PagingList(
			String page,Model model) {
		
	
		
		model.addAttribute("page",page); 
		System.out.println("ddddddddddddddddddddddddddddddddddddddd"+page);
		System.out.println("ddddddddddddddddddddddddddddddddddddddd");
		int curPage = Integer.parseInt(page); 
		int listSize =10;
		int startList = (curPage - 1) * listSize + 1;  
		int endList =  (curPage * listSize);
		
		int endPage = (int)(Math.ceil((double)curPage / 5)) * 5; 
		int startPage = endPage - 4; 
		int totalList = iNoticeDao.noticeCount();
		int totalPage = (int)Math.ceil((double)totalList/listSize); 
		 if(endPage > totalPage){ 
	            endPage = totalPage; 
	        }
		model.addAttribute("totalPage", totalPage); 
		model.addAttribute("endPage", endPage); 
		model.addAttribute("startPage", startPage); 
		
		List<noticeDto> list = iNoticeDao.betweenList(startList,endList);
		model.addAttribute("list", list);
		model.addAttribute("selectList", "title"); 
		return list;
		
	
	
	}
}
