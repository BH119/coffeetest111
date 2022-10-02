package com.study.springboot.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.productDao;

@Component
public class modifyService {
	@Autowired
	productDao iProductDao;
	@Autowired
	writeService iWriteService;
	@Autowired
	fileDeleteService iFieDeleteService;
	
	public int updateAction(
			int P_IDX,
			String P_NAME,
			String P_CODE,
			int P_PRICE,
			int P_STOCK,
			int P_CATEGORY,
			MultipartFile[] filelist, // 수정할 파일들 호출
			String P_FILENAME1 //수정하기 전 파일들 호출
			) throws IllegalStateException, IOException
	{
			
		// 0번인덱스에 파일실질적으로 있으면서 파일개수가 4미만 일 때
		if (!filelist[0].isEmpty() && filelist.length < 2) {
			
			//수정하면 기존에 있던 파일 삭제
			iFieDeleteService.fileDelete(P_FILENAME1);
			System.out.println("파일 지움!!");
		
			// 수정하기 = 기존에 파일 삭제 후 -> 새로운 파일 업데이트 (저장할때 로직과 똑같기 때문에 코드 중복을 피한다.)
			List<String> files = iWriteService.productWriteAction(filelist);
			int result = iProductDao.productUpdateAction(P_IDX, P_NAME , P_CODE, files.get(0), 
						files.get(1), P_CATEGORY , P_PRICE, P_STOCK);
			
			return result;
		}
		else {
			String filepath="";  //경로는 그냥 정해져있으므로 문자열로 할당.
			filepath = "uploadIMG\\uploadProduct_IMG\\";
			
			int result = iProductDao.productUpdateAction(P_IDX, P_NAME , P_CODE, P_FILENAME1, 
					filepath, P_CATEGORY , P_PRICE, P_STOCK);
			
			return 0;
		}
	}
}

