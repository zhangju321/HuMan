package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_rule;

public interface Attend_ruleMapper {
	//��ѯ
	public List<Map<String, Object>> ruleFind();
    //���
	public int ruleSave(Attend_rule rule);
	//ɾ��
	public int ruleDelete(Attend_rule rule);
	//�޸�
	public int ruleUpdate(Attend_rule rule);
	//����id��ѯ
	public Attend_rule ruleFindById(int kid);
   
}