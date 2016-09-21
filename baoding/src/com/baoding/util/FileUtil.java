package com.baoding.util;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public class FileUtil {
	
	public static void uploadFile(HttpServletRequest request,String prePath) throws IllegalStateException, IOException{
		MultipartHttpServletRequest mulitRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iter = mulitRequest.getFileNames();
		while(iter.hasNext()){
			MultipartFile file = mulitRequest.getFile((String)iter.next());
			if(file != null){
				String fileName = file.getOriginalFilename();
				String path = prePath+fileName;
				File localFile = new File(path);
				file.transferTo(localFile);
			}
		}
	}

}
