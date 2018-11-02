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
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Staff_info;
import zj.entity.Travel;
import zj.service.TravelService;


@Controller
@RequestMapping("/travel")
public class TravelController {
	@Autowired
	 private TravelService tser;
	 
	 @RequestMapping("/queryAll")
	 @ResponseBody
	 public List<Map> queryAll(){
		  List<Map> vo=tser.queryAll();
		  return vo;	  
	 }
	 @RequestMapping("/findAll")
	 @ResponseBody
	 public List<Staff_info> findAll(){
		  List<Staff_info> lists=tser.findAll();
		  return lists;	  
	 }
	 @RequestMapping("/queryById")
	 @ResponseBody
		public Travel queryById(int travel_Id){
		 Travel tra=tser.queryById(travel_Id);
	             return tra;			  
		 }
	 @RequestMapping("/queryStaff2")
	 @ResponseBody
		public List<Map> queryStaff2(int staff_Id){
		 List<Map> fo=tser.queryStaff2(staff_Id);
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
}
