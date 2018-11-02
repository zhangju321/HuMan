package zj.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Hr_recruit_plan;
import zj.service.Hr_planService;

@Controller
@RequestMapping("/plan")
public class Hr_planController {
@Autowired
private Hr_planService service;
/*查询全部招聘计划*/
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> select(){
	List<Map<String,Object>> list=service.Select();
	return list;
}
/*添加招聘计划*/
@ResponseBody
@RequestMapping("/planSave")
public int plansave(Hr_recruit_plan plan){
	return service.Save(plan);
}
/*根据id查询*/
@RequestMapping("/queryId")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int planNo){
	List<Map<String,Object>> list=service.QueryId(planNo);
	return list;
}
/*修改*/
@ResponseBody
@RequestMapping("/planUpdate")
public int planUpdate(Hr_recruit_plan plan){
    int a=0;
	a=service.Update(plan);
	return a;
}
/*删除*/
@ResponseBody
@RequestMapping("/planDelete")
public int planDelete(@RequestBody int planNo){
    int a=0;
	a=service.Delete(planNo);
	return a;
}
/*待审批*/
@RequestMapping("/querystatus")
@ResponseBody
public List<Map<String,Object>> Queryzero(@RequestBody int planStatus){
	List<Map<String,Object>> list=service.Queryzero(planStatus);
	return list;
}
@RequestMapping("/oneupdate")
@ResponseBody
public int oneupdate(@RequestBody int planNo){
	return service.oneupdae(planNo);
}
@RequestMapping("/twoupdate")
@ResponseBody
public int twoupdate(@RequestBody int planNo){
	return service.twoupdae(planNo);
}
@RequestMapping("/departName")
@ResponseBody
public List<Map<String,Object>> departName(){
	return service.departName();
}
}