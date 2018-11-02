package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Hr_recruit_filter;
import zj.entity.Hr_recruit_recruitment;
import zj.service.Hr_recruitmentService;

@Controller
@RequestMapping("/recru")
public class Hr_recruitmentController {
	@Autowired
	private Hr_recruitmentService service;
	/*��ѯȫ����Ƹ����*/
	@RequestMapping("/select")
	@ResponseBody
	public List<Map<String,Object>> select(){
		return service.queryAll();
	}
	/*����id��ѯ*/
	@RequestMapping("/queryId")
	@ResponseBody
	public List<Map<String,Object>> queryId(@RequestBody int recruitmentId){
		return service.QueryId(recruitmentId);
	}
	/*�޸�*/
	@RequestMapping("/Update")
	@ResponseBody
	public int updateFilter(Hr_recruit_recruitment recru){
		return service.Update(recru);
	}
	/*ɾ��*/
	@ResponseBody
	@RequestMapping("/Delete")
	public int planDelete(@RequestBody int recruitmentId){
		return service.Delete(recruitmentId);
	}
	/*��ѯɸѡͨ����Ա*/
	@ResponseBody
	@RequestMapping("/QueryFilter")
	public List<Map<String,Object>> Queryfilter(Hr_recruit_filter filter){
		return service.Queryfilter(filter);
	}
}
