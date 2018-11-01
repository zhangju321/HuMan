package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.attend_schedule;

public interface attend_scheduleMapper {
	public List<Map<String, Object>> scheFind();
	public int scheSave(attend_schedule schedule);
	public int scheDelete(attend_schedule schedule);
	public int scheUpdate(attend_schedule schedule);
	public attend_schedule scheFindById(int id);
	public List<Map<String, Object>> roleFind();
	public List<Map<String, Object>> departFind();
	public List<Map<String, Object>> staffFind();
	//ÐÞ¸Ä×´Ì¬
		public void updateState(attend_schedule schedule);
}