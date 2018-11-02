package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_rule;

public interface Attend_ruleService {
	//查询
		public List<Map<String, Object>> ruleFind();
	    //添加修改
		public int saveOrUpdate(Attend_rule rule);
		//删除
		public int ruleDelete(Attend_rule rule);
		//根据id查询
		public Attend_rule ruleFindById(int kid);
}
