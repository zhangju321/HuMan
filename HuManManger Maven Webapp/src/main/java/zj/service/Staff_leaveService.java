package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;

public interface Staff_leaveService {
	@Transactional
    //��Ӻ��޸�   �޸���ְ״̬   �����ְ��ʱ��Ѹ�ְ�������ɾ��
	public int insertorupdate(Staff_leave leave);
    //ɾ��
	public int deleteleave(int leaveId);
    //ͨ��map������ϲ�ѯ��������ʵ����
	public List<Map<String, Object>> selectleave();
    //�޸�ǰ��ѯ��������
	public Staff_leave selectleaveByID(int leaveId);
    //��ѯ��ְԱ��
	public List<Staff_info> selectinfostu();
    //��ѯԱ��
	public List<Staff_info> selectstaffinfo();
	//��ѯ����
	public List<Department> selectdepartment();
	//��ѯְ��
	public List<Position> selectposition();

}
