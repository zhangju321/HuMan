package zj.controller;


import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.Menu;
import zj.service.MenuService;

@Controller
public class MenuController {
	@Resource
	private MenuService service;
	@RequestMapping("showMenu")
	@ResponseBody
  public List<Menu> showMenu(){
	  return service.selAll();
  }
	
}
