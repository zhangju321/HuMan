package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Role;
import zj.entity.Staff_info;

public interface Staff_infoMapper {
	public	List<Map<String,Object>> selectAll();//��ѯȫ��
	public int save(Staff_info stinfo);//���
	public	List<Map<String,Object>> selectId(int staff_id);//����id��ѯ
	public int update(Staff_info stinfo);//�޸�
	public int delete(Staff_info stinfo);//ɾ��
	
	public List<Map<String,Object>> selectRole();//��ѯ��ɫ
	public List<Map<String,Object>> selectPost();//��ѯְ��
	public List<Map<String,Object>> selectDep();//��ѯ����
}
