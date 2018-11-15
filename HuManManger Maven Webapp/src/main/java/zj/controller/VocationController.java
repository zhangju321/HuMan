package zj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Staff_info;
import zj.entity.Vocation;
import zj.service.VocationService;


@Controller
@RequestMapping("/vocation")
public class VocationController {
 @Autowired
 private VocationService vser;
 
 @RequestMapping("notApproved")
 @ResponseBody
 public PageInfo<Map> notApproved(@RequestParam(required = false, defaultValue = "1") Integer startPage){
	 PageHelper.startPage(startPage, 5);
	 List<Map> list=vser.notApproved();
	 PageInfo<Map> vo = new PageInfo<>(list);
	 return vo;
}
 
 @RequestMapping("/queryAll")
 @ResponseBody
 public PageInfo<Map> queryAll(@RequestParam(required = false, defaultValue = "1") Integer startPage){
	 PageHelper.startPage(startPage, 5);
	 List<Map> list=vser.queryAll();
	 PageInfo<Map> vo = new PageInfo<>(list);
	 return vo;
}
 @RequestMapping("/findAll")
 @ResponseBody
 public List<Map> findAll(){
	  List<Map> lists=vser.findAll();
	  return lists;	  
 }
 @ResponseBody
 @RequestMapping("/usersname")
	public List<Map<String,Object>> position(){
		return vser.UserName();
 }
 @RequestMapping("/save")
 public void save(@RequestBody Vocation v,HttpServletResponse response) throws IOException{
	  response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int rs=vser.save(v);
		if(rs>0){
			out.print("操作成功");
		}
 }
 
 @RequestMapping("/queryById")
 @ResponseBody
 public List<Map<String, Object>> queryById(int vocation_Id){
	 List<Map<String, Object>> vc=vser.queryById(vocation_Id);
             return vc;			  
	 }	
 @RequestMapping("/queryId")
 @ResponseBody
	public Vocation queryId(int vocation_Id){
	 Vocation voc=vser.queryId(vocation_Id);
             return voc;			  
	 }
 @RequestMapping("/queryStaff")
 @ResponseBody
	public List<Map> queryStaff(int sta_Staff_Id){
	 List<Map> fo=vser.queryStaff(sta_Staff_Id);
             return fo;			  
	 }
 @RequestMapping("/delete")
 public void delete(@RequestBody int vocation_Id,HttpServletResponse response) throws IOException{
	  response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		int rs=vser.delete(vocation_Id);
		if(rs>0){
			out.print("删除成功");
     }
 }
 @RequestMapping("/updateStatus")
 @ResponseBody
	public void updateStatus(Vocation statu,HttpServletResponse response) throws IOException{
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		System.out.println(statu.getVocation_Id());
		vser.updateStatu(statu);			  
	 }
 @RequestMapping("/updateStatus2")
 @ResponseBody
	public void updateStatus2(Vocation statu,HttpServletResponse response) throws IOException{
	    response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		System.out.println(statu.getVocation_Id());
		vser.updateStatu2(statu);			  
	 }
 
}

