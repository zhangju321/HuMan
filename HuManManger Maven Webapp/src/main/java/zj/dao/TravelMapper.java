package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Travel;


public interface TravelMapper {
	//出差查询
	  public List<Map> queryAll();
	//职工查询
	  public List<Map> findAll();
	//未审批查询  
	   public List<Map> notApproved();
	//出差登记
	    public int save(Travel t);
	  //修改状态
	    public void updateStatu(Travel statu);
	    public void updateStatu2(Travel statu);
	  //根据id查询
	    //public Travel queryById(int travel_Id);
	    public List<Map> queryStaff2(int sta_Staff_Id); 
	    public Travel overrule (int travel_Id);
	    public List<Map<String,Object>> queryDetails(int travel_Id);
}