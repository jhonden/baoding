package com.baoding.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletWebRequest;

public class ResponseUtil {
	
	public static void jsonResponse(String jsonResult)
	  {
	    HttpServletResponse response = null;
	    try {
	      response = ((ServletWebRequest)RequestContextHolder.getRequestAttributes()).getResponse();
	      response.setContentType("text/plain; charset=UTF-8");
	      response.getWriter().println(jsonResult);
	    } catch (IOException e) {
	      e.printStackTrace();
	      try
	      {
	        if (response != null)
	          response.getWriter().close();
	      } catch (IOException e1) {
	        e1.printStackTrace();
	      }
	    }
	    finally
	    {
	      try
	      {
	        if (response != null)
	          response.getWriter().close();
	      } catch (IOException e) {
	        e.printStackTrace();
	      }
	    }
	  }

}
