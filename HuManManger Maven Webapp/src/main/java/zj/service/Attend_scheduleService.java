package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_schedule;

public interface Attend_scheduleService {

	//��ѯ
		public List<Map<String, Object>> scheFind();
		//���//�޸�
		public int saveOrUpdate(Attend_schedule schedule);
		//ɾ��
		public int scheDelete(Attend_schedule schedule);
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
