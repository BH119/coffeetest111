package com.study.springboot.service.BH;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.study.springboot.dao.productDao;

@Component
public class writeService {

	@Autowired
	productDao iProductDao;
	@Autowired
	fileUploadService IFileUploadService;
	
	public List<String> productWriteAction( 
			//파일의 여러 값은 배열형태로
			MultipartFile[] filelist ) throws IllegalStateException, IOException 
	{
		
		//파일개수 제한 3개이하면서 0번째 인덱스의 값이 실질적으로 있을 때.
		if (filelist.length <4 && !filelist[0].isEmpty()) {
			
			//List는 이름 값들을 저장  ,  3개의 값에 미리 null 을 넣어 놈
			List<String> fileNameList = new ArrayList<String>(Arrays.asList(null,null,null));
		
			int count =0; //count는 인덱스 치환용
			
			// 향상된 포문을 돌려서 오브젝트 처리.
			for( MultipartFile file : filelist) {
				
				//파일 1개 저장 로직
				String fileName = IFileUploadService.writeAction(file); //폴더에 저장처리 및 파일이름리턴
				System.out.println("리턴받은값: "+fileName); 

				fileNameList.set(count, fileName); // 배열안에 파일이름저장 (인덱스,값)
				System.out.println("파일값들:"+fileNameList);	
			
				count++;
			}
			//DB저장 로직
			String filepath="";  //경로는 그냥 정해져있으므로 문자열로 할당.
			filepath = "uploadIMG\\uploadProduct_IMG\\";
			
			//값들을 꺼내와서 할당
			String filename1 = fileNameList.get(0);
			String filename2 = fileNameList.get(1);
			String filename3 = fileNameList.get(2);
				

			
			List<String> files = new ArrayList<String>(Arrays.asList(filename1,filepath,filename2,filename3));
			return files;
		}
		else{
			String filepath="";  //경로는 그냥 정해져있으므로 문자열로 할당.
			filepath = "uploadIMG\\uploadProduct_IMG\\";
			List<String> files = new ArrayList<String>(Arrays.asList(null,filepath,null,null));
			return files;
		}	
	}
}
