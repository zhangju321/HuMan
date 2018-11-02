package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zj.dao.AdminDao;
import zj.entity.Modules;
import zj.entity.Roles;
import zj.entity.Rolesmodule;


@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao dao;

	@Override
	public List<Map<String, Object>> queryUser(String username) {
		// TODO Auto-generated method stub
		return dao.queryUser(username);
	}

	@Override
	public List<Map<String, Object>> findModules(String userName) {

		return dao.findModules(userName);
	}

	@Override
	public List<Roles> findAllRoles() {

		return dao.findAllRoles();
	}

	@Override
	public void saveOrUpdate(Roles roles) {
		if (roles.getRolesId() != null && roles.getRolesId() > 0) {
			dao.updateRoles(roles);
		} else {
			dao.saveRoles(roles);
		}

	}

	@Override
	public List<Map<String, Object>> findByIdRoles(Integer rolesId) {

		return (List<Map<String, Object>>) dao.findByIdRoles(rolesId);
	}

	@Override
	public void deleteRoles(Integer rolesId) {
		dao.deleteRoles(rolesId);

	}

	@Override
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId) {

		return dao.findAllMenusByRoleId(rolesId);
	}

	@Transactional
	@Override
	public void addOrdeleteRolesModule(String menuIds, int rolesId) {
		// 思路分析：先删除该角色id对应的中间 表中所有数据，再把需要录入的数据录入到中间表
		if (menuIds != null && menuIds.length() > 0) {
			dao.deleteRolesModule(rolesId);// 先删除
			System.out.println("删除权限------------------------------");
			String[] idAry = menuIds.split(",");// 分割
			System.out.println(idAry.toString()+"++++++++++++++++++++++++++++++++++++"+idAry.length);
			for (int i = 0; i < idAry.length; i++) {
				// 菜单对象
				Modules mo = new Modules();
				mo.setModulesId(idAry[i]);
				// 角色对象
				Roles ro = new Roles();
				ro.setRolesId(rolesId);
				// 创建中间表对象
				Rolesmodule rm = new Rolesmodule();
				rm.setModules(mo);
				rm.setRoles(ro);
				// 插入中间表对象
				System.out.println("执行添加----------------------------------------");
				dao.saveRolesModule(rm);
			}
		}
	}
	//查询所有角色
    public List<Map<String, Object>> queryAllRoles(){
    	return dao.queryAllRoles();
    }

}
