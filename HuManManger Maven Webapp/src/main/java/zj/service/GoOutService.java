package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;


public interface GoOutService {
	  public List<Map> queryAll();
	  public List<Staff_info> findAll();
	  public int insert(GoOut g);
	  public void updateStatu(GoOut statu); 
	  public void updateStatu2(GoOut statu);
	  public GoOut queryById(int out_Id);	  
	  public List<Map> queryStaff3(int staff_Id);
	 
}
