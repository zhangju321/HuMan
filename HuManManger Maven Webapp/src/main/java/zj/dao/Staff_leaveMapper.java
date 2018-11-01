package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_leave;

public interface Staff_leaveMapper {
	
	public int insert(Staff_leave leave);
	
	public int deleteleave(int leaveId);
	
	public List<Map<String,Object>> selectleave();

	public Staff_leave selectleaveByID(int leaveId);
	
	public int updateleave(Staff_leave leave);

    //��ѯ��ְԱ��
	public List<Staff_info> selectinfostu();
    //��ѯԱ��
	public List<Staff_info> selectstaffinfo();
	//��ѯ����
	public List<Department> selectdepartment();
	//��ѯְ��
	public List<Position> selectposition();
	//�޸���ְ״̬
	public int updateStatus(int staffId);
	//�����ְ��ʱ��Ѹ�ְ����ͬԱ��������ɾ��
	public int delectId(int staffId);
	
}