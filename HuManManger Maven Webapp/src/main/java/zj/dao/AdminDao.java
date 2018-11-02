package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Roles;
import zj.entity.Rolesmodule;



public interface AdminDao {
	// 验证登陆
	public List<Map<String, Object>> queryUser(String username);

	// 按权限查询所拥有的模块
	public List<Map<String, Object>> findModules(String userName);

	// 查询所有角色
	public List<Roles> findAllRoles();

	// 添加角色
	public void saveRoles(Roles roles);

	// 修改前的查询
	public List<Map<String, Object>> findByIdRoles(Integer rolesId);

	// 修改
	public void updateRoles(Roles roles);

	// 删除
	public void deleteRoles(Integer rolesId);

	// 查询所有菜单项，并获取到对应角色编号的菜单
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// 删除中间表中指定角色id对应的数据
	public void deleteRolesModule(int rolesId);

	// 往角色菜单中间表中插入数据
	public void saveRolesModule(Rolesmodule rolModue);

	// 查询所有角色
	public List<Map<String, Object>> queryAllRoles();
	// public String getStuId();

	// public void addStuffAndUsers(List<Stuff> list,List<Usertable> list2);
}
