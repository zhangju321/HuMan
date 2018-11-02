package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_config;

public interface Attend_configMapper {
	public List<Map<String, Object>> conFind();
	public int conSave(Attend_config config);
	public int conDelete(Attend_config config);
	public int conUpdate(Attend_config config);
	public Attend_config conFindById(int duty_Id); 
	
}