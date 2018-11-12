package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.GoOut;
import zj.entity.Staff_info;
import zj.entity.Vocation;


public interface GoOutService {
	  public List<Map> queryAll();
	  public List<Staff_info> findAll();
	  public int insert(GoOut g);
	  public void updateStatu(GoOut statu); 
	  public void updateStatu2(GoOut statu);
	  //public GoOut queryById(int out_Id);
	  public List<Map<String,Object>> queryDetails(int out_Id);
	  public List<Map> queryStaff3(int sta_Staff_Id);
	  public GoOut queryId(int out_Id);
}
