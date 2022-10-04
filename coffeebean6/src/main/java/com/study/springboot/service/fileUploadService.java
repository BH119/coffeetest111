package com.study.springboot.service;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.productDao;

@Component
public class fileUploadService {
	
	@Autowired
	productDao iProductDao;
	public String writeAction(MultipartFile file) throws IllegalStateException, IOException
	{

			
			//저장할 경로 설정   System.getProperty("user.dir") = 현재 디렉토리 (경로딸때 유용)
			String ProjectPath = System.getProperty("user.dir") + "\\src\\main\\webapp\\uploadIMG\\uploadProduct_IMG"; 
			System.out.println("경로: "+ ProjectPath);
			
			
			// 서버에서 저장 할 파일 이름
			String fileName = "";
			Calendar calendar = Calendar.getInstance();
			fileName += calendar.get(Calendar.YEAR);
			fileName += calendar.get(Calendar.MONTH)+1;
			fileName += calendar.get(Calendar.DATE);
			fileName += calendar.get(Calendar.HOUR);
			fileName += calendar.get(Calendar.MINUTE);
			fileName += calendar.get(Calendar.SECOND);
			
			int PK = 0; //겹치기 방지용
			PK = calendar.get(Calendar.MILLISECOND);
			
			//파일이름 적용
			String OriginfileName = file.getOriginalFilename();
			fileName = fileName +"_"+PK+"_" + OriginfileName;
			
			// 결과물 할당
			File saveFile = new File(ProjectPath, fileName);
			System.out.println("결과물"+saveFile);
			// 설정해준 폴더경로에 업로드한 파일을 저장시켜줌
			file.transferTo(saveFile); 
			
			return fileName;
	}
}	
	
