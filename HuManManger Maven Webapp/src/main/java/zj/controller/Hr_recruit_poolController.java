package zj.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import zj.dao.Hr_recruit_poolMapper;
import zj.entity.Hr_recruit_pool;
import zj.service.Hr_recruit_poolService;

@Controller
@RequestMapping("/hrpool")
public class Hr_recruit_poolController {
	@Autowired
	private Hr_recruit_poolService pools;
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String,Object>> queryAll(){
		List<Map<String,Object>> list1=pools.queryAll();
		return list1;
	}
	@RequestMapping("/Save")
	@ResponseBody
	public void savehrpool(Hr_recruit_pool pool,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	   pools.savehrpool(pool);
	   out.print("添加成功");
	}
	@RequestMapping("/dele")
	@ResponseBody
	
	public void deletePool(Hr_recruit_pool pool,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		pools.deletePool(pool);
		out.print("删除成功");
	}
	@RequestMapping("/queryByid")
	@ResponseBody
	public Hr_recruit_pool queryByid(Hr_recruit_pool pool){
		Hr_recruit_pool list2=pools.queryByid(pool.getEXPERT_ID());
		
		return list2;
		
	}
	@RequestMapping("/updateP")
	public void updatePool(Hr_recruit_pool pool,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	  pools.updatePool(pool);
	   out.print("修改成功");
	}
	@RequestMapping("/queryplan")
	@ResponseBody
	public List<Map<String,Object>> queryplan(){
		return pools.queryplan();
		
	} 
}