package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.Attend_config;

public interface Attend_ConfigService {

	public List<Map<String, Object>> conFind();
	public int saveOrUpdate(Attend_config config);
	public int conDelete(Attend_config config);
	public Attend_config conFindById(int duty_Id); 
	
}
