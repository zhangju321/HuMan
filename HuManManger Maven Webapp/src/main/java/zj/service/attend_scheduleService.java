package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.attend_schedule;

public interface attend_scheduleService {

	public List<Map<String, Object>> scheFind();
	public int scheDelete(attend_schedule schedule);
	public int saveOrUpdate(attend_schedule schedule);
	public attend_schedule scheFindById(int id);
	public List<Map<String, Object>> roleFind();
	public List<Map<String, Object>> departFind();
	public List<Map<String, Object>> staffFind();
	//ÐÞ¸Ä×´Ì¬
	public void updateState(attend_schedule schedule);
}
