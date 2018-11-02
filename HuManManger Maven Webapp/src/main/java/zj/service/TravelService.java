package zj.service;

import java.util.List;
import java.util.Map;


import zj.entity.Staff_info;
import zj.entity.Travel;

public interface TravelService {
	
	  public List<Map> queryAll();
	
	  public List<Staff_info> findAll();
	
	  public int save(zj.entity.Travel t);
	  public void updateStatu(zj.entity.Travel statu); 
	  public void updateStatu2(zj.entity.Travel statu); 
	  public Travel queryById(int travel_Id);
	  public List<Map> queryStaff2(int staff_Id);

}