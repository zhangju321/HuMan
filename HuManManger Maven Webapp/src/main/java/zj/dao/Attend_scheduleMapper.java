package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.Attend_schedule;

public interface Attend_scheduleMapper {
	//��ѯ
	public List<Map<String, Object>> scheFind();
	//���
	public int scheSave(Attend_schedule schedule);
	//ɾ��
	public int scheDelete(Attend_schedule schedule);
	//�޸�
	public int scheUpdate(Attend_schedule schedule);
	//����id��ѯ
	public Attend_schedule scheFindById(int id);
	//��ɫ���
	public List<Map<String, Object>> roleFind();
	//�������
	public List<Map<String, Object>> departFind();
	//Ա�����
	public List<Map<String, Object>> staffFind();
	//�޸�״̬
	public int updateState(Attend_schedule schedule);
}