package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	private UserService service;
	/*²éÑ¯¸ÚÎ»*/
	@ResponseBody
	@RequestMapping("/usersname")
	public List<Map<String,Object>> position(){
		return service.UserName();
	}
}
