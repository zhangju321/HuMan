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
	/*查询全部招聘需求*/
	@RequestMapping("/select")
	@ResponseBody
	public List<Map<String,Object>> select(){
		return service.queryAll();
	}
	/*根据id查询*/
	@RequestMapping("/queryId")
	@ResponseBody
	public List<Map<String,Object>> queryId(@RequestBody int recruitmentId){
		return service.QueryId(recruitmentId);
	}
	/*修改*/
	@RequestMapping("/Update")
	@ResponseBody
	public int updateFilter(Hr_recruit_recruitment recru){
		return service.Update(recru);
	}
	/*删除*/
	@ResponseBody
	@RequestMapping("/Delete")
	public int planDelete(@RequestBody int recruitmentId){
		return service.Delete(recruitmentId);
	}
	/*查询筛选通过人员*/
	@ResponseBody
	@RequestMapping("/QueryFilter")
	public List<Map<String,Object>> Queryfilter(Hr_recruit_filter filter){
		return service.Queryfilter(filter);
	}
}
