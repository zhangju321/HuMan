package zj.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Department;
import zj.entity.Staff_info;
import zj.service.StaffInfoService;

@Controller
@RequestMapping("/staffInfo")
public class StaffInfoController {
 @Autowired
 private StaffInfoService staffSer;
 
 @RequestMapping("/queryStaff")
 @ResponseBody
 public PageInfo<Map> queryStaff(@RequestParam(required = false, defaultValue = "1") Integer startPage){
	 PageHelper.startPage(startPage, 5);
	 List<Map> list=staffSer.queryStaff();
	 PageInfo<Map> pi = new PageInfo<>(list);
	 return pi;
}
 @RequestMapping("/findAll")
 @ResponseBody
 public List<Department> findAll(){
	  List<Department> lists=staffSer.findAll();
	  return lists;	  
 }
 @RequestMapping("/queryById")
 @ResponseBody
	public Map queryById(Staff_info s,HttpSession se){
	 Map map=staffSer.queryById(s);
	 se.setAttribute("user", map);
             return map;			  
	 }
 @RequestMapping("/queryById2")
 @ResponseBody
	public Map queryById2(HttpSession se){
	 Map map=(Map) se.getAttribute("user");
             return map;			  
	 }
 @RequestMapping("/queryDepartId")
 @ResponseBody
	public List<Map> queryDepartId(int departmentId){
	 List<Map> dept=staffSer.queryDepartId(departmentId);
      return dept;			  
	 }
}
