package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Travel;

public interface TravelService {
	
	  public List<Map> queryAll();
	
	  public List<Map> findAll();
	
	  public int save(zj.entity.Travel t);
	  public void updateStatu(zj.entity.Travel statu); 
	  public void updateStatu2(zj.entity.Travel statu); 
	  public List<Map> notApproved();
	  public List<Map> queryStaff2(int sta_Staff_Id);
	  public Travel overrule (int travel_Id);
	  public List<Map<String,Object>> queryDetails(int travel_Id);
}
