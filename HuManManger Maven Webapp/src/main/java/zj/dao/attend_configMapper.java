package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.attend_config;

public interface attend_configMapper {
	public List<Map<String, Object>> conFind();
	public int conSave(attend_config config);
	public int conDelete(attend_config config);
	public int conUpdate(attend_config config);
	public attend_config conFindById(int duty_Id); 
	
}