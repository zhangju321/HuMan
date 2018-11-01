package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.Department;
import zj.entity.Position;
import zj.entity.Staff_info;
import zj.entity.Staff_reinstatement;

public interface Staff_reinstatementService {
	@Transactional
	//ɾ��
	public int deleteRein(int reinstatementId);
	//��ѯ��ְ��
	public List<Map<String,Object>> selectRein();
    //�޸�ǰ��ѯ
	public Staff_reinstatement selectReinid(int reinstatementId);
	//�޸ĺ����   �޸���ְ״̬   �����ְ��ʱ��Ѹ�ְ�������ɾ��
	public int insertorupdate(Staff_reinstatement Rein);
    //��ѯ��ְԱ��
	public List<Staff_info> selectinfostu();
    //��ѯԱ��
	public List<Staff_info> selectstaffinfo();
	//��ѯ����
	public List<Department> selectdepartment();
	//��ѯְ��
	public List<Position> selectposition();
}
