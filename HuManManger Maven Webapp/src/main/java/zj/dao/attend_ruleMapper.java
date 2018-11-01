package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.attend_rule;

public interface attend_ruleMapper {
	//查询
	public List<Map<String, Object>> ruleFind();
    //添加
	public int ruleSave(attend_rule rule);
	//删除
	public int ruleDelete(attend_rule rule);
	//修改
	public int ruleUpdate(attend_rule rule);
	//根据id查询
	public attend_rule ruleFindById(int kid);
   
}