package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Roles;
import zj.entity.Rolesmodule;



public interface AdminDao {
	// ��֤��½
	public List<Map<String, Object>> queryUser(String username);

	// ��Ȩ�޲�ѯ��ӵ�е�ģ��
	public List<Map<String, Object>> findModules(String userName);

	// ��ѯ���н�ɫ
	public List<Roles> findAllRoles();

	// ��ӽ�ɫ
	public void saveRoles(Roles roles);

	// �޸�ǰ�Ĳ�ѯ
	public List<Map<String, Object>> findByIdRoles(Integer rolesId);

	// �޸�
	public void updateRoles(Roles roles);

	// ɾ��
	public void deleteRoles(Integer rolesId);

	// ��ѯ���в˵������ȡ����Ӧ��ɫ��ŵĲ˵�
	public List<Map<String, Object>> findAllMenusByRoleId(int rolesId);

	// ɾ���м����ָ����ɫid��Ӧ������
	public void deleteRolesModule(int rolesId);

	// ����ɫ�˵��м���в�������
	public void saveRolesModule(Rolesmodule rolModue);

	// ��ѯ���н�ɫ
	public List<Map<String, Object>> queryAllRoles();
	// public String getStuId();

	// public void addStuffAndUsers(List<Stuff> list,List<Usertable> list2);
}
