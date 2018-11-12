package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.Attend_schedule;

public interface Attend_scheduleMapper {
	//查询
	public List<Map<String, Object>> scheFind();
	//添加
	public int scheSave(Attend_schedule schedule);
	//删除
	public int scheDelete(Attend_schedule schedule);
	//修改
	public int scheUpdate(Attend_schedule schedule);
	//根据id查询
	public Attend_schedule scheFindById(int id);
	//角色外键
	public List<Map<String, Object>> roleFind();
	//部门外键
	public List<Map<String, Object>> departFind();
	//员工外键
	public List<Map<String, Object>> staffFind();
	//修改状态
	public int updateState(Attend_schedule schedule);
}