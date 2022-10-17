package com.study.springboot.service.BH;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;

@Component
public class fileDeleteService {

	
	public void fileDelete(
			@RequestParam("P_FILENAME1") String P_FILENAME1,
			@RequestParam("P_FILENAME2") String P_FILENAME2,
			@RequestParam("P_FILENAME3") String P_FILENAME3) 
	{
		//업로드파일 삭제
		String ProjectPath = System.getProperty("user.dir") + "\\src\\main\\webapp\\uploadIMG\\uploadProduct_IMG\\";
		List<String> files = new ArrayList<String>(Arrays.asList(P_FILENAME1,P_FILENAME2,P_FILENAME3));
		
		File file;
		for (int i = 0; i < files.size(); i++) {
		file = new File(ProjectPath+ files.get(i));
		file.delete();
		}
	}
}