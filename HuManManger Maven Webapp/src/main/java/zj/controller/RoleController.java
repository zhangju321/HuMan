package zj.controller;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.EasyUIDatagrid;
import zj.entity.Menu;
import zj.entity.Role;
import zj.service.RoleService;

@Controller
public class RoleController {
 @Resource
  private RoleService service;
 @RequestMapping("showRole")
 @ResponseBody
 //��ҳ��ѯ
 public EasyUIDatagrid showRole(@RequestParam(defaultValue="2")int rows,@RequestParam(defaultValue="1")int page){
	return service.showRole(rows,page); 
 }
 //�޸Ľ�ɫ
 @RequestMapping("update")
 @ResponseBody
  public int update(Role role){
	  int index=service.update(role);
	  return index;
  }
 @RequestMapping("showPrivilege")
 @ResponseBody
 //Ȩ��
 public List<Menu> showPrivilege(int id){
	return service.showPrivilege(id);
	 
 }
 //��ӽ�ɫ
 @RequestMapping("save")
 @ResponseBody
 public int save(Role role){
	 System.out.println(role.toString());
	 int index=service.save(role);
	 return index;
 }
 //ɾ����ɫ
 @RequestMapping("delete")
 @ResponseBody
 public int delete( int rid){
	 return service.delete(rid);
 }
}
