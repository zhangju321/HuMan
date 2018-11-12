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
	//根据id查
		@RequestMapping("/queryByid")
		@ResponseBody
		public List<Map<String, Object>> queryByid(@RequestBody int EXPERT_ID){
			List<Map<String, Object>> list=pools.queryByid(EXPERT_ID);
			System.out.println(list.size());
			return list;
			
		}
		//修改
			@RequestMapping("/updatePool")
			@ResponseBody
		public int updatePool(Hr_recruit_pool pool){
			return pools.updatePool(pool);
			
		}
			//删除
			@RequestMapping("/deletePool")
			@ResponseBody
			public int deletePool(Hr_recruit_pool pool){
				System.out.println(pool.getEXPERT_ID());
				return pools.deletePool(pool);
			}
			//添加
			@RequestMapping("/savehrpool")
			@ResponseBody
			public int savehrpool(Hr_recruit_pool pool){
				return pools.savehrpool(pool);
			}
			//招聘计划
			@RequestMapping("/queryplan")
			@ResponseBody
			public List<Map<String,Object>> queryplan(){
				  List<Map<String,Object>> list=pools.queryplan();
				return list;
			}
	}
