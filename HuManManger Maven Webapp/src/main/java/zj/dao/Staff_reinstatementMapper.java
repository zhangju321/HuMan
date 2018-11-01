package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;

public interface Staff_reinstatementMapper {
	//���
	public int insert(Staff_reinstatement Rein);
	//ɾ��
	public int deleteRein(int reinstatementId);
	//��ѯ��ְ��
	public List<Map<String,Object>> selectRein();
    //�޸�ǰ��ѯ
	public Staff_reinstatement selectReinid(int reinstatementId);
	//�޸�
	public int updateRein(Staff_reinstatement Rein);
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
	//��Ӹ�ְ��ʱ�����ְ�����ͬԱ������ɾ��
	public int delectId(int staffId);
}