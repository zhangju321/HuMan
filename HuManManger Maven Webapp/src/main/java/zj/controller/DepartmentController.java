package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.service.DepartmentService;
import zj.service.Hr_planService;

@Controller
@RequestMapping("/depart")
public class DepartmentController {
	@Autowired
	private DepartmentService service;
	/*查询全部部门*/
	@RequestMapping("/select")
	@ResponseBody
	public List<Map<String,Object>> select(){
		return service.select();
	}
}
