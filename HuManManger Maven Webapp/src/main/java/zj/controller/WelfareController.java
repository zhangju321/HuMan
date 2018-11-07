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

import zj.entity.Pay;
import zj.entity.Project;
import zj.entity.Welfare;
import zj.service.WelfareService;

@Controller
@RequestMapping("/welfare")
public class WelfareController {
@Autowired
private WelfareService ser;
//查询福利
@RequestMapping("/queryWelfare")
@ResponseBody
public PageInfo<Map<String, Object>> queryWelfare(@RequestParam(required =false, defaultValue = "1") Integer startPage){
	PageHelper.startPage(startPage, 5);
	 List<Map<String, Object>> list=ser.queryWelfare();
	 PageInfo<Map<String, Object>> pi2 = new PageInfo<>(list);
	 return pi2;	
}

//查询部门
@RequestMapping("/queryDepar")
@ResponseBody
public PageInfo<Map<String, Object>> queryDepar(@RequestParam(required =false, defaultValue = "1") Integer startPage){
	PageHelper.startPage(startPage, 5);
	 List<Map<String, Object>> list=ser.queryDepar();
	 PageInfo<Map<String, Object>> pi3 = new PageInfo<>(list);
	 return pi3;	
}

//添加福利
@RequestMapping("/welfSave")
@ResponseBody
public int welfSave(Welfare welf){
    int num=ser.welfSave(welf);
    return num;
}
//删除
@RequestMapping("/welfdelete")
public void welfdelete(Welfare welf,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
	ser.welfDlete(welf);
	out.print("删除成功");
}

//单条查询
@RequestMapping("/queryid")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int id){
	List<Map<String,Object>> list3=ser.queryWelfare2(id);
	return list3;
	
}
//修改
@RequestMapping("/welfupdate")
public void welfupdate(Welfare welf,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
   ser.welfUpdate(welf);
   out.print("修改成功");
}
}
