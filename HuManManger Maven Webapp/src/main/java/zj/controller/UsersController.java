package zj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Users;
import zj.service.UsersService;

@Controller
public class UsersController {
	@Autowired
  private UsersService service;
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Users> findAll(){
		List<Users> list=service.findAll();
		return list;
	} 	
	@ResponseBody
	@RequestMapping("/login")
	public String login(Users users,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("uname", users.getUname());
		map.put("password", users.getPassword());
		System.out.println(map);
		Users user=service.login(map);
		System.out.println(user);
		if(user!=null){
			session.setAttribute("user", user);
			return "1";
		}else{
			return "0";
		}
	}
}
