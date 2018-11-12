package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.service.PositionService;

@Controller
@RequestMapping("/position")
public class PositionController {
	@Autowired
	private PositionService service;
	/*²éÑ¯¸ÚÎ»*/
	@ResponseBody
	@RequestMapping("/select")
	public List<Map<String,Object>> position(@RequestBody int departmentId){
		System.out.println(departmentId);
		System.out.println(123);
		return service.select(departmentId);
	}
}
