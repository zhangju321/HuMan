package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.PreDestroy;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Department;
import zj.entity.Hr_recruit_pool;
import zj.entity.Position;
import zj.entity.Role;
import zj.entity.Staff_info;
import zj.service.Staff_infoService;

@Controller
@RequestMapping("/staff")

public class Staff_infoController {
	@Autowired
	private Staff_infoService ser;
	@RequestMapping("/select")
	@ResponseBody
	public List<Map<String,Object>> select(){
		List<Map<String,Object>> list=ser.selectAll();
		return list;
		
	}
	//根据id查
			@RequestMapping("/selectId")
			@ResponseBody
			public List<Map<String,Object>> selectId(int staff_id){
				List<Map<String, Object>> list=ser.selectId(staff_id);
				return list;
				
			}
			//修改
				@RequestMapping("/update")
				@ResponseBody
			public int update(Staff_info stinfo){
				return ser.update(stinfo);
				
			}
				//删除
				@RequestMapping("/delete")
				@ResponseBody
				public int  delete(Staff_info stinfo){
					return ser.delete(stinfo);
				}
				//添加
				@RequestMapping("/save")
				@ResponseBody
				public int save(Staff_info stinfo){
					return ser.save(stinfo);
				}
				//部门
				@RequestMapping("/selectDep")
				@ResponseBody
				public List<Map<String,Object>> selectDep(){
					  List<Map<String,Object>> list=ser.selectDep();
					return list;
				}
				//角色
				@RequestMapping("/selectRole")
				@ResponseBody
				public List<Map<String,Object>> selectRole(){
					  List<Map<String,Object>> list=ser.selectRole();
					return list;
				}
				//职务
				@RequestMapping("/selectPost")
				@ResponseBody
				public List<Map<String,Object>> selectPost(){
					  List<Map<String,Object>> list=ser.selectPost();
					return list;
				}
		}
