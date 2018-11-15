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

import zj.entity.Staff_info;
import zj.entity.Travel;
import zj.service.TravelService;


@Controller
@RequestMapping("/travel")
public class TravelController {
	@Autowired
	 private TravelService tser;
	
	
	 @RequestMapping("notApproved")
	 @ResponseBody
	 public PageInfo<Map> notApproved(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map> list=tser.notApproved();
		 PageInfo<Map> vo = new PageInfo<>(list);
		 return vo;
	}
	 
	 @RequestMapping("/queryAll")
	 @ResponseBody
	 public PageInfo<Map> queryAll(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map> list=tser.queryAll();
		 PageInfo<Map> tr = new PageInfo<>(list);
		 return tr;
	}	
	 @RequestMapping("/findAll")
	 @ResponseBody
	 public List<Map> findAll(){
		  List<Map> lists=tser.findAll();
		  return lists;	  
	 }
	 @RequestMapping("/queryDetails")
	 @ResponseBody
	 public List<Map<String, Object>> queryDetails(int travel_Id){
		 List<Map<String, Object>> map=tser.queryDetails(travel_Id);
	             return map;			  
		 }
		/*public Travel queryById(int travel_Id){
		 Travel tra=tser.queryById(travel_Id);
	             return tra;			  
		 }*/
	 @RequestMapping("/queryStaff2")
	 @ResponseBody
		public List<Map> queryStaff2(int sta_Staff_Id){
		 List<Map> fo=tser.queryStaff2(sta_Staff_Id);
	             return fo;			  
		 }
	 @RequestMapping("/save")
	 public void save(@RequestBody Travel t,HttpServletResponse response) throws IOException{
		  response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int rs=tser.save(t);
			if(rs>0){
				out.print("²Ù×÷³É¹¦");
			}
	 }
	 @RequestMapping("/updateStatus")
	 @ResponseBody
		public void updateStatus(Travel statu,HttpServletResponse response) throws IOException{
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			System.out.println(statu.getTravel_Id());
			tser.updateStatu(statu);			  
		 }
	 @RequestMapping("/updateStatus2")
	 @ResponseBody
		public void updateStatus2(Travel statu,HttpServletResponse response) throws IOException{
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			System.out.println(statu.getTravel_Id());
			tser.updateStatu2(statu);			  
		 }
	 @RequestMapping("/overrule")
	 @ResponseBody
		public Travel overrule(int travel_Id){
		 Travel tral=tser.overrule(travel_Id);
	             return tral;			  
		 }
}
