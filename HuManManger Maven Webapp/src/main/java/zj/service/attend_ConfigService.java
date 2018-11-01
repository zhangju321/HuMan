package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.attend_config;

public interface attend_ConfigService {

	public List<Map<String, Object>> conFind();
	public int saveOrUpdate(attend_config config);
	public int conDelete(attend_config config);
	public attend_config conFindById(int duty_Id); 
	
}
