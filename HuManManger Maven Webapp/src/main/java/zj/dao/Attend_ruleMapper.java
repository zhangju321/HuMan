package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_rule;

public interface Attend_ruleMapper {
	//查询
	public List<Map<String, Object>> ruleFind();
    //添加
	public int ruleSave(Attend_rule rule);
	//删除
	public int ruleDelete(Attend_rule rule);
	//修改
	public int ruleUpdate(Attend_rule rule);
	//根据id查询
	public Attend_rule ruleFindById(int kid);
   
}