package zj.dao;

import java.util.List;
import java.util.Map;


import zj.entity.Attend_schedule;

public interface Attend_scheduleMapper {
	public List<Map<String, Object>> scheFind();
	public int scheSave(Attend_schedule schedule);
	public int scheDelete(Attend_schedule schedule);
	public int scheUpdate(Attend_schedule schedule);
	public Attend_schedule scheFindById(int id);
	public List<Map<String, Object>> roleFind();
	public List<Map<String, Object>> departFind();
	public List<Map<String, Object>> staffFind();
	//ÐÞ¸Ä×´Ì¬
		public void updateState(Attend_schedule schedule);
}