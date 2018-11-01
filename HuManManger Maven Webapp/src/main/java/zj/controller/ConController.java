package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.attend_config;
import zj.service.attend_ConfigService;
import zj.service.attend_scheduleService;
@Controller
@RequestMapping("/attend_config")
@SessionAttributes(value="config")
public class ConController {

	@Autowired
   private attend_ConfigService aConfigService;
	@ResponseBody
	@RequestMapping("/conFind")
	public PageInfo<Map<String, Object>> conFind(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map<String, Object>> list=aConfigService.conFind();
		 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
		 return pi;
	}
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(@RequestBody attend_config config,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		aConfigService.saveOrUpdate(config);
		out.print("ok");
	}
	@RequestMapping("/conDelete")
	public void conDelete(attend_config config,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		aConfigService.conDelete(config);
		out.print("ok");
	}
	@ResponseBody
	@RequestMapping("/conFindById")
	public attend_config conFindById(attend_config config){
		attend_config config2=aConfigService.conFindById(config.getDuty_id());
		return config2;  
	}
	
}
