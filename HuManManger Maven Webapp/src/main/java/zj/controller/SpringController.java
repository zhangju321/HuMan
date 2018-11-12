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

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Springfestival;
import zj.service.SpringfestivalService;

@Controller
@RequestMapping("/sf")
public class SpringController {

	@Autowired
	private SpringfestivalService sfsService;
	@ResponseBody
	@RequestMapping("/sfFind")
	public PageInfo<Map<String, Object>> sfFind(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 8);
		 List<Map<String, Object>> list=sfsService.sfFind();
		 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
		 return pi;
	}
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(Springfestival sf,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		sfsService.saveOrUpdate(sf);
		out.print("ok");
	}
	@RequestMapping("/sfDelete")
	public void conDelete(Springfestival sf,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		sfsService.sfDelete(sf);
		out.print("ok");
	}
	@ResponseBody
	@RequestMapping("/sfFindById")
	public Springfestival conFindById(Springfestival sf){
		Springfestival sf2=sfsService.sfFindById(sf.getSfId());
		return sf2;  
	}
	
	@RequestMapping("/departFind")
	@ResponseBody
	public List<Map<String, Object>> departFind(){
		List<Map<String, Object>> list=sfsService.departFind();
		return list;
		
	}
}
