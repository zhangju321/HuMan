package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_rule;

public interface Attend_ruleService {
	//��ѯ
		public List<Map<String, Object>> ruleFind();
	    //����޸�
		public int saveOrUpdate(Attend_rule rule);
		//ɾ��
		public int ruleDelete(Attend_rule rule);
		//����id��ѯ
		public Attend_rule ruleFindById(int kid);
}
