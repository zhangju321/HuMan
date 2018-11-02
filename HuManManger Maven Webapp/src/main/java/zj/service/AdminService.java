package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Roles;



public interface AdminService {
	// ��֤��½
	public List<Map<String, Object>> queryUser(String username);

	// ��ѯģ��
	public List<Map<String, Object>> findModules(String userName);

	// ��ѯȫ����ɫ
	public List<Roles> findAllRoles();

	// ��������޸Ľ�ɫ
	public void saveOrUpdate(Roles roles);

	// ��ѯ��ɫ
	public List<Map<String, Object>> findByIdRoles(Integer  roles);

	// ɾ����ɫ
	public void deleteRoles(Integer rolesId);

	// ͨ����ɫid��ѯģ��
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// ��ӻ���ɾ����ɫģ���м��
	public void addOrdeleteRolesModule(String menuIds, int rolesId);

	// ��ѯ���н�ɫ
	public List<Map<String, Object>> queryAllRoles();
}
