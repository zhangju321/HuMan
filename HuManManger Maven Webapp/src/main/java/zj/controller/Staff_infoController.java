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
	@ResponseBody
	@RequestMapping("/saveSta")
	public void save(Staff_info stinfo){
		ser.save(stinfo);
	}
	@ResponseBody
	@RequestMapping("/srole")
	public List<Role> sRoles(){
		return ser.selectRole();
		
	}
	@ResponseBody
	@RequestMapping("/selpost")
	public List<Position> sPositions(){
		return ser.selectPost();
		
	}
	@ResponseBody
	@RequestMapping("/sedepa")
	public List<Department> seDepartments(){
		return ser.selectDep();
		
	}
	@ResponseBody
	@RequestMapping("/selId")
	public	List<Staff_info> selectId(@RequestBody int staff_id){
		System.out.println(staff_id);
		return ser.selectId(staff_id);
		
	}
	@ResponseBody
	@RequestMapping("/staff_update")
	public int update(@RequestBody Staff_info stinfo,HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		System.out.println(1);
		System.out.println(stinfo);
		return ser.update(stinfo);
	
		
	}
	@ResponseBody
	@RequestMapping("/delete")
	public int delete(@RequestBody int staff_id){
		return ser.delete(staff_id);
		
	}
}
