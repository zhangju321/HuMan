package zj.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.Roles;
import zj.entity.Usertable;
import zj.service.AdminService;


@Controller
@RequestMapping("/login")
public class AdminController {

	@Autowired
	private AdminService adminService;

	// ��ѯ��֤��½
	@ResponseBody
	@RequestMapping("/login.action")
	public String dologin(@RequestBody Usertable user, HttpSession session) {

		List<Map<String, Object>> list = adminService.queryUser(user.getUserName());

		System.out.println(list.toString());
		System.out.println(list.get(0).get("userId"));
		System.out.println(list.get(0).get("userName"));

		String nameString = (String) list.get(0).get("userName");
		String pwdString = (String) list.get(0).get("password");
		System.out.println(list.get(0).get("password"));
		if (user != null) {
			if (user.getUserName().equals(nameString) && user.getPassword().equals(pwdString)) {
				System.out.println("������ȷ");
				session.setAttribute("adminUsers", user.getUserName());
				return "1";
				//return "frame/views/index";
			}
		}
		return "2";
		//return "redirect:frame/views/user/login";

	}

	// ��ѯģ��
	@RequestMapping("/queryMenu")
	@ResponseBody
	public List<Map<String, Object>> queryMenu(HttpSession session) {
		String username = (String) session.getAttribute("adminUsers");
		System.out.println(username + "session-------------");
		List<Map<String, Object>> list = adminService.findModules(username);
		return list;
	}

	// ��ѯ����Ȩ��ģ��
	@RequestMapping("/findAllModules")
	@ResponseBody
	public List<Map<String, Object>> findAllModules(@RequestParam int rolesId) {
		System.out.println("��ѯ����Ȩ��ģ��-----------------------");
		List<Map<String, Object>> list = adminService.findAllMenusByRoleId(rolesId);
		return list;

	}

	// ���Ա��-��ѯ��ɫ
	@RequestMapping("/queryAllRoles")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAllRoles(
			@RequestParam(required = false, defaultValue = "1") Integer startPage) {
		// @RequestParam(required = false, defaultValue = "3") Integer PageSize
		System.out.println("�����ҳ----------------------------");
		PageHelper.startPage(startPage, 3);
		List<Map<String, Object>> roles = adminService.queryAllRoles();
		PageInfo<Map<String, Object>> rolesPageInfo = new PageInfo<Map<String, Object>>(roles);
		return rolesPageInfo;
	}

	// �޸�Ȩ��
	@ResponseBody
	@RequestMapping("/dropMenu")
	public void dropMenu(String menuIds, int rolesId) {
		System.out.println("�޸�Ȩ��---------------------------------------");
		adminService.addOrdeleteRolesModule(menuIds, rolesId);
	}
	//	��ɫɾ��
	@ResponseBody
	@RequestMapping("deleteRoles")
	public void deleteRoles(Integer rolesId){
		adminService.deleteRoles(rolesId);
	}
	// ��ɫ�޸�ǰ�Ĳ�ѯ
	@RequestMapping("/updateBeforeQuery")
	@ResponseBody
	public List<Map<String, Object>> updateBeforeQuery(Integer rolesId) {
		List<Map<String, Object>> list=adminService.findByIdRoles(rolesId);
		System.out.println(list.toString());
		return list;
	}
    //�޸Ļ�ɾ��
	@ResponseBody
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(@RequestBody Roles roles){
		System.out.println("�޸Ļ�ɾ��---------------------------------");
		adminService.saveOrUpdate(roles);
	}
	
	// Ա����������
	/*
	 * public void getStuId(){ System.out.println("getStuId"); String
	 * id=ps.getStuId(); this.getPrintWriter().print(JSON.toJSONString(id)); }
	 */
	// ���Ա�����˻�
	/*
	 * public void addStuff(){
	 * 
	 * ps.addStuffAndUsers(list, list2); Message message=new
	 * Message(list2.size(),"�����ɹ�!");
	 * this.getPrintWriter().print(JSON.toJSONString(message)); }
	 */

}
