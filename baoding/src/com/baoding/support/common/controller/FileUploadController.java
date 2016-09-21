package com.baoding.support.common.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.baoding.util.C;
import com.baoding.util.FileUtil;

@Controller
@RequestMapping("/upload")
public class FileUploadController {
	
	private static final long MAX_SIZE = 204800L;
	  private static String syncUrl = null;
	  private String dir;
	  private String dynamicDir;
	  private String jsonData;
	  private File imgFile;
	  private String imgFileFileName;
	  private String savePath;
	  private String saveUrl;
	  private String newFileName;
	  private String requestSource;
	  
//	  static
//	  {
//	    Properties prop = new Properties();
//	    try {
//	    	System.out.println(C.CONF_PATH);
//	      prop.load(new FileInputStream(new File(C.CONF_PATH + "/comm/ftpFile.properties")));
//	      syncUrl = prop.getProperty("img.syncUrl");
//	    } catch (IOException e) {
//	      e.printStackTrace();
//	    }
//	  }
	  
	  @RequestMapping("main")
	  public @ResponseBody String addFileMain(String constPath,HttpServletRequest request) throws IllegalStateException, IOException{
		  CommonsMultipartResolver multi = new CommonsMultipartResolver(request.getSession().getServletContext());
		  if(multi.isMultipart(request)){
			  FileUtil.uploadFile(request, C.file_temp_path);
		  }
		  return "0";
	  }

}
