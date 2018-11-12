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
/*��ѯȫ����Ƹ�ƻ�*/
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> select(){
	List<Map<String,Object>> list=service.Select();
	return list;
}
/*�����Ƹ�ƻ�*/
@ResponseBody
@RequestMapping("/planSave")
public int plansave(Hr_recruit_plan plan){
	return service.Save(plan);
}
/*����id��ѯ*/
@RequestMapping("/queryId")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int planNo){
	List<Map<String,Object>> list=service.QueryId(planNo);
	return list;
}
/*�޸�*/
@ResponseBody
@RequestMapping("/planUpdate")
public int planUpdate(Hr_recruit_plan plan){
	return service.Update(plan);
}
/*ɾ��*/
@ResponseBody
@RequestMapping("/planDelete")
public int planDelete(@RequestBody int planNo){
	return service.Delete(planNo);
}
/*������*/
@RequestMapping("/querystatus")
@ResponseBody
public List<Map<String,Object>> Queryzero(Hr_recruit_plan plan){
	List<Map<String,Object>> list=service.Queryzero(plan);
	return list;
}
@RequestMapping("/statusUpdate")
@ResponseBody
public int statusUpdate(Hr_recruit_plan plan){
	return service.statusUpdae(plan);
}
}