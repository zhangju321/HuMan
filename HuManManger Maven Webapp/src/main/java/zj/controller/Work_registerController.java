package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.dao.Work_registerMapper;
import zj.service.Work_registerService;
@Controller
@RequestMapping("/work")
public class Work_registerController {
	@Autowired
	private Work_registerMapper map;
	//²éÑ¯È«²¿
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String, Object>> queryAll(){
		List<Map<String, Object>> list=map.queryAll();
		return list;
		
	}
	
}
