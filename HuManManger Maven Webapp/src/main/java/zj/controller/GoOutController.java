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

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.service.GoOutService;



@Controller
@RequestMapping("/goOut")
public class GoOutController {
	@Autowired
	 private GoOutService gser;
	 	
	 @RequestMapping("/queryAll")
	 @ResponseBody
	 public List<Map> queryAll(){
		  List<Map> vo=gser.queryAll();
		  return vo;	  
	 }
	 @RequestMapping("/findAll")
	 @ResponseBody
	 public List<Staff_info> findAll(){
		  List<Staff_info> lists=gser.findAll();
		  return lists;	  
	 }
	@RequestMapping("/queryById")
	 @ResponseBody
		public GoOut queryById(int out_Id){
		
		 GoOut go=gser.queryById(out_Id);
	             return go;			  
		 }
	 
	 @ResponseBody
		public List<Map> queryStaff3(int staff_Id){
		 List<Map> out=gser.queryStaff3(staff_Id);
	             return out;			  
		 }
	 @RequestMapping("/insert")
	 public void insert(@RequestBody GoOut g,HttpServletResponse response) throws IOException{
		  response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int rs=gser.insert(g);
			if(rs>0){
				out.print("²Ù×÷³É¹¦");
			}
	 }
	 @RequestMapping("/updateStatus")
	 @ResponseBody
		public void updateStatus(GoOut statu,HttpServletResponse response) throws IOException{
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			System.out.println(statu.getOut_Id());
			gser.updateStatu(statu);			  
		 }
	 @RequestMapping("/updateStatus2")
	 @ResponseBody
		public void updateStatus2(GoOut statu,HttpServletResponse response) throws IOException{
		    response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			System.out.println(statu.getOut_Id());
			gser.updateStatu2(statu);			  
		 }
}
