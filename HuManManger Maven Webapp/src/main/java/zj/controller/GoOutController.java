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

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.service.GoOutService;



@Controller
@RequestMapping("/goOut")
public class GoOutController {
	@Autowired
	 private GoOutService gser;
	
	 @RequestMapping("notApproved")
	 @ResponseBody
	 public PageInfo<Map> notApproved(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map> list=gser.notApproved();
		 PageInfo<Map> vo = new PageInfo<>(list);
		 return vo;
	}
	 	
	 @RequestMapping("/queryAll")
	 @ResponseBody	 
	 public PageInfo<Map> queryAll(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map> list=gser.queryAll();
		 PageInfo<Map> go = new PageInfo<>(list);
		 return go;
	}
	 @RequestMapping("/findAll")
	 @ResponseBody
	 public List<Map> findAll(){
		  List<Map> lists=gser.findAll();
		  return lists;	  
	 }
	@RequestMapping("/queryDetails")
	 @ResponseBody
	 public List<Map<String, Object>> queryDetails(int out_Id){
		 List<Map<String, Object>> map=gser.queryDetails(out_Id);
	             return map;			  
		 }
	@RequestMapping("/queryStaff3")
	 @ResponseBody
		public List<Map> queryStaff3(int sta_Staff_Id){
		 List<Map> out=gser.queryStaff3(sta_Staff_Id);
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
	 @RequestMapping("/queryId")
	 @ResponseBody
		public GoOut queryId(int out_Id){		
		 GoOut gt=gser.queryId(out_Id);
	             return gt;			  
		 }
}
