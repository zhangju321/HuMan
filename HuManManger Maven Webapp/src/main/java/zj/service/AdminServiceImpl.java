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
		// ˼·��������ɾ���ý�ɫid��Ӧ���м� �����������ݣ��ٰ���Ҫ¼�������¼�뵽�м��
		if (menuIds != null && menuIds.length() > 0) {
			dao.deleteRolesModule(rolesId);// ��ɾ��
			System.out.println("ɾ��Ȩ��------------------------------");
			String[] idAry = menuIds.split(",");// �ָ�
			System.out.println(idAry.toString()+"++++++++++++++++++++++++++++++++++++"+idAry.length);
			for (int i = 0; i < idAry.length; i++) {
				// �˵�����
				Modules mo = new Modules();
				mo.setModulesId(idAry[i]);
				// ��ɫ����
				Roles ro = new Roles();
				ro.setRolesId(rolesId);
				// �����м�����
				Rolesmodule rm = new Rolesmodule();
				rm.setModules(mo);
				rm.setRoles(ro);
				// �����м�����
				System.out.println("ִ�����----------------------------------------");
				dao.saveRolesModule(rm);
			}
		}
	}
	//��ѯ���н�ɫ
    public List<Map<String, Object>> queryAllRoles(){
    	return dao.queryAllRoles();
    }

}
