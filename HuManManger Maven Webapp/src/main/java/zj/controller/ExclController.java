package zj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Work_register;
import zj.service.ExcleService;
@Controller
@RequestMapping("/work")
public class ExclController {
	@Autowired
	private ExcleService es;
	 @ResponseBody   
	 @RequestMapping(value="ajaxUpload.do",method={RequestMethod.GET,RequestMethod.POST})      
	 public String ajaxUploadExcel(HttpServletRequest request,HttpServletResponse response) throws Exception { 
		 System.out.println("½øÀ´");
		 return es.ajaxUploadExcel(request, response);  
	}  
	 @ResponseBody   
	 @RequestMapping("/save")
	public int saveWork(Work_register register){
	System.out.println("SVaeÌí¼Ó");
		return es.saveWork(register);
		
	}

}
